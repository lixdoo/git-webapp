
CREATE TABLE ISSUE_COMMENT (
  ID BIGINT NOT NULL AUTO_INCREMENT,
  ACCOUNT_NAME VARCHAR(100) NOT NULL,
  REPOSITORY_NAME VARCHAR(100) NOT NULL,
  ISSUE_ID BIGINT NOT NULL,
  ACTION_TYPE VARCHAR(100) NOT NULL,
  COMMENT_ACCOUNT_NAME VARCHAR(100) NOT NULL,
  CONTENT TEXT,
  REGISTERED_TS TIMESTAMP NOT NULL,
  UPDATED_TS TIMESTAMP NOT NULL,
  REGISTERED_ACCOUNT VARCHAR(100) NOT NULL,
  UPDATED_ACCOUNT VARCHAR(100) NOT NULL,
  PRIMARY KEY (ID)
);
ALTER TABLE ISSUE_COMMENT ADD CONSTRAINT IDX_ISSUE_COMMENT_FK0 FOREIGN KEY (ACCOUNT_NAME, REPOSITORY_NAME, ISSUE_ID) REFERENCES ISSUE (ACCOUNT_NAME, REPOSITORY_NAME, ISSUE_ID);
ALTER TABLE ISSUE_COMMENT ADD CONSTRAINT IDX_ISSUE_COMMENT_FK1 FOREIGN KEY (COMMENT_ACCOUNT_NAME) REFERENCES ACCOUNT (NAME);