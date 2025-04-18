/* Diffrent misc types of tiles
 * Contains:
 *		Prototype
 *		Grass
 *		Wood
 *		Carpet
 */

#define TILE_MATERIAL_AMOUNT 468

/obj/item/stack/tile
	name = "tile"
	singular_name = "tile"
	desc = "A non-descript floor tile."
	w_class = WEIGHT_CLASS_NORMAL
	max_amount = 60
	recyclable = TRUE
	icon = 'icons/obj/item/stacks/tiles.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/items/stacks/lefthand_tiles.dmi',
		slot_r_hand_str = 'icons/mob/items/stacks/righthand_tiles.dmi',
		)
	randpixel = 7
	drop_sound = 'sound/items/drop/axe.ogg'
	pickup_sound = 'sound/items/pickup/axe.ogg'
	item_flags = 0
	obj_flags = 0

/obj/item/stack/tile/Initialize(mapload, amount)
	. = ..()
	randpixel_xy()

/*
 * Grass
 */
/obj/item/stack/tile/grass
	name = "synthetic grass tile"
	singular_name = "synthetic grass tile"
	desc = "A patch of grass like they often use on golf courses."
	icon_state = "tile_grass"
	force = 1
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	origin_tech = list(TECH_BIO = 1)
	drop_sound = 'sound/items/drop/herb.ogg'
	pickup_sound = 'sound/items/pickup/herb.ogg'

/*
 * Wood
 */
/obj/item/stack/tile/wood
	name = "wood floor tile"
	singular_name = "wood floor tile"
	desc = "An easy to fit wooden floor tile."
	icon_state = "tile_wood"
	force = 1
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	drop_sound = 'sound/items/drop/wooden.ogg'
	pickup_sound = 'sound/items/pickup/wooden.ogg'

/obj/item/stack/tile/wood/birch
	name = "birch wood floor tile"
	color = WOOD_COLOR_BIRCH
	build_type = /obj/item/stack/tile/wood/birch

/obj/item/stack/tile/wood/mahogany
	name = "mahogany wood floor tile"
	color = WOOD_COLOR_RICH
	build_type = /obj/item/stack/tile/wood/mahogany

/obj/item/stack/tile/wood/maple
	name = "maple wood floor tile"
	color = WOOD_COLOR_PALE
	build_type = /obj/item/stack/tile/wood/maple

/obj/item/stack/tile/wood/bamboo
	name = "bamboo wood floor tile"
	color = WOOD_COLOR_PALE2
	build_type = /obj/item/stack/tile/wood/bamboo

/obj/item/stack/tile/wood/ebony
	name = "ebony wood floor tile"
	color = WOOD_COLOR_BLACK
	build_type = /obj/item/stack/tile/wood/ebony

/obj/item/stack/tile/wood/walnut
	name = "walnut wood floor tile"
	color = WOOD_COLOR_CHOCOLATE
	build_type = /obj/item/stack/tile/wood/walnut

/obj/item/stack/tile/wood/yew
	name = "yew wood floor tile"
	color = WOOD_COLOR_YELLOW
	build_type = /obj/item/stack/tile/wood/yew

/*
 * Carpets
 */
/obj/item/stack/tile/carpet
	name = "carpet"
	singular_name = "carpet"
	desc = "A piece of carpet. It is the same size as a normal floor tile!"
	icon_state = "tile_carpet"
	force = 1
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	drop_sound = 'sound/items/drop/cloth.ogg'
	pickup_sound = 'sound/items/pickup/cloth.ogg'

/obj/item/stack/tile/carpet/cyan
	name = "cyan carpet"
	icon_state = "tile_carpet_cyan"

/obj/item/stack/tile/carpet/rubber
	name = "rubber carpet"
	singular_name = "carpet"
	desc = "A piece of rubber carpet. It is the same size as a normal floor tile!"
	icon_state = "tile_carpet_rubber"

/obj/item/stack/tile/carpet/art
	name = "adhomian carpet"
	singular_name = "carpet"
	desc = "A piece of fancy adhomian carpet. It is the same size as a normal floor tile!"
	icon_state = "carpet_art"

/obj/item/stack/tile/carpet/black
	name = "black carpet"
	icon_state = "tile_carpetblack"

/obj/item/stack/tile/carpet/brown
	name = "brown carpet"
	icon_state = "tile_carpetbrown"

