-- Create table with same schema that's in the .csv file
CREATE TABLE accused (
      AccusedRef VARCHAR(255),
      AccusedSystemId VARCHAR(255),
      AccusedID INT,
      FirstName VARCHAR(255),
      LastName VARCHAR(255),
      M_Firstname VARCHAR(255),
      M_Surname VARCHAR(255),
      Alias VARCHAR(255),
      Patronymic VARCHAR(255),
      DesTitle VARCHAR(255),
      Sex VARCHAR(255),
      Age FLOAT(100, 10),
      Age_estcareer INT,
      Age_estchild INT,
      Res_settlement VARCHAR(255),
      Res_parish VARCHAR(255),
      Res_presbytery VARCHAR(255),
      Res_county VARCHAR(255),
      Res_burgh VARCHAR(255),
      Res_NGR_Letters VARCHAR(255),
      Res_NGR_Easting FLOAT(100, 10),
      Res_NGR_Northing FLOAT(100, 10),
      Ethnic_origin VARCHAR(255),
      MaritalStatus VARCHAR(255),
      SocioecStatus VARCHAR(255),
      Occupation VARCHAR(255),
      Notes VARCHAR(255),
      Createdby VARCHAR(255),
      Createdate VARCHAR(255),
      Lastupdatedby VARCHAR(255),
      Lastupdatedon VARCHAR(255),
      PRIMARY KEY (AccusedRef)
);

-- Load data from .csv file to created table
LOAD DATA INFILE '/datasets/history-scottish-witchcraft/WDB_Accused.csv'
INTO TABLE accused
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
