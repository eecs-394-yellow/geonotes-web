drop procedure if exists usp_insert_note;
delimiter //
create procedure usp_insert_note(deviceId CHAR(36), author VARCHAR(32), location VARCHAR(255), gps VARCHAR(32), notes VARCHAR(255))
begin
    insert into Notes(device_id, user_name, time, location_description, gps, note_text)
                values(binary_from_uuid(deviceId), author, NOW(), location, GeomFromText(gps), notes);
end//
