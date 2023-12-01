--Sales Person ID
create table Salesperson(
	Sales_person_ID SERIAL primary key,
	Full_Name VARCHAR(100),
	Salary Integer(150),
	Total_Cars_Sold Integer(150)
	
);

--Customer Table
create table Customer(
	Customer_ID SERIAL primary key,
	Full_Name Varchar,
	Customer_Email VARCHAR(150),
	foreign key(Invoice_ID) references Invoice(Invoice_ID)
);

--Invoice Table
create table Invoice_ID(
	InvoiceID SERIAL primary key,
	date TIME default CURRENT_DATE,
	foreign key (Sales_Person_ID) references Salesperson(Sales_person_ID)

);

 --Service Titcket
create table Service_Ticket(
	Service_Ticket_ID Serial primary key,
	date TIME default CURRENT_DATE,
	foreign key(Mechanic_ID) references Mechanic(Mechanic_ID),
	foreign key(Part_ID) references parts(Part_ID),
	foreign key(Customer_ID) references Customer(Customer_ID)
);

 --Cars
create table Cars(
	Serial_ID Serial primary key,
	Model varchar(150),
	foreign key(Sales_person_ID) references Salesperson(Sales_person_ID),
	foreign key(Customer_ID) references Customer(Customer_ID),
	foreign key(Mechanic_ID) references Mechanic(Mechanic_ID)
);

 --Service History
create table Service_History(
	service_history_ID Serial primary key,
	date TIME default CURRENT_DATE,
	foreign key(Serial_ID) references Cars(Serial_ID)
	
);

 --Mechanic
create table Mechanic(
	Mechanic_ID primary key,
	full_name varchar(150),
	rank_ID varchar(150),
	pay_rate Float(15)
	);

 --Parts
create table Parts(
	Part_ID Serial primary key,
	Full_name varchar(100),
	Function_Text Text(1000),
);


