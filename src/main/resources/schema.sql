CREATE TABLE IF NOT EXISTS users (
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS user_groups (
    group_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(100) NOT NULL,
    user_id BIGINT NOT NULL,
    CONSTRAINT fk_group_owner
        FOREIGN KEY (user_id) REFERENCES users(user_id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS group_transactions (
    group_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (group_id, user_id),
    CONSTRAINT fk_txn_group
        FOREIGN KEY (group_id) REFERENCES user_groups(group_id),
    CONSTRAINT fk_txn_user
        FOREIGN KEY (user_id) REFERENCES users(user_id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS friends (
    user1 BIGINT NOT NULL,
    user2 BIGINT NOT NULL,
    PRIMARY KEY (user1, user2),
    CONSTRAINT fk_friend_user1
        FOREIGN KEY (user1) REFERENCES users(user_id),
    CONSTRAINT fk_friend_user2
        FOREIGN KEY (user2) REFERENCES users(user_id),
    CONSTRAINT chk_no_self_friend
        CHECK (user1 <> user2)
) ENGINE=InnoDB;
