-- Cleanup for lab5

DROP PROCEDURE lixdelaggabaoUser.sp_checkInvalidPostalCode;
DROP PROCEDURE lixdelaggabaoUser.sp_checkInvalidTelephone;
DROP USER lixdelaggabaoUser CASCADE;
DROP USER testUser;
DROP ROLE applicationAdmin;
DROP ROLE applicationUser;
DROP TABLESPACE CST2355 INCLUDING CONTENTS AND DATAFILES;

-- End of File