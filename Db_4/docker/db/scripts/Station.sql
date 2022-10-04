CREATE TABLE "Station" (
  "Name" text PRIMARY KEY,
  "Tracks" int,
  "cityName" text,
  "Region" text
);

CREATE TABLE "Train" (
  "TrainNr" int PRIMARY KEY,
  "Length" int
);

CREATE TABLE "City" (
  "Region" text,
  "Name" text,
  PRIMARY KEY ("Region", "Name")
);

CREATE TABLE "Connected" (
  "FirstStName" text,
  "SecondStName" text,
  "TrainNr" int,
  "Departure" timestamp,
  "Arrival" timestamp,
  PRIMARY KEY ("FirstStName", "SecondStName", "TrainNr")
);
