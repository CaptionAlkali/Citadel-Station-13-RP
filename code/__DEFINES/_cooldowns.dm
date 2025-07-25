//// COOLDOWN SYSTEMS
/*
 * We have 2 cooldown systems: timer cooldowns (divided between stoppable and regular) and world.time cooldowns.
 *
 * When to use each?
 *
 * * Adding a commonly-checked cooldown, like on a subsystem to check for processing
 * * * Use the world.time ones, as they are cheaper.
 *
 * * Adding a rarely-used one for special situations, such as giving an uncommon item a cooldown on a target.
 * * * Timer cooldown, as adding a new variable on each mob to track the cooldown of said uncommon item is going too far.
 *
 * * Triggering events at the end of a cooldown.
 * * * Timer cooldown, registering to its signal.
 *
 * * Being able to check how long left for the cooldown to end.
 * * * Either world.time or stoppable timer cooldowns, depending on the other factors. Regular timer cooldowns do not support this.
 *
 * * Being able to stop the timer before it ends.
 * * * Either world.time or stoppable timer cooldowns, depending on the other factors. Regular timer cooldowns do not support this.
*/

//TIMER COOLDOWN MACROS

#define COMSIG_CD_STOP(cd_index) "cooldown_[cd_index]"
#define COMSIG_CD_RESET(cd_index) "cd_reset_[cd_index]"

#define TIMER_COOLDOWN_START(cd_source, cd_index, cd_time) LAZYSET(cd_source.cooldowns, cd_index, addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(end_cooldown), cd_source, cd_index), cd_time))

/// Checks if a timer based cooldown is NOT finished.
#define TIMER_COOLDOWN_CHECK(cd_source, cd_index) LAZYACCESS(cd_source.cooldowns, cd_index)

#define TIMER_COOLDOWN_END(cd_source, cd_index) LAZYREMOVE(cd_source.cooldowns, cd_index)

/*
 * Stoppable timer cooldowns.
 * Use indexes the same as the regular tiemr cooldowns.
 * They make use of the TIMER_COOLDOWN_CHECK() and TIMER_COOLDOWN_END() macros the same, just not the TIMER_COOLDOWN_START() one.
 * A bit more expensive than the regular timers, but can be reset before they end and the time left can be checked.
*/

#define S_TIMER_COOLDOWN_START(cd_source, cd_index, cd_time) LAZYSET(cd_source.cooldowns, cd_index, addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(end_cooldown), cd_source, cd_index), cd_time, TIMER_STOPPABLE))

#define S_TIMER_COOLDOWN_RESET(cd_source, cd_index) reset_cooldown(cd_source, cd_index)

#define S_TIMER_COOLDOWN_TIMELEFT(cd_source, cd_index) (timeleft(TIMER_COOLDOWN_CHECK(cd_source, cd_index)))


/*
 * Cooldown system based on storing world.time on a variable, plus the cooldown time.
 * Better performance over timer cooldowns, lower control. Same functionality.
*/

#define COOLDOWN_DECLARE(cd_index) var/cd_##cd_index = 0

#define COOLDOWN_START(cd_source, cd_index, cd_time) (cd_source.cd_##cd_index = world.time + (cd_time))

//Returns true if the cooldown has run its course, false otherwise
#define COOLDOWN_FINISHED(cd_source, cd_index) (cd_source.cd_##cd_index < world.time)

#define COOLDOWN_RESET(cd_source, cd_index) cd_source.cd_##cd_index = 0

#define COOLDOWN_TIMELEFT(cd_source, cd_index) (max(0, cd_source.cd_##cd_index - world.time))

// INDEXES FOR VAR COOLDOWNS - DO NOT USE UPPERCASE, DO NOT USE cooldown_, APPENDS ADDED AUTOMATICALLY

#define CD_INDEX_GUN_RACK_CHAMBER rack_chamber
#define CD_INDEX_GUN_SPIN_CHAMBER spin_chamber
#define CD_INDEX_GUN_BOLT_ACTION bolt_action

// INDEXES FOR TIMER COOLDOWNS - Must be unique!

//? General

#define CD_INDEX_SONAR_PULSE				"sonar_pulse"
#define CD_INDEX_SONAR_NOISE				"sonar_noise"
#define CD_INDEX_POWER_DRAIN_WARNING		"power_drain_warning"

//? Items ?//

//* /obj/item/tape_recorder
#define CD_INDEX_TAPE_TRANSLATION			"tape_translation"
#define CD_INDEX_TAPE_PRINT					"tape_print"

//* /obj/item/fishing_rod
#define CD_INDEX_FISHING_ROD_MOB_HOOK		"fishing_rod_mob_hook"

//? Machinery
//* /obj/machinery/computer/card
#define CD_INDEX_IDCONSOLE_PRINT			"idconsole_print"

//? Structures
//* /obj/structure/sculpting_block
#define CD_INDEX_SCULPTING_COOLDOWN			"sculpting_block"

// admin verb cooldowns
#define CD_INTERNET_SOUND "internet_sound"

//* /mob *//
#define TIMER_CD_INDEX_MOB_VERB_INVERT_SELF "mob-verb-invert_self"

//* /client *//
#define TIMER_CD_INDEX_CLIENT_CHARACTER_DIRECTORY "client-verb-character_directory"
#define TIMER_CD_INDEX_CLIENT_VIEW_PLAYTIME "client-verb-view_playtime"
