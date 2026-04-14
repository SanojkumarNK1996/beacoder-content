-- ============================================
-- Insert default course data (safe for re-run)
-- ============================================

INSERT INTO public."Courses"
(
    id,
    "courseCode",
    "courseName",
    description,
    "imageUrl",
    "difficultyLevel",
    "estimatedHours",
    "isActive",
    "createdAt",
    "updatedAt",
    "instructorId"
)
VALUES
    -- 1. Java
    (
        1,
        'JAVA101',
        'Java',
        'Learn the fundamentals of Java programming including syntax, OOP concepts, and core libraries.',
        '/java.png',
        'easy',
        40,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    ),

    -- 2. Database Fundamentals
    (
        2,
        'DB101',
        'Database Fundamentals',
        'Learn SQL, normalization, and relational database concepts with hands-on examples.',
        '/database.png',
        'medium',
        35,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    ),

    -- 3. Advanced Java
    (
        3,
        'JAVA201',
        'Advanced Java',
        'Deep dive into Java frameworks and Spring basics for enterprise-grade applications.',
        '/advanced-java.png',
        'medium',
        50,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    ),

    -- 4. Data Structures & Algorithms
    (
        4,
        'DSA101',
        'Data Structures & Algorithms',
        'Master essential data structures and algorithms to write efficient and optimized code.',
        '/dsa.png',
        'hard',
        60,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    ),

    -- 5. Cloud Computing (AWS)
    (
        5,
        'CLOUD101',
        'Cloud Computing (AWS)',
        'Explore AWS cloud services like EC2, S3, and Lambda, and deploy scalable applications in the cloud.',
        '/aws.png',
        'medium',
        45,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    ),

    -- 6. React JS
    (
        6,
        'REACT101',
        'React JS',
        'Learn modern React development — components, hooks, and building dynamic web applications.',
        '/react.png',
        'medium',
        50,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    ),

    -- 7. HTML
    (
        7,
        'HTML101',
        'HTML',
        'Learn the structure of web pages using HTML, the standard markup language for creating web content.',
        '/html.png',
        'easy',
        20,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    ),

    -- 8. CSS
    (
        8,
        'CSS101',
        'CSS',
        'Master the art of styling web pages with CSS, including layouts, colors, and responsive design.',
        '/css.png',
        'easy',
        25,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    ),

    -- 9. JavaScript
    (
        9,
        'JS101',
        'JavaScript',
        'Understand the fundamentals of JavaScript to make web pages interactive and dynamic.',
        '/js.png',
        'medium',
        40,
        true,
        current_timestamp,
        current_timestamp,
        NULL
    )
ON CONFLICT ("courseCode") DO NOTHING;

-- ============================================
-- Insert CourseTopics (Topics)(JAVA)
-- ============================================
INSERT INTO public."CourseTopics" 
(
    id,
    title, 
    description, 
    "displayOrder", 
    "isActive", 
    "createdAt", 
    "updatedAt", 
    "courseId"
) 
VALUES
(1, 'Introduction to Programming and Java', 'Goal: Introduce programming concepts and Java basics.', 1, true, current_timestamp, current_timestamp, 1),
(2, 'Basics of Java', 'Goal: Cover fundamental Java syntax and basic concepts.', 2, true, current_timestamp, current_timestamp, 1),
(3, 'Control Flow Statements', 'Goal: Teach decision-making and loops.', 3, true, current_timestamp, current_timestamp, 1),
(4, 'Methods / Functions', 'Goal: Introduce modular programming.', 4, true, current_timestamp, current_timestamp, 1),
(5, 'Object-Oriented Programming (OOP) in Java', 'Goal: Core Java concept: OOP.', 5, true, current_timestamp, current_timestamp, 1),
(6, 'Arrays and Collections', 'Goal: Handling multiple data efficiently.', 6, true, current_timestamp, current_timestamp, 1),
(7, 'Exception Handling', 'Goal: Handling errors in Java.', 7, true, current_timestamp, current_timestamp, 1),
(8, 'Multithreading and Concurrency (Advanced)', 'Goal: Advanced Java multithreading and concurrency concepts.', 8, true, current_timestamp, current_timestamp, 1),
(9, 'Java 8+ Features (Optional Advanced)', 'Goal: Modern Java features.', 9, true, current_timestamp, current_timestamp, 1),

(10, 'Introduction to Databases', NULL, 1, true, current_timestamp, current_timestamp, 2),
(11, 'Database Concepts and Architecture', NULL, 2, true, current_timestamp, current_timestamp, 2),
(12, 'Introduction to SQL', NULL, 3, true, current_timestamp, current_timestamp, 2),
(13, 'Database Design', NULL, 4, true, current_timestamp, current_timestamp, 2),
(14, 'Creating and Modifying Database Objects', NULL, 5, true, current_timestamp, current_timestamp, 2),
(15, 'Data Manipulation (DML)', NULL, 6, true, current_timestamp, current_timestamp, 2),
(16, 'Advanced Querying', NULL, 7, true, current_timestamp, current_timestamp, 2),
(17, 'Views and Indexes', NULL, 8, true, current_timestamp, current_timestamp, 2),
(18, 'Transactions and Concurrency', NULL, 9, true, current_timestamp, current_timestamp, 2),
(19, 'Stored Procedures, Functions, and Triggers', NULL, 10, true, current_timestamp, current_timestamp, 2),
(20, 'SQL Performance and Optimization Basics', NULL, 11, true, current_timestamp, current_timestamp, 2),
(21, 'Hands-On Projects / Practice', NULL, 12, true, current_timestamp, current_timestamp, 2),

-- Advanced Java Course Topics
(22, 'Introduction to Enterprise Java', 'Goal: Understand enterprise application development concepts.', 1, true, current_timestamp, current_timestamp, 3),
(23, 'Spring Framework Fundamentals', 'Goal: Learn IoC, DI, and core Spring concepts.', 2, true, current_timestamp, current_timestamp, 3),
(24, 'Spring Boot', 'Goal: Master auto-configuration and rapid application development.', 3, true, current_timestamp, current_timestamp, 3),
(25, 'Database Integration', 'Goal: Connect Java applications with databases using Spring.', 4, true, current_timestamp, current_timestamp, 3),
(26, 'Building REST APIs', 'Goal: Create RESTful web services using Spring MVC.', 5, true, current_timestamp, current_timestamp, 3),
(27, 'Testing in Java', 'Goal: Write comprehensive tests for enterprise applications.', 6, true, current_timestamp, current_timestamp, 3),
(28, 'Build Tools & Dependency Management', 'Goal: Manage project builds and dependencies effectively.', 7, true, current_timestamp, current_timestamp, 3),
(29, 'Microservices Introduction', 'Goal: Understand microservice architecture and Spring Cloud.', 8, true, current_timestamp, current_timestamp, 3),
(30, 'Security in Java Applications', 'Goal: Implement authentication and authorization.', 9, true, current_timestamp, current_timestamp, 3),
(31, 'Design Patterns', 'Goal: Apply common enterprise design patterns.', 10, true, current_timestamp, current_timestamp, 3),
(32, 'Deployment & Containerization', 'Goal: Deploy applications using modern containerization.', 11, true, current_timestamp, current_timestamp, 3),
(33, 'Advanced Topics & Best Practices', 'Goal: Performance tuning and production best practices.', 12, true, current_timestamp, current_timestamp, 3),

-- Data Structures & Algorithms Course Topics
(34, 'Introduction to Data Structures & Algorithms', 'Goal: Understand the importance of efficient data storage and algorithms.', 1, true, current_timestamp, current_timestamp, 4),
(35, 'Arrays and Strings', 'Goal: Master fundamental linear data structures.', 2, true, current_timestamp, current_timestamp, 4),
(36, 'Linked Lists', 'Goal: Understand dynamic memory allocation and pointer manipulation.', 3, true, current_timestamp, current_timestamp, 4),
(37, 'Stacks and Queues', 'Goal: Learn LIFO and FIFO data structures and their applications.', 4, true, current_timestamp, current_timestamp, 4),
(38, 'Trees and Binary Trees', 'Goal: Understand hierarchical data structures and tree traversals.', 5, true, current_timestamp, current_timestamp, 4),
(39, 'Graphs', 'Goal: Learn graph representation and fundamental graph algorithms.', 6, true, current_timestamp, current_timestamp, 4),
(40, 'Sorting Algorithms', 'Goal: Master various sorting techniques and their time complexities.', 7, true, current_timestamp, current_timestamp, 4),
(41, 'Searching Algorithms', 'Goal: Learn efficient searching methods and binary search variations.', 8, true, current_timestamp, current_timestamp, 4),
(42, 'Dynamic Programming', 'Goal: Solve complex problems using memoization and tabulation.', 9, true, current_timestamp, current_timestamp, 4),
(43, 'Greedy Algorithms', 'Goal: Understand greedy approach and optimization problems.', 10, true, current_timestamp, current_timestamp, 4),
(44, 'Hashing', 'Goal: Learn hash tables, collision resolution, and applications.', 11, true, current_timestamp, current_timestamp, 4),
(45, 'Advanced Topics & Problem Solving', 'Goal: Advanced algorithms and competitive programming techniques.', 12, true, current_timestamp, current_timestamp, 4),

