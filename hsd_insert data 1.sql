/*****   Insert Values to CUSTOMER   **************************************************************/
INSERT INTO CUSTOMER VALUES( 
	NULL, 'Jacobs', 'Nancy', 'Nancy.Jacobs@somewhere.com', '817-871-8123',
	'1440 West Palm Drive', 'Fort Worth', 'TX', '76110'); 
    -- We place NULL for CustomoerID generates the next AUTO_INCREMENT value.
INSERT INTO CUSTOMER VALUES(
	NULL, 'Jacobs', 'Chantel', 'Chantel.Jacobs@somewhere.com', '817-871-8234',
	'1550 East Palm Drive', 'Fort Worth', 'TX', '76112');
INSERT INTO CUSTOMER VALUES(
	NULL, 'Able', 'Ralph', 'Ralph.Able@somewhere.com', '210-281-7987',
	'123 Elm Street', 'San Antonio', 'TX', '78214');
INSERT INTO CUSTOMER VALUES(
	NULL, 'Baker', 'Susan', 'Susan.Baker@elsewhere.com', '210-281-7876',
	'456 Oak Street', 'San Antonio', 'TX', '78216');
INSERT INTO CUSTOMER VALUES(
	NULL, 'Eagleton', 'Sam', 'Sam.Eagleton@elsewhere.com', '210-281-7765',
	'789 Pine Street', 'San Antonio', 'TX', '78218');
INSERT INTO CUSTOMER VALUES(
	NULL, 'Foxtrot', 'Kathy', 'Kathy.Foxtrot@somewhere.com', '972-233-6234',
	'11023 Elm Street', 'Dallas', 'TX', '75220');
INSERT INTO CUSTOMER VALUES(
	NULL, 'George', 'Sally', 'Sally.George@somewhere.com', '972-233-6345',
	'12034 San Jacinto', 'Dallas', 'TX', '75223');
INSERT INTO CUSTOMER VALUES(
	NULL, 'Hullett', 'Shawn', 'Shawn.Hullett@elsewhere.com', '972-233-6456',
	'13045 Flora', 'Dallas', 'TX', '75224');
INSERT INTO CUSTOMER VALUES(
	NULL,'Pearson', 'Bobbi', 'Bobbi.Pearson@elsewhere.com', '512-974-3344',
	'43 West 23rd Street', 'Austin', 'TX', '78710');
INSERT INTO CUSTOMER VALUES(
	NULL, 'Ranger', 'Terry', 'Terry.Ranger@somewhere.com', '512-974-4455',
	'56 East 18th Street', 'Austin', 'TX', '78712');
INSERT INTO CUSTOMER VALUES(
	NULL, 'Tyler', 'Jenny', 'Jenny.Tyler@somewhere.com', '972-233-6567',
	'14056 South Ervay Street', 'Dallas', 'TX', '75225');
INSERT INTO CUSTOMER VALUES(
	NULL, 'Wayne', 'Joan', 'Joan.Wayne@elsewhere.com', '817-871-8245',
	'1660 South Aspen Drive', 'Fort Worth', 'TX', '76115');


/*****   Insert Values to SEMINAR   **************************************************************/
INSERT INTO SEMINAR VALUES(
	NULL, '2018-10-12', '11:00', 'San Antonio Convention Center',
	'Kitchen on a Budget');
INSERT INTO SEMINAR VALUES(
	NULL, '2018-10-26', '16:00', 'Dallas Convention Center',
	'Kitchen on a Big D Budget');
INSERT INTO SEMINAR VALUES(
	NULL, '2018-11-02', '08:30', 'Austin Convention Center',
	'Kitchen on a Budget');
INSERT INTO SEMINAR VALUES(
	NULL, '2019-03-22', '11:00', 'Dallas Convention Center',
	'Kitchen on a Big D Budget');
INSERT INTO SEMINAR VALUES(
	NULL, '2019-03-23', '11:00', 'Dallas Convention Center',
	'Kitchen on a Big D Budget');
INSERT INTO SEMINAR VALUES(
	NULL, '2019-04-05', '08:30', 'Austin Convention Center',
	'Kitchen on a Budget');


/*****   Insert values to SEMINAR_CUSTOMER DATA   ************************************************/

