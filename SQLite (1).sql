Create TABLE Owner (
	owner_id INT primary key,
    name TEXT,
    contact TEXT
);
    
CREATE TABLE Pets (
	pet_id INT primary key,
  	species TEXT,
  	pet_name text,
  	owner_id int,
  	foreign key (owner_id) references Owner (owner_id)
);
	
create table Service (
	service_id int primary key,
  	type text,
  	price float
);

CREATE TABLE Staff(
	staff_id int PRIMARY key,
  	role text,
  	name text
);

CREATE TABLE Appointment (
	appointment_id int primary key,
  	pet_id int,
 	staff_id int,
  	service_id int,
  	date_time datetime,
  	foreign key (pet_id) references Pets(pet_id),
  	foreign key (staff_id) references Staff(staff_id),
  	foreign key (service_id) REFERENCES Service(service_id)
  	
);

create table Speciality (
	speciality_id int primary key,
  	speciality_in text
);

create table Staff_Speciality (
    type text,
  	staff_id int,
  	speciality_id int,
  	primary key (staff_id, speciality_id),
  	foreign key (type) REFERENCES Service (type),
  	foreign key (staff_id) references Staff (staff_id),
  	FOREIGN key (speciality_id) REFERENCES Speciality (speciality_id)
);