-- Cloud Computing (AWS) Course Topics
(46, 'Introduction to Cloud Computing', 'Goal: Understand cloud computing concepts and service models.', 1, true, current_timestamp, current_timestamp, 5),
(47, 'AWS Fundamentals & Account Setup', 'Goal: Get started with Amazon Web Services platform.', 2, true, current_timestamp, current_timestamp, 5),
(48, 'Compute Services (EC2)', 'Goal: Master virtual machines and compute resources in the cloud.', 3, true, current_timestamp, current_timestamp, 5),
(49, 'Storage Services (S3, EBS)', 'Goal: Learn cloud storage solutions and data management.', 4, true, current_timestamp, current_timestamp, 5),
(50, 'Database Services (RDS, DynamoDB)', 'Goal: Implement managed database solutions in AWS.', 5, true, current_timestamp, current_timestamp, 5),
(51, 'Networking & Content Delivery', 'Goal: Configure secure networks and global content distribution.', 6, true, current_timestamp, current_timestamp, 5),
(52, 'Security & Identity Management (IAM)', 'Goal: Implement secure access controls and permissions.', 7, true, current_timestamp, current_timestamp, 5),
(53, 'Serverless Computing (Lambda)', 'Goal: Build event-driven applications without managing servers.', 8, true, current_timestamp, current_timestamp, 5),
(54, 'Monitoring & Management Tools', 'Goal: Monitor applications and manage AWS resources effectively.', 9, true, current_timestamp, current_timestamp, 5),
(55, 'DevOps & Deployment Pipelines', 'Goal: Automate deployment and implement CI/CD practices.', 10, true, current_timestamp, current_timestamp, 5),
(56, 'Cost Optimization & Billing', 'Goal: Manage and optimize AWS costs and billing.', 11, true, current_timestamp, current_timestamp, 5),
(57, 'Real-World Projects & Best Practices', 'Goal: Apply AWS knowledge in practical scenarios and follow best practices.', 12, true, current_timestamp, current_timestamp, 5),

-- React JS Course Topics
(58, 'Introduction to React & Frontend Development', 'Goal: Understand modern frontend development and React ecosystem.', 1, true, current_timestamp, current_timestamp, 6),
(59, 'JavaScript ES6+ Features', 'Goal: Master modern JavaScript features essential for React development.', 2, true, current_timestamp, current_timestamp, 6),
(60, 'React Components and JSX', 'Goal: Learn component-based architecture and JSX syntax.', 3, true, current_timestamp, current_timestamp, 6),
(61, 'State Management and Props', 'Goal: Understand data flow and state management in React applications.', 4, true, current_timestamp, current_timestamp, 6),
(62, 'Event Handling and Forms', 'Goal: Handle user interactions and form management effectively.', 5, true, current_timestamp, current_timestamp, 6),
(63, 'React Hooks', 'Goal: Master functional component patterns with React Hooks.', 6, true, current_timestamp, current_timestamp, 6),
(64, 'Routing and Navigation', 'Goal: Implement client-side routing for single-page applications.', 7, true, current_timestamp, current_timestamp, 6),
(65, 'API Integration and HTTP Requests', 'Goal: Connect React applications with backend services and APIs.', 8, true, current_timestamp, current_timestamp, 6),
(66, 'State Management Libraries (Context, Redux)', 'Goal: Manage complex application state with advanced patterns.', 9, true, current_timestamp, current_timestamp, 6),
(67, 'Testing React Applications', 'Goal: Write comprehensive tests for React components and applications.', 10, true, current_timestamp, current_timestamp, 6),
(68, 'Performance Optimization & Advanced Patterns', 'Goal: Optimize React applications and implement advanced patterns.', 11, true, current_timestamp, current_timestamp, 6),
(69, 'Deployment and Production Best Practices', 'Goal: Deploy React applications and follow production best practices.', 12, true, current_timestamp, current_timestamp, 6),

-- HTML Course Topics (Course 7)
(70, 'Introduction to HTML', 'Goal: Understand the basics of HTML and its role in web development.', 1, true, current_timestamp, current_timestamp, 7),
(71, 'HTML Elements and Structure', 'Goal: Learn about HTML tags, elements, and document structure.', 2, true, current_timestamp, current_timestamp, 7),
(72, 'Forms and Input', 'Goal: Create interactive forms and handle user input.', 3, true, current_timestamp, current_timestamp, 7),
(73, 'Multimedia and Embedding', 'Goal: Add images, audio, video, and embed content.', 4, true, current_timestamp, current_timestamp, 7),
(74, 'Semantic HTML and Accessibility', 'Goal: Use semantic tags and make web pages accessible.', 5, true, current_timestamp, current_timestamp, 7),

-- CSS Course Topics (Course 8)
(75, 'Introduction to CSS', 'Goal: Learn the basics of CSS and how it styles web pages.', 1, true, current_timestamp, current_timestamp, 8),
(76, 'Selectors and Properties', 'Goal: Understand CSS selectors, properties, and values.', 2, true, current_timestamp, current_timestamp, 8),
(77, 'Box Model and Layout', 'Goal: Master the CSS box model, positioning, and layout techniques.', 3, true, current_timestamp, current_timestamp, 8),
(78, 'Responsive Design', 'Goal: Create web pages that look good on all devices.', 4, true, current_timestamp, current_timestamp, 8),
(79, 'CSS Advanced Features', 'Goal: Explore transitions, animations, and preprocessors.', 5, true, current_timestamp, current_timestamp, 8),

-- JavaScript Course Topics (Course 9)
(80, 'Introduction to JavaScript', 'Goal: Understand what JavaScript is and how it works in browsers.', 1, true, current_timestamp, current_timestamp, 9),
(81, 'Variables and Data Types', 'Goal: Learn about variables, data types, and operators.', 2, true, current_timestamp, current_timestamp, 9),
(82, 'Control Flow and Functions', 'Goal: Use conditionals, loops, and functions.', 3, true, current_timestamp, current_timestamp, 9),
(83, 'DOM Manipulation', 'Goal: Interact with and modify web pages using the DOM.', 4, true, current_timestamp, current_timestamp, 9),
(84, 'Events and Interactivity', 'Goal: Handle user events and create interactive experiences.', 5, true, current_timestamp, current_timestamp, 9)
ON CONFLICT ("title", "courseId") DO NOTHING;

-- ============================================
-- Insert Subtopics
-- ============================================
INSERT INTO public."Subtopics"
(
    id,
    title,
    description,
    "displayOrder",
    "isActive",
    "createdAt",
    "updatedAt",
    "topicId"
)
VALUES
-- Topic 1
(1, 'What is Programming?', 'Definition and purpose, Different programming languages', 1, true, current_timestamp, current_timestamp, 1),
(2, 'Introduction to Java', 'History of Java, Features of Java, JVM/JRE/JDK, Compiling and running Java programs', 2, true, current_timestamp, current_timestamp, 1),
(3, 'Setting up the Java Environment', 'Installing JDK, Setting up IDE (Eclipse, IntelliJ, VS Code), Writing your first Java program (Hello World)', 3, true, current_timestamp, current_timestamp, 1),

-- Topic 2
(4, 'Data Types', 'Primitive types (int, float, double, char, boolean, byte, short, long), Non-primitive types (Strings, Arrays)', 1, true, current_timestamp, current_timestamp, 2),
(5, 'Variables', 'Declaration and initialization, Naming conventions', 2, true, current_timestamp, current_timestamp, 2),
(6, 'Operators', 'Arithmetic, Relational, Logical, Assignment, Increment & decrement', 3, true, current_timestamp, current_timestamp, 2),
(7, 'Comments', 'Single-line, multi-line, and documentation comments', 4, true, current_timestamp, current_timestamp, 2),

