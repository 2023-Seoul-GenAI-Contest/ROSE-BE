-- Database: seoul_genai
CREATE SEQUENCE member_id_seq INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;
CREATE TABLE member (
    id INT NOT NULL DEFAULT nextval('member_id_seq' :: regclass),
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(12),
    enroll_lecture INT,
    finsh_lecture INT,
    level TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE SEQUENCE lecture_id_seq INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;
CREATE TABLE LECTURE (
    id INT NOT NULL DEFAULT nextval('lecture_id_seq' :: regclass),
    title TEXT NOT NULL,
    detail TEXT,
    thumenail TEXT,
    video_link TEXT,
    stt_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    
    PRIMARY KEY (id)
);
CREATE TABLE ENROLL_LECTURE_USER (
    user_id INT NOT NULL,
    lecture_id INT NOT NULL,
    running_time INT,
    enrolled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_study_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE CHAT_HIST (
    user_id INT NOT NULL,
    question TEXT NOT NULL,
    answer TEXT,
    parent_question_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE SEQUENCE quiz_id_seq INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;
CREATE TABLE QUIZ_HIST (
    id INT NOT NULL DEFAULT nextval('quiz_id_seq' :: regclass),
    question TEXT NOT NULL,
    lecture_id INT NOT NULL,
    answer_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE SEQUENCE example_id_seq INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;
CREATE TABLE EXAMPLE_HIST (
    id INT NOT NULL DEFAULT nextval('example_id_seq' :: regclass),
    name TEXT NOT NULL,
    quiz_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE SEQUENCE keyword_id_seq INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;
CREATE TABLE KEYWORD_HIST (
    id INT NOT NULL DEFAULT nextval('keyword_id_seq' :: regclass),
    name TEXT NOT NULL,
    lecture_id INT NOT NULL,
    point_runtime INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
CREATE TABLE LEC_SUMMERY_HIST (
    data TEXT NOT NULL,
    lecture_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE SEARCH_DATA_HIST (
    detail TEXT NOT NULL,
    keyword_id INT NOT NULL,
    search_pic TEXT,
    search_ref TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
