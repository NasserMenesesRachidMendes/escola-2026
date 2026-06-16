CREATE TABLE `enrollment` (
`user_id` BIGINT NOT NULL,
`offer_id` BIGINT NOT NULL,
`enroll_moment` DATETIME NULL,
`refund_moment` DATETIME NULL,
`available` TINYINT NULL,
`only_update` TINYINT NULL,
PRIMARY KEY (`user_id`, `offer_id`),
INDEX `FK_enrollment_offer_idx` (`offer_id` ASC) VISIBLE,
CONSTRAINT `FK_enrollment_user`
FOREIGN KEY (`user_id`)
REFERENCES `user` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT `FK_enrollment_offer`
FOREIGN KEY (`offer_id`)
REFERENCES `offer` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION);


INSERT INTO enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, now(), null, true, false);
INSERT INTO enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, now(), null, true, false);