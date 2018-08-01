DROP TABLE IF EXISTS PATIENT;
CREATE TABLE PATIENT(
	Pid			VARCHAR(30)			NOT NULL,
	Fname		VARCHAR(30)			NOT NULL,
	Minit		CHAR,
	Lname		VARCHAR(30)			NOT NULL,
	Bdate		TEXT				NOT NULL,
	Street		VARCHAR(50),
	City 		VARCHAR(30),
	State		VARCHAR(2),
	Zip			VARCHAR(5),
	Phone		VARCHAR(10)			NOT NULL,
	Sex			CHAR,
  PRIMARY KEY (Pid)
);

INSERT INTO PATIENT (Pid, Fname, Minit, Lname, Bdate, Street, City, State, Zip, Phone, Sex)
VALUES ('1','John','A','Smith','1952-01-01','1206 Fox Hollow Rd.','Pittsburgh','PA','15213','6789871234','M');

INSERT INTO PATIENT (Pid, Fname, Minit, Lname, Bdate, Street, City, State, Zip, Phone, Sex)
VALUES ('2','Candice','P','Jones','1978-02-03','1429 Orlyn Dr.','Los Angeles','CA','90024','3107381419','F');

INSERT INTO PATIENT (Pid, Fname, Minit, Lname, Bdate, Street, City, State, Zip, Phone, Sex)
VALUES ('3','Regina','H','Wilson','1985-04-23','765 Chestnut Ln.','Albany','NY','12065','5184590206','F');

INSERT INTO PATIENT (Pid, Fname, Minit, Lname, Bdate, Street, City, State, Zip, Phone, Sex)
VALUES ('4','Harold','','Lee','1966-11-15','2928 Policy St.','Providence','RI','02912','6593482691','M');

INSERT INTO PATIENT (Pid, Fname, Minit, Lname, Bdate, Street, City, State, Zip, Phone, Sex)
VALUES ('5','Stan','P','Davis','1958-12-30','4271 12th St.','Atlanta','GA','30339','4049814933','M');

DROP TABLE IF EXISTS VISIT;
CREATE TABLE VISIT(
	Pid				VARCHAR(30)			NOT NULL,
	Visit_id		VARCHAR(30)			NOT NULL,
	Visit_date		DATE				NOT NULL,
	Attending_md	VARCHAR(30)			NOT NULL,
	Pri_dx_icd		VARCHAR(20)			NOT NULL,
	Pri_dx_name		VARCHAR(100)		NOT NULL,
	Sec_dx_icd		VARCHAR(20),
	Sec_dx_name		VARCHAR(100),
  PRIMARY KEY (Visit_id)
);

INSERT INTO VISIT (Pid, Visit_id, Visit_date, Attending_md, Pri_dx_icd, Pri_dx_name, Sec_dx_icd, Sec_dx_name)
VALUES ('1','10001','2016-01-09','JOHNSON','I50.9','Heart failure, unspecified','I10','Essential (primary) hypertension');

INSERT INTO VISIT (Pid, Visit_id, Visit_date, Attending_md, Pri_dx_icd, Pri_dx_name, Sec_dx_icd, Sec_dx_name)
VALUES ('1','10002','2016-01-17','JOHNSON','I50.9','Heart failure, unspecified','I10','Essential (primary) hypertension');

INSERT INTO VISIT (Pid, Visit_id, Visit_date, Attending_md, Pri_dx_icd, Pri_dx_name, Sec_dx_icd, Sec_dx_name)
VALUES ('2','10003','2016-01-15','WU','I20.9','Angina pectoris, unspecified','E11.9','Type 2 diabetes mellitus without complications');

INSERT INTO VISIT (Pid, Visit_id, Visit_date, Attending_md, Pri_dx_icd, Pri_dx_name, Sec_dx_icd, Sec_dx_name)
VALUES ('3','10004','2016-02-01','JOHNSON','I10','Essential (primary) hypertension','','');

INSERT INTO VISIT (Pid, Visit_id, Visit_date, Attending_md, Pri_dx_icd, Pri_dx_name, Sec_dx_icd, Sec_dx_name)
VALUES ('4','10005','2016-02-27','WU','I27.0','Primary pulmonary hypertension','I50.9','Heart failure, unspecified');

INSERT INTO VISIT (Pid, Visit_id, Visit_date, Attending_md, Pri_dx_icd, Pri_dx_name, Sec_dx_icd, Sec_dx_name)
VALUES ('5','10006','2016-03-01','WU','I50.9','Heart failure, unspecified','E11.9','Type 2 diabetes mellitus without complications');

