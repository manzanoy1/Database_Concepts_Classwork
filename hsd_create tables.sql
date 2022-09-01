use hsd;
CREATE  TABLE CUSTOMER(
	CustomerID			Int				NOT NULL auto_increment, -- auto-generated unique number by DBMS
	LastName			Char(25)		NOT NULL,
	FirstName			Char(25)		NOT NULL,
	EmailAddress		VarChar(100)	NOT NULL,
	Phone				Char(12)		NOT NULL,
	StreetAddress		Char(35)		NULL,
	City				Char(35)		NULL DEFAULT 'Oneonta', -- default value shown in a column if there is no input
	State				Char(2)			NULL DEFAULT 'NY',
	ZIP					Char(10)		NULL DEFAULT '13820',
	CONSTRAINT 			CUSTOMER_PK 	PRIMARY KEY(CustomerID), -- constraint foreign key vs. foreign key: control name
	CONSTRAINT			CUSTOMER_EMAIL	UNIQUE(EmailAddress) -- unique: all values in a column are unique.
	);
	
CREATE  TABLE SEMINAR(
	SeminarID			Int				NOT NULL auto_increment,
	SeminarDate			Date			NOT NULL,
	SeminarTime			Time			NOT NULL, -- or Datetime
	Location			VarChar(100)	NOT NULL,
	SeminarTitle		VarChar(100)	NOT NULL,
	CONSTRAINT 			SEMINAR_PK 		PRIMARY KEY(SeminarID)
	);

CREATE  TABLE SEMINAR_CUSTOMER(
	SeminarID			Int				NOT NULL,
	CustomerID			Int				NOT NULL,
	CONSTRAINT 			S_C_PK 			PRIMARY KEY(SeminarID, CustomerID),
	CONSTRAINT 			S_C_SEMINAR_FK  FOREIGN KEY(SeminarID)
							REFERENCES SEMINAR(SeminarID)
								ON UPDATE CASCADE, -- OR USE ON UPDATE NO ACTION & ON DELETE NO ACTION
                                -- UPDATE CASCADE means if a value update in parent table, the foreign key change accordingly
                                -- the most common on update clause
	CONSTRAINT 			S_C_CUSTOMER_FK    FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)
								ON UPDATE CASCADE -- OR USE ON UPDATE NO ACTION & ON DELETE NO ACTION
	);

CREATE  TABLE FOLLOW_UP(
	ContactNumber		Int				NOT NULL,
	ContactDate			Date			NOT NULL,
	ContactType			VarChar(30)		NOT NULL,
    CustomerID			Int				NOT NULL,
	SeminarID			Int				NULL,
	CONSTRAINT 			CONTACT_PK 		PRIMARY KEY(CustomerID, ContactNumber),
	CONSTRAINT			CONTACT_ContactType
							CHECK (ContactType IN ('Seminar', 'FormLetterSeminar', -- check: provide a value range
								   'WebAccountCreation', 'WebPurchase',
								   'EmailAccountMessage', 'EmailSeminarMessage',
								   'EmailPurchaseMessage', 'EmailMessageExchange',
								   'PhoneConversation')),
	CONSTRAINT 			CONTACT_SEMINAR_FK FOREIGN KEY(SeminarID)
							REFERENCES SEMINAR(SeminarID)
								ON UPDATE CASCADE, -- OR USE ON UPDATE NO ACTION & ON DELETE NO ACTION
	CONSTRAINT 			CONTACT_CUSTOMER_FK FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)
								ON UPDATE CASCADE -- OR USE ON UPDATE NO ACTION & ON DELETE NO ACTION
	);

CREATE  TABLE INVOICE(
    InvoiceNumber		Int				NOT NULL auto_increment,
	InvoiceDate			Date			NOT NULL,
	PaymentType			Char(25) 		NOT NULL DEFAULT 'Cash',
	SubTotal			Decimal(9,2)	NULL, -- DEC(m,n): m defines # of digits in total, n defines # of digits after decimal point.
	Shipping			Decimal(9,2)	NULL,
	Tax					Decimal(9,2)	NULL,
	Total				Decimal(9,2)	NULL,	
    CustomerID			Int				NOT NULL,
    CONSTRAINT 			INVOICE_PK 		PRIMARY KEY (InvoiceNumber),
	CONSTRAINT			INVOICE_PaymentType
							CHECK (PaymentType IN ('VISA',
								'MasterCard', 'American Express',
								'PayPal', 'Check', 'Cash')),
	CONSTRAINT 			INVOICE_CUSTOMER_FK FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)
							ON UPDATE CASCADE -- OR USE ON UPDATE NO ACTION & ON DELETE NO ACTION
    );

CREATE  TABLE PRODUCT(
	ProductNumber		Char(35)		NOT NULL,
	ProductType			Char(24)		NOT NULL,
	ProductDescription	VarChar(100)	NOT NULL,
	UnitPrice			Decimal(9,2)	NOT NULL,
	QuantityOnHand		Int				NULL,
	CONSTRAINT 			PRODUCT_PK 		PRIMARY KEY(ProductNumber),
	CONSTRAINT			PRODUCT_ProductType
							CHECK (ProductType IN ('Video',
								   'Video Companion', 'Book'))
	);

CREATE  TABLE ORDER_LIST(
	OrderNumber			Int				NOT NULL,
	Quantity			Int				NOT NULL,
	UnitPrice			Decimal(9,2)	NULL,
	Total				Decimal(9,2)	NULL,
	InvoiceNumber		Int				NOT NULL,
    ProductNumber		Char(35) 		NOT NULL,
    CONSTRAINT 			LINE_ITEM_PK 	PRIMARY KEY (InvoiceNumber, OrderNumber),
	CONSTRAINT 			L_I_INVOICE_FK 	FOREIGN KEY(InvoiceNumber)
							REFERENCES INVOICE(InvoiceNumber)
								ON UPDATE CASCADE, -- OR USE ON UPDATE NO ACTION & ON DELETE NO ACTION
	CONSTRAINT 			L_I_PRODUCT_FK 	FOREIGN KEY(ProductNumber)
							REFERENCES PRODUCT (ProductNumber)
								ON UPDATE CASCADE -- OR USE ON UPDATE NO ACTION & ON DELETE NO ACTION
    );