-- Topic 3
(8, 'Conditional Statements', 'if, if-else, if-else-if, switch-case', 1, true, current_timestamp, current_timestamp, 3),
(9, 'Loops', 'for loop, while loop, do-while loop', 2, true, current_timestamp, current_timestamp, 3),
(10, 'Branching Statements', 'break, continue, return', 3, true, current_timestamp, current_timestamp, 3),

-- Topic 4
(11, 'Defining methods', 'Method parameters and return types, Method overloading, Recursion basics', 1, true, current_timestamp, current_timestamp, 4),

-- Topic 5
(12, 'Classes and Objects', 'Defining classes, Creating objects, Constructors', 1, true, current_timestamp, current_timestamp, 5),
(13, 'Fields and Methods', 'Instance vs. static members', 2, true, current_timestamp, current_timestamp, 5),
(14, 'Encapsulation', 'Access modifiers (private, public, protected), Getters and setters', 3, true, current_timestamp, current_timestamp, 5),
(15, 'Inheritance', 'extends keyword, super keyword, Method overriding', 4, true, current_timestamp, current_timestamp, 5),
(16, 'Polymorphism', 'Compile-time (method overloading), Runtime (method overriding)', 5, true, current_timestamp, current_timestamp, 5),
(17, 'Abstraction', 'Abstract classes, Abstract methods, Interfaces', 6, true, current_timestamp, current_timestamp, 5),
(18, 'Packages and Importing', '', 7, true, current_timestamp, current_timestamp, 5),
(19, 'this keyword', '', 8, true, current_timestamp, current_timestamp, 5),
(20, 'final keyword', '', 9, true, current_timestamp, current_timestamp, 5),

-- Topic 6
(21, 'Arrays', 'Single-dimensional and multi-dimensional arrays', 1, true, current_timestamp, current_timestamp, 6),
(22, 'Strings and String Methods', '', 2, true, current_timestamp, current_timestamp, 6),
(23, 'Collections Framework', 'ArrayList, LinkedList, HashMap, HashSet', 3, true, current_timestamp, current_timestamp, 6),
(24, 'Iterating collections', 'loops, for-each', 4, true, current_timestamp, current_timestamp, 6),

-- Topic 7
(25, 'Exception Handling', 'What are exceptions?, Types: checked vs. unchecked, Try-catch-finally, throw and throws, Custom exceptions', 1, true, current_timestamp, current_timestamp, 7),

-- Topic 8
(26, 'Multithreading', 'Creating threads, Thread lifecycle, Synchronization, Runnable interface', 1, true, current_timestamp, current_timestamp, 8),

-- Topic 9
(27, 'Java 8+ Features', 'Lambda expressions, Streams API, Optional class, Functional interfaces', 1, true, current_timestamp, current_timestamp, 9),

-- Topic 10: Introduction to Databases
('28', 'What is a Database?', NULL, 1, true, current_timestamp, current_timestamp, 10),
('29', 'Types of Databases', 'Relational Databases (RDBMS), NoSQL Databases', 2, true, current_timestamp, current_timestamp, 10),
('30', 'Database vs File System', NULL, 3, true, current_timestamp, current_timestamp, 10),

-- Topic 11: Database Concepts and Architecture
('31', 'Database Management System (DBMS) overview', NULL, 1, true, current_timestamp, current_timestamp, 11),
('32', 'Components of DBMS', 'DB Engine, Database Schema, Query Processor, Storage Manager', 2, true, current_timestamp, current_timestamp, 11),
('33', 'Client-Server Architecture', NULL, 3, true, current_timestamp, current_timestamp, 11),
('34', 'ACID Properties (Atomicity, Consistency, Isolation, Durability)', NULL, 4, true, current_timestamp, current_timestamp, 11),
('35', 'Transactions and concurrency', NULL, 5, true, current_timestamp, current_timestamp, 11),
('36', 'Keys in Databases', 'Primary Key, Foreign Key, Unique Key, Composite Key', 6, true, current_timestamp, current_timestamp, 11),

-- Topic 12: Introduction to SQL
('37', 'What is SQL?', NULL, 1, true, current_timestamp, current_timestamp, 12),
('38', 'Types of SQL commands', 'DDL (Data Definition Language), DML (Data Manipulation Language), DCL (Data Control Language), TCL (Transaction Control Language)', 3, true, current_timestamp, current_timestamp, 12),
('39', 'SQL syntax basics', NULL, 4, true, current_timestamp, current_timestamp, 12),

-- Topic 13: Database Design
('40', 'Database Normalization', '1NF, 2NF, 3NF, BCNF', 1, true, current_timestamp, current_timestamp, 13),
('41', 'ER Diagrams (Entity-Relationship Modeling)', NULL, 2, true, current_timestamp, current_timestamp, 13),
('42', 'Relationships', 'One-to-One, One-to-Many, Many-to-Many', 3, true, current_timestamp, current_timestamp, 13),
('43', 'Indexing basics', NULL, 4, true, current_timestamp, current_timestamp, 13),
('44', 'Data types in SQL', NULL, 5, true, current_timestamp, current_timestamp, 13),

-- Topic 14: Creating and Modifying Database Objects
('45', 'Creating databases and tables', NULL, 1, true, current_timestamp, current_timestamp, 14),
('46', 'Modifying tables', 'ALTER TABLE, Adding/Deleting columns', 3, true, current_timestamp, current_timestamp, 14),
('47', 'Dropping tables and databases', NULL, 4, true, current_timestamp, current_timestamp, 14),
('48', 'Constraints', 'NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT', 5, true, current_timestamp, current_timestamp, 14),

-- Topic 15: Data Manipulation (DML)
('49', 'Inserting data', NULL, 1, true, current_timestamp, current_timestamp, 15),
('50', 'Reading data', 'SELECT *, SELECT column_name, Filtering with WHERE, Sorting with ORDER BY, Limiting results (LIMIT/OFFSET)', 2, true, current_timestamp, current_timestamp, 15),
('51', 'Updating data', NULL, 3, true, current_timestamp, current_timestamp, 15),
('52', 'Deleting data', NULL, 4, true, current_timestamp, current_timestamp, 15),

-- Topic 16: Advanced Querying
('53', 'Aggregate functions', 'COUNT, SUM, AVG, MAX, MIN', 1, true, current_timestamp, current_timestamp, 16),
('54', 'Grouping data', 'GROUP BY, HAVING', 2, true, current_timestamp, current_timestamp, 16),
('55', 'Joins', 'INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, CROSS JOIN', 3, true, current_timestamp, current_timestamp, 16),
('56', 'Subqueries', 'Single-row, Multi-row', 4, true, current_timestamp, current_timestamp, 16),
('57', 'Set operations', 'UNION, UNION ALL, INTERSECT, EXCEPT', 5, true, current_timestamp, current_timestamp, 16),

-- Topic 17: Views and Indexes
('58', 'Creating and using views', NULL, 1, true, current_timestamp, current_timestamp, 17),
('59', 'Advantages of views', NULL, 2, true, current_timestamp, current_timestamp, 17),
('60', 'Indexing', 'Primary index, Unique index, Composite index, Clustered vs Non-clustered indexes', 3, true, current_timestamp, current_timestamp, 17),

-- Topic 18: Transactions and Concurrency
('61', 'Transactions in SQL', 'BEGIN, COMMIT, ROLLBACK', 1, true, current_timestamp, current_timestamp, 18),
('62', 'Savepoints', NULL, 2, true, current_timestamp, current_timestamp, 18),
('63', 'Locks and concurrency control', NULL, 3, true, current_timestamp, current_timestamp, 18),
('64', 'Isolation levels', 'READ UNCOMMITTED, READ COMMITTED, REPEATABLE READ, SERIALIZABLE', 4, true, current_timestamp, current_timestamp, 18),

-- Topic 19: Stored Procedures, Functions, and Triggers
('65', 'Introduction to stored procedures', NULL, 1, true, current_timestamp, current_timestamp, 19),
('66', 'Creating and executing procedures', NULL, 2, true, current_timestamp, current_timestamp, 19),
('67', 'User-defined functions', NULL, 3, true, current_timestamp, current_timestamp, 19),
('68', 'Triggers', 'BEFORE, AFTER triggers', 4, true, current_timestamp, current_timestamp, 19),
('69', 'Pros and cons of using procedures/functions/triggers', NULL, 5, true, current_timestamp, current_timestamp, 19),

