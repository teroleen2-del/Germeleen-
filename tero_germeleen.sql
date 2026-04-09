


CREATE TABLE Patients(
patient_id INT PRIMARY KEY,
Patient_name VARCHAR(50),
city VARCHAR(50),
contact_number VARCHAR(15)
);

INSERT INTO patients(patient_id,patient_name,city,contact_number) VALUES
(101,'Maria Santoa','Cebu','09123456781'),
(102,'Juan Dela Cruz','Bohol','09123456782'),
(103,'Ana Reyes','Cebu','09123456783'),
(104,'Mark Lopez','Dumaguete','09123456784'),
(105,'Carla Gomez','Bohol','09123456785');


CREATE TABLE Appointments(
appointment_id INT PRIMARY KEY,
    patient_id INT, 
    doctor_name VARCHAR(50),
appointment_date DATE,
status VARCHAR(20)
);


INSERT INTO Appointments (appointment_id,patient_id,doctor_name,appointment_date,status) VALUES
(201,101,'Dr. Garcia','2025-03-10','Completed'),
(202,102,'Dr. Ramos','2025-03-11','Scheduled'),
(203,101,'Dr. Cruz','2025-03-15','Scheduled'),
(204,103,'Dr. Garcia','2025-03-18','Cancelled');


SELECT p.patient_name,a.doctor_name
FROM Patients p
JOIN Appointments a
ON p.patient_id=a.patient_id;


SELECT p.patient_name,a.appointment_id,a.doctor_name,a.appointment_date,p.city, a.status
FROM patients p
JOIN Appointments a
ON p.patient_id=a.patient_id
WHERE p.city='Cebu';

SELECT p.patient_name,a.doctor_name,a.appointment_id,a.appointment_date,a.Status
FROM Patients p
JOIN Appointments a
ON p.patient_id=a.patient_id
WHERE doctor_name='Dr. Garcia';


SELECT p.patient_name,a.appointment_id,a.doctor_name,a.appointment_date,a.status
FROM Patients p
LEFT JOIN Appointments a
On p.patient_id=a.patient_id;

SELECT p.patient_name,a.appointment_id,a.doctor_name,a.appointment_date,a.status
FROM Patients p
RIGHT JOIN Appointments a
On p.patient_id=a.patient_id;








