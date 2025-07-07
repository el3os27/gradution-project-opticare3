-- إضافة بيانات تجريبية لفئات الامتثال
-- حذف البيانات الموجودة أولاً
DELETE FROM compliance_categories;

-- إعادة تعيين AUTO_INCREMENT
ALTER TABLE compliance_categories AUTO_INCREMENT = 1;

-- إدخال بيانات تجريبية جديدة لفئات الامتثال
INSERT INTO compliance_categories (category_name, score) VALUES
('Patient Safety', 95.00),
('Clinical Care', 97.00),
('Administrative', 92.00),
('Infection Control', 94.00),
('Documentation', 89.00),
('Staff Training', 96.00),
('Equipment Maintenance', 93.00),
('Quality Assurance', 98.00),
('Pharmacy', 91.00),
('Emergency Preparedness', 93.50),
('Laboratory', 96.50),
('Radiology', 94.50); 