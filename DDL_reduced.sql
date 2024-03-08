DROP TABLE Air_quality_measures;
DROP TABLE Greenhouse_Gasses;
DROP TABLE Climate_Risk_Index;
DROP TABLE Paris_Agreement_Member;
DROP TABLE City;
DROP TABLE Country;

CREATE TABLE COUNTRY
    (COUNTRY_NAME CHAR(60) PRIMARY KEY,
    WHO_REGION CHAR(50),
    ISO CHAR(3));

CREATE TABLE CITY(
    CITY_NAME CHAR(60), 
    COUNTRY_NAME CHAR(60), 
    PRIMARY KEY (CITY_NAME, COUNTRY_NAME),
    FOREIGN KEY (COUNTRY_NAME) REFERENCES COUNTRY);

CREATE TABLE Air_Quality_Measures
    (ID INT PRIMARY KEY, 
    Year INT, 
    City_Name CHAR(60), 
    Country_Name CHAR(60), 
    NO2 FLOAT(5), 
    PM10 FLOAT(5), 
    PM25 FLOAT(5),
    NO2_temporal_coverage FLOAT, 
    PM25_temporal_coverage FLOAT, 
    PM10_temporal_coverage FLOAT,
    FOREIGN KEY (City_Name, Country_Name) REFERENCES City);

CREATE TABLE Greenhouse_Gasses
    (Year INT, 
    Country_Name CHAR(60), 
    Per_Capita_GHG FLOAT,
    PRIMARY KEY (Year, Country_Name), 
    FOREIGN KEY (Country_Name) REFERENCES Country);

CREATE TABLE Paris_Agreement_Member
    (Country_Name CHAR(60) PRIMARY KEY, 
    Date_joined DATE, 
    FOREIGN KEY (Country_Name) REFERENCES Country);

CREATE TABLE Climate_Risk_Index
    (ID INT PRIMARY KEY, 
    Country_Name CHAR(60) NOT NULL, 
    CRI_Rank INT, 
    CRI_Score FLOAT, 
    Fatalities_Rank INT, 
    Fatalities_per_100000_inhabitants_Rank INT, 
    Losses_in_US_million_Rank INT, 
    Losses_per_unit_GDP_Rank INT, 
    FOREIGN KEY (Country_Name) REFERENCES Country);
 
INSERT INTO Country(Country_Name, WHO_Region, ISO) VALUES ('Angola',NULL,NULL); 
INSERT INTO Country(Country_Name, WHO_Region, ISO) VALUES ('Afghanistan','Eastern Mediterranean Region','AFG'); 
INSERT INTO Country(Country_Name, WHO_Region, ISO) VALUES ('Albania','European Region','ALB'); 
INSERT INTO Country(Country_Name, WHO_Region, ISO) VALUES ('Andorra','European Region','AND'); 
INSERT INTO Country(Country_Name, WHO_Region, ISO) VALUES ('United Arab Emirates','Eastern Mediterranean Region','ARE'); 
INSERT INTO Country(Country_Name, WHO_Region, ISO) VALUES ('Italy, San Marino and the Holy See',NULL,NULL); 
INSERT INTO Country(Country_Name, WHO_Region, ISO) VALUES ('Côte d''Ivoire',NULL,NULL); 
INSERT INTO Country(Country_Name, WHO_Region, ISO) VALUES ('Turks and Caicos Islands',NULL,NULL); 

