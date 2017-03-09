USE facer;

DROP TABLE IF EXISTS MESSAGE_USER_TO_USER CASCADE;
DROP TABLE IF EXISTS MESSAGE_DETAIL CASCADE;
DROP TABLE IF EXISTS MESSAGE CASCADE;

DROP TABLE IF EXISTS SUBSCRIPTION CASCADE;
DROP TABLE IF EXISTS INCIDENT_RESOLVER CASCADE;
DROP TABLE IF EXISTS INCIDENT_EVENTS CASCADE;
DROP TABLE IF EXISTS INCIDENT CASCADE;
DROP TABLE IF EXISTS RULES CASCADE;
DROP TABLE IF EXISTS EVENT CASCADE;

DROP TABLE IF EXISTS USER_ACTIVITY CASCADE;
DROP TABLE IF EXISTS USER_CONTACT CASCADE;
DROP TABLE IF EXISTS USER_LOGIN CASCADE;

DROP TABLE IF EXISTS STD_CONTACT CASCADE;
DROP TABLE IF EXISTS STD_INCIDENT CASCADE;
DROP TABLE IF EXISTS STD_EVENT CASCADE;
DROP TABLE IF EXISTS STD_COMPONENT CASCADE;
DROP TABLE IF EXISTS STD_APPLICATION CASCADE;

-- =========================
-- STD_Application
-- =========================
CREATE TABLE IF NOT EXISTS STD_APPLICATION (
APPLICATION		varchar(30)		NOT NULL
, PRIMARY KEY ( Application )
);

INSERT INTO STD_APPLICATION ( Application )
SELECT 'ARMS' FROM DUAL
UNION SELECT 'CASHIERING' FROM DUAL
UNION SELECT 'HAN' FROM DUAL
UNION SELECT 'IRIS' FROM DUAL;

commit;

-- SELECT * FROM STD_APPLICATION;

-- =========================
-- STD_Component
-- =========================
CREATE TABLE IF NOT EXISTS STD_COMPONENT (
  APPLICATION		varchar(30) 	NOT NULL
, COMPONENT			varchar(30) 	NOT NULL
, PRIMARY KEY ( Application, Component )
, CONSTRAINT SC_APPLICATION_FK
	FOREIGN KEY (APPLICATION)
    REFERENCES STD_APPLICATION (APPLICATION)
);

INSERT INTO STD_COMPONENT ( Application, Component )
SELECT 'ARMS', 'ARMS' FROM DUAL
UNION SELECT 'ARMS', 'AHMS' FROM DUAL
UNION SELECT 'ARMS', 'BUILDINGS' FROM DUAL
UNION SELECT 'ARMS', 'COST RECOVERY' FROM DUAL
UNION SELECT 'ARMS', 'EMPLOYEE DEBT' FROM DUAL
UNION SELECT 'ARMS', 'EMS' FROM DUAL
UNION SELECT 'ARMS', 'STATE TAX OFFSET PROGRAM' FROM DUAL
UNION SELECT 'ARMS', 'TAX' FROM DUAL
UNION SELECT 'ARMS', 'TRAFFIC CONTROL' FROM DUAL;

-- Cashiering
INSERT INTO STD_COMPONENT ( Application, Component )
SELECT 'CASHIERING', 'CASHIERING' FROM DUAL
UNION SELECT 'CASHIERING', 'LOCKBOX' FROM DUAL
UNION SELECT 'CASHIERING', 'PAYMENT MANAGER' FROM DUAL
UNION SELECT 'CASHIERING', 'PAYMENT PORTAL' FROM DUAL
UNION SELECT 'CASHIERING', 'POS SECURE' FROM DUAL
UNION SELECT 'CASHIERING', 'DATA BROKER' FROM DUAL
UNION SELECT 'CASHIERING', 'PAYMENT SERVER' FROM DUAL
UNION SELECT 'CASHIERING', 'TENDER RETAIL MULTI' FROM DUAL;

-- HAN
INSERT INTO STD_COMPONENT ( Application, Component )
SELECT 'HAN', 'HAN' FROM DUAL;

