-- STEP ONE: Get all the columns from the left table
-- SELECT victims.* FROM victims;

-- -- STEP TWO: Bring in the matches from the right table
-- SELECT victims.* FROM victims
-- INNER JOIN bitings
-- ON bitings.victim_id = victims.id;
-- So this will find, all the matching entries for the victims in the bitings table i.e. every victim that got bitten.

-- STEP THREE: Bring in the NEXT table you want to join on.
-- SELECT victims.* FROM victims
-- INNER JOIN bitings
-- ON bitings.victim_id = victims.id
-- INNER JOIN zombies
-- ON zombies.id = bitings.zombie_id;
-- At this point we should be seeing the exact same information as from the previous query.
-- We're still seeing the rows from victims, but if there's no errors our join has been successful.

-- STEP FOUR: Select the data from each table you are interested in.
SELECT victims.name, zombies.name, bitings.infected_on FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id
INNER JOIN zombies
ON zombies.id = bitings.zombie_id;