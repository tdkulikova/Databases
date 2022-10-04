CREATE TABLE "Caregiver" (
  "PersNr" int PRIMARY KEY,
  "Name" text,
  "StatNr" int,
  "Qualification" text
);

CREATE TABLE "Doctor" (
  "PersNr" int PRIMARY KEY,
  "Name" text,
  "StatNr" int,
  "Area" text,
  "rank" int
);

CREATE TABLE "StationPersonell" (
  "PersNr" int PRIMARY KEY,
  "Name" text,
  "StatNr" int
);

CREATE TABLE "Patient" (
  "PatientNr" int PRIMARY KEY,
  "Name" text,
  "Disease" text,
  "RoomNr" int,
  "from" text,
  "to" text
);

CREATE TABLE "Station" (
  "StatNr" int PRIMARY KEY,
  "Name" text
);

CREATE TABLE "Room" (
  "StatNr" int,
  "RoomNr" int,
  "Beds" int,
  PRIMARY KEY ("StatNr", "RoomNr")
);

CREATE TABLE "Treats" (
  "PersNr" int,
  "PatientNr" int,
  PRIMARY KEY ("PersNr", "PatientNr")
);