-- IRIS
INSERT INTO STD_COMPONENT ( Application, Component )
SELECT 'IRIS', 'IRIS' FROM DUAL
UNION SELECT 'IRIS', 'ADJUDICATION' FROM DUAL
UNION SELECT 'IRIS', 'APS' FROM DUAL
UNION SELECT 'IRIS', 'IMAGING' FROM DUAL
UNION SELECT 'IRIS', 'INVESTIGATION' FROM DUAL
UNION SELECT 'IRIS', 'LICENSE' FROM DUAL
UNION SELECT 'IRIS', 'PERMIT' FROM DUAL
UNION SELECT 'IRIS', 'PUBLIC VEHICLE' FROM DUAL
UNION SELECT 'IRIS', 'SECURITY' FROM DUAL
UNION SELECT 'IRIS', 'TAX' FROM DUAL
UNION SELECT 'IRIS', 'CBLAS' FROM DUAL
UNION SELECT 'IRIS', 'WEBTAX' FROM DUAL;

commit;

-- SELECT * FROM STD_COMPONENT;

-- =========================
-- STD_Event
-- =========================
CREATE TABLE IF NOT EXISTS STD_EVENT (
  APPLICATION		varchar(30) 	NOT NULL
, COMPONENT			varchar(30) 	NOT NULL
, EVENT_TYPE		varchar(30)		NOT NULL
, PRIMARY KEY ( Application, Component, Event_TYPE )
, CONSTRAINT SE_APPL_COMP_FK
	FOREIGN KEY (APPLICATION, COMPONENT)
    REFERENCES STD_COMPONENT (APPLICATION, COMPONENT)
);

-- =========================
-- STD_Incident
-- =========================
CREATE TABLE IF NOT EXISTS STD_INCIDENT (
  APPLICATION		varchar(30) 	NOT NULL
, COMPONENT			varchar(30) 	NOT NULL
, INCIDENT_TYPE		varchar(30)		NOT NULL
, APPEND_TO_ACTIVE_INCIDENT_FLG		ENUM('Y','N')		DEFAULT 'Y'	NOT NULL
, DEFAULT_SEVERITY					ENUM('1','2','3','4','5')
, PRIMARY KEY ( Application, Component, Incident_TYPE )
, CONSTRAINT SI_APPL_COMP_FK
	FOREIGN KEY (APPLICATION, COMPONENT)
    REFERENCES STD_COMPONENT (APPLICATION, COMPONENT)
);

-- =========================
-- STD_Contact
-- =========================
CREATE TABLE IF NOT EXISTS STD_CONTACT (
CONTACT_TYPE		varchar(30)		NOT NULL
, PRIMARY KEY ( CONTACT_TYPE )
);

INSERT INTO STD_CONTACT ( CONTACT_TYPE )
SELECT 'EMAIL' FROM DUAL
UNION SELECT 'PHONE' FROM DUAL
UNION SELECT 'TEXT' FROM DUAL;

commit;


-- =========================
-- User_Login
--    MD5 generates a 128-bit hash value. You can use CHAR(32) or BINARY(16)
--    SHA-1 generates a 160-bit hash value. You can use CHAR(40) or BINARY(20)
--    SHA-224 generates a 224-bit hash value. You can use CHAR(56) or BINARY(28)
--    SHA-256 generates a 256-bit hash value. You can use CHAR(64) or BINARY(32)
--    SHA-384 generates a 384-bit hash value. You can use CHAR(96) or BINARY(48)
--    SHA-512 generates a 512-bit hash value. You can use CHAR(128) or BINARY(64)
-- =========================
CREATE TABLE IF NOT EXISTS USER_LOGIN (
  LOGIN			varchar(60)		NOT NULL
, PASSWORD		binary(64)		NOT NULL
, TOKEN			binary(64)
, FIRST_NAME		varchar(80)
, LAST_NAME			varchar(80)
, CREATE_DATE			TIMESTAMP	DEFAULT CURRENT_TIMESTAMP()		NOT NULL
, ACTIVE_FLG			ENUM('Y','N')	DEFAULT 'Y'		NOT NULL
, RESET_PASSWORD_FLG	ENUM('Y','N')	DEFAULT 'Y'		NOT NULL
, PRIMARY KEY ( LOGIN )
);

-- =========================
-- User_Contact
-- =========================
CREATE TABLE IF NOT EXISTS USER_CONTACT (
  LOGIN				varchar(60)		NOT NULL
, PRIORITY			integer			NOT NULL
, CONTACT_TYPE		varchar(30)		NOT NULL
, CONTACT_DETAIL	varchar(80)
, PRIMARY KEY ( LOGIN, PRIORITY )
, CONSTRAINT UC_LOGIN_FK
	FOREIGN KEY ( LOGIN )
    REFERENCES USER_LOGIN ( LOGIN )
, CONSTRAINT UC_CONTACT_TYPE_FK
	FOREIGN KEY ( CONTACT_TYPE )
    REFERENCES STD_CONTACT ( CONTACT_TYPE )
);

