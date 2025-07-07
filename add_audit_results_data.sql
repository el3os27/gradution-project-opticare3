-- إضافة بيانات تجريبية شاملة لنتائج التدقيق
-- حذف البيانات الموجودة أولاً
DELETE FROM audit_results;

-- إعادة تعيين AUTO_INCREMENT
ALTER TABLE audit_results AUTO_INCREMENT = 1;

-- إدخال بيانات تجريبية جديدة لنتائج التدقيق
INSERT INTO audit_results (category, score, status, findings, recommendations, last_audit_date, next_audit_date, auditor_name, department) VALUES
('Documentation', 97.50, 'Excellent', 'All medical records are complete and up-to-date. Digital consent forms implemented successfully.', 'Continue regular audits. Consider implementing AI-powered documentation review.', '2025-05-01', '2025-11-01', 'Dr. Ahmed Hassan', 'Medical Records'),
('Patient Safety', 95.00, 'Excellent', 'Strong safety protocols in place. All emergency equipment properly maintained.', 'Maintain current standards. Schedule additional safety drills quarterly.', '2025-05-02', '2025-11-02', 'Dr. Fatma Ali', 'Patient Safety'),
('Infection Control', 92.50, 'Good', 'Good compliance with infection control protocols. Some areas need improvement in hand hygiene monitoring.', 'Increase hand hygiene monitoring frequency. Schedule refresher training for new staff.', '2025-05-03', '2025-11-03', 'Dr. Khaled Mohamed', 'Infection Control'),
('Clinical Care', 96.00, 'Excellent', 'High quality clinical care standards maintained. Strong patient satisfaction scores.', 'Implement patient feedback system. Consider additional patient education materials.', '2025-05-04', '2025-11-04', 'Dr. Mona Ibrahim', 'Quality Assurance'),
('Staff Training', 89.00, 'Good', 'Most staff have completed required training. Some new staff need additional specialized training.', 'Develop online training modules. Implement training tracking system.', '2025-05-05', '2025-11-05', 'Dr. Samir Ahmed', 'Human Resources'),
('Equipment Maintenance', 94.00, 'Excellent', 'All medical equipment properly maintained and calibrated. Good inventory management system.', 'Continue regular maintenance schedule. Consider upgrading older equipment.', '2025-05-06', '2025-11-06', 'Eng. Omar Hassan', 'Biomedical Engineering'),
('Pharmacy', 91.00, 'Good', 'Pharmacy operations meet standards. Some expired medications found during audit.', 'Improve inventory management. Implement automated expiry tracking.', '2025-05-07', '2025-11-07', 'Dr. Layla Mohamed', 'Pharmacy'),
('Emergency Preparedness', 93.50, 'Excellent', 'Emergency response protocols well established. Regular drills conducted successfully.', 'Maintain current emergency standards. Consider additional scenario training.', '2025-05-08', '2025-11-08', 'Dr. Youssef Ali', 'Emergency Department'),
('Quality Management', 98.00, 'Excellent', 'Quality management system functioning effectively. Continuous improvement processes in place.', 'Expand quality initiatives. Consider implementing Six Sigma methodology.', '2025-05-09', '2025-11-09', 'Dr. Nour Hassan', 'Quality Management'),
('Administrative', 88.00, 'Good', 'Administrative processes generally compliant. Some policy updates needed.', 'Update outdated policies. Implement digital workflow systems.', '2025-05-10', '2025-11-10', 'Dr. Rania Ahmed', 'Administration'),
('Laboratory', 96.50, 'Excellent', 'Laboratory standards exceed requirements. All quality control measures in place.', 'Maintain current laboratory standards. Consider accreditation renewal.', '2025-05-11', '2025-11-11', 'Dr. Hana Mohamed', 'Laboratory'),
('Radiology', 94.50, 'Excellent', 'Radiology department meets all safety and quality standards. Equipment properly maintained.', 'Continue current practices. Schedule advanced imaging training.', '2025-05-12', '2025-11-12', 'Dr. Karim Ali', 'Radiology'); 