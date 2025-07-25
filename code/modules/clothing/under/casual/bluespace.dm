/**
 * I hate this thing -Shadow
 */

//Eurgh
/obj/item/clothing/var/hides_bulges = FALSE

/obj/item/clothing/under/bluespace
	name = "bluespace jumpsuit"
	icon = 'icons/clothing/uniform/casual/bluespace.dmi'
	icon_state = "bluespace"
	desc = "Do you feel like warping spacetime today? Because it seems like that's on the agenda, now. \
			Allows one to resize themselves at will, and conceals their true weight."
	worn_bodytypes = BODYTYPES(BODYTYPE_DEFAULT)
	worn_has_rolldown = UNIFORM_HAS_NO_ROLL
	worn_has_rollsleeve = UNIFORM_HAS_NO_ROLL
	inhand_icon = 'icons/clothing/uniform/workwear/basic_colored_jumpsuit.dmi'
	inhand_state = "grey"

	hides_bulges = TRUE
	var/original_size

/obj/item/clothing/under/bluespace/verb/toggle_fibers()
	set category = VERB_CATEGORY_OBJECT
	set name = "Adjust fibers"
	set desc = "Adjust your suit fibers. This makes it so your stomach(s) will show or not."
	set src in usr

	adjust_fibers(usr)

/obj/item/clothing/under/bluespace/proc/adjust_fibers(mob/user)
	if(hides_bulges == FALSE)
		hides_bulges = TRUE
		to_chat(user, "You tense the suit fibers, hiding your stomach(s).")
	else
		hides_bulges = FALSE
		to_chat(user, "You relax the suit fibers, showing your stomach(s).")

/obj/item/clothing/under/bluespace/verb/resize()
	set name = "Adjust Size"
	set category = VERB_CATEGORY_OBJECT
	set src in usr
	bluespace_size(usr)

/obj/item/clothing/under/bluespace/proc/bluespace_size(mob/usr as mob)
	if (!ishuman(usr))
		return

	var/mob/living/carbon/human/H = usr

	if (H.stat || H.restrained())
		return

	if (src != H.w_uniform)
		to_chat(H,"<span class='warning'>You must be WEARING the uniform to change your size.</span>")
		return

	var/new_size = input("Put the desired size (25-200%)", "Set Size", 200) as num|null

	//Check AGAIN because we accepted user input which is blocking.
	if (src != H.w_uniform)
		to_chat(H,"<span class='warning'>You must be WEARING the uniform to change your size.</span>")
		return

	if (H.stat || H.restrained())
		return

	if (isnull(H.size_multiplier))
		to_chat(H,"<span class='warning'>The uniform panics and corrects your apparently microscopic size.</span>")
		H.resize(RESIZE_NORMAL)
		H.update_icons() //Just want the matrix transform
		return

	if (!ISINRANGE(new_size,25,200))
		to_chat(H,"<span class='notice'>The safety features of the uniform prevent you from choosing this size.</span>")
		return

	else if(new_size)
		if(new_size != H.size_multiplier)
			if(!original_size)
				original_size = H.size_multiplier
			H.resize(new_size/100)
			H.visible_message("<span class='warning'>The space around [H] distorts as they change size!</span>","<span class='notice'>The space around you distorts as you change size!</span>")
		else //They chose their current size.
			return

/obj/item/clothing/under/bluespace/unequipped(mob/user, slot, flags)
	. = ..()
	if(. && ishuman(user) && original_size)
		var/mob/living/carbon/human/H = user
		H.resize(original_size)
		original_size = null
		H.visible_message("<span class='warning'>The space around [H] distorts as they return to their original size!</span>","<span class='notice'>The space around you distorts as you return to your original size!</span>")
