CREATE TABLE `lesson` (
`id` bigint NOT NULL AUTO_INCREMENT,
`title` varchar(255) DEFAULT NULL,
`position` int DEFAULT NULL,
`section_id` bigint DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `FK_lesson_section_idx` (`section_id`),
CONSTRAINT `FK_lesson_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `lessons_done` (
`lesson_id` bigint NOT NULL,
`user_id` bigint NOT NULL,
`offer_id` bigint NOT NULL,
PRIMARY KEY (`lesson_id`,`user_id`,`offer_id`),
KEY `FKpinf4eigfv4weyljv4jmxpqe0` (`user_id`,`offer_id`),
CONSTRAINT `FK9ck3y2sxl0yj39uk0t69r5997` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`),
CONSTRAINT `FKpinf4eigfv4weyljv4jmxpqe0` FOREIGN KEY (`user_id`, `offer_id`) REFERENCES `enrollment` (`offer_id`, `user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `content` (
`text_content` varchar(255) DEFAULT NULL,
`video_uri` varchar(255) DEFAULT NULL,
`id` bigint NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `FKbvmpmkedeagp0hrqhc71eeifh` FOREIGN KEY (`id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `task` (
`description` varchar(255) DEFAULT NULL,
`question_count` int DEFAULT NULL,
`approval_count` int DEFAULT NULL,
`weight` decimal(10,2) DEFAULT NULL,
`id` bigint NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `FKbvmpoiuytrgp0hrqhc71eeifh` FOREIGN KEY (`id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;