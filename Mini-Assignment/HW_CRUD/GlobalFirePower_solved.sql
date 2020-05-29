SELECT * FROM firepower;

SELECT * FROM firepower
WHERE ReservePersonnel = 0;


DELETE FROM firepower 
WHERE ReservePersonnel = 0;

SELECT * FROM firepower
WHERE FighterAircraft = 0;


UPDATE firepower
SET FighterAircraft = 1
WHERE FighterAircraft = 0;