INSERT INTO SEMINAR_CUSTOMER VALUES(1, 1);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 2);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 3);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 4);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 5);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 6);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 7);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 8);
INSERT INTO SEMINAR_CUSTOMER VALUES(3, 9);
INSERT INTO SEMINAR_CUSTOMER VALUES(3, 10);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 6);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 7);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 11);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 12);


/*****   Insert values to FOLLOW_UP   *********************************************************/
-- 'Nancy.Jacobs@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-10-12', 'Seminar', 1, 1);
-- 'Chantel.Jacobs@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-10-12', 'Seminar', 2, 1);
-- 'Ralph.Able@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-10-12', 'Seminar', 3, 1);
-- 'Susan.Baker@elsewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-10-12', 'Seminar', 4, 1);
-- 'Sam.Eagleton@elsewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-10-12', 'Seminar', 5, 1);
-- 'Nancy.Jacobs@somewhere.com',
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-10-15', 'EmailSeminarMessage', 1);
-- 'Chantel.Jacobs@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-10-15', 'EmailSeminarMessage', 2);
-- 'Ralph.Able@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-10-15', 'EmailSeminarMessage', 3);
-- 'Susan.Baker@elsewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-10-15', 'EmailSeminarMessage', 4);
-- 'Sam.Eagleton@elsewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-10-15', 'EmailSeminarMessage', 5);
-- 'Nancy.Jacobs@somewhere.com',
INSERT INTO FOLLOW_UP (CustomerID, ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-10-15', 'FormLetterSeminar', 1);
-- 'Chantel.Jacobs@somewhere.com'
INSERT INTO FOLLOW_UP (CustomerID, ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-10-15', 'FormLetterSeminar', 2);
-- 'Ralph.Able@somewhere.com'
INSERT INTO FOLLOW_UP (CustomerID, ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-10-15', 'FormLetterSeminar', 3);
-- 'Susan.Baker@elsewhere.com'
INSERT INTO FOLLOW_UP (CustomerID, ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-10-15', 'FormLetterSeminar', 4);
-- 'Sam.Eagleton@elsewhere.com'
INSERT INTO FOLLOW_UP (CustomerID, ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-10-15', 'FormLetterSeminar', 5);

-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-10-26', 'Seminar', 6, 2);
-- 'Sally.George@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-10-26', 'Seminar', 7, 2);
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-10-26', 'Seminar', 8, 2);

-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-10-30', 'EmailSeminarMessage', 6);
-- 'Sally.George@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-10-30', 'EmailSeminarMessage', 7);
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-10-30', 'EmailSeminarMessage', 8);

-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-10-30', 'FormLetterSeminar', 6);
-- 'Sally.George@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-10-30', 'FormLetterSeminar', 7);
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-10-30', 'FormLetterSeminar', 8);

-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-11-02', 'Seminar', 9, 3);
-- 'Terry.Ranger@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2018-11-02', 'Seminar', 10, 3);

-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-11-06', 'EmailSeminarMessage', 9);
-- 'Terry.Ranger@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(2, '2018-11-06', 'EmailSeminarMessage', 10);
-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-11-06', 'FormLetterSeminar', 9);
-- 'Terry.Ranger@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(3, '2018-11-06', 'FormLetterSeminar', 10);
-- 'Ralph.Able@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(4, '2019-02-20', 'WebAccountCreation', 3);
-- 'Ralph.Able@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(5, '2019-02-20', 'EmailAccountMessage', 3);
-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(4, '2019-02-22', 'WebAccountCreation', 6);
-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(5, '2019-02-22', 'EmailAccountMessage', 6);
-- 'Sally.George@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(4, '2019-02-25', 'WebAccountCreation', 7);
-- 'Sally.George@somewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(5, '2019-02-25', 'EmailAccountMessage', 7);
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(4, '2019-03-07', 'WebAccountCreation', 8);
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO FOLLOW_UP (ContactNumber, ContactDate,  ContactType, CustomerID)
	VALUES(5, '2019-03-07', 'EmailAccountMessage', 8);
-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(6, '2019-03-22', 'Seminar', 6, 4);
-- 'Sally.George@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(6, '2019-03-22', 'Seminar', 7, 4);
-- 'Jenny.Tyler@somewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2019-03-22', 'Seminar', 11, 4);
-- 'Joan.Wayne@elsewhere.com'
INSERT INTO FOLLOW_UP VALUES(1, '2019-03-22', 'Seminar', 12, 4);
