
CREATE DATABASE  IF NOT EXISTS `hospital_directory`;
USE `hospital_directory`;

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
  `dep_ id` int,
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
ON DELETE SET NULL;

ALTER TABLE patient
ADD CONSTRAINT FK_DepartID1
FOREIGN KEY(dep_id) REFERENCES department(dep_id);

ALTER TABLE medical_staff
ADD CONSTRAINT  FK_DepartID2
FOREIGN KEY(dep_id) REFERENCES department(dep_id);

ALTER TABLE department
ADD FOREIGN KEY(mgr_id)
REFERENCES medical_staff(staff_id)
ON DELETE SET NULL;

CREATE TABLE `appointment`(
`patient_id` int,
`staff_id` int,
`app_date` DATE,
`app_reason` varchar(45) DEFAULT NULL,
PRIMARY KEY(patient_id, staff_id),
FOREIGN KEY(patient_id) REFERENCES patient(patient_id) ON DELETE CASCADE,
FOREIGN KEY(staff_id) REFERENCES medical_staff(staff_id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `med_supplier`(
`dep_id` int,
`supplier_name` varchar(45),
`supply_type` varchar(45) DEFAULT NULL,
`supply_cost` int,
PRIMARY KEY(dep_id, supplier_name),
FOREIGN KEY(dep_id) REFERENCES department(dep_id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `patient` VALUES 
	('100', 'Deven', 'Alhaji', 'Cardiac Arrest', '1991-05-11', 'M', 'deven@gmail.com', '200', '1'),
	(‘102’,’Markas’,’Sergiusz’,’Diabetes’,’07/24/1998’,’M’,’markas@gmail.com’,’202’,’3’),
	(‘103’,’Silvina’,’Lynette’,’Cancer’,’07/17/1988’,’F’,’silvina@gmail.com’,’203’,’4’),
	(‘104’,’John’,’Evanthe’,’Corn Allergy’,’06/25/1966’,’M’,’john@gmail.com’,’204’,’5’),
    (‘104’,’Lain’,’Iwakura’,’Pregnant’,’04/15/1990’,’F’,’john@gmail.com’,’205’,’6’);

INSERT INTO `medical_staff` VALUES
        (‘200’,’Richard’,’Kambyses’,’05/16/1993’,’M’,’Intern’,’richy@gmail.com’,’1’),
        (‘201’, ‘Pamela’,’Florizel’, ‘09/02/1977’,’F’,’Heart Surgeon’,’pamelaf@gmail.com’,’1’),
        (‘202’,’Filippu’,’Hunter’,’10/01/1999’,’M’,’Senior Consultant’,’filippu@gmail.com’,’2’),
        (‘203’,’Deniz’,’Gauri’,’07/21/1995’,’M’,’Student Doctor’,’denji@gmail.com’,’2’),
        (‘204’,’Jaslyn’,’Eliana’,’10/02/1981’,’F’,’Nurse’,’jaslyn@gmail.com’,’3’),
        (‘205’,’Roswitha’,’Maricruz’,’09/08/1976’,’F’,’Nephrologist’,’roswitha@gmail.com’,’3’),
        (‘207’,’Vagn’,’Ramazan’,’12/30/1996’,’M’,’Certified Medical Assistant’,’vagn@gmail.com’,’4’),
        (‘208’,’Bahija’,’Bento’,’11/02/1989’,’F’,’Allergologist’,’bahija@gmail.com’,’5’),
        (‘210’,’Azad’,’Devyn’,’06/20/1984’,’M’,’Gastroenterologist’,’azad@gmail.com’,’2’),
        (‘211’,’Fulgora’,’Archana’,’11/28/1985’,’F’,’Optometric Assistant’,’fulgora@gmail.com’,’4’),
        (‘212’,’Madhu’,’Meklit’,’01/29/1997’,’M’,’Podiatric Aide’,’madhu@gmail.com’,’5’),
        (‘213’,’Velibor’,’Orna’,’05/19/1978’,’F’,’Radiologist Practicioner’,’velibor@gmail.com’,’6’),
        (‘214’,’Kasim’,’Ana’,’06/05/1986’,’M’,’Audiologist’,’kasim@gmail.com’,’1’),
        (‘215’,’Neil’,’Henriette’,’06/30/1976’,’F’,’Oncologist’,’neil@gmail.com’,’4’),
        (‘217’,’Avanti’,’Moreen’,’11/16/1975’,’M’,’Gynecologist’,’avanti@gmail.com’,’6’),
        (‘218’,’Gabe’,’Marly’,’04/06/1974’,’M’,’Obstetrician’,’gabe@gmail.com’,’4’),
        (‘219’,’Maria’,’Rudyard’,’10/28/1989’,’F’,’Prosthodontist’,’maria@gmail.com’,’2’),
        (‘220’,’Geena’,’Brandt’,’11/08/1994’,’F’,’Chiropractor’,’geena@gmail.com’,’5’);


INSERT INTO `department` VALUES
       (‘1’,’Cardiology’,’201’,’10/02/2010’),
       (‘2’,’Gatroenterology’,’210’, ‘05/20/2007’),
       (‘3’,’Nephrology’,’205’,’12/30/2000’),
       (‘4’,’Oncology’,’215’,’03/14/2003’),
       (‘5’,’Allergology’,’208’,’07/24/2020’),
       (‘6’,’Maternity’,’217’,’09/10/2001’);

INSERT INTO `appointment` VALUES
       (‘100’,’201’,’09/15/2023’,’Surgery’),
       (‘101’,’210’,’09/14/2023’,’Check-up’),
       (‘102’,’205’,’09/13/2023’,’Blood work’),
       (‘104’,’215’,’09/12/2023’,’Chemo therapy’),
       (‘105’,’208’,’09/11/2023’,’Resistance training’),
       (‘106’,’217’,’09/10/2023’,’Childbirth’);

INSERT INTO `med_supplier` VALUES
       (‘1’,’Wellchem’,’Defibrillator’,’200’),
       (‘1’,’Noble Cure’,’Strecher’,’100’),
       (‘2’,’Med Express’,’Anesthesia Machine’,’500’),
       (‘2’,’Cure Vibe’,’Patient Monitor’,’1000’),
       (‘3’,’MedSphere’,’Ventillator’,’400’),
       (‘3’,’Healthy Elite’,’Sterilizer’,’1100’),
       (‘4’,’Truth Laboratories’,’X-ray’,’2000’),
       (‘4’,’Unicorn Health’,’IV’,’100’),
       (‘5’,’Medibles’,’Wheelchair’,’400’),
       (‘5’,’Medallion’,’Defibrillator’,’200’),
       (‘6’,’Red Medicine’,’EKG/ECG’,’800’),
       (‘6’,’Pharma Co’,’Ultrasound’,’700’);






