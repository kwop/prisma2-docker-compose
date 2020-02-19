CREATE TABLE User (
                      user_id BIGINT NOT NULL AUTO_INCREMENT,
                      name VARCHAR(255),
                      email VARCHAR(255) UNIQUE NOT NULL,
                      PRIMARY KEY (user_id)
);

CREATE TABLE Post (
                      post_id BIGINT NOT NULL AUTO_INCREMENT,
    -- created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
                      title VARCHAR(255) NOT NULL,
                      content TEXT,
                      author_id BIGINT,
                      PRIMARY KEY (post_id),
                      FOREIGN KEY (author_id) REFERENCES User(user_id)
);

CREATE TABLE Profile (
                         profile_id BIGINT NOT NULL AUTO_INCREMENT,
                         bio TEXT,
                         user_id BIGINT NOT NULL,
                         PRIMARY KEY (profile_id),
                         FOREIGN KEY (user_id) REFERENCES User(user_id)
);