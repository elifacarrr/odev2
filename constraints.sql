
ALTER TABLE event ADD CONSTRAINT chk_event_capacity CHECK (capacity > 0);
ALTER TABLE event ADD CONSTRAINT chk_event_date_order CHECK (end_date >= start_date);
ALTER TABLE member ADD CONSTRAINT chk_member_status CHECK (status IN ('active', 'suspended', 'closed'));