-- =========================
-- User_Activity
-- =========================
CREATE TABLE IF NOT EXISTS USER_ACTIVITY (
  ACTIVITY_ID		integer			NOT NULL	AUTO_INCREMENT
, LOGIN				varchar(60)		NOT NULL
, ACTIVITY_DETAIL	varchar(255)	NOT NULL
, PRIMARY KEY ( ACTIVITY_ID )
, CONSTRAINT UA_LOGIN_FK
	FOREIGN KEY ( LOGIN )
    REFERENCES USER_LOGIN ( LOGIN )
);


-- =========================
-- Event
-- =========================
CREATE TABLE IF NOT EXISTS EVENT (
  EVENT_ID		integer			NOT NULL	AUTO_INCREMENT
, APPLICATION		varchar(30) 	NOT NULL
, COMPONENT			varchar(30) 	NOT NULL
, EVENT_TYPE		varchar(30)		NOT NULL
, EVENT_DETAIL	varchar(255)	NOT NULL
, PRIMARY KEY ( EVENT_ID )
, CONSTRAINT E_APPL_COMP_EVENT_FK
	FOREIGN KEY (APPLICATION, COMPONENT, EVENT_TYPE)
    REFERENCES STD_EVENT (APPLICATION, COMPONENT, EVENT_TYPE)
);

-- =========================
-- Rules
-- =========================
CREATE TABLE IF NOT EXISTS RULES (
  RULE_ID		integer			NOT NULL	AUTO_INCREMENT
, EVENT_APPLICATION		varchar(30) 	NOT NULL
, EVENT_COMPONENT			varchar(30) 	NOT NULL
, EVENT_TYPE		varchar(30)		NOT NULL
, INCIDENT_APPLICATION		varchar(30) 	NOT NULL
, INCIDENT_COMPONENT			varchar(30) 	NOT NULL
, INCIDENT_TYPE		varchar(30)		NOT NULL
, PRIMARY KEY ( RULE_ID )
, CONSTRAINT R_APPL_COMP_EVENT_FK
	FOREIGN KEY ( EVENT_APPLICATION, EVENT_COMPONENT, EVENT_TYPE)
    REFERENCES STD_EVENT (APPLICATION, COMPONENT, EVENT_TYPE)
, CONSTRAINT R_APPL_COMP_INCIDENT_FK
	FOREIGN KEY ( INCIDENT_APPLICATION, INCIDENT_COMPONENT, INCIDENT_TYPE)
    REFERENCES STD_INCIDENT (APPLICATION, COMPONENT, INCIDENT_TYPE)
);


-- =========================
-- Incident
-- =========================
CREATE TABLE IF NOT EXISTS INCIDENT (
  INCIDENT_ID		integer			NOT NULL	AUTO_INCREMENT
, APPLICATION		varchar(30) 	NOT NULL
, COMPONENT			varchar(30) 	NOT NULL
, INCIDENT_TYPE		varchar(30)		NOT NULL
, INCIDENT_DATE		TIMESTAMP	DEFAULT CURRENT_TIMESTAMP()		NOT NULL
, SEVERITY			ENUM('1','2','3','4','5')		NOT NULL
, INCIDENT_DETAIL	varchar(255)	NOT NULL
, PRIMARY KEY ( INCIDENT_ID )
, CONSTRAINT I_APPL_COMP_INCIDENT_FK
	FOREIGN KEY ( APPLICATION, COMPONENT, INCIDENT_TYPE)
    REFERENCES STD_INCIDENT (APPLICATION, COMPONENT, INCIDENT_TYPE)
);


-- =========================
-- Incident Events
-- =========================
CREATE TABLE IF NOT EXISTS INCIDENT_EVENTS (
  INCIDENT_ID		integer			NOT NULL
, EVENT_ID			integer			NOT NULL
, PRIMARY KEY ( INCIDENT_ID, EVENT_ID )
, CONSTRAINT IE_INCIDENT_ID_FK
	FOREIGN KEY ( INCIDENT_ID )
    REFERENCES INCIDENT ( INCIDENT_ID )
, CONSTRAINT IE_EVENT_ID_FK
	FOREIGN KEY ( EVENT_ID )
    REFERENCES EVENT ( EVENT_ID )
);


