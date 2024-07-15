               
			   
			   * ---HOSPITAL PROJECT--- *
 
 
 CREATE DATABASE HOSPITAL

 ---------------------------------------------------------------------------------

 
 SELECT * FROM Employee

 DROP TABLE Employee

 CREATE TABLE Employee
 (
 EmployeeId int PRIMARY KEY IDENTITY (1,1),
 FirstName nvarchar(90)	NOT NULL,
 LastName nvarchar(90)	NOT NULL,
 Gender nvarchar(90)	NOT NULL,
 DOB datetime NOT NULL,
 PhoneNumber bigint NOT NULL,
 Address nvarchar (90) NOT NULL,
 HireDate date default '2000-01-01',  
 IsActive bit default 1,
 CreatedBy nvarchar (90) Default 'AKASH',
 CreatedOn datetime default getdate(),
 UpdatedBy nvarchar (90) Default 'AKASH',
 UpdatedOn datetime default getdate()
 )
 
 INSERT INTO Employee (FirstName,Lastname,Gender,DOB,PhoneNmber,Address,HireDate)
 VALUES ('AKASH','M','Male','2000-01-01','Hyderabad','2001-04-23')
 
 CREATE PROCEDURE InsertEmployees
 @FirstName nvarchar(90),
 @LastName nvarchar(90) ,
 @Gender nvarchar(90) ,
 @DOB datetime  ,
 @PhoneNumber bigint,
 @Address nvarchar (90)
 AS
 BEGIN
 INSERT INTO Employee (FirstName,LastName,Gender,DOB,PhoneNumber,Address)
 VALUES (@FirstName,@LastName,@Gender,@DOB,@PhoneNumber,@Address)
 END

 EXEC InsertEmployees
 @FirstName='VANI',
 @LastName='V' ,
 @Gender='Female' ,
 @DOB = '1999-01-12',
 @PhoneNumber=9874546346,
 @Address='Ahmadabad'
  

 SELECT * FROM Employee

 UPDATE Employee set Address='Prakasam' where EmployeeId=16

 
 ------------------------------------------------------------------------------------------------------


 SELECT * FROM EmployeeType


 DROP TABLE EmployeeType

 CREATE TABLE EmployeeType
 (
 EmployeeTypeId int PRIMARY KEY IDENTITY (1,1),
 EmployeeTypeName nvarchar(90)	NOT NULL,
 EmployeeId int references Employee(EmployeeId),
 SpecialaizedIn nvarchar (90) NOT NULL,
 CreatedBy nvarchar (90) Default 'AKASH',
 CreatedOn datetime default getdate(),
 UpdatedBy nvarchar (90) Default 'AKASH',
 UpdatedOn datetime default getdate()
 )
 
 INSERT INTO EmployeeType (EmployeeTypeName,EmployeeId,SpecializedIn)
 VALUES ('Doctor','Cardiologists',1,)

 CREATE PROCEDURE InsertEmployeeType_data
 @EmployeeTypeName nvarchar (40) ,
 @EmployeeId int ,
 @SpecialaizedIn nvarchar (90)
 AS 
 BEGIN
 INSERT INTO EmployeeType (EmployeeTypeName,EmployeeId,SpecialaizedIn)
 Values (@EmployeeTypeName,@EmployeeId,@SpecialaizedIn)
 END

EXEC InsertEmployeeType_data
@EmployeeTypeName='Medical staff',
@EmployeeId=19,
@SpecialaizedIn='Medecine counter Manager'

SELECT * FROM EmployeeType

UPDATE EmployeeType set EmployeeTypeName='Doctor' where EmployeeTypeId='1'


UPDATE EmployeeType set SpecialaizedIn='Cardiologist' where EmployeeTypeId='1'


UPDATE EmployeeType set EmployeeId='5' where EmployeeTypeId='7'

SELECT * FROM EmployeeType

SELECT * FROM EmployeeType ORDER BY EmployeeId

ALTER TABLE EmployeeType ADD COLUMN SpecilaizedIn nvarchar(90) NOT NULL

 ALTER TABLE EmployeeType