-- Topic 20: SQL Performance and Optimization Basics
('70', 'Query execution plan', NULL, 1, true, current_timestamp, current_timestamp, 20),
('71', 'Index usage for optimization', NULL, 2, true, current_timestamp, current_timestamp, 20),
('72', 'Avoiding common pitfalls', NULL, 3, true, current_timestamp, current_timestamp, 20),
('73', 'Best practices in SQL queries', NULL, 4, true, current_timestamp, current_timestamp, 20),

-- Topic 21: Hands-On Projects / Practice
('74', 'Create a database for a Library Management System', NULL, 1, true, current_timestamp, current_timestamp, 21),
('75', 'Create a database for an Online Store', NULL, 2, true, current_timestamp, current_timestamp, 21),
('76', 'Queries for reporting (e.g., total sales, user activity)', NULL, 3, true, current_timestamp, current_timestamp, 21),
('77', 'Practice joins and subqueries on sample datasets', NULL, 4, true, current_timestamp, current_timestamp, 21),

-- Topic 22: Introduction to Enterprise Java
('78', 'Enterprise Application Architecture', 'Layered architecture, MVC pattern, separation of concerns', 1, true, current_timestamp, current_timestamp, 22),
('79', 'Java EE vs Spring Framework', 'Comparison of enterprise solutions', 2, true, current_timestamp, current_timestamp, 22),
('80', 'Application Servers vs Embedded Servers', 'Tomcat, Jetty, traditional deployment models', 3, true, current_timestamp, current_timestamp, 22),

-- Topic 23: Spring Framework Fundamentals
('81', 'Introduction to Spring Framework', 'History, benefits, core modules', 1, true, current_timestamp, current_timestamp, 23),
('82', 'Inversion of Control (IoC)', 'IoC container, bean lifecycle', 2, true, current_timestamp, current_timestamp, 23),
('83', 'Dependency Injection', 'Constructor, setter, field injection', 3, true, current_timestamp, current_timestamp, 23),
('84', 'Spring Configuration', 'XML, annotation-based, Java configuration', 4, true, current_timestamp, current_timestamp, 23),

-- Topic 24: Spring Boot
('85', 'Introduction to Spring Boot', 'Auto-configuration, conventions over configuration', 1, true, current_timestamp, current_timestamp, 24),
('86', 'Spring Boot Starters', 'Web, data, security, test starters', 2, true, current_timestamp, current_timestamp, 24),
('87', 'Application Properties', 'Configuration management, profiles', 3, true, current_timestamp, current_timestamp, 24),
('88', 'Creating Your First Spring Boot Application', 'Project structure, main class, running applications', 4, true, current_timestamp, current_timestamp, 24),

-- Topic 25: Database Integration
('89', 'Introduction to Data Access', 'JDBC vs ORM, Spring Data overview', 1, true, current_timestamp, current_timestamp, 25),
('90', 'Spring JDBC Template', 'JdbcTemplate, RowMapper, database operations', 2, true, current_timestamp, current_timestamp, 25),
('91', 'Java Persistence API (JPA)', 'Entity mapping, annotations, relationships', 3, true, current_timestamp, current_timestamp, 25),
('92', 'Spring Data JPA', 'Repository pattern, query methods, custom queries', 4, true, current_timestamp, current_timestamp, 25),
('93', 'Database Transactions', 'Transaction management, @Transactional', 5, true, current_timestamp, current_timestamp, 25),

-- Topic 26: Building REST APIs
('94', 'REST Architecture Principles', 'HTTP methods, status codes, resource design', 1, true, current_timestamp, current_timestamp, 26),
('95', 'Spring MVC for REST', '@RestController, @RequestMapping, path variables', 2, true, current_timestamp, current_timestamp, 26),
('96', 'Request and Response Handling', 'JSON serialization, @RequestBody, @ResponseBody', 3, true, current_timestamp, current_timestamp, 26),
('97', 'Exception Handling in REST APIs', '@ExceptionHandler, global exception handling', 4, true, current_timestamp, current_timestamp, 26),
('98', 'API Documentation', 'Swagger/OpenAPI integration', 5, true, current_timestamp, current_timestamp, 26),

-- Topic 27: Testing in Java
('99', 'Testing Fundamentals', 'Unit vs integration testing, test pyramid', 1, true, current_timestamp, current_timestamp, 27),
('100', 'JUnit 5', 'Annotations, assertions, parameterized tests', 2, true, current_timestamp, current_timestamp, 27),
('101', 'Mockito Framework', 'Mocking dependencies, verify interactions', 3, true, current_timestamp, current_timestamp, 27),
('102', 'Spring Boot Testing', '@SpringBootTest, @WebMvcTest, test slices', 4, true, current_timestamp, current_timestamp, 27),

-- Topic 28: Build Tools & Dependency Management
('103', 'Introduction to Build Tools', 'Maven vs Gradle comparison', 1, true, current_timestamp, current_timestamp, 28),
('104', 'Maven Fundamentals', 'POM file, dependencies, build lifecycle', 2, true, current_timestamp, current_timestamp, 28),
('105', 'Gradle Basics', 'Build scripts, dependency management', 3, true, current_timestamp, current_timestamp, 28),
('106', 'Managing Dependencies', 'Version conflicts, dependency scopes', 4, true, current_timestamp, current_timestamp, 28),

-- Topic 29: Microservices Introduction
('107', 'Microservices Architecture', 'Monolith vs microservices, benefits and challenges', 1, true, current_timestamp, current_timestamp, 29),
('108', 'Service Communication', 'HTTP, messaging, service discovery', 2, true, current_timestamp, current_timestamp, 29),
('109', 'Spring Cloud Overview', 'Configuration server, service registry', 3, true, current_timestamp, current_timestamp, 29),
('110', 'API Gateway Pattern', 'Routing, load balancing, API composition', 4, true, current_timestamp, current_timestamp, 29),

-- Topic 30: Security in Java Applications
('111', 'Introduction to Spring Security', 'Authentication vs authorization', 1, true, current_timestamp, current_timestamp, 30),
('112', 'User Authentication', 'Form-based, HTTP Basic, JWT tokens', 2, true, current_timestamp, current_timestamp, 30),
('113', 'Authorization', 'Method-level security, role-based access', 3, true, current_timestamp, current_timestamp, 30),
('114', 'Security Best Practices', 'Password hashing, CSRF protection, HTTPS', 4, true, current_timestamp, current_timestamp, 30),

-- Topic 31: Design Patterns
('115', 'Creational Patterns', 'Singleton, Factory, Builder patterns', 1, true, current_timestamp, current_timestamp, 31),
('116', 'Structural Patterns', 'Adapter, Decorator, Facade patterns', 2, true, current_timestamp, current_timestamp, 31),
('117', 'Behavioral Patterns', 'Observer, Strategy, Command patterns', 3, true, current_timestamp, current_timestamp, 31),
('118', 'Enterprise Patterns', 'DAO, DTO, MVC, Repository patterns', 4, true, current_timestamp, current_timestamp, 31),

-- Topic 32: Deployment & Containerization
('119', 'Application Packaging', 'JAR vs WAR files, executable JARs', 1, true, current_timestamp, current_timestamp, 32),
('120', 'Docker Fundamentals', 'Containers, Dockerfiles, images', 2, true, current_timestamp, current_timestamp, 32),
('121', 'Containerizing Spring Boot Apps', 'Multi-stage builds, optimization techniques', 3, true, current_timestamp, current_timestamp, 32),
('122', 'Cloud Deployment', 'AWS, Azure, Google Cloud deployment options', 4, true, current_timestamp, current_timestamp, 32),

-- Topic 33: Advanced Topics & Best Practices
('123', 'Performance Tuning', 'JVM tuning, memory management, profiling', 1, true, current_timestamp, current_timestamp, 33),
('124', 'Logging and Monitoring', 'Logback, SLF4J, application monitoring', 2, true, current_timestamp, current_timestamp, 33),
('125', 'Production Best Practices', 'Health checks, graceful shutdown, configuration management', 3, true, current_timestamp, current_timestamp, 33),
('126', 'Code Quality', 'Static analysis, code reviews, documentation', 4, true, current_timestamp, current_timestamp, 33),

-- Topic 34: Introduction to Data Structures & Algorithms
('127', 'What are Data Structures?', 'Definition, types, importance in programming', 1, true, current_timestamp, current_timestamp, 34),
('128', 'Algorithm Analysis', 'Time complexity, space complexity, Big O notation', 2, true, current_timestamp, current_timestamp, 34),
('129', 'Best, Average, and Worst Case Analysis', 'Runtime analysis scenarios', 3, true, current_timestamp, current_timestamp, 34),
('130', 'Choosing the Right Data Structure', 'Trade-offs and decision criteria', 4, true, current_timestamp, current_timestamp, 34),

