-- Create ambulance_dispatchers table
CREATE TABLE `ambulance_dispatchers` (
  `dispatcher_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dispatcher_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insert default ambulance dispatcher
INSERT INTO `ambulance_dispatchers` (`email`, `password`, `full_name`, `phone`) VALUES
('dispatcher@edoc.com', '123', 'Ambulance Dispatcher', '01012345678');

-- Add dispatcher user type to webuser table
INSERT INTO `webuser` (`email`, `usertype`) VALUES
('dispatcher@edoc.com', 'd'); -- 'd' for dispatcher

-- First add status column to ambulance_requests table
ALTER TABLE `ambulance_requests` 
ADD COLUMN `status` ENUM('pending', 'dispatched', 'arrived', 'completed', 'cancelled') 
DEFAULT 'pending' 
AFTER `request_time`;

-- Update existing records to have 'pending' status
UPDATE `ambulance_requests` SET `status` = 'pending' WHERE `status` IS NULL;

-- Then add notes column to ambulance_requests table
ALTER TABLE `ambulance_requests` 
ADD COLUMN `notes` text DEFAULT NULL AFTER `status`; 