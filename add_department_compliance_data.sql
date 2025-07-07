-- إضافة بيانات تجريبية لامتثال الأقسام
-- حذف البيانات الموجودة أولاً
DELETE FROM department_compliance;

-- إعادة تعيين AUTO_INCREMENT
ALTER TABLE department_compliance AUTO_INCREMENT = 1;

-- إدخال بيانات تجريبية جديدة لامتثال الأقسام
INSERT INTO department_compliance (department_name, score) VALUES
('Radiology', 97.50),
('Cardiology', 95.00),
('Laboratory', 98.20),
('Emergency', 96.70),
('ICU', 99.10),
('Surgery', 94.80),
('Pediatrics', 96.30),
('Obstetrics', 95.90),
('Neurology', 97.80),
('Oncology', 98.50),
('Orthopedics', 94.20),
('Dermatology', 96.80),
('Psychiatry', 93.50),
('Rehabilitation', 95.40),
('Pharmacy', 97.20); 