-- Topic 35: Arrays and Strings
('131', 'Array Fundamentals', 'Declaration, initialization, indexing, memory layout', 1, true, current_timestamp, current_timestamp, 35),
('132', 'Array Operations', 'Insertion, deletion, traversal, searching', 2, true, current_timestamp, current_timestamp, 35),
('133', 'Multi-dimensional Arrays', '2D arrays, matrix operations', 3, true, current_timestamp, current_timestamp, 35),
('134', 'String Manipulation', 'String methods, pattern matching, string building', 4, true, current_timestamp, current_timestamp, 35),
('135', 'Common Array Problems', 'Two pointers, sliding window, prefix sums', 5, true, current_timestamp, current_timestamp, 35),

-- Topic 36: Linked Lists
('136', 'Introduction to Linked Lists', 'Node structure, memory allocation, advantages over arrays', 1, true, current_timestamp, current_timestamp, 36),
('137', 'Singly Linked Lists', 'Implementation, insertion, deletion, traversal', 2, true, current_timestamp, current_timestamp, 36),
('138', 'Doubly Linked Lists', 'Bidirectional traversal, implementation differences', 3, true, current_timestamp, current_timestamp, 36),
('139', 'Circular Linked Lists', 'Circular structure, use cases, implementation', 4, true, current_timestamp, current_timestamp, 36),
('140', 'Linked List Problems', 'Cycle detection, merging, reversing, intersection', 5, true, current_timestamp, current_timestamp, 36),

-- Topic 37: Stacks and Queues
('141', 'Stack Data Structure', 'LIFO principle, push, pop, peek operations', 1, true, current_timestamp, current_timestamp, 37),
('142', 'Stack Implementation', 'Array-based and linked list-based implementations', 2, true, current_timestamp, current_timestamp, 37),
('143', 'Stack Applications', 'Function calls, expression evaluation, backtracking', 3, true, current_timestamp, current_timestamp, 37),
('144', 'Queue Data Structure', 'FIFO principle, enqueue, dequeue operations', 4, true, current_timestamp, current_timestamp, 37),
('145', 'Queue Implementation', 'Circular queue, priority queue, deque', 5, true, current_timestamp, current_timestamp, 37),
('146', 'Queue Applications', 'BFS, task scheduling, buffer management', 6, true, current_timestamp, current_timestamp, 37),

-- Topic 38: Trees and Binary Trees
('147', 'Introduction to Trees', 'Tree terminology, types of trees, tree properties', 1, true, current_timestamp, current_timestamp, 38),
('148', 'Binary Trees', 'Structure, node representation, types of binary trees', 2, true, current_timestamp, current_timestamp, 38),
('149', 'Tree Traversals', 'Inorder, preorder, postorder, level-order traversal', 3, true, current_timestamp, current_timestamp, 38),
('150', 'Binary Search Trees (BST)', 'BST properties, insertion, deletion, searching', 4, true, current_timestamp, current_timestamp, 38),
('151', 'Balanced Trees', 'AVL trees, Red-Black trees, tree balancing', 5, true, current_timestamp, current_timestamp, 38),
('152', 'Tree Applications', 'Expression trees, decision trees, file systems', 6, true, current_timestamp, current_timestamp, 38),

-- Topic 39: Graphs
('153', 'Graph Fundamentals', 'Vertices, edges, directed vs undirected graphs', 1, true, current_timestamp, current_timestamp, 39),
('154', 'Graph Representation', 'Adjacency matrix, adjacency list, edge list', 2, true, current_timestamp, current_timestamp, 39),
('155', 'Graph Traversal', 'Depth-First Search (DFS), Breadth-First Search (BFS)', 3, true, current_timestamp, current_timestamp, 39),
('156', 'Shortest Path Algorithms', 'Dijkstra, Floyd-Warshall, Bellman-Ford', 4, true, current_timestamp, current_timestamp, 39),
('157', 'Minimum Spanning Tree', 'Kruskal algorithm, Prim algorithm', 5, true, current_timestamp, current_timestamp, 39),
('158', 'Graph Applications', 'Social networks, routing algorithms, dependency resolution', 6, true, current_timestamp, current_timestamp, 39),

-- Topic 40: Sorting Algorithms
('159', 'Introduction to Sorting', 'Importance of sorting, stability, in-place sorting', 1, true, current_timestamp, current_timestamp, 40),
('160', 'Simple Sorting Algorithms', 'Bubble sort, Selection sort, Insertion sort', 2, true, current_timestamp, current_timestamp, 40),
('161', 'Efficient Sorting Algorithms', 'Merge sort, Quick sort, Heap sort', 3, true, current_timestamp, current_timestamp, 40),
('162', 'Linear Sorting Algorithms', 'Counting sort, Radix sort, Bucket sort', 4, true, current_timestamp, current_timestamp, 40),
('163', 'Comparison of Sorting Algorithms', 'Time complexity, space complexity, use cases', 5, true, current_timestamp, current_timestamp, 40),

-- Topic 41: Searching Algorithms
('164', 'Linear Search', 'Sequential search, time complexity, variations', 1, true, current_timestamp, current_timestamp, 41),
('165', 'Binary Search', 'Divide and conquer, implementation, complexity analysis', 2, true, current_timestamp, current_timestamp, 41),
('166', 'Binary Search Variations', 'First occurrence, last occurrence, ceiling, floor', 3, true, current_timestamp, current_timestamp, 41),
('167', 'Search in Specialized Structures', 'BST search, hash table lookup', 4, true, current_timestamp, current_timestamp, 41),
('168', 'String Searching', 'Pattern matching algorithms, KMP, Boyer-Moore', 5, true, current_timestamp, current_timestamp, 41),

-- Topic 42: Dynamic Programming
('169', 'Introduction to Dynamic Programming', 'Optimal substructure, overlapping subproblems', 1, true, current_timestamp, current_timestamp, 42),
('170', 'Memoization (Top-Down)', 'Recursive approach with caching', 2, true, current_timestamp, current_timestamp, 42),
('171', 'Tabulation (Bottom-Up)', 'Iterative approach, building solution table', 3, true, current_timestamp, current_timestamp, 42),
('172', 'Classic DP Problems', 'Fibonacci, Knapsack, Longest Common Subsequence', 4, true, current_timestamp, current_timestamp, 42),
('173', 'Advanced DP Patterns', 'Matrix chain multiplication, edit distance, coin change', 5, true, current_timestamp, current_timestamp, 42),

-- Topic 43: Greedy Algorithms
('174', 'Greedy Algorithm Approach', 'Greedy choice property, local optimal decisions', 1, true, current_timestamp, current_timestamp, 43),
('175', 'Activity Selection Problem', 'Interval scheduling, greedy solution', 2, true, current_timestamp, current_timestamp, 43),
('176', 'Fractional Knapsack', 'Greedy vs dynamic programming approaches', 3, true, current_timestamp, current_timestamp, 43),
('177', 'Graph Greedy Algorithms', 'Minimum spanning tree algorithms', 4, true, current_timestamp, current_timestamp, 43),
('178', 'Huffman Coding', 'Optimal prefix codes, compression algorithms', 5, true, current_timestamp, current_timestamp, 43),

-- Topic 44: Hashing
('179', 'Hash Tables Fundamentals', 'Hash functions, key-value mapping, load factor', 1, true, current_timestamp, current_timestamp, 44),
('180', 'Collision Resolution', 'Chaining, open addressing, linear probing, quadratic probing', 2, true, current_timestamp, current_timestamp, 44),
('181', 'Hash Function Design', 'Good hash functions, distribution, avalanche effect', 3, true, current_timestamp, current_timestamp, 44),
('182', 'Applications of Hashing', 'Caching, database indexing, cryptography', 4, true, current_timestamp, current_timestamp, 44),
('183', 'Advanced Hashing', 'Consistent hashing, bloom filters, count-min sketch', 5, true, current_timestamp, current_timestamp, 44),

