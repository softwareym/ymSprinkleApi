
DROP TABLE IF EXISTS tblSprinkle;
DROP TABLE IF EXISTS tblReceivers;

CREATE TABLE tblSprinkle(
   seq LONG PRIMARY KEY AUTO_INCREMENT
  , token VARCHAR(3) NOT NULL
  , roomId VARCHAR NOT NULL
  , sprinklerId INT NOT NULL
  , sprinklerPrice LONG NOT NULL
  , receiverCnt INT NOT NULL
  , regDate TIMESTAMP NOT NULL
);

CREATE TABLE tblReceivers(
   dtlSeq LONG PRIMARY KEY AUTO_INCREMENT
  , token VARCHAR(3) NOT NULL
  , receiverOrder INT NOT NULL
  , receiverId INT NOT NULL
  , receiverPrice LONG NOT NULL
  , receiveDate TIMESTAMP NOT NULL
);

ALTER TABLE tblReceivers
ADD FOREIGN KEY (token)
REFERENCES tblSprinkle(token);