ADD Column SpecilaizedIn nvarchar (90) NOT NULL;
--------------------------------------------------------------------------------------------
 
 SELECT *FROM Salary

 DROP TABLE Salary

 CREATE TABLE Salary
 (
 SalaryId int primary key Identity (1,1),
 salary money NOT NULL,
 EmployeeId int references Employee (EmployeeId),
 Bonus money  not null,
 StartDate DATE default '2000-01-01',
 EndDate DATE default '2001-01-01',
 CreatedBy nvarchar (90) Default 'AKASH',
 CreatedOn datetime default getdate(),
 UpdatedBy nvarchar (90) Default 'AKASH',
 UpdatedOn datetime default getdate()
 )

 INSERT INTO Salary (Salary,EmployeeId)
 VALUES (1,90000,1)

 CREATE PROCEDURE InsertSalarydata
 @Salary money,
 @EmployeeId int,
 @Bonus money
 AS
 BEGIN
 INSERT INTO Salary (Salary,EmployeeId,Bonus)
 VALUES (@Salary,@EmployeeId,@Bonus)
 END

 SELECT * FROM Salary

 UPDATE Salary set Salary='90000' where SalaryId='7'

 
 UPDATE Salary set EmployeeId='7' where SalaryId='7'

 EXEC InsertSalarydata
 @Salary = 90000,
 @EmployeeId =13,
 @Bonus=5000
 

 UPDATE Salary set Bonus='5000' where SalaryId='1'

 -------------------------------------------------------------------------------------------------------------

 SELECT * FROM Medicine


 DROP TABLE Medicine

 CREATE TABLE Medicine
 (
 MedicineId int primary key identity (1,1),
 MedicineName nvarchar (90) NOT NULL,
 MedicineCost money NOT NULL,
 BrandName nvarchar (90)  default 'TATA Medicines',
 StorageCondition nvarchar (90) default 'Room Temparature',
 SideEffects nvarchar (90) NOT NULL,
 MFG_Date date default '2020-01-01',
 EXP_Date date default  '2021-01-01',
 Dosage nvarchar (90) default ' 1 per Necessary',
 CreatedBy nvarchar (90) Default 'AKASH',
 CreatedOn datetime default getdate(),
 UpdatedBy nvarchar (90) Default 'AKASH',
 UpdatedOn datetime default getdate()
 )

 CREATE PROCEDURE InsertMedicines
 @MedicineName nvarchar (90) ,
 @MedicineCost money,
 @SideEffects nvarchar (90)
 AS
 BEGIN
 INSERT INTO Medicine (MedicineName,MedicineCost,SideEffects)
 VALUES (@MedicineName,@MedicineCost,@SideEffects)
 END

 EXEC InsertMedicines
 @MedicineName= 'Pantoprazole',
 @MedicineCost=90,
 @SideEffects = '      Bleeding, bruising, hair loss            '


 SELECT * FROM Medicine

 update Medicine set SideEffects='Headache, diarrhea, abdominal pain' where MedicineId=20

 ----------------------------------------------------------------------------------------------------------------------

 SELECT * FROM Room

 drop table Room

 CREATE TABLE ROOM
 (
 RoomId int primary key identity (1,1),
 RoomNumber int NOT NULL,
 RoomType nvarchar (90) NOT NULL,
 FloorNo int NOT NULL,
 Capacity varchar (90) default '3 Beds',
 BedType nvarchar (90) default 'Advanced Bed system',
 CreatedBy nvarchar (90) Default 'AKASH',
 CreatedOn datetime default getdate(),
 UpdatedBy nvarchar (90) Default 'AKASH',
 UpdatedOn datetime default getdate()
 )

CREATE PROCEDURE InsertRooms
@RoomNumber int,
@RoomType nvarchar (90),
@FloorNo int
AS
BEGIN
INSERT INTO Room (RoomNumber,RoomType,FloorNo)
VALUES (@RoomNumber,@RoomType,@FloorNo)
END

EXEC InsertRooms
@RoomNumber= 5 ,
@RoomType ='Emergency ward' ,
@FloorNo= 1 

UPDATE Room set BedType='No beds' where RoomId in (1,2,3,9,10,14,15,20)

UPDATE Room set Capacity='7 Beds' where RoomId in (16,17,18,19)

