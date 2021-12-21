--Table: Mechanic
CREATE TABLE [ Mechanic ] (
	"Password"		integer NOT NULL  ,
	"Name"		varchar(30) NOT NULL  ,
	"Surname"		varchar(30) NOT NULL  ,
	"Hours"		varchar(20)  NOT NULL  ,
	"Comments"		varchar(40)  NOT NULL    ,
    PRIMARY KEY ([Password])
);


--Table: Saler
CREATE TABLE [ Saler ] (
	"ID"		integer NOT NULL  ,
	"Surname"		varchar(30) NOT NULL  ,
	"Name"		varchar(30)  NOT NULL    ,
    PRIMARY KEY ([ID])
);


--Table: Invoice
CREATE TABLE [ Invoice ] (
	"Password"		integer NOT NULL  ,
	"Saler_ID" 		iinteger NOT NULL  ,
	"Value"		integer NOT NULL  ,
	"Date"		varchar(20)  NOT NULL    ,
    PRIMARY KEY ([Password])  
,
    FOREIGN KEY ([Saler_ID])
     REFERENCES [Saler]([ID])
       ON DELETE NO ACTION
       ON UPDATE NO ACTION
);



--Table: Costumer
CREATE TABLE [ Costumer ] (
	"ID"		INTEGER  NOT NULL  ,
	"Invoice_Password"		INTEGER  NOT NULL  ,
	"Name"		VARCHAR(30)  NOT NULL  ,
	"Surname"		VARCHAR(30)  NOT NULL  ,
	"Town"		VARCHAR(30)  NOT NULL    ,
	"Number"		INTEGER NOT NULL    ,
    PRIMARY KEY(ID)  
,
    FOREIGN KEY ([Invoice_Password])
     REFERENCES [Invoice]([Password])
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);



--Talbe: Car
CREATE TABLE [ Car ] (
	"ID"		integer NOT NULL  ,
	"Costumer_ID"		integer NOT NULL  ,
	"Saler_ID"		integer NOT NULL  ,
	"Color"		varchar(20) NOT NULL  ,
	"Year"		integer NOT NULL  ,
	"Company"		varchar(30) NOT NULL  ,
	"Serial Number"		integer NOT NULL    ,
    PRIMARY KEY ([ID])    
,
    FOREIGN KEY ([Saler_ID])
     REFERENCES [Saler]([ID])
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    FOREIGN KEY([Costumer_ID])
     REFERENCES [Costumer]([ID])
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);



--Table: Eisithrio
CREATE TABLE [ Eishthrio ] (
	"Kwdikos"		integer NOT NULL  ,
	"Mhxanikos_Kwdikos"		integer NOT NULL  ,
	"Autokinhto_ID"		integer NOT NULL  ,
	"Hmeromhnia Eisagwghs"		varchar(20) NOT NULL  ,
	"Hmeromhnia Paralabhs"		varchar(20) NOT NULL  ,
	"Kostos"		integer NOT NULL    ,
    PRIMARY KEY ([Kwdikos])    
,
    FOREIGN KEY ([Autokinhto_ID])
     REFERENCES [Autokinhto]([ID])
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    FOREIGN KEY ([Mhxanikos_Kwdikos])
     REFERENCES [Mhxanikos]([Kwdikos])
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


