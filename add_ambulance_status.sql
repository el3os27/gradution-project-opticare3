-- Add status column to ambulance_requests table
ALTER TABLE ambulance_requests 
ADD COLUMN status ENUM('pending', 'dispatched', 'arrived', 'completed', 'cancelled') 
DEFAULT 'pending' 
AFTER request_time;

-- Update existing records to have 'pending' status
UPDATE ambulance_requests SET status = 'pending' WHERE status IS NULL; 