/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF '$(LoadTestData)' = 'true'

DELETE FROM Modules;
DELETE FROM Student;

BEGIN

INSERT INTO Student(studentID, firstName, lastName) VALUES
('s1404326303', 'Kandace', 'Wyett'),
('s0852437381', 'Kellby', 'Grayshan'),
('s5332613405', 'Lula', 'Darnborough'),
('s0093188549', 'Nerti', 'Steely'),
('s3357087510', 'Christabel', 'Stairs'),
('s3357087520', 'John', 'Wick'),
('s101571963', 'Myles', 'Gaerlan');



INSERT INTO Modules(macAddress, dateAssigned, studentAssigned) VALUES
('4B-9C-6D-09-C0-C3', CONVERT(DATE, '11/01/2017', 101), 's1404326303'),
('76-37-47-F0-2D-98', CONVERT(DATE, '5/14/2018', 101), 's0852437381'),
('51-7E-BA-E5-15-F6', CONVERT(DATE, '8/09/2018', 101), 's5332613405'),
('66-CB-11-81-0F-70', CONVERT(DATE, '12/05/2017', 101), 's0093188549'),
('E4-24-1A-2F-FE-78', CONVERT(DATE, '7/16/2018', 101), 's3357087510'),
('46-45-72-CE-F3-A3', CONVERT(DATE, '9/20/2018', 101), 's3357087520'),
('5E-49-56-5E-EC-9B', CONVERT(DATE, '9/21/2018', 101), 's101571963');

END;