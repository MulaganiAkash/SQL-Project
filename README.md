# SQL-Project
Hospital Managemant

HOSPITAL MANAGEMENT
=================

![image](https://github.com/user-attachments/assets/377d771a-5894-49a8-99bf-cbec7e563e2d)


OBJECTIVE:
----------
The objective of the Hospital Database Project is to design and implement a comprehensive database system for managing various aspects of hospital operations. This includes managing employee information, employee types, salaries, medicines, rooms, patients, diseases, and vehicles. The system aims to streamline data management processes, ensure data integrity, and provide efficient data retrieval and manipulation capabilities.

PROJECT OVERVIEW:
-----------------
This project involves creating and managing tables for various entities in a hospital database, including employees, employee types, salaries, medicines, rooms, patients, diseases, and vehicles. Each table has been designed with appropriate columns, constraints, and default values to ensure data integrity and consistency.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


KEY POINTS:
=======================

EMPLOYEE MANAGEMENT TABLE:
--------
The Employee Management section of the hospital database project is designed to handle employee data efficiently. It starts by creating an Employee table with fields such as EmployeeId, FirstName, LastName, Gender, DOB, PhoneNumber, Address, HireDate, IsActive, CreatedBy, CreatedOn, UpdatedBy, and UpdatedOn. These fields store essential information about each employee, including their personal details, contact information, employment history, and metadata tracking.
Initial data insertion involves adding a sample employee record, such as 'AKASH', with specified details. The database ensures each employee is uniquely identified with an auto-incrementing EmployeeId. Updates to employee records, such as changing an employee's address, are handled to maintain accurate and up-to-date information.
This management system provides a structured approach to storing and managing employee data within the hospital database, ensuring clarity and accessibility of personnel information for administrative and operational purposes.

![image](https://github.com/user-attachments/assets/d6f4de46-979d-4bfb-81cd-69b4e7899182)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

EMPLOYEE TYPE MANAGEMENT TABLE:
----
The Employee Type Management section of the hospital database project focuses on categorizing employees based on their roles and specializations. It begins by creating an EmployeeType table that includes fields such as EmployeeTypeId, EmployeeTypeName, EmployeeId, SpecialaizedIn, CreatedBy, CreatedOn, UpdatedBy, and UpdatedOn. These fields define the type of employee (e.g., Doctor), link to the corresponding employee ID from the Employee table, specify the specialization (e.g., Cardiologist), and record metadata about who created or updated the entry and when.


![image](https://github.com/user-attachments/assets/06262597-a46d-425b-9d92-9740159b4324)



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SALARY MANAGEMENT TABLE:
-----                    
The Salary Management section of the hospital database project handles the administration of salaries for hospital employees. It begins by dropping any existing Salary table to ensure a fresh start, followed by creating a new Salary table with essential fields including SalaryId, Salary, EmployeeId, Bonus, StartDate, EndDate, CreatedBy, CreatedOn, UpdatedBy, and UpdatedOn. These fields capture details such as the salary amount, associated employee ID, bonus amount, start and end dates of the salary period, and metadata regarding who created or last updated the record and when.

![image](https://github.com/user-attachments/assets/b39c50cb-ac29-4241-9698-8ecaf4c2ae97)



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


MEDICINE MANAGEMENT TABLE:
-----
The Medicine Management section of the hospital database project focuses on managing information related to medicines used within the hospital. It begins by dropping any existing Medicine table to ensure a clean start, followed by creating a new Medicine table with essential fields such as MedicineId, MedicineName, MedicineCost, BrandName, StorageCondition, SideEffects, MFG_Date, EXP_Date, and Dosage. These fields capture critical details about each medicine, including its cost, storage conditions, potential side effects, manufacturing and expiry dates, and recommended dosage.


![image](https://github.com/user-attachments/assets/53042783-7621-4b28-9ed2-b879d4f6bd71)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


ROOM MANAGEMENT TABLE:
----
The Room Management section of the hospital database project is designed to manage room-related information. It begins by dropping any existing Room table to ensure no conflicts, and then creates a new Room table with fields such as RoomId, RoomNumber, RoomType, FloorNo, Capacity, and BedType. These fields help in uniquely identifying each room, specifying its type, and detailing its capacity and bed type. Metadata fields like CreatedBy, CreatedOn, UpdatedBy, and UpdatedOn track the record's creation and modification details.

![image](https://github.com/user-attachments/assets/b960a3aa-e6bb-4c9b-b42f-fb939f82870c)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


PATIENT MANAGEMENT TABLE:
----
The Patient Management section of the hospital database project focuses on maintaining patient information. It involves creating a Patient table, inserting records, and performing updates and deletions. The Patient table includes fields such as PatientId, FirstName, LastName, DOB, Gender, Address, PhoneNo, and AdmittedDate, among others. Foreign key references are made to the Vehicle, Disease, EmployeeType, Medicine, and Room tables to capture comprehensive patient details, including the vehicle used, diagnosed disease, assigned doctor, medication, and room number. Metadata fields such as CreatedBy, CreatedOn, UpdatedBy, and UpdatedOn are included to track the record creation and modification details.

![image](https://github.com/user-attachments/assets/cbe462ae-ba76-47de-b53e-71df8c61fa8a)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


DISEASE MANAGEMENT TABLE:
--------
The Disease Management section of the hospital database project focuses on handling information related to diseases. It includes creating a Disease table, inserting records, and updating data. The Disease table is designed with unique DiseaseId, DiseaseName, and Symptoms columns, along with metadata fields for tracking who created or updated the entries and when.

![image](https://github.com/user-attachments/assets/b99c2aec-4f39-43bd-9536-a68c11fc9b6e)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


VEHICLE MANAGEMENT TABLE:
----
The Vehicle Management section of the hospital database project manages vehicle data. It involves creating a Vehicle table, inserting records, and retrieving information. The Vehicle table includes unique VehicleId, VehicleName, DriverId (referencing EmployeeType), and VehicleCondition (defaulting to 'Good Condition'), along with metadata fields for tracking creation and updates.



![image](https://github.com/user-attachments/assets/c428ee2e-2d27-4df2-b469-82d8e1a7941c)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


CONCLUSION:
----


This SQL-based hospital database project provides a structured and efficient way to manage and manipulate hospital-related data. By implementing various tables, procedures, and default values, the database ensures data integrity, consistency, and easy retrieval of information. This project serves as a foundational step towards creating a robust hospital management system.

![image](https://github.com/user-attachments/assets/a0946707-8ae1-4d47-9d35-21d0c489cf4f)

THE END
====

      