-- Topic 45: Advanced Topics & Problem Solving
('184', 'Backtracking Algorithms', 'N-Queens, Sudoku solver, permutation generation', 1, true, current_timestamp, current_timestamp, 45),
('185', 'Divide and Conquer', 'Master theorem, closest pair, maximum subarray', 2, true, current_timestamp, current_timestamp, 45),
('186', 'Advanced Graph Algorithms', 'Topological sorting, strongly connected components', 3, true, current_timestamp, current_timestamp, 45),
('187', 'Competitive Programming Techniques', 'Fast I/O, bit manipulation, number theory basics', 4, true, current_timestamp, current_timestamp, 45),
('188', 'Problem Solving Strategies', 'Pattern recognition, optimization techniques, debugging', 5, true, current_timestamp, current_timestamp, 45),

-- Topic 46: Introduction to Cloud Computing
('189', 'What is Cloud Computing?', 'Definition, characteristics, benefits of cloud computing', 1, true, current_timestamp, current_timestamp, 46),
('190', 'Cloud Service Models', 'IaaS, PaaS, SaaS - understanding the differences', 2, true, current_timestamp, current_timestamp, 46),
('191', 'Cloud Deployment Models', 'Public, private, hybrid, and multi-cloud strategies', 3, true, current_timestamp, current_timestamp, 46),
('192', 'Major Cloud Providers', 'AWS, Azure, Google Cloud - comparison and market overview', 4, true, current_timestamp, current_timestamp, 46),
('193', 'Cloud Computing Economics', 'Cost models, pricing strategies, ROI considerations', 5, true, current_timestamp, current_timestamp, 46),

-- Topic 47: AWS Fundamentals & Account Setup
('194', 'Introduction to Amazon Web Services', 'AWS history, global infrastructure, availability zones', 1, true, current_timestamp, current_timestamp, 47),
('195', 'AWS Account Setup', 'Creating account, billing setup, free tier understanding', 2, true, current_timestamp, current_timestamp, 47),
('196', 'AWS Management Console', 'Navigating console, dashboard customization, CLI setup', 3, true, current_timestamp, current_timestamp, 47),
('197', 'AWS Core Services Overview', 'Essential services landscape and service categories', 4, true, current_timestamp, current_timestamp, 47),
('198', 'AWS Regions and Availability Zones', 'Geographic distribution, latency considerations, disaster recovery', 5, true, current_timestamp, current_timestamp, 47),

-- Topic 48: Compute Services (EC2)
('199', 'Introduction to Amazon EC2', 'Virtual machines in the cloud, instance types, use cases', 1, true, current_timestamp, current_timestamp, 48),
('200', 'Launching Your First EC2 Instance', 'Instance creation, AMIs, key pairs, security groups', 2, true, current_timestamp, current_timestamp, 48),
('201', 'EC2 Instance Types and Sizing', 'General purpose, compute optimized, memory optimized instances', 3, true, current_timestamp, current_timestamp, 48),
('202', 'EC2 Pricing Models', 'On-demand, reserved, spot instances, savings plans', 4, true, current_timestamp, current_timestamp, 48),
('203', 'EC2 Auto Scaling', 'Horizontal scaling, launch configurations, scaling policies', 5, true, current_timestamp, current_timestamp, 48),
('204', 'Load Balancing with ELB', 'Application, Network, and Classic Load Balancers', 6, true, current_timestamp, current_timestamp, 48),

-- Topic 49: Storage Services (S3, EBS)
('205', 'Amazon S3 Fundamentals', 'Object storage, buckets, objects, S3 use cases', 1, true, current_timestamp, current_timestamp, 49),
('206', 'S3 Storage Classes', 'Standard, IA, Glacier, Deep Archive - cost optimization', 2, true, current_timestamp, current_timestamp, 49),
('207', 'S3 Security and Access Control', 'Bucket policies, ACLs, IAM integration, encryption', 3, true, current_timestamp, current_timestamp, 49),
('208', 'Amazon EBS (Elastic Block Store)', 'Block storage, volume types, snapshots, encryption', 4, true, current_timestamp, current_timestamp, 49),
('209', 'S3 Advanced Features', 'Versioning, lifecycle policies, cross-region replication', 5, true, current_timestamp, current_timestamp, 49),
('210', 'Storage Integration Patterns', 'S3 with EC2, CloudFront, data transfer optimization', 6, true, current_timestamp, current_timestamp, 49),

-- Topic 50: Database Services (RDS, DynamoDB)
('211', 'Introduction to AWS Database Services', 'Managed vs self-managed, database types overview', 1, true, current_timestamp, current_timestamp, 50),
('212', 'Amazon RDS (Relational Database Service)', 'MySQL, PostgreSQL, Oracle, SQL Server on RDS', 2, true, current_timestamp, current_timestamp, 50),
('213', 'RDS Configuration and Management', 'Multi-AZ, read replicas, automated backups, monitoring', 3, true, current_timestamp, current_timestamp, 50),
('214', 'Amazon DynamoDB', 'NoSQL database, key-value and document store, use cases', 4, true, current_timestamp, current_timestamp, 50),
('215', 'DynamoDB Operations', 'Tables, items, queries, scans, global secondary indexes', 5, true, current_timestamp, current_timestamp, 50),
('216', 'Database Migration Strategies', 'AWS DMS, migration tools, best practices', 6, true, current_timestamp, current_timestamp, 50),

-- Topic 51: Networking & Content Delivery
('217', 'Amazon VPC (Virtual Private Cloud)', 'Private networks in AWS, subnets, routing tables', 1, true, current_timestamp, current_timestamp, 51),
('218', 'VPC Security', 'Security groups, NACLs, VPN connections, Direct Connect', 2, true, current_timestamp, current_timestamp, 51),
('219', 'Amazon CloudFront', 'Content delivery network, caching, global distribution', 3, true, current_timestamp, current_timestamp, 51),
('220', 'Route 53 DNS Service', 'Domain registration, DNS routing, health checks', 4, true, current_timestamp, current_timestamp, 51),
('221', 'API Gateway', 'API management, throttling, authentication, integration', 5, true, current_timestamp, current_timestamp, 51),

-- Topic 52: Security & Identity Management (IAM)
('222', 'AWS Identity and Access Management (IAM)', 'Users, groups, roles, policies fundamentals', 1, true, current_timestamp, current_timestamp, 52),
('223', 'IAM Policies and Permissions', 'JSON policies, resource-based policies, policy evaluation', 2, true, current_timestamp, current_timestamp, 52),
('224', 'IAM Roles and AssumeRole', 'Cross-account access, service roles, temporary credentials', 3, true, current_timestamp, current_timestamp, 52),
('225', 'AWS Security Best Practices', 'Least privilege, MFA, credential management, monitoring', 4, true, current_timestamp, current_timestamp, 52),
('226', 'Compliance and Auditing', 'CloudTrail, Config, security auditing tools', 5, true, current_timestamp, current_timestamp, 52),

-- Topic 53: Serverless Computing (Lambda)
('227', 'Introduction to AWS Lambda', 'Function as a Service, event-driven computing, use cases', 1, true, current_timestamp, current_timestamp, 53),
('228', 'Creating Lambda Functions', 'Function deployment, runtime environments, handler functions', 2, true, current_timestamp, current_timestamp, 53),
('229', 'Lambda Triggers and Events', 'S3 events, API Gateway, CloudWatch, event sources', 3, true, current_timestamp, current_timestamp, 53),
('230', 'Lambda Configuration', 'Memory allocation, timeout, environment variables, layers', 4, true, current_timestamp, current_timestamp, 53),
('231', 'Serverless Application Patterns', 'API backends, data processing, automation workflows', 5, true, current_timestamp, current_timestamp, 53),
('232', 'Serverless Framework Integration', 'SAM, Serverless Framework, infrastructure as code', 6, true, current_timestamp, current_timestamp, 53),

-- Topic 54: Monitoring & Management Tools
('233', 'Amazon CloudWatch', 'Metrics, logs, alarms, dashboards, monitoring strategies', 1, true, current_timestamp, current_timestamp, 54),
('234', 'CloudWatch Logs and Insights', 'Log aggregation, querying, real-time monitoring', 2, true, current_timestamp, current_timestamp, 54),
('235', 'AWS Systems Manager', 'Parameter Store, Session Manager, Patch Manager', 3, true, current_timestamp, current_timestamp, 54),
('236', 'AWS X-Ray', 'Distributed tracing, performance analysis, debugging', 4, true, current_timestamp, current_timestamp, 54),
('237', 'Resource Management', 'Tags, resource groups, cost allocation, governance', 5, true, current_timestamp, current_timestamp, 54),

