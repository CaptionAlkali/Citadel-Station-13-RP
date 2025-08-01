// This causes PoI maps to get 'checked' and compiled, when undergoing a unit test.
// This is so Travis can validate PoIs, and ensure future changes don't break PoIs, as PoIs are loaded at runtime and the compiler can't catch errors.
// When adding a new PoI, please add it to this list.

// The 'mountains' is the mining z-level, and has a lot of caves. //TODO, change this to fit for Lythios - Bloop

// POIs here spawn in two different sections, the top half and bottom half of the map.
// The bottom half should be fairly tame, with perhaps a few enviromental hazards.
// The top half is when things start getting dangerous, but the loot gets better.


 // TODO, commenting out rn as I work on it otherwise it will cause some integration issues -Bloop!
/datum/map_template/submap/level_specific/rift
	name = "Rift Content"
	desc = "Bring a coat!"
	allow_duplicates = FALSE
	prefix = "maps/submaps/lythios_rift/admin_spawn/"

/datum/map_template/submap/level_specific/rift/admin_spawn_1
	name = "Blank 5x5 building"
	desc = "A blank 5x5 building with lythios atmos"
	suffix = "blank_5by5.dmm"

// 'Normal' templates get used on the bottom half, and should be safer.
/datum/map_template/submap/level_specific/rift/west_caves
	prefix = "maps/submaps/lythios_rift/caves/"

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_cavern1
	name = "Cavern 1"
	desc = "Medium Sized Rocky cavern"
	suffix = "west_caves_cavern1.dmm"
	cost = 3

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_cavern2
	name = "Cavern 2"
	desc = "Small Sized Icy cavern"
	suffix = "west_caves_cavern2.dmm"
	cost = 2

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_cavern13
	name = "Cavern 3"
	desc = "Small Sized Rocky cavern"
	suffix = "west_caves_cavern3.dmm"
	cost = 2

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_cavern4
	name = "Cavern 4"
	desc = "Large Sized Rocky cavern"
	suffix = "west_caves_cavern4.dmm"
	cost = 4

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_rock1
	name = "Rock 1"
	desc = "Small sized rock"
	suffix = "west_caves_rock1.dmm"
	cost = 1

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_survival_cave
	name = "Survival cave 1"
	desc = "Medium sized survival cave"
	suffix = "west_caves_survival_cave.dmm"
	cost = 2

/datum/map_template/submap/level_specific/rift/west_caves/buried_structure_1
	name = "Lythios Miner's Barracks"
	desc = "A buried Structure. Beware of spiders."
	suffix = "west_caves_buriedstructure_1.dmm"
	template_group = "Buried Structure"
	fixed_orientation = TRUE
	cost = 5

/datum/map_template/submap/level_specific/rift/west_caves/buried_structure_2
	name = "Lythios Construction Site"
	desc = "A buried Structure. Someone abandoned this construction project"
	suffix = "west_caves_buriedstructure_2.dmm"
	template_group = "Buried Structure"
	fixed_orientation = TRUE
	cost = 5

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_small_crystal
	name = "Crystal 1"
	desc = "Small sized crystal cave"
	suffix = "west_caves_small_crystal1.dmm"
	cost = 1
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_small_crystal
	name = "Crystal 2"
	desc = "Small sized crystal cave"
	suffix = "west_caves_small_crystal2.dmm"
	cost = 1
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_small_crystal
	name = "Crystal 2"
	desc = "Small sized crystal cave"
	suffix = "west_caves_small_crystal2.dmm"
	cost = 1
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_buriedhangar
	name = "Buried Hangar"
	desc = "A forgotten hangar with the remains of its craft still in it."
	suffix = "west_caves_buriedhangar.dmm"
	cost = 10
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_cavern_minefield
	name = "Minefield Cave"
	desc = "A large cave strewn with mines. How did that happen?"
	suffix = "west_caves_cavern_minefield.dmm"
	cost = 8
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_firingrange
	name = "Buried Range"
	desc = "An underground firing range, better bring ear protection."
	suffix = "west_caves_firingrange.dmm"
	cost = 5
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_garage
	name = "Buried Garage"
	desc = "An underground garage, though one sturdy the entrance ramp is long collapsed."
	suffix = "west_caves_garage.dmm"
	cost = 5
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_radcoffin
	name = "Radioactive Coffin"
	desc = "A Casket containing the remains a tragedy. You probably shouldn't open it."
	suffix = "west_caves_radcoffin.dmm"
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_radcoffin_cursed
	name = "Cursed Radioactive Coffin"
	desc = "A Casket containing the remains a tragedy. A dark power lurks witin."
	suffix = "west_caves_radcoffin_cursed.dmm"
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_mines
	name = "Old Mineshafts"
	desc = "A series of long forgotten mining tunnels. Now overrun with spiders."
	suffix = "west_caves_mines.dmm"
	cost = 10
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_caves/west_caves_vehicle_graveyard
	name = "Vehicle Graveyard"
	desc = "Seems this underground garage became the final resting place of vehicles here during the disaster."
	suffix = "west_caves_vehicle_graveyard.dmm"
	cost = 10
	allow_duplicates = FALSE

