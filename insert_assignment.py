import os
import json
import psycopg2
from datetime import datetime

# ----------------------------
# CONFIGURATION
# ----------------------------

# Each entry maps a base course folder to its assignments subfolder.
# Add more courses here when ready.
ASSIGNMENT_FOLDERS = [
    "java_course_data/assignments",   # Java course assignments
    "sql_course_data/assignments",
    "advanced_java_data/assignments",
    # "dsa_data/assignments",
    # "aws_cloud_data/assignments",
    # "react_data/assignments",
]

START_ID = 1              # Starting id for Assignments table (adjust if rows already exist)

DB_CONFIG = {
    "host": "localhost",
    "port": 5432,
    "dbname": "beacoder",
    "user": "sanojkumar.narayanankutty",
    # "password": "beacoder_password"  # Uncomment if password is required
}

# ----------------------------
# LOGGING FUNCTION
# ----------------------------
def log(message):
    print(f"[{datetime.now().strftime('%Y-%m-%d %H:%M:%S')}] {message}")

# ----------------------------
# READ JSON FILE
# ----------------------------
def load_json(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        return json.load(f)

# ----------------------------
# INSERT INTO DATABASE
# ----------------------------
def insert_assignment(conn, record_id, record):
    with conn.cursor() as cur:
        sql = """
        INSERT INTO public."Assignments"
        (
            id,
            title,
            description,
            "maxMarks",
            "dueDate",
            "displayOrder",
            "isActive",
            "createdAt",
            "updatedAt",
            "courseId",
            "topicId",
            "subtopicId",
            "allowedSubmissionType"
        )
        VALUES (%s, %s, %s::jsonb, %s, %s, %s, true, current_timestamp, current_timestamp, %s, %s, %s, %s);
        """

        cur.execute(sql, (
            record_id,
            record["title"],
            json.dumps(record["description"]),
            record["maxMarks"],
            record.get("dueDate"),           # NULL if not provided
            record["displayOrder"],
            record["courseId"],
            record["topicId"],
            record["subtopicId"],
            record["allowedSubmissionType"]
        ))

# ----------------------------
# MAIN FUNCTION
# ----------------------------
def main():
    global START_ID

    conn = None
    try:
        conn = psycopg2.connect(**DB_CONFIG)
        conn.autocommit = False

        log("Connected to database successfully.")
        total_records = 0

        # Process each assignments folder
        for assignments_folder in ASSIGNMENT_FOLDERS:
            if not os.path.exists(assignments_folder):
                log(f"Warning: Assignments folder '{assignments_folder}' does not exist. Skipping.")
                continue

            log(f"Processing assignments folder: {assignments_folder}")

            # Each subdirectory represents a topic (e.g. 1_introduction, 2_basics_of_java)
            for topic_folder_name in sorted(os.listdir(assignments_folder)):
                topic_folder_path = os.path.join(assignments_folder, topic_folder_name)
                if not os.path.isdir(topic_folder_path):
                    continue

                log(f"  Processing topic folder: {topic_folder_name}")

                # Each JSON file inside is one assignment (object) or multiple assignments (array)
                for filename in sorted(os.listdir(topic_folder_path)):
                    if not filename.endswith(".json"):
                        continue

                    json_path = os.path.join(topic_folder_path, filename)
                    data = load_json(json_path)

                    # Support both a single object and an array of assignment objects
                    records = data if isinstance(data, list) else [data]

                    for record in records:
                        # Validate required fields
                        required_fields = ["title", "description", "maxMarks", "displayOrder",
                                           "courseId", "topicId", "subtopicId", "allowedSubmissionType"]
                        missing = [f for f in required_fields if f not in record]
                        if missing:
                            log(f"  ⚠️  Skipping entry in {filename}: missing fields {missing}")
                            continue

                        insert_assignment(conn, START_ID, record)
                        log(f"  ✅ Inserted assignment ID {START_ID} | subtopicId={record['subtopicId']} | displayOrder={record['displayOrder']} | '{record['title']}'")
                        START_ID += 1
                        total_records += 1

        conn.commit()
        log(f"\n✅ Completed successfully. {total_records} assignment(s) inserted.")

    except Exception as e:
        if conn:
            conn.rollback()
        log(f"❌ Error occurred: {e}")
        raise

    finally:
        if conn:
            conn.close()
            log("Database connection closed.")

# ----------------------------
# ENTRY POINT
# ----------------------------
if __name__ == "__main__":
    main()
