CREATE TABLE `course` (
`id` bigint NOT NULL AUTO_INCREMENT,
`img_gray_uri` varchar(255) DEFAULT NULL,
`img_uri` varchar(255) DEFAULT NULL,
`name` varchar(255) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `offer` (
`id` bigint NOT NULL AUTO_INCREMENT,
`edition` varchar(255) DEFAULT NULL,
`end_moment` datetime(6) DEFAULT NULL,
`start_moment` datetime(6) DEFAULT NULL,
`course_id` bigint DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `FK1q17i2dp3jm59xlih21imsakd` (`course_id`),
CONSTRAINT `FK1q17i2dp3jm59xlih21imsakd` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training
course-3250007_1280.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg&#39;);
INSERT INTO offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', now(), now(), 1);
INSERT INTO offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', now(), now(), 1);