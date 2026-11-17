-- Bölüm A: Constraint'ler ve İş Kuralları
\set VERBOSITY verbose

ALTER TABLE event
  ADD CONSTRAINT chk_event_capacity 
  CHECK (capacity > 0);

ALTER TABLE event
  ADD CONSTRAINT chk_event_date_order 
  CHECK (end_date >= start_date);

ALTER TABLE member
  ADD CONSTRAINT chk_member_status 
  CHECK (status IN ('active', 'suspended', 'closed'));

ALTER TABLE event_registration
  ADD CONSTRAINT uq_registration_member_event 
  UNIQUE (member_id, event_id);

ALTER TABLE event_registration
  DROP CONSTRAINT IF EXISTS fk_registration_member;

ALTER TABLE event_registration
  ADD CONSTRAINT fk_registration_member 
  FOREIGN KEY (member_id) REFERENCES member(id) ON DELETE CASCADE;
