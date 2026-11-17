-- Bölüm B: İhlal Testleri
\set VERBOSITY verbose

-- T01 | chk_event_capacity | Beklenen: 23514
INSERT INTO event (title, capacity, start_date, end_date)
VALUES ('Invalid Event', -5, '2026-05-01', '2026-05-03');

-- T02 | chk_event_date_order | Beklenen: OK (sınır: aynı gün)
INSERT INTO event (title, capacity, start_date, end_date)
VALUES ('One Day Workshop', 50, '2026-05-01', '2026-05-01');

-- T03 | chk_event_date_order | Beklenen: 23514
INSERT INTO event (title, capacity, start_date, end_date)
VALUES ('Wrong Dates', 20, '2026-05-10', '2026-05-05');

-- T04 | chk_member_status | Beklenen: 23514
INSERT INTO member (name, status)
VALUES ('Test User', 'unknown_status');

-- T05 | fk_registration_member | Beklenen: 23503
INSERT INTO event_registration (member_id, event_id)
VALUES (99999, 1);