-- Topic 55: DevOps & Deployment Pipelines
('238', 'Introduction to AWS DevOps', 'CI/CD concepts, DevOps culture, automation benefits', 1, true, current_timestamp, current_timestamp, 55),
('239', 'AWS CodeCommit and CodeBuild', 'Source control, build automation, build specifications', 2, true, current_timestamp, current_timestamp, 55),
('240', 'AWS CodeDeploy and CodePipeline', 'Deployment automation, pipeline orchestration', 3, true, current_timestamp, current_timestamp, 55),
('241', 'Infrastructure as Code', 'CloudFormation templates, stack management, best practices', 4, true, current_timestamp, current_timestamp, 55),
('242', 'Container Services', 'ECS, EKS, Fargate, container orchestration', 5, true, current_timestamp, current_timestamp, 55),
('243', 'Blue/Green and Rolling Deployments', 'Deployment strategies, zero-downtime deployments', 6, true, current_timestamp, current_timestamp, 55),

-- Topic 56: Cost Optimization & Billing
('244', 'AWS Pricing Models', 'Understanding AWS cost structure, pricing calculators', 1, true, current_timestamp, current_timestamp, 56),
('245', 'Cost Monitoring and Budgets', 'Cost Explorer, budgets, billing alerts, cost anomalies', 2, true, current_timestamp, current_timestamp, 56),
('246', 'Resource Optimization', 'Right-sizing, reserved instances, spot instances strategies', 3, true, current_timestamp, current_timestamp, 56),
('247', 'AWS Cost Optimization Tools', 'Trusted Advisor, Cost and Usage Reports, recommendations', 4, true, current_timestamp, current_timestamp, 56),
('248', 'FinOps Best Practices', 'Cost allocation, chargeback models, governance strategies', 5, true, current_timestamp, current_timestamp, 56),

-- Topic 57: Real-World Projects & Best Practices
('249', 'Three-Tier Web Application on AWS', 'End-to-end application deployment with best practices', 1, true, current_timestamp, current_timestamp, 57),
('250', 'Serverless Data Processing Pipeline', 'Event-driven data processing with Lambda and S3', 2, true, current_timestamp, current_timestamp, 57),
('251', 'High Availability Architecture', 'Multi-AZ deployments, disaster recovery, fault tolerance', 3, true, current_timestamp, current_timestamp, 57),
('252', 'AWS Well-Architected Framework', 'Five pillars: security, reliability, performance, cost, sustainability', 4, true, current_timestamp, current_timestamp, 57),
('253', 'Migration Strategies', 'Lift and shift, re-platforming, re-architecting approaches', 5, true, current_timestamp, current_timestamp, 57),
('254', 'AWS Certification Preparation', 'Study paths, hands-on practice, exam strategies', 6, true, current_timestamp, current_timestamp, 57),

-- Topic 58: Introduction to React & Frontend Development
('255', 'What is React?', 'Introduction to React, virtual DOM, component-based architecture', 1, true, current_timestamp, current_timestamp, 58),
('256', 'Modern Frontend Development', 'SPA vs MPA, build tools, development workflow', 2, true, current_timestamp, current_timestamp, 58),
('257', 'React Ecosystem Overview', 'React libraries, tools, community packages', 3, true, current_timestamp, current_timestamp, 58),
('258', 'Setting Up Development Environment', 'Node.js, npm/yarn, Create React App, VS Code setup', 4, true, current_timestamp, current_timestamp, 58),
('259', 'Your First React Application', 'Creating first app, project structure, development server', 5, true, current_timestamp, current_timestamp, 58),

-- Topic 59: JavaScript ES6+ Features
('260', 'Let, Const, and Block Scope', 'Variable declarations, temporal dead zone, scope differences', 1, true, current_timestamp, current_timestamp, 59),
('261', 'Arrow Functions', 'Arrow function syntax, this binding, use cases', 2, true, current_timestamp, current_timestamp, 59),
('262', 'Destructuring and Spread Operator', 'Array/object destructuring, spread syntax, rest parameters', 3, true, current_timestamp, current_timestamp, 59),
('263', 'Template Literals and String Methods', 'Template strings, string interpolation, new string methods', 4, true, current_timestamp, current_timestamp, 59),
('264', 'Modules and Import/Export', 'ES6 modules, named/default exports, module bundling', 5, true, current_timestamp, current_timestamp, 59),
('265', 'Promises and Async/Await', 'Asynchronous JavaScript, promise handling, modern async patterns', 6, true, current_timestamp, current_timestamp, 59),

-- Topic 60: React Components and JSX
('266', 'Understanding JSX', 'JSX syntax, expressions, differences from HTML', 1, true, current_timestamp, current_timestamp, 60),
('267', 'Functional Components', 'Creating functional components, component composition', 2, true, current_timestamp, current_timestamp, 60),
('268', 'Class Components', 'Class-based components, lifecycle methods, when to use', 3, true, current_timestamp, current_timestamp, 60),
('269', 'Component Props', 'Passing data to components, prop types, default props', 4, true, current_timestamp, current_timestamp, 60),
('270', 'Conditional Rendering', 'Conditional rendering techniques, ternary operators, logical AND', 5, true, current_timestamp, current_timestamp, 60),
('271', 'Lists and Keys', 'Rendering lists, key prop importance, dynamic lists', 6, true, current_timestamp, current_timestamp, 60),

-- Topic 61: State Management and Props
('272', 'Understanding React State', 'State concept, local component state, state immutability', 1, true, current_timestamp, current_timestamp, 61),
('273', 'useState Hook', 'State hook usage, state updates, functional updates', 2, true, current_timestamp, current_timestamp, 61),
('274', 'Props vs State', 'Data flow paradigms, when to use props vs state', 3, true, current_timestamp, current_timestamp, 61),
('275', 'Lifting State Up', 'State sharing between components, common ancestors', 4, true, current_timestamp, current_timestamp, 61),
('276', 'Prop Drilling and Solutions', 'Props passing through components, avoiding prop drilling', 5, true, current_timestamp, current_timestamp, 61),

-- Topic 62: Event Handling and Forms
('277', 'React Event System', 'SyntheticEvent, event handling patterns, event delegation', 1, true, current_timestamp, current_timestamp, 62),
('278', 'Handling Form Inputs', 'Controlled components, input handling, form validation', 2, true, current_timestamp, current_timestamp, 62),
('279', 'Form Submission', 'Form submission handling, preventDefault, form data processing', 3, true, current_timestamp, current_timestamp, 62),
('280', 'Advanced Form Patterns', 'Dynamic forms, form libraries (Formik), validation schemas', 4, true, current_timestamp, current_timestamp, 62),
('281', 'File Uploads and Complex Inputs', 'File handling, checkboxes, radio buttons, select elements', 5, true, current_timestamp, current_timestamp, 62),

-- Topic 63: React Hooks
('282', 'Introduction to Hooks', 'Hooks overview, rules of hooks, functional vs class components', 1, true, current_timestamp, current_timestamp, 63),
('283', 'useEffect Hook', 'Side effects, component lifecycle with hooks, cleanup', 2, true, current_timestamp, current_timestamp, 63),
('284', 'useContext Hook', 'Context API, consuming context with hooks, context patterns', 3, true, current_timestamp, current_timestamp, 63),
('285', 'useReducer Hook', 'Complex state management, reducer pattern, useReducer vs useState', 4, true, current_timestamp, current_timestamp, 63),
('286', 'Custom Hooks', 'Creating reusable logic, custom hook patterns, sharing stateful logic', 5, true, current_timestamp, current_timestamp, 63),
('287', 'Advanced Hooks', 'useMemo, useCallback, useRef, performance optimization hooks', 6, true, current_timestamp, current_timestamp, 63),

-- Topic 64: Routing and Navigation
('288', 'Introduction to Single Page Applications', 'SPA routing concepts, client-side routing benefits', 1, true, current_timestamp, current_timestamp, 64),
('289', 'React Router Setup', 'Installing React Router, BrowserRouter, basic routing', 2, true, current_timestamp, current_timestamp, 64),
('290', 'Route Components and Navigation', 'Route, Link, NavLink components, programmatic navigation', 3, true, current_timestamp, current_timestamp, 64),
('291', 'Dynamic Routing', 'URL parameters, query strings, nested routes', 4, true, current_timestamp, current_timestamp, 64),
('292', 'Route Guards and Protected Routes', 'Authentication-based routing, route protection patterns', 5, true, current_timestamp, current_timestamp, 64),

