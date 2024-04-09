CREATE DATABASE  IF NOT EXISTS `hospitaldb`;
USE `hospitaldb`;

CREATE TABLE `patient` (
  `patient_id` int NOT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `patient_surname` varchar(45) DEFAULT NULL,
  `patient_condition` varchar(45) DEFAULT NULL,
  `patient_age` DATE,
  `patient_sex` varchar(1) DEFAULT NULL,
  `patient_email` varchar(45) DEFAULT NULL,
  `staff_id` int,
  `dep_id` int,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

CREATE TABLE `medical_staff`(
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(45) DEFAULT NULL,
  `staff_surname` varchar(45) DEFAULT NULL,
  `staff_age` DATE,
  `staff_sex` varchar(1) DEFAULT NULL,
  `staff_role` varchar(45) DEFAULT NULL,
  `staff_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;
ALTER TABLE medical_staff ADD dep_id INT;

CREATE TABLE `department`(
  `dep_id` int NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(45) DEFAULT NULL,
  `mgr_id` int,
  `mgr_start_date` DATE,
 PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

ALTER TABLE patient
ADD FOREIGN KEY(staff_id)
REFERENCES medical_staff(staff_id)
ON DELETE CASCADE;

ALTER TABLE patient
ADD FOREIGN KEY (dep_id)
REFERENCES department(dep_id)
ON DELETE CASCADE;

ALTER TABLE medical_staff
ADD FOREIGN KEY(dep_id) 
REFERENCES department(dep_id)
ON DELETE CASCADE;

CREATE TABLE `appointment`(
`patient_id` int,
`staff_id` int,
`app_date` DATE,
`app_reason` varchar(45) DEFAULT NULL,
PRIMARY KEY(patient_id, staff_id),
FOREIGN KEY(patient_id) REFERENCES patient(patient_id),
FOREIGN KEY(staff_id) REFERENCES medical_staff(staff_id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE appointment
ADD CONSTRAINT fk_patient_id
FOREIGN KEY (patient_id)
REFERENCES patient (patient_id)
ON DELETE CASCADE;

CREATE TABLE `med_supplier`(
`dep_id` int,
`supplier_name` varchar(45),
`supply_type` varchar(45) DEFAULT NULL,
`supply_cost` int,
PRIMARY KEY(dep_id, supplier_name),
FOREIGN KEY(dep_id) REFERENCES department(dep_id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `department` VALUES
       (1,'Cardiology',201,'2010-02-10'),
       (2,'Gatroenterology',210,'2007-05-20'),
       (3,'Nephrology',205,'2000-12-30'),
       (4,'Oncology',215,'2003-03-14'),
       (5,'Allergology',208,'2020-07-24'),
       (6,'Maternity',217,'2001-09-10');
       
INSERT INTO `medical_staff` VALUES
        (200,'Richard','Kambyses','1993-05-16','M','Intern','rich@gmail.com',1),
        (201, 'Pamela','Florizel', '1977-02-09','F','Heart Surgeon','pamelaf@gmail.com',1),
        (202,'Filippu','Hunter','1999-10-01','M','Senior Consultant','filippu@gmail.com','2'),
        (203,'Deniz','Gauri','1995-07-21','M','Student Doctor','denji@gmail.com',2),
        (204,'Jaslyn','Eliana','1981-02-10','F','Nurse','jaslyn@gmail.com',3),
        (205,'Roswitha','Maricruz','1976-09-08','F','Nephrologist','roswitha@gmail.com',3),
        (207,'Vagn','Ramazan','1996-12-30','M','Certified Medical Assistant','vagn@gmail.com',4),
        (208,'Bahija','Bento','1989-02-11','F','Allergologist','bahija@gmail.com',5),
        (210,'Azad','Devyn','1984-06-20','M','Gastroenterologist','azad@gmail.com',2),
        (211,'Fulgora','Archana','1985-11-28','F','Optometric Assistant','fulgora@gmail.com',4),
        (212,'Madhu','Meklit','1997-01-29','M','Podiatric Aide','madhu@gmail.com',5),
        (213,'Velibor','Orna','1978-05-19','F','Radiologist Practicioner','velibor@gmail.com',6),
        (214,'Kasim','Ana','1986-06-05','M','Audiologist','kasim@gmail.com',1),
        (215,'Neil','Henriette','1976-06-30','F','Oncologist','neil@gmail.com',4),
        (217,'Avanti','Moreen','1975-11-16','M','Gynecologist','avanti@gmail.com',6),
        (218,'Gabe','Marly','1974-04-06','M','Obstetrician','gabe@gmail.com',4),
        (219,'Maria','Rudyard','1989-10-28','F','Prosthodontist','maria@gmail.com',2),
        (220,'Geena','Brandt','1994-11-08','F','Chiropractor','geena@gmail.com',5);

INSERT INTO `patient` VALUES 
	(100, 'Deven', 'Alhaji', 'Cardiac Arrest', '1991-05-11', 'M', 'deven@gmail.com', 200, 1),
	(102,'Markas','Sergiusz','Diabetes','1998-07-24','M','markas@gmail.com',202,3),
	(103,'Silvina','Lynette','Cancer','1988-07-17','F','silvina@gmail.com',203,4),
	(104,'John','Evanthe','Corn Allergy','1966-06-25','M','john@gmail.com',204,5),
    (105,'Lain','Iwakura','Pregnant','1990-04-15','F','john@gmail.com',205,6);

INSERT INTO `appointment` VALUES
       (100,201,'2023-09-15','Surgery'),
       (102,210,'2023-09-14','Check-up'),
       (103,205,'2023-09-13','Blood work'),
       (104,215,'2023-09-12','Chemotherapy'),
       (105,208,'2023-09-11','Resistance training');

INSERT INTO `med_supplier` VALUES
       (1,'Wellchem','Defibrillator',200),
       (1,'NobleCure','Strecher',100),
       (2,'MedExpress','Anesthesia Machine',500),
       (2,'CureVibe','Patient Monitor',1000),
       (3,'MedSphere','Ventillator',400),
       (3,'HealthyElite','Sterilizer',1100),
       (4,'TruthLaboratories','X-ray',2000),
       (4,'UnicornHealth','IV',100),
       (5,'Medibles','Wheelchair',400),
       (5,'Medallion','Defibrillator',200),
       (6,'RedMedicine','EKG/ECG',800),
       (6,'PharmaCo','Ultrasound',700);