UPDATE Room set Capacity='5 Chairs' where RoomId in (14,9,1)

UPDATE Room set Capacity='20 Chairs' where RoomId in (2)

SELECT * FROM Room

drop table room


-------------------------------------------------------------------------------------------------------------------

SELECT * FROM Patient 

DROP TABLE Patient


CREATE TABLE Patient
(
PatientId int primary key identity (1,1),
FirstName NVARCHAR(90) NOT NULL,
LastName nvarchar (90) NOT NULL,
DOB date NOT NULL,
Gender nvarchar (90) not null,
Address nvarchar (90) not null,
PhoneNo bigint not  null,
AdmittedDate date  Default getdate(),
DischargedDate nvarchar (90) default 'Should Be Update',
UsedVehicleId int references Vehicle (VehicleId),
EffectedDiseaseId int references Disease (DiseaseId),
AssignedDoctorId Int references EmployeeType (EmployeeTypeId),
UsedMedicineId int references Medicine (MedicineId),
RoomNo int references Room (RoomId),
Status bit default '1',
PaidAmount money not null,
BalanceAmount money not null,
CreatedBy nvarchar (90) Default 'AKASH',
CreatedOn datetime default getdate(),
UpdatedBy nvarchar (90) Default 'AKASH',
UpdatedOn datetime default getdate()
)
 

CREATE PROCEDURE InsertPatient
@FirstName NVARCHAR(90) ,
@LastName nvarchar (90) ,
@DOB date ,
@Gender nvarchar (90) ,
@Address nvarchar (90) ,
@PhoneNo bigint ,
@UsedVehicleId int  ,
@EffectedDiseaseId  int  ,
@AssignedDoctorId int  ,
@UsedMedicineId int,
@RoomNo int  ,
@PaidAmount money  ,
@BalanceAmount money 
AS
BEGIN
INSERT INTO Patient (FirstName,LastName,DOB,Gender,Address,PhoneNo,UsedVehicleId,EffectedDiseaseId,AssignedDoctorId,UsedMedicineId,RoomNo,PaidAmount,BalanceAmount)
VALUES  (@FirstName,@LastName,@DOB,@Gender,@Address,@PhoneNo,@UsedVehicleId,@EffectedDiseaseId,@AssignedDoctorId,@UsedMedicineId,@RoomNo,@PaidAmount,@BalanceAmount)
 END
  
 EXEC InsertPatient
 @FirstName ='ARAVIND' ,
@LastName ='M',
@DOB ='2021-09-27' ,
@Gender ='Male',
@Address ='Rajhamandry',
@PhoneNo = 7989934231,
@UsedVehicleId=3,
@EffectedDiseaseId =20 ,
@AssignedDoctorId = 4,
@UsedMedicineId = 20,
@RoomNo = 13,
@PaidAmount=18000,
@BalanceAmount= 2000

SELECT * FROM PATIENT

UPDATE Patient set Address='Prakasam' where PatientId='4'

DELETE FROM Patient
WHERE PatientId=19;

select * from ROOM

EXEC InsertPatient
 @FirstName ='RAJA' ,
@LastName ='A',
@DOB ='2000-02-01' ,
@Gender ='Male',
@Address ='Hyderabad',
@PhoneNo = 8765678987,
@UsedVehicleId=14,
@EffectedDiseaseId =1 ,
@AssignedDoctorId = 4,
@UsedMedicineId = 2,
@RoomNo = 4,
@PaidAmount=11000,
@BalanceAmount= 6000

 SELECT * FROM Employee
SELECT * FROM EmployeeType
SELECT *FROM Salary
SELECT * FROM Medicine
SELECT * FROM Room
SELECT * FROM Patient
SELECT * FROM Disease
SELECT * FROM Vehicle
---------------------------------------------------------------------------------------------------------

SELECT * FROM Disease

DROP TABLE Disease

CREATE TABLE Disease
(
DiseaseId int primary key identity (1,1),
DiseaseName nvarchar (90) NOT NULL,
Symptoms nvarchar (90) not null,
CreatedBy nvarchar (90) Default 'AKASH',
CreatedOn datetime default getdate(),
UpdatedBy nvarchar (90) Default 'AKASH',
UpdatedOn datetime default getdate()
)