DROP TABLE IF EXISTS MEDICATIONS;
CREATE TABLE MEDICATIONS(
	Pid				VARCHAR(30)			NOT NULL,
	Rx_name			VARCHAR(50)			NOT NULL,
	Rx_dose			VARCHAR(20),
	Rx_freq			VARCHAR(10),
	Rx_route		VARCHAR(10),
	Prescribing_md	VARCHAR(30)			NOT NULL,
	Rx_date			DATE				NOT NULL,
	Rx_ndc			VARCHAR(30)
);

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('1', 'LISINOPRIL','5 mg','bid','po','JOHNSON','01/09/2016','68180-513-01');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('1', 'FUROSEMIDE','20 mg','bid','po','JOHNSON','01/09/2016','50742-104-01');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('2', 'NITROGLYCERIN','0.4 mg','tid','sl','WU','01/15/2016','59762-3304-1');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('2', 'METFORMIN','500 mg','bid','po','WU','01/15/2016','65162-175-10');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('2', 'ASPIRIN','81 mg','qdaily','po','WU','01/15/2016','63981-563-51');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('2', 'METOPROLOL TARTRATE','25 mg','bid','po','WU','01/15/2016','62332-112-31');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('3', 'VALSARTAN HCTZ','160/12.5 mg','qdaily','po','JOHNSON','02/01/2016','51655-950-52');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('4', 'DILTIAZEM HYDROCHOLORIDE','300 mg','qdaily','po','WU','02/27/2016','52544-693-19');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('4', 'LISINOPRIL','10 mg','bid','po','WU','02/27/2016','68180-514-01');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('4', 'FUROSEMIDE','40 mg','bid','po','WU','02/27/2016','68788-1966-1');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('5', 'LISINOPRIL','5 mg','bid','po','WU','03/01/2016','68180-513-01');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('5', 'FUROSEMIDE','20 mg','bid','po','WU','03/01/2016','50742-104-01');

INSERT INTO MEDICATIONS (Pid, Rx_name, Rx_dose, Rx_freq, Rx_route, Prescribing_md, Rx_date, Rx_ndc)
VALUES ('5', 'METFORMIN','500 mg','bid','po','WU','03/01/2016','65162-175-10');

DROP TABLE IF EXISTS LABS;
CREATE TABLE LABS(
	Pid				VARCHAR(30)			NOT NULL,
	Lab_name		VARCHAR(50),
	Lab_abbrev		VARCHAR(20),		
	Lab_loinc		VARCHAR(10)			NOT NULL,
	Lab_value		VARCHAR(20)			NOT NULL,
	Ordering_md		VARCHAR(30),
	Lab_date		DATE				NOT NULL
);

INSERT INTO LABS (Pid, Lab_name, Lab_abbrev, Lab_loinc, Lab_value, Ordering_md, Lab_date)
VALUES ('1','Natriuretic peptide B','BNP','42637-9','350','JOHNSON','2016-01-09');

INSERT INTO LABS (Pid, Lab_name, Lab_abbrev, Lab_loinc, Lab_value, Ordering_md, Lab_date)
VALUES ('2','Natriuretic peptide B','BNP','42637-9','100','WU','2016-01-15');

INSERT INTO LABS (Pid, Lab_name, Lab_abbrev, Lab_loinc, Lab_value, Ordering_md, Lab_date)
VALUES ('2','Glucose','GLU','2345-7','225','WU','2016-01-15');

INSERT INTO LABS (Pid, Lab_name, Lab_abbrev, Lab_loinc, Lab_value, Ordering_md, Lab_date)
VALUES ('2','Troponin I','TROP','10839-9','<0.004','WU','2016-01-15');

INSERT INTO LABS (Pid, Lab_name, Lab_abbrev, Lab_loinc, Lab_value, Ordering_md, Lab_date)
VALUES ('4','Natriuretic peptide B','BNP','42637-9','1000','WU','2016-02-27');

INSERT INTO LABS (Pid, Lab_name, Lab_abbrev, Lab_loinc, Lab_value, Ordering_md, Lab_date)
VALUES ('5','Natriuretic peptide B','BNP','42637-9','400','WU','2016-03-01');

INSERT INTO LABS (Pid, Lab_name, Lab_abbrev, Lab_loinc, Lab_value, Ordering_md, Lab_date)
VALUES ('5','Glucose','GLU','2345-7','318','WU','2016-03-01');

DROP TABLE IF EXISTS VITALS;
CREATE TABLE VITALS(
	Pid				VARCHAR(30)			NOT NULL,
	Visit_id		VARCHAR(30)			NOT NULL,
	Height_in		INT,
	Weight_lb		FLOAT,
	Temp_f			FLOAT,
	Pulse			INT,
	Resp_rate		INT,
	Bp_syst			INT,
	Bp_diast		INT,
	SpO2			INT
);