-- Topic 65: API Integration and HTTP Requests
('293', 'Making HTTP Requests in React', 'Fetch API, Axios library, API integration patterns', 1, true, current_timestamp, current_timestamp, 65),
('294', 'useEffect for Data Fetching', 'Data fetching lifecycle, loading states, error handling', 2, true, current_timestamp, current_timestamp, 65),
('295', 'Managing Async State', 'Loading, error, and success states, async patterns', 3, true, current_timestamp, current_timestamp, 65),
('296', 'REST API Integration', 'CRUD operations, RESTful patterns, API design principles', 4, true, current_timestamp, current_timestamp, 65),
('297', 'Authentication and Authorization', 'JWT tokens, protected API calls, auth state management', 5, true, current_timestamp, current_timestamp, 65),
('298', 'Data Caching and Optimization', 'Request caching, React Query, SWR library introduction', 6, true, current_timestamp, current_timestamp, 65),

-- Topic 66: State Management Libraries (Context, Redux)
('299', 'React Context API', 'Creating context, providers, consumers, context best practices', 1, true, current_timestamp, current_timestamp, 66),
('300', 'Context for Global State', 'Application-level state, theme management, user state', 2, true, current_timestamp, current_timestamp, 66),
('301', 'Introduction to Redux', 'Redux principles, store, actions, reducers, unidirectional data flow', 3, true, current_timestamp, current_timestamp, 66),
('302', 'Redux Toolkit', 'Modern Redux patterns, RTK setup, createSlice, async thunks', 4, true, current_timestamp, current_timestamp, 66),
('303', 'Redux vs Context API', 'When to use Redux, Context API limitations, state management decisions', 5, true, current_timestamp, current_timestamp, 66),

-- Topic 67: Testing React Applications
('304', 'Introduction to React Testing', 'Testing philosophy, types of tests, testing pyramid', 1, true, current_timestamp, current_timestamp, 67),
('305', 'Jest and Testing Library Setup', 'Test environment setup, Jest configuration, RTL introduction', 2, true, current_timestamp, current_timestamp, 67),
('306', 'Component Testing', 'Unit testing components, testing props, state, and interactions', 3, true, current_timestamp, current_timestamp, 67),
('307', 'Testing Hooks and Custom Logic', 'Testing custom hooks, async testing, mocking dependencies', 4, true, current_timestamp, current_timestamp, 67),
('308', 'Integration and E2E Testing', 'Integration testing approaches, Cypress introduction, testing workflows', 5, true, current_timestamp, current_timestamp, 67),

-- Topic 68: Performance Optimization & Advanced Patterns
('309', 'React Performance Concepts', 'Reconciliation, virtual DOM, performance bottlenecks', 1, true, current_timestamp, current_timestamp, 68),
('310', 'Memoization Techniques', 'React.memo, useMemo, useCallback, optimization strategies', 2, true, current_timestamp, current_timestamp, 68),
('311', 'Code Splitting and Lazy Loading', 'Dynamic imports, React.lazy, Suspense, bundle optimization', 3, true, current_timestamp, current_timestamp, 68),
('312', 'Advanced Component Patterns', 'Higher-Order Components, Render Props, Compound Components', 4, true, current_timestamp, current_timestamp, 68),
('313', 'Error Boundaries', 'Error handling in React, componentDidCatch, error boundaries', 5, true, current_timestamp, current_timestamp, 68),

-- Topic 69: Deployment and Production Best Practices
('314', 'Building for Production', 'Production builds, optimization, environment variables', 1, true, current_timestamp, current_timestamp, 69),
('315', 'Static Site Deployment', 'Netlify, Vercel, GitHub Pages deployment, CI/CD integration', 2, true, current_timestamp, current_timestamp, 69),
('316', 'Server-Side Rendering (SSR)', 'Next.js introduction, SSR benefits, SSG concepts', 3, true, current_timestamp, current_timestamp, 69),
('317', 'Performance Monitoring', 'Core Web Vitals, performance metrics, monitoring tools', 4, true, current_timestamp, current_timestamp, 69),
('318', 'Security Best Practices', 'XSS prevention, secure coding, dependency security', 5, true, current_timestamp, current_timestamp, 69),
('319', 'React Ecosystem and Future', 'React 18 features, concurrent features, React ecosystem trends', 6, true, current_timestamp, current_timestamp, 69),

-- HTML Subtopics (Topic 70-74)
('320', 'What is HTML?', 'Definition, history, and importance of HTML.', 1, true, current_timestamp, current_timestamp, 70),
('321', 'HTML Document Structure', 'DOCTYPE, html, head, body tags.', 2, true, current_timestamp, current_timestamp, 70),
('322', 'Basic Tags', 'p, h1-h6, a, img, ul, ol, li, etc.', 3, true, current_timestamp, current_timestamp, 71),
('323', 'Links and Images', 'Creating hyperlinks and displaying images.', 4, true, current_timestamp, current_timestamp, 71),
('324', 'Tables', 'table, tr, td, th, thead, tbody, tfoot.', 5, true, current_timestamp, current_timestamp, 71),
('325', 'Forms', 'form, input, textarea, button, select, option.', 1, true, current_timestamp, current_timestamp, 72),
('326', 'Form Validation', 'Required fields, input types, pattern attribute.', 2, true, current_timestamp, current_timestamp, 72),
('327', 'Embedding Media', 'audio, video, iframe, embed, object.', 1, true, current_timestamp, current_timestamp, 73),
('328', 'Semantic Tags', 'header, nav, main, section, article, aside, footer.', 1, true, current_timestamp, current_timestamp, 74),
('329', 'Accessibility Basics', 'alt text, ARIA roles, tab order.', 2, true, current_timestamp, current_timestamp, 74),

-- CSS Subtopics (Topic 75-79)
('330', 'What is CSS?', 'Definition, history, and role in web development.', 1, true, current_timestamp, current_timestamp, 75),
('331', 'CSS Syntax', 'Selectors, properties, and values.', 2, true, current_timestamp, current_timestamp, 75),
('332', 'Color and Background', 'color, background-color, gradients, images.', 1, true, current_timestamp, current_timestamp, 76),
('333', 'Fonts and Text', 'font-family, font-size, font-weight, text-align.', 2, true, current_timestamp, current_timestamp, 76),
('334', 'Box Model', 'margin, border, padding, content.', 1, true, current_timestamp, current_timestamp, 77),
('335', 'Positioning', 'static, relative, absolute, fixed, sticky.', 2, true, current_timestamp, current_timestamp, 77),
('336', 'Flexbox', 'Flexible box layout, alignment, ordering.', 3, true, current_timestamp, current_timestamp, 77),
('337', 'Grid', 'CSS Grid layout, rows, columns, areas.', 4, true, current_timestamp, current_timestamp, 77),
('338', 'Media Queries', 'Responsive design with media queries.', 1, true, current_timestamp, current_timestamp, 78),
('339', 'Transitions and Animations', 'CSS transitions, keyframes, animation properties.', 1, true, current_timestamp, current_timestamp, 79),
('340', 'CSS Preprocessors', 'Sass, LESS, variables, nesting.', 2, true, current_timestamp, current_timestamp, 79),

-- JavaScript Subtopics (Topic 80-84)
('341', 'What is JavaScript?', 'Definition, history, and role in web development.', 1, true, current_timestamp, current_timestamp, 80),
('342', 'JavaScript in HTML', 'script tag, inline vs external scripts.', 2, true, current_timestamp, current_timestamp, 80),
('343', 'Variables', 'var, let, const, scope.', 1, true, current_timestamp, current_timestamp, 81),
('344', 'Data Types', 'String, Number, Boolean, Object, Array, null, undefined.', 2, true, current_timestamp, current_timestamp, 81),
('345', 'Operators', 'Arithmetic, assignment, comparison, logical.', 3, true, current_timestamp, current_timestamp, 81),
('346', 'Conditionals', 'if, else, switch.', 1, true, current_timestamp, current_timestamp, 82),
('347', 'Loops', 'for, while, do-while.', 2, true, current_timestamp, current_timestamp, 82),
('348', 'Functions', 'Function declaration, expression, arrow functions.', 3, true, current_timestamp, current_timestamp, 82),
('349', 'DOM Basics', 'Selecting and modifying elements.', 1, true, current_timestamp, current_timestamp, 83),
('350', 'Event Handling', 'addEventListener, event object, common events.', 1, true, current_timestamp, current_timestamp, 84),
('351', 'Form Interactivity', 'Validating and submitting forms with JS.', 2, true, current_timestamp, current_timestamp, 84)
ON CONFLICT ("title", "topicId") DO NOTHING;