CREATE PROCEDURE InsertDiseases
@DiseaseName nvarchar (90),
@Symptoms nvarchar (90)
AS
BEGIN INSERT INTO Disease (DiseaseName,Symptoms)
values (@DiseaseName,@Symptoms)
END


EXEC InsertDiseases
@DiseaseName='Rheumatoid Arthritis',
@Symptoms='Joint pain, swelling, stiffness'


UPDATE Disease set Symptoms='Tremors, stiffness, slow movement' where DiseaseId = 15
-----------------------------------------------------------------------------------------------------------------------------------------


SELECT * FROM Vehicle

DROP TABLE Vehicle

CREATE TABLE Vehicle
(
VehicleId int primary key identity (1,1),
VehicleName nvarchar (90) NOT NULL,
DriverId int references EmployeeType (EmployeeTypeId),
VehicleCondition nvarchar (90) default 'Good Condition',
CreatedBy nvarchar (90) Default 'AKASH',
CreatedOn datetime default getdate(),
UpdatedBy nvarchar (90) Default 'AKASH',
UpdatedOn datetime default getdate()
)

CREATE PROCEDURE InsertVehicle
@VehicleName nvarchar (90),
@DriverId int
AS
BEGIN INSERT INTO Vehicle (VehicleName,DriverId)
values (@VehicleName,@DriverId)
END


EXEC InsertVehicle
@VehicleName='Amublance',
@DriverId= 3

EXEC InsertVehicle
@VehicleName='Mini Amublance',
@DriverId= 14

SELECT * FROM Employee

SELECT * FROM EmployeeType

SELECT *FROM Salary

SELECT * FROM Medicine

SELECT * FROM Room

SELECT * FROM Patient 

SELECT * FROM Disease

SELECT * FROM Vehicle


*******************---------PROJECT IS COMPLETED---------------*********************
 
 
 ---------------------------------------------------------------------------------------------------------


 --This is practice and getting the results of this project--


