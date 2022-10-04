CREATE TABLE "Reader" (
  "id" int PRIMARY KEY,
  "Name" text,
  "Surname" text,
  "Birthday" date,
  "Address" text
);

CREATE TABLE "Instance" (
  "InstNumber" int,
  "ISBN" int,
  "ShelfPlace" int,
  PRIMARY KEY ("InstNumber", "ISBN")
);

CREATE TABLE "Publisher" (
  "PubName" text PRIMARY KEY,
  "PubAddress" text
);

CREATE TABLE "Category" (
  "Name" text PRIMARY KEY,
  "ParentCategory" text
);

CREATE TABLE "Book" (
  "ISBN" int PRIMARY KEY,
  "Name" text,
  "PagesNumber" int,
  "Year" date,
  "Author" text
);

CREATE TABLE "Borrow" (
  "id" int,
  "ISBN" int,
  "InstNumber" int,
  "returnDate" date,
  PRIMARY KEY ("id", "ISBN", "InstNumber")
);

CREATE TABLE "Reader_Book" (
  "Reader_id" int NOT NULL,
  "Book_ISBN" int NOT NULL,
  PRIMARY KEY ("Reader_id", "Book_ISBN")
);

ALTER TABLE "Reader_Book" ADD FOREIGN KEY ("Reader_id") REFERENCES "Reader" ("id");

ALTER TABLE "Reader_Book" ADD FOREIGN KEY ("Book_ISBN") REFERENCES "Book" ("ISBN");


CREATE TABLE "Book_Publisher" (
  "Book_ISBN" int NOT NULL,
  "Publisher_PubName" text NOT NULL,
  PRIMARY KEY ("Book_ISBN", "Publisher_PubName")
);

ALTER TABLE "Book_Publisher" ADD FOREIGN KEY ("Book_ISBN") REFERENCES "Book" ("ISBN");

ALTER TABLE "Book_Publisher" ADD FOREIGN KEY ("Publisher_PubName") REFERENCES "Publisher" ("PubName");


CREATE TABLE "Book_Category" (
  "Book_ISBN" int NOT NULL,
  "Category_Name" text NOT NULL,
  PRIMARY KEY ("Book_ISBN", "Category_Name")
);

ALTER TABLE "Book_Category" ADD FOREIGN KEY ("Book_ISBN") REFERENCES "Book" ("ISBN");

ALTER TABLE "Book_Category" ADD FOREIGN KEY ("Category_Name") REFERENCES "Category" ("Name");


ALTER TABLE "Instance" ADD FOREIGN KEY ("ISBN") REFERENCES "Book" ("ISBN");

ALTER TABLE "Instance" ADD FOREIGN KEY ("InstNumber") REFERENCES "Publisher" ("PubName");