INSERT INTO VITALS (Pid, Visit_id, Height_in, Weight_lb, Temp_f, Pulse, Resp_rate, Bp_syst, Bp_diast, SpO2)
VALUES ('1','10001',70,188.4,98.6,95,18,154,94,97);

INSERT INTO VITALS (Pid, Visit_id, Height_in, Weight_lb, Temp_f, Pulse, Resp_rate, Bp_syst, Bp_diast, SpO2)
VALUES ('1','10002',70,188.4,99.1,85,17,157,96,100);

INSERT INTO VITALS (Pid, Visit_id, Height_in, Weight_lb, Temp_f, Pulse, Resp_rate, Bp_syst, Bp_diast, SpO2)
VALUES ('2','10003',63,130.2,98.7,82,16,120,81,100);

INSERT INTO VITALS (Pid, Visit_id, Height_in, Weight_lb, Temp_f, Pulse, Resp_rate, Bp_syst, Bp_diast, SpO2)
VALUES ('3','10004',65,120.0,NULL,100,19,161,100,98);

INSERT INTO VITALS (Pid, Visit_id, Height_in, Weight_lb, Temp_f, Pulse, Resp_rate, Bp_syst, Bp_diast, SpO2)
VALUES ('4','10005',66,211.4,98.2,95,19,143,84,93);

INSERT INTO VITALS (Pid, Visit_id, Height_in, Weight_lb, Temp_f, Pulse, Resp_rate, Bp_syst, Bp_diast, SpO2)
VALUES ('5','10006',69,150.0,97.6,77,18,130,86,99);

DROP TABLE IF EXISTS MORT;
CREATE TABLE MORT(
	Pid				VARCHAR(30)			NOT NULL,
	Mortality_date	DATE				NOT NULL,
  PRIMARY KEY (Pid)
);

INSERT INTO MORT (Pid, Mortality_date)
VALUES ('1', '2016-05-15');

INSERT INTO MORT (Pid, Mortality_date)
VALUES ('4', '2016-06-08');

SELECT * FROM PATIENT;
SELECT * FROM VISIT;
SELECT * FROM MEDICATIONS;
SELECT * FROM LABS;
SELECT * FROM VITALS;
SELECT * FROM MORT;

-- QUERY SET #1: CREATE
DROP TABLE IF EXISTS MORT_FINAL;
CREATE TABLE MORT_FINAL AS
SELECT Visit_id, Pid, Attending_md, Visit_date,Pri_dx_icd, Sec_dx_icd
FROM VISIT;

-- QUERY SET #2: ADD/UPDATE
ALTER TABLE MORT_FINAL ADD COLUMN Bdate TEXT;

UPDATE MORT_FINAL SET Bdate = 
(SELECT P.Bdate
FROM PATIENT AS P
WHERE P.Pid = MORT_FINAL.Pid);

ALTER TABLE MORT_FINAL ADD COLUMN Sex CHAR;

UPDATE MORT_FINAL SET Sex = 
(SELECT P.Sex
FROM PATIENT AS P
WHERE P.Pid = MORT_FINAL.Pid);

-- QUERY SET #2B: ADD COLUMNS USING JOIN
DROP TABLE IF EXISTS MORT_FINAL_2;
CREATE TABLE MORT_FINAL_2 AS
SELECT M.Visit_id, M.Pid, M.Attending_md, M.Visit_date, M.Pri_dx_icd, M.Sec_dx_icd, M.Bdate, M.Sex, V.Height_in, V.Weight_lb, V.Temp_f, V.Pulse, V.Resp_rate, V.Bp_syst, V.Bp_Diast, V.SpO2
FROM MORT_FINAL AS M LEFT OUTER JOIN VITALS AS V
ON M.Visit_id = V.Visit_id;

-- QUERY SET #3: AGE/DATE MANIPULATION
ALTER TABLE MORT_FINAL_2 ADD COLUMN Age_years REAL;

UPDATE MORT_FINAL_2 SET Age_years = 
ROUND((julianday(Visit_date) - julianday(Bdate)) / 365.25,2);

-- QUERY SET #4: BINNING DIAGNOSES FOR CHF
ALTER TABLE MORT_FINAL_2 ADD COLUMN Chf_dx INTEGER DEFAULT 0;

UPDATE MORT_FINAL_2 SET Chf_dx = 1 WHERE Pri_dx_icd = 'I50.9' OR Sec_dx_icd = 'I50.9';

-- QUERY SET #4B: BINNING DIAGNOSES FOR OTHERS
ALTER TABLE MORT_FINAL_2 ADD COLUMN Htn_dx INTEGER DEFAULT 0;

UPDATE MORT_FINAL_2 SET Htn_dx = 1 WHERE Pri_dx_icd = 'I10' OR Sec_dx_icd = 'I10';

