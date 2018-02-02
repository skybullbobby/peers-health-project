CREATE TABLE patients(
  claim_no INTEGER PRIMARY KEY NOT NULL,
  date_injury TEXT NOT NULL,
  age INTEGER NOT NULL,
  gender VARCHAR(2) NOT NULL,
  NCCI INTEGER NOT NULL,
  legal INTEGER NOT NULL,
  last_work TEXT NOT NULL,
  absence INTEGER NOT NULL,
  total_duration INTEGER NOT NULL,
  indemnity_cost REAL NOT NULL,
  med_cost REAL NOT NULL,
  total_cost REAL NOT NULL
);

CREATE TABLE icd9(
  claim_no INTEGER PRIMARY KEY NOT NULL,
  code TEXT NOT NULL,
  date_code TEXT NOT NULL,
  FOREIGN KEY (claim_no) REFERENCES patients(claim_no)
);

CREATE TABLE pc(
  claim_no INTEGER PRIMARY KEY NOT NULL,
  pcode TEXT NOT NULL,
  date_service TEXT NOT NULL,
  amount_paid REAL NOT NULL,
  number_unit INTEGER NOT NULL,
  ICD9_PC TEXT NOT NULL,
  FOREIGN KEY (claim_no) REFERENCES patients(claim_no)
);

CREATE TABLE ot(
  claim_no INTEGER PRIMARY KEY NOT NULL,
  OT TEXT NOT NULL,
  date_service TEXT NOT NULL,
  amount_paid REAL NOT NULL,
  number_unit INTEGER NOT NULL,
  FOREIGN KEY (claim_no) REFERENCES patients(claim_no)
);