-- =========================
-- Incident Resolver
-- =========================
CREATE TABLE IF NOT EXISTS INCIDENT_RESOLVER (
  INCIDENT_ID		integer			NOT NULL
, LOGIN				varchar(60)		NOT NULL
, PRIMARY KEY ( INCIDENT_ID, LOGIN )
, CONSTRAINT IR_INCIDENT_ID_FK
	FOREIGN KEY ( INCIDENT_ID )
    REFERENCES INCIDENT ( INCIDENT_ID )
, CONSTRAINT IR_LOGIN_FK
	FOREIGN KEY ( LOGIN )
    REFERENCES USER_LOGIN ( LOGIN )
);


-- =========================
-- Subscription
-- =========================
CREATE TABLE IF NOT EXISTS SUBSCRIPTION (
  SUBSCRIPTION_ID		integer			NOT NULL	AUTO_INCREMENT
, APPLICATION		varchar(30) 	NOT NULL
, COMPONENT			varchar(30) 	NOT NULL
, INCIDENT_TYPE		varchar(30)		NOT NULL
, LOGIN				varchar(60)		NOT NULL
, PRIMARY KEY ( SUBSCRIPTION_ID )
, CONSTRAINT S_APPL_COMP_INCIDENT_TYPE_FK
	FOREIGN KEY ( APPLICATION, COMPONENT, INCIDENT_TYPE )
    REFERENCES STD_INCIDENT ( APPLICATION, COMPONENT, INCIDENT_TYPE )
);

CREATE UNIQUE INDEX S_APPL_COMP_INCIDENT_UI
ON SUBSCRIPTION ( APPLICATION, COMPONENT, INCIDENT_TYPE );


-- =========================
-- Message
-- =========================
CREATE TABLE IF NOT EXISTS MESSAGE (
  MESSAGE_ID			integer			NOT NULL		AUTO_INCREMENT
, MESSAGE_SENT_FLG		ENUM('Y','N')	DEFAULT 'N'		NULL
, MESSAGE_SENT_DATE		TIMESTAMP
, PRIMARY KEY ( MESSAGE_ID )
);

-- =========================
-- Message Detail
-- =========================
CREATE TABLE IF NOT EXISTS MESSAGE_DETAIL (
  MESSAGE_DETAIL_ID			integer			NOT NULL		AUTO_INCREMENT
, MESSAGE_ID				integer			NOT NULL
, LOGIN						varchar(60)		NOT NULL
, MESSAGE_DETAIL_SENT_FLG	ENUM('Y','N')	DEFAULT 'N'		NOT NULL
, MESSAGE_DETAIL_SENT_DATE	TIMESTAMP
, PRIMARY KEY ( MESSAGE_DETAIL_ID )
, CONSTRAINT MD_MESSAGE_ID_FK
	FOREIGN KEY ( MESSAGE_ID )
    REFERENCES MESSAGE ( MESSAGE_ID )
, CONSTRAINT MD_LOGIN_FK
	FOREIGN KEY ( LOGIN )
    REFERENCES USER_LOGIN ( LOGIN )
);

-- =========================
-- Message User to User
-- =========================
CREATE TABLE IF NOT EXISTS MESSAGE_USER_TO_USER (
  MESSAGE_USER_TO_USER_ID	integer			NOT NULL		AUTO_INCREMENT
, MESSAGE_ID				integer			NOT NULL
, LOGIN						varchar(60)		NOT NULL
, MESSAGE_USER_TO_USER_SENT_FLG		ENUM('Y','N')	DEFAULT 'N'		NOT NULL
, MESSAGE_USER_TO_USER_SENT_DATE	TIMESTAMP
, FROM_LOGIN				varchar(60)
, PRIMARY KEY ( MESSAGE_USER_TO_USER_ID )
, CONSTRAINT MUUI_MESSAGE_ID_FK
	FOREIGN KEY ( MESSAGE_ID )
    REFERENCES MESSAGE ( MESSAGE_ID )
, CONSTRAINT MUUI_LOGIN_FK
	FOREIGN KEY ( LOGIN )
    REFERENCES USER_LOGIN ( LOGIN )
, CONSTRAINT MUUI_FROM_LOGIN_FK
	FOREIGN KEY ( FROM_LOGIN )
    REFERENCES USER_LOGIN ( LOGIN )
);
