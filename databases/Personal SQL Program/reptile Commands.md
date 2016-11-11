CREATE TABLE "Remarkable Reptiles" (
"ID" integer primary key,
"Name" varchar(255),
"Order_id" varchar(255),
"Venomous?" int(1),
foreign key ("order_id") references "order"(id));



create table "Order" (
ID integer primary key,
name varchar(255));

insert into "order" (name) values ("Crocodilia");

 insert into "Remarkable reptiles" (name, "order_id", "venomous?") values ("Frilled-neck Lizard", "3", 0);
 insert into "Remarkable reptiles" (name, "order_id", "venomous?") values ("Lute Turtle", "4", 0);
 insert into "Remarkable reptiles" (name, "order_id", "venomous?") values ("Gharial", "1", 0);
 insert into "Remarkable reptiles" (name, "order_id", "venomous?") values ("Inland Taipan", "3", 1);