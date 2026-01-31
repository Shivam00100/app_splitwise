CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Creating app Schema
CREATE SCHEMA IF NOT EXISTS app_schema;

CREATE TABLE IF NOT EXISTS app_schema."user"(
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_name VARCHAR(256) NOT NULL,
    user_email VARCHAR(256) NOT NULL
);

CREATE TABLE IF NOT EXISTS app_schema."groups"(
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    group_name VARCHAR(256) NOT NULL
);

CREATE TABLE IF NOT EXISTS app_schema."transaction"(
   transaction_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
   borrower UUID NOT NULL,
   lender UUID  NOT NULL,
   amount BIGINT DEFAULT 0 NOT NULL,
   group_id UUID NULL,
   FOREIGN KEY (group_id) REFERENCES app_schema."groups"(id),
   FOREIGN KEY (borrower) REFERENCES app_schema."user"(id),
   FOREIGN KEY (lender) REFERENCES app_schema."user"(id)
);

CREATE TABLE IF NOT EXISTS app_schema."user_group"(
    user_id UUID,
    group_id UUID,
    PRIMARY KEY (user_id, group_id),
    FOREIGN KEY (user_id) REFERENCES app_schema."user"(id),
    FOREIGN KEY (group_id) REFERENCES app_schema."groups"(id)
);