SELECT *
    from EmployeeType emt
	 Full outer JOIN Employee emp
	 ON emp.EmployeeId=emt.EmployeeId
	  

	  CREATE FUNCTION GetFunctionDetails(@DOCTORSId int)
	  returns varchar (90)
	  AS
	  BEGIN
	  RETURN ( SELECT FirstName FROM Employee where EmployeeId=@

 


 DROP TABLE STORE
 (
 StoreId int primary key identity (1,1),
 StoreName nvarchar (90) not null,
 AvailableIteams nvarchar (90) not null,
 CreatedBy nvarchar (90) Default 'AKASH',
 CreatedOn datetime default getdate(),
 UpdatedBy nvarchar (90) Default 'AKASH',
 UpdatedOn datetime default getdate()
 )

 INSERT INTO Store (StoreName,AvailableIteams)
 values ('ARUN','DRY FRUITS')

 select * from store
  SELECT * FROM Storemanagers

 
 DROP TABLE STOREMANAGERS
 (
 StoreManagerId int primary key identity (1,1),
 StoreManagerName nvarchar (90) not null,
 StoreId Int references store (StoreId),
 CreatedBy nvarchar (90) Default 'AKASH',
 CreatedOn datetime default getdate(),
 UpdatedBy nvarchar (90) Default 'AKASH',
 UpdatedOn datetime default getdate()
 )
  
  
 INSERT INTO STOREMANAGERS (StoreManagerName,StoreId)
 values ('ARUN REDDY MULAGANI',2)
  
  
 select * from store
  SELECT * FROM Storemanagers

  SELECT str.storeid,str.StoreName,str.AvailableIteams,Store.StoreManagerName
    from Store str
	    INNER JOIN Storemanagers store
		  ON str.StoreId=store.StoreId


		  SELECT *
		  FROM Patient pat 
		  FULL OUTER join  Employee emp
		  ON Pat.AssignedDoctorId=emp.EmployeeId

		  CREATE TABLE BOYS
		  (
		  BoysId int primary key IDENTITY (1,1),
		  BoyName nvarchar (90) not null,
		  IsActive bit default 1,
		  CreatedBy nvarchar (90) Default 'AKASH',
          CreatedOn datetime default getdate(),
          UpdatedBy nvarchar (90) Default 'AKASH',
          UpdatedOn datetime default getdate()
		  )
		  ALTER 



		  SELECT * FROM dbo.StudentHistory


select * from worker

CREATE TABLE WorkerHistory
(
WorkerHistoryId int primary key identity (90) ,
Information nvarchar (90) not null,
CreatedBy nvarchar (90) Not null,
CreatedOn date not null
)

INSERT INTO dbo.workerHistory (



 create trigger Tr_Worker
 ON dbo.worker
 For INSERT
 AS
 BEGIN
 Declare @WrkId int
 select @WrkId= WorkerId from Inserterd
 insert Into dbo.WorkerHistory (Information,createdBy , createdOn)
 values (cast (@WrkId as varchar ) + 'is Inserted','Trigger',getdate())
 END

 select * from Tr_worker

 SELECT pat.PatientId,pat.FirstName,pat.AdmittedDate,dis.DiseaseName,pat.PaidAmount,emp.FirstName
from Patient pat
INNER JOIN Disease dis
ON pat.PatientId=dis.DiseaseId
INNER JOIN Employee emp
ON emp.EmployeeId=pat.AssignedDoctorId


SELECT * FROM Employee

SELECT * FROM EmployeeType

SELECT *FROM Salary

SELECT * FROM Medicine

SELECT * FROM Room

SELECT * FROM Patient 

SELECT * FROM Disease

SELECT * FROM Vehicle

----------------------------------------------------------------------------------------------------------------------------------------


SELECT * FROM Patient
SELECT * FROM Employee
SELECT * FROM Medicine
SELECT * FROM Disease
SELECT pat.FirstName, pat.Gender, pat.Address, pat.PhoneNo,pat.EffectedDiseaseId, pat.AssignedDoctorId,pat.RoomNo,pat.UsedMedicineId,

       emp.FirstName,emp.PhoneNumber,emp.HireDate,

	   med.MedicineName, med.MedicineCost, med.BrandName, med.SideEffects, med.MFG_Date, med.EXP_Date

	   
FROM Patient pat
INNER JOIN Employee emp
ON pat.AssignedDoctorId=emp.EmployeeId
INNER JOIN Medicine med
ON pat.UsedMedicineId=med.MedicineId

----------------------------------------------------------------------------------

use StudentsDB
 
 select * from student
 
 use HOSPITAL	

 select * from Patient
 select * from EmployeeType
select * from Vehicle

SELECT Pat.PatientId,pat.FirstName,pat.DOB,pat.Address,pat.PhoneNo,pat.UsedVehicleId,
emp.EmployeeTypeId,emp.EmployeeTypeName,emp.specialaizedIn 
From Patient pat
INNER JOIN EmployeeType emp
ON pat.AssignedDoctorId=emp.EmployeeTypeId

select top (20) * from  Patient

select   * FROM Patient where FirstName like 'P%' 

SELECT * FROM Patient OFFSET 5 ROWS;

-----------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM Patient
SELECT * FROM Employee

select Emp.EmployeeId,Emp.FirstName,Emp.PhoneNumber,Emp.Address,Emp.HireDate,
       Pat.PatientId,Pat.FirstName,Pat.Address,pat.usedVehicleId,Pat.AssignedDoctorId,Pat.RoomNo,Pat.PaidAmount,Pat.BalanceAmount
from Employee emp
INNER JOIN Patient pat
ON emp.EmployeeId=pat.AssignedDoctorId




create view vw_InnerJoinData
as
select Emp.EmployeeId,Emp.FirstName,Emp.PhoneNumber,Emp.Address,Emp.HireDate,
       Pat.PatientId,pat.usedVehicleId,Pat.AssignedDoctorId,Pat.RoomNo,Pat.PaidAmount,Pat.BalanceAmount
from Employee emp
INNER JOIN Patient pat
ON emp.EmployeeId=pat.AssignedDoctorId

select * from vw_InnerJoinData

--------------------------------------------------------------------------------------------------------------------------------------------------