// 'Deep' templates get used on the mid part, and should be mildly more dangerous and rewarding.
// Update: These are sharing Caves Template since actually moving between Deep/Caves is too easy to justify them as different difficulties.
/datum/map_template/submap/level_specific/rift/west_deep
	prefix = "maps/submaps/lythios_rift/caves/"


/datum/map_template/submap/level_specific/rift/west_deep/west_caves_cavern1
	name = "Cavern 1"
	desc = "Medium Sized Rocky cavern"
	suffix = "west_caves_cavern1.dmm"
	cost = 3

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_cavern2
	name = "Cavern 2"
	desc = "Small Sized Icy cavern"
	suffix = "west_caves_cavern2.dmm"
	cost = 2

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_cavern13
	name = "Cavern 3"
	desc = "Small Sized Rocky cavern"
	suffix = "west_caves_cavern3.dmm"
	cost = 2

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_cavern4
	name = "Cavern 4"
	desc = "Large Sized Rocky cavern"
	suffix = "west_caves_cavern4.dmm"
	cost = 4

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_rock1
	name = "Rock 1"
	desc = "Small sized rock"
	suffix = "west_caves_rock1.dmm"
	cost = 1

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_survival_cave
	name = "Survival cave 1"
	desc = "Medium sized survival cave"
	suffix = "west_caves_survival_cave.dmm"
	cost = 2

/datum/map_template/submap/level_specific/rift/west_deep/buried_structure_1
	name = "Lythios Miner's Barracks"
	desc = "A buried Structure. Beware of spiders."
	suffix = "west_caves_buriedstructure_1.dmm"
	template_group = "Buried Structure"
	fixed_orientation = TRUE
	cost = 5

/datum/map_template/submap/level_specific/rift/west_deep/buried_structure_2
	name = "Lythios Construction Site"
	desc = "A buried Structure. Someone abandoned this construction project"
	suffix = "west_caves_buriedstructure_2.dmm"
	template_group = "Buried Structure"
	fixed_orientation = TRUE
	cost = 5

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_small_crystal
	name = "Crystal 1"
	desc = "Small sized crystal cave"
	suffix = "west_caves_small_crystal1.dmm"
	cost = 1
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_small_crystal
	name = "Crystal 2"
	desc = "Small sized crystal cave"
	suffix = "west_caves_small_crystal2.dmm"
	cost = 1
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_small_crystal
	name = "Crystal 2"
	desc = "Small sized crystal cave"
	suffix = "west_caves_small_crystal2.dmm"
	cost = 1
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_buriedhangar
	name = "Buried Hangar"
	desc = "A forgotten hangar with the remains of its craft still in it."
	suffix = "west_caves_buriedhangar.dmm"
	cost = 10
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_cavern_minefield
	name = "Minefield Cave"
	desc = "A large cave strewn with mines. How did that happen?"
	suffix = "west_caves_cavern_minefield.dmm"
	cost = 8
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_firingrange
	name = "Buried Range"
	desc = "An underground firing range, better bring ear protection."
	suffix = "west_caves_firingrange.dmm"
	cost = 5
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_garage
	name = "Buried Garage"
	desc = "An underground garage, though one sturdy the entrance ramp is long collapsed."
	suffix = "west_caves_garage.dmm"
	cost = 5
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_radcoffin
	name = "Radioactive Coffin"
	desc = "A Casket containing the remains a tragedy. You probably shouldn't open it."
	suffix = "west_caves_radcoffin.dmm"
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_radcoffin_cursed
	name = "Cursed Radioactive Coffin"
	desc = "A Casket containing the remains a tragedy. A dark power lurks witin."
	suffix = "west_caves_radcoffin_cursed.dmm"
	cost = 5
	allow_duplicates = TRUE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_mines
	name = "Old Mineshafts"
	desc = "A series of long forgotten mining tunnels. Now overrun with spiders."
	suffix = "west_caves_mines.dmm"
	cost = 10
	allow_duplicates = FALSE

/datum/map_template/submap/level_specific/rift/west_deep/west_caves_vehicle_graveyard
	name = "Vehicle Graveyard"
	desc = "Seems this underground garage became the final resting place of vehicles here during the disaster."
	suffix = "west_caves_vehicle_graveyard.dmm"
	cost = 10
	allow_duplicates = FALSE

/*
/datum/map_template/submap/level_specific/rift/west_deep/deep_small_crystals_1
	name = "Crystal 1"
	desc = "Small sized crystal cave"
	suffix = "deep_small_crystals_1.dmm"
	cost = 10
	allow_duplicates = TRUE
*/

// 'Base' templates get used on the lowest most level, and should be more dangerous and rewarding.
// To Do Figure Out What to Put on This Level (It should be very)
/datum/map_template/submap/level_specific/rift/west_base
	prefix = "maps/submaps/lythios_rift/base/"

/datum/map_template/submap/level_specific/rift/west_base/base_rock_1
	name = "Rock 1"
	desc = "Small sized rock"
	suffix = "base_small_rock_1.dmm"
	cost = 1

/*
	/datum/map_template/submap/level_specific/mountains/normal/deadBeacon
	name = "Abandoned Relay"
	desc = "An unregistered comms relay, abandoned to the elements."
	suffix = "deadBeacon.dmm"
	cost = 10
*/