/obj/item/stack/tile/carpet/purple
	name = "purple carpet"
	icon_state = "tile_carpetpurple"

/obj/item/stack/tile/carpet/green
	name = "green carpet"
	icon_state = "tile_carpetgreen"

/obj/item/stack/tile/carpet/darkblue
	name = "dark blue carpet"
	icon_state = "tile_carpetblue"

/obj/item/stack/tile/carpet/lightblue
	name = "light blue carpet"
	icon_state = "tile_carpetblue2"

/obj/item/stack/tile/carpet/aquablue
	name = "aqua blue carpet"
	icon_state = "tile_carpetblue3"

/obj/item/stack/tile/carpet/red
	name = "red carpet"
	icon_state = "tile_carpetred"

/obj/item/stack/tile/carpet/orange
	name = "orange carpet"
	icon_state = "tile_carpetorange"

/obj/item/stack/tile/carpet/magenta
	name = "magenta carpet"
	icon_state = "tile_carpetmagenta"

/obj/item/stack/tile/lino
	name = "linoleum"
	singular_name = "linoleum"
	desc = "A piece of linoleum. It is the same size as a normal floor tile!"
	icon_state = "tile_linoleum"
	force = 1
	throwforce = 1.0
	throw_speed = 5
	throw_range = 20
	drop_sound = 'sound/items/drop/cloth.ogg'
	pickup_sound = 'sound/items/pickup/cloth.ogg'
	matter = list(MATERIAL_PLASTIC = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/lino/diamond
	name = "diamond linoleum"
	icon_state = "tile_linoleum_diamond"

/*
 * Circuits
 */

/obj/item/stack/tile/circuit_blue
	name = "circuit tile"
	singular_name = "circuit tile"
	desc = "An advanced tile covered in various circuitry and wiring."
	icon_state = "tile_bcircuit"
	force = 14
	matter = list(DEFAULT_WALL_MATERIAL = TILE_MATERIAL_AMOUNT, MATERIAL_GLASS = TILE_MATERIAL_AMOUNT)
	throwforce = 15.0
	throw_speed = 5
	throw_range = 20
	obj_flags = OBJ_FLAG_CONDUCTABLE

/obj/item/stack/tile/circuit_green
	name = "circuit tile"
	singular_name = "circuit tile"
	desc = "An advanced tile covered in various circuitry and wiring."
	icon_state = "tile_gcircuit"
	force = 14
	matter = list(DEFAULT_WALL_MATERIAL = TILE_MATERIAL_AMOUNT, MATERIAL_GLASS = TILE_MATERIAL_AMOUNT)
	throwforce = 15.0
	throw_speed = 5
	throw_range = 20
	obj_flags = OBJ_FLAG_CONDUCTABLE

/obj/item/stack/tile/circuit_red
	name = "circuit tile"
	singular_name = "circuit tile"
	desc = "An advanced tile covered in various circuitry and wiring."
	icon_state = "tile_rcircuit"
	force = 14
	matter = list(DEFAULT_WALL_MATERIAL = TILE_MATERIAL_AMOUNT, MATERIAL_GLASS = TILE_MATERIAL_AMOUNT)
	throwforce = 15.0
	throw_speed = 5
	throw_range = 20
	obj_flags = OBJ_FLAG_CONDUCTABLE

/*
 * Floors
 */

/obj/item/stack/tile/floor
	name = "steel tiles"
	singular_name = "steel tile"
	desc = "A set of steel floor tiles."
	icon_state = "tile"
	force = 14
	matter = list(DEFAULT_WALL_MATERIAL = TILE_MATERIAL_AMOUNT)
	throwforce = 6
	throw_speed = 5
	throw_range = 10
	obj_flags = OBJ_FLAG_CONDUCTABLE

/obj/item/stack/tile/floor/full_stack/Initialize(mapload)
	. = ..()
	amount = max_amount
	update_icon()

/obj/item/stack/tile/mono
	name = "full steel tiles"
	desc = "A set of full steel floor tiles."
	singular_name = "full steel tile"
	icon_state = "tile_full"

/obj/item/stack/tile/floor_red
	name = "red floor tile"
	singular_name = "red floor tile"
	color = COLOR_RED_GRAY
	icon_state = "tile_white"

/obj/item/stack/tile/floor/rust
	name = "rusted steel floor tile"
	desc = "A set of steel floor tiles. Seems to be only good for recycling."

/obj/item/stack/tile/floor_white
	name = "white floor tile"
	singular_name = "white floor tile"
	icon_state = "tile_white"
	matter = list(MATERIAL_PLASTIC = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/floor_yellow
	name = "yellow floor tile"
	singular_name = "yellow floor tile"
	color = COLOR_BROWN
	icon_state = "tile_white"

/obj/item/stack/tile/floor_dark
	name = "plasteel tiles"
	desc = "A set of plasteel floor tiles."
	singular_name = "plasteel tile"
	icon_state = "fr_tile"
	matter = list(MATERIAL_PLASTEEL = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/floor_dark/full
	name = "full plasteel tiles"
	desc = "A set of full plasteel floor tiles."
	singular_name = "full plasteel tile"
	icon_state = "fr_tile_full"
	matter = list(MATERIAL_PLASTEEL = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/floor_freezer
	name = "freezer floor tile"
	singular_name = "freezer floor tile"
	icon_state = "tile_freezer"
	matter = list(MATERIAL_PLASTIC = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/silver
	name = "silver floor tile"
	singular_name = "silver floor tile"
	icon_state = "tile_silver"
	matter = list(MATERIAL_SILVER = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/gold
	name = "golden floor tile"
	singular_name = "golden floor tile"
	icon_state = "tile_gold"
	matter = list(MATERIAL_GOLD = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/uranium
	name = "uranium floor tile"
	singular_name = "uranium floor tile"
	icon_state = "tile_uranium"
	matter = list(MATERIAL_URANIUM = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/phoron
	name = "phoron floor tile"
	singular_name = "phoron floor tile"
	icon_state = "tile_plasma"
	matter = list(MATERIAL_PHORON = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/diamond
	name = "diamond floor tile"
	singular_name = "diamond floor tile"
	icon_state = "tile_diamond"
	matter = list(MATERIAL_DIAMOND = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/marble
	name = "marble floor tile"
	singular_name = "marble floor tile"
	icon_state = "tile_lightmarble"
	matter = list(MATERIAL_MARBLE = TILE_MATERIAL_AMOUNT)

/obj/item/stack/tile/marble/dark
	name = "dark marble floor tile"
	singular_name = "dark marble floor tile"
	icon_state = "tile_darkmarble"
	matter = list(MATERIAL_MARBLE = TILE_MATERIAL_AMOUNT)

/*
 * Cyborg modules
 */

/obj/item/stack/tile/wood/cyborg
	name = "wood floor tile synthesizer"
	desc = "A device that makes wood floor tiles."
	uses_charge = 1
	charge_costs = list(250)
	stacktype = /obj/item/stack/tile/wood
	build_type = /obj/item/stack/tile/wood

/obj/item/stack/tile/floor/cyborg
	name = "floor tile synthesizer"
	desc = "A device that makes steel floor tiles."
	uses_charge = 1
	charge_costs = list(250)
	stacktype = /obj/item/stack/tile/floor
	build_type = /obj/item/stack/tile/floor

/obj/item/stack/tile/floor_white/cyborg
	name = "white floor tile synthesizer"
	desc = "A device that makes plastic white floor tiles."
	matter = null
	uses_charge = 1
	charge_costs = list(250)
	stacktype = /obj/item/stack/tile/floor_white
	build_type = /obj/item/stack/tile/floor_white

/obj/item/stack/tile/floor_freezer/cyborg
	name = "freezer floor tile synthesizer"
	desc = "A device that makes plastic tiles which are mainly used to build freezer rooms."
	matter = null
	uses_charge = 1
	charge_costs = list(250)
	stacktype = /obj/item/stack/tile/floor_freezer
	build_type = /obj/item/stack/tile/floor_freezer

/obj/item/stack/tile/floor_dark/cyborg
	name = "dark floor tile synthesizer"
	desc = "A device that makes plasteel dark floor tiles."
	matter = null
	uses_charge = 1
	charge_costs = list(250)
	stacktype = /obj/item/stack/tile/floor_dark
	build_type = /obj/item/stack/tile/floor_dark

/obj/item/stack/tile/carpet/cyborg
	name = "carpet tile synthesizer"
	desc = "A device that makes carpet tiles."
	matter = null
	uses_charge = 1
	charge_costs = list(250)
	stacktype = /obj/item/stack/tile/carpet
	build_type = /obj/item/stack/tile/carpet

#undef TILE_MATERIAL_AMOUNT