ALTER TABLE MORT_FINAL_2 ADD COLUMN Angina_dx INTEGER DEFAULT 0;

UPDATE MORT_FINAL_2 SET Angina_dx = 1 WHERE Pri_dx_icd = 'I20.9' OR Sec_dx_icd = 'I20.9';

ALTER TABLE MORT_FINAL_2 ADD COLUMN Diab_dx INTEGER DEFAULT 0;

UPDATE MORT_FINAL_2 SET Diab_dx = 1 WHERE Pri_dx_icd = 'E11.9' OR Sec_dx_icd = 'E11.9';

ALTER TABLE MORT_FINAL_2 ADD COLUMN Pulm_htn_dx INTEGER DEFAULT 0;

UPDATE MORT_FINAL_2 SET Pulm_htn_dx = 1 WHERE Pri_dx_icd = 'I27.0' OR Sec_dx_icd = 'I27.0';

-- QUERY SET #4C: AGGREGATING CARDIAC DX, METHOD 1 USING SUM
ALTER TABLE MORT_FINAL_2 ADD COLUMN Num_cardiac_dx INTEGER;

UPDATE MORT_FINAL_2 SET Num_cardiac_dx = Chf_dx + Htn_dx + Angina_dx;

-- QUERY SET #4D: AGGREGATING CARDIAC DX, METHOD 2 USING COUNT

DROP TABLE IF EXISTS CARDIAC_DX;
CREATE TABLE CARDIAC_DX(
	Dx_icd			TEXT		NOT NULL);

INSERT INTO CARDIAC_DX (Dx_icd)
VALUES ('I50.9'),('I10'),('I20.9');

ALTER TABLE MORT_FINAL_2 ADD COLUMN Num_cardiac_dx_v2 INTEGER;

UPDATE MORT_FINAL_2 SET Num_cardiac_dx_v2 = 
(SELECT COUNT(*) FROM CARDIAC_DX AS C
WHERE MORT_FINAL_2.Pri_dx_icd = C.Dx_icd) +
(SELECT COUNT(*) FROM CARDIAC_DX AS C
WHERE MORT_FINAL_2.Sec_dx_icd = C.Dx_icd);

-- QUERY SET #5: COUNTING MEDS
ALTER TABLE MORT_FINAL_2 ADD COLUMN Num_meds INTEGER;

UPDATE MORT_FINAL_2 SET Num_meds = 
(SELECT COUNT(DISTINCT(Rx_name)) 
FROM MEDICATIONS AS M
WHERE MORT_FINAL_2.Pid = M.Pid);

-- QUERY SET *6: BINNING ABNORMAL LAB VALUES
ALTER TABLE MORT_FINAL_2 ADD COLUMN Abnml_glucose INTEGER;

UPDATE MORT_FINAL_2 SET Abnml_glucose = 
(SELECT COUNT(*) 
FROM LABS AS L
WHERE MORT_FINAL_2.Pid = L.Pid
AND MORT_FINAL_2.Visit_date = L.Lab_date
AND L.Lab_name = 'Glucose'
AND CAST(L.Lab_value AS FLOAT) >= 200);

-- QUERY SET #7B: IMPUTING TEMP
UPDATE MORT_FINAL_2 SET Temp_f = 
(SELECT AVG(Temp_f) 
FROM MORT_FINAL_2
WHERE Temp_f IS NOT NULL)
WHERE Temp_f IS NULL;

-- QUERY SET #7C: IMPUTING BNP
ALTER TABLE MORT_FINAL_2 ADD COLUMN Raw_BNP INTEGER;

UPDATE MORT_FINAL_2 SET Raw_BNP = 
(SELECT CAST(Lab_value as INTEGER) 
FROM LABS AS L
WHERE MORT_FINAL_2.Pid = L.Pid
AND MORT_FINAL_2.Visit_date = L.Lab_date
AND L.Lab_name = 'Natriuretic peptide B');

UPDATE MORT_FINAL_2 SET Raw_BNP =
ROUND(ABS(RANDOM()) % (300 - 250) + 250)
WHERE Raw_BNP IS NULL;

-- QUERY SET #8: TARGET VARIABLE (MORTALITY)
ALTER TABLE MORT_FINAL_2 ADD COLUMN Mortality INTEGER DEFAULT 0;

UPDATE MORT_FINAL_2 SET Mortality = 
(SELECT COUNT(*)
FROM MORT AS M
WHERE M.Pid = MORT_FINAL_2.Pid
AND julianday(M.Mortality_date) - 
julianday(MORT_FINAL_2.Visit_date) < 180);

-- QUERY SET #9: FINALIZING OUR TABLE

SELECT * FROM MORT_FINAL;
SELECT * FROM MORT_FINAL_2;