INSERT INTO City(City_Name,Country_Name) VALUES ('Kabul','Afghanistan'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Durres','Albania'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Elbasan','Albania'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Korce','Albania'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Vlore','Albania'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Vrith','Albania'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Escaldes-Engordany','Andorra'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Abu Dhabi','United Arab Emirates'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Ajman','United Arab Emirates'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Al Ain','United Arab Emirates'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Al Gharbia','United Arab Emirates'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Dubai','United Arab Emirates'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Ras Al Khaimah','United Arab Emirates'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Sharjah','United Arab Emirates'); 
INSERT INTO City(City_Name,Country_Name) VALUES ('Umm Al Quwain','United Arab Emirates'); 

INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (0, '2019', 'Kabul', 'Afghanistan', NULL, NULL, 119.77, NULL, 18.0, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (1, '2015', 'Durres', 'Albania', 26.63, 17.65, NULL, 83.9611872, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (2, '2016', 'Durres', 'Albania', 24.78, 24.56, 14.32, 87.9326047, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (3, '2015', 'Elbasan', 'Albania', 23.96, NULL, NULL, 97.8538813, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (9, '2015', 'Vlore', 'Albania', 14.18, 19.39, NULL, 78.4703196, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (10, '2016', 'Vlore', 'Albania', NULL, 22.71, NULL, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (11, '2019', 'Vlore', 'Albania', NULL, NULL, 10.32, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (25, '2017', 'Abu Dhabi', 'United Arab Emirates', 30.05, 122.17, 32.79, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (26, '2018', 'Abu Dhabi', 'United Arab Emirates', 31.24, 134.29, 49.13, NULL, 88.2938509, NULL);
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (31, '2019', 'Ajman', 'United Arab Emirates', 27.54, 78.35, NULL, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (32, '2020', 'Ajman', 'United Arab Emirates', 26.86, 89.37, NULL, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (33, '2011', 'Al Ain', 'United Arab Emirates', 15.35, 140.45, NULL, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (34, '2012', 'Al Ain', 'United Arab Emirates', 32.17, 109.92, NULL, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (35, '2013', 'Al Ain', 'United Arab Emirates', 22.1, 127.02, NULL, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (36, '2014', 'Al Ain', 'United Arab Emirates', 26.47, 97.7, NULL, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (37, '2015', 'Al Ain', 'United Arab Emirates', 25.28, 122.33, NULL, NULL, NULL, NULL); 
INSERT INTO Air_Quality_Measures(ID, Year, City_Name, Country_Name, NO2, PM10, PM25, NO2_temporal_coverage, PM25_temporal_coverage, PM10_temporal_coverage) VALUES (38, '2011', 'Al Gharbia', 'United Arab Emirates', 11.23, 159.97, NULL, NULL, NULL, NULL);

INSERT INTO Greenhouse_Gasses(Year, Country_Name, Per_Capita_GHG) VALUES ('1970','Afghanistan',1.55815534); 
INSERT INTO Greenhouse_Gasses(Year, Country_Name, Per_Capita_GHG) VALUES ('1970','Angola',2.97184698); 
INSERT INTO Greenhouse_Gasses(Year, Country_Name, Per_Capita_GHG) VALUES ('1970','Albania',3.84136995); 
INSERT INTO Greenhouse_Gasses(Year, Country_Name, Per_Capita_GHG) VALUES ('1970','United Arab Emirates',124.734663); 

INSERT INTO Paris_Agreement_Member(Country_Name, Date_Joined) VALUES ('Afghanistan','15 Feb 2017'); 
INSERT INTO Paris_Agreement_Member(Country_Name, Date_Joined) VALUES ('Albania','21 Sep 2016');
INSERT INTO Paris_Agreement_Member(Country_Name, Date_Joined) VALUES ('Andorra','24 Mar 2017'); 

INSERT INTO Climate_Risk_Index(ID, Country_Name, CRI_Rank, CRI_Score, Fatalities_Rank, Fatalities_per_100000_inhabitants_Rank, Losses_in_US_million_Rank, Losses_per_unit_GDP_Rank) VALUES (1,'Albania',125,108.0,102,87,124,124);  
INSERT INTO Climate_Risk_Index(ID, Country_Name, CRI_Rank, CRI_Score, Fatalities_Rank, Fatalities_per_100000_inhabitants_Rank, Losses_in_US_million_Rank, Losses_per_unit_GDP_Rank) VALUES (3,'Angola',80,76.0,52,72,82,89);  
INSERT INTO Climate_Risk_Index(ID, Country_Name, CRI_Rank, CRI_Score, Fatalities_Rank, Fatalities_per_100000_inhabitants_Rank, Losses_in_US_million_Rank, Losses_per_unit_GDP_Rank) VALUES (174,'United Arab Emirates',135,125.0,115,115,135,135); 