/* Diffrent misc types of sheets
 * Contains:
 *		Metal
 *		Plasteel
 *		Wood
 *		Cloth
 *		Cardboard
 */

/*
 * Metal
 */
var/global/list/datum/stack_recipe/metal_recipes = list (
	new/datum/stack_recipe("Парикмахерское кресло", /obj/structure/stool/bed/chair/barber, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe("Табуретка", /obj/structure/stool, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe_list("Стулья", list(
		new/datum/stack_recipe("Серый стул", /obj/structure/stool/bed/chair/metal, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Голубой стул", /obj/structure/stool/bed/chair/metal/blue, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Красный стул", /obj/structure/stool/bed/chair/metal/red, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Зелёный стул", /obj/structure/stool/bed/chair/metal/green, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Чёрный стул", /obj/structure/stool/bed/chair/metal/black, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Белый стул", /obj/structure/stool/bed/chair/metal/white, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Жёлтый стул", /obj/structure/stool/bed/chair/metal/yellow, max_per_place = 1, build_outline = TRUE),
		), 1),
	new/datum/stack_recipe("Кровать", /obj/structure/stool/bed, 2, max_per_place = 1, build_outline = TRUE),
	null,
	new/datum/stack_recipe_list("Офисные кресла",list(
		new/datum/stack_recipe("Темное офисное кресло", /obj/structure/stool/bed/chair/office/dark, 5, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Светлое офисное кресло", /obj/structure/stool/bed/chair/office/light, 5, max_per_place = 1, build_outline = TRUE),
		), 5),
	new/datum/stack_recipe_list("Уютные кресла", list(
		new/datum/stack_recipe("Черное уютное кресло", /obj/structure/stool/bed/chair/comfy/black, 2, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Бежевое уютное кресло", /obj/structure/stool/bed/chair/comfy/white, 2, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Коричневое уютное кресло", /obj/structure/stool/bed/chair/comfy/brown, 2, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Лаймовое уютное кресло", /obj/structure/stool/bed/chair/comfy/lime, 2, max_per_place = 1, build_outline = TRUE),
		new/datum/stack_recipe("Бирюзовое уютное кресло", /obj/structure/stool/bed/chair/comfy/green, 2, max_per_place = 1, build_outline = TRUE),
		), 2),
	new/datum/stack_recipe_list("Шкафы", list(
			new/datum/stack_recipe("Светлый шкаф для документов.", /obj/structure/filingcabinet/filingcabinet, 4, time = 15, max_per_place = 1, build_outline = TRUE),
			new/datum/stack_recipe("Тёмный шкаф для документов.", /obj/structure/filingcabinet, 4, time = 15, max_per_place = 1, build_outline = TRUE),
			new/datum/stack_recipe("Светлый выдвижной ящик", /obj/structure/filingcabinet/chestdrawer, 4, time = 15, max_per_place = 1, build_outline = TRUE),
			new/datum/stack_recipe("Тёмный выдвижной ящик", /obj/structure/filingcabinet/chestdrawer/black, 4, time = 15, max_per_place = 1, build_outline = TRUE),
		), 4),
	null,
	new/datum/stack_recipe("Детали стола", /obj/item/weapon/table_parts, 2),
	new/datum/stack_recipe("Детали стеллажа", /obj/item/weapon/rack_parts),
	new/datum/stack_recipe("Персональный шкафчик", /obj/structure/closet, 2, time = 15, max_per_place = 1, build_outline = TRUE,  required_skills = list(/datum/skill/construction = SKILL_LEVEL_NOVICE)),
	null,
	new/datum/stack_recipe("Канистра", /obj/machinery/portable_atmospherics/canister, 10, time = 15, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
	null,
	new/datum/stack_recipe("Напольная плитка", /obj/item/stack/tile/plasteel, 1, 4, 20, required_skills = list(/datum/skill/construction = SKILL_LEVEL_NOVICE)),
	new/datum/stack_recipe("Решетчатая плитка для пола", /obj/item/stack/tile/grid, 1, 4, 20, required_skills = list(/datum/skill/construction = SKILL_LEVEL_NOVICE)),
	new/datum/stack_recipe("Железный стержень", /obj/item/stack/rods, 1, 2, 60, required_skills = list(/datum/skill/construction = SKILL_LEVEL_NOVICE)),
	null,
	new/datum/stack_recipe("Компьютерный корпус", /obj/structure/computerframe, 5, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
	new/datum/stack_recipe("Стеновые балки", /obj/structure/girder, 2, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_TRAINED)),
	new/datum/stack_recipe("Машинная рама", /obj/machinery/constructable_frame/machine_frame, 5, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
	new/datum/stack_recipe("Корпус турели", /obj/machinery/porta_turret_construct, 5, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
	null,
	new/datum/stack_recipe_list("Каркас шлюза", list(
		new/datum/stack_recipe("Стандартный каркас шлюза", /obj/structure/door_assembly, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас шлюза для отдела командования", /obj/structure/door_assembly/door_assembly_com, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас шлюза для отдела охраны", /obj/structure/door_assembly/door_assembly_sec, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас шлюза для инженерного отдела", /obj/structure/door_assembly/door_assembly_eng, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас шлюза для отдела снабжения", /obj/structure/door_assembly/door_assembly_min, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас шлюза для атмосферного отсека", /obj/structure/door_assembly/door_assembly_atmo, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас шлюза для отдела ОИР", /obj/structure/door_assembly/door_assembly_research, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
/*		new/datum/stack_recipe("science airlock assembly", /obj/structure/door_assembly/door_assembly_science, 4, time = 50, max_per_place = 1, build_outline = TRUE), \ */
		new/datum/stack_recipe("Каркас шлюза для медицинского отдела", /obj/structure/door_assembly/door_assembly_med, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас шлюза для техтонелля", /obj/structure/door_assembly/door_assembly_mai, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас для внешнего шлюза", /obj/structure/door_assembly/door_assembly_ext, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас шлюза для морозильной камеры", /obj/structure/door_assembly/door_assembly_fre, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас для герметичного шлюза", /obj/structure/door_assembly/door_assembly_hatch, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас для герметичного шлюза техтонелля", /obj/structure/door_assembly/door_assembly_mhatch, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас для защищенного шлюза охраны", /obj/structure/door_assembly/door_assembly_highsecurity, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Аварийный затвор", /obj/structure/firedoor_assembly, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		new/datum/stack_recipe("Каркас для двойного шлюза", /obj/structure/door_assembly/multi_tile, 4, time = 50, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
		), 4),
	null,
	new/datum/stack_recipe("Рамка для насадки на мясорубку", /obj/structure/kitchenspike_frame, 5, time = 25, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_NOVICE)), null,
	new/datum/stack_recipe("корпус гранаты", /obj/item/weapon/grenade/chem_grenade, required_skills = list(/datum/skill/construction = SKILL_LEVEL_TRAINED)),
	new/datum/stack_recipe("Каркас светильника", /obj/item/light_fixture_frame, 2, required_skills = list(/datum/skill/construction = SKILL_LEVEL_NOVICE)),
	new/datum/stack_recipe("Небольшой каркас светильника", /obj/item/light_fixture_frame/small, 1, required_skills = list(/datum/skill/construction = SKILL_LEVEL_NOVICE)),
	null,
	new/datum/stack_recipe("Рамка электрического щита", /obj/item/apc_frame, 2, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
	new/datum/stack_recipe("Рамка воздушной сигнализации", /obj/item/alarm_frame, 2, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
	new/datum/stack_recipe("Рамка пожарной сигнализации", /obj/item/firealarm_frame, 2, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
	new/datum/stack_recipe("Рамка управления дверьми", /obj/item/door_control_frame, 1, required_skills = list(/datum/skill/construction = SKILL_LEVEL_PRO)),
	new/datum/stack_recipe("Металлическая рамка для картины", /obj/item/weapon/picture_frame/metal, 1, time = 15),
	null,
	new/datum/stack_recipe("металлическая дверь", /obj/structure/mineral_door/metal, 20, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_TRAINED)),
	new/datum/stack_recipe("Подоконник", /obj/structure/windowsill, 2, max_per_place = 1, build_outline = TRUE, required_skills = list(/datum/skill/construction = SKILL_LEVEL_TRAINED), time = 20),
	new/datum/stack_recipe("Забор", /obj/structure/fence/metal, 2, time = 25, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe("Ящик для белья", /obj/structure/bedsheetbin, 2, max_per_place = 1, build_outline = TRUE)
)

/obj/item/stack/sheet/metal
	name = "metal"
	cases = list("металл", "металла", "металлу", "металл", "металлом", "металле")
	desc = "Обычные листы металла.Но звучат почему-то тяжелее, чем должны..."
	singular_name = "лист металла"
	plural_name = "листа металла"
	plurals_name = "листов металла"
	icon_state = "sheet-metal"
	hitsound = list('sound/items/trayhit2.ogg')
	m_amt = 3750
	throwforce = 5.0
	flags = CONDUCT
	origin_tech = "materials=1"

/obj/item/stack/sheet/metal/cyborg
	name = "metal"
	cases = list("металл", "металла", "металлу", "металл", "металлом", "металле")
	desc = "Обычные листы металла.Но звучат почему-то тяжелее, чем должны..."
	singular_name = "лист металла"
	plural_name = "листа металла"
	plurals_name = "листов металла"
	icon_state = "sheet-metal"
	m_amt = 0
	throwforce = 5.0
	flags = CONDUCT

/obj/item/stack/sheet/metal/atom_init()
	recipes = metal_recipes
	. = ..()

/*
 * Plasteel
 */
var/global/list/datum/stack_recipe/plasteel_recipes = list ( \
	new/datum/stack_recipe("Ядро ИИ", /obj/structure/AIcore, 4, time = 50, max_per_place = 1, required_skills = list(/datum/skill/construction = SKILL_LEVEL_MASTER)), \
	new/datum/stack_recipe("Металлический ящик", /obj/structure/closet/crate, 10, time = 50, max_per_place = 1, required_skills = list(/datum/skill/construction = SKILL_LEVEL_TRAINED)), \
	)

/obj/item/stack/sheet/plasteel
	name = "plasteel"
	cases = list("пласталь", "пластали", "пластали", "пласталь", "пласталью", "пластали")
	desc = "Этот лист представляет собой сплав стали и платины."
	singular_name = "лист пластали"
	plural_name = "листа пластали"
	plurals_name = "листов пластали"
	icon_state = "sheet-plasteel"
	item_state = "sheet-metal"
	m_amt = 7500
	throwforce = 7.0
	flags = CONDUCT
	origin_tech = "materials=2"

/obj/item/stack/sheet/plasteel/atom_init()
	recipes = plasteel_recipes
	. = ..()

/*
 * Wood
 */
var/global/list/datum/stack_recipe/wood_recipes = list (
	new/datum/stack_recipe("Сандали", /obj/item/clothing/shoes/sandal, 1),
	new/datum/stack_recipe("Полка для приправ", /obj/item/weapon/condiment_shelf, 5, time = 15),
	new/datum/stack_recipe("Напольная плитка", /obj/item/stack/tile/wood, 1, 4, 20),
	new/datum/stack_recipe("Детали стола", /obj/item/weapon/table_parts/wood, 2),
	new/datum/stack_recipe("Детали украшенного стола", /obj/item/weapon/table_parts/wood/fancy, 2),
	new/datum/stack_recipe("Детали черного украшенного стола", /obj/item/weapon/table_parts/wood/fancy/black, 2),
	new/datum/stack_recipe("Стул", /obj/structure/stool/bed/chair/wood/normal, 3, time = 10, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe("Баррикада", /obj/structure/barricade/wooden, 5, time = 50, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe("Дверь", /obj/structure/mineral_door/wood, 10, time = 20, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe("Костёр", /obj/structure/bonfire/dynamic, 10, time = 20, max_per_place = 1, build_outline = TRUE, floor_path = list(/turf/simulated/floor, /turf/environment/snow)),
	new/datum/stack_recipe("Доска объявлений", /obj/item/noticeboard_frame/wood, 10, time = 20, build_outline = TRUE),
	new/datum/stack_recipe("Гроб", /obj/structure/closet/coffin, 5, time = 15, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe("Рамка для картины", /obj/item/weapon/picture_frame/wooden, 1, time = 15),
	new/datum/stack_recipe("Рамка для Рисования", /obj/item/painting_frame, 2, time = 15),
	new/datum/stack_recipe("Корпус витрины", /obj/structure/displaycase_chassis, 5, time = 2 SECONDS, max_per_place = 1, build_outline = TRUE), \
	new/datum/stack_recipe("Мольберт для рисования", /obj/structure/easel, 4, time = 15, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe("Могильный крест", /obj/structure/gravemarker/cross, 2, time = 5, max_per_place = 1, build_outline = TRUE),
	new/datum/stack_recipe("Забор", /obj/structure/fence/wood, 2, time = 25, max_per_place = 1, build_outline = TRUE),
//	new/datum/stack_recipe("apiary", /obj/item/apiary, 10, time = 25, max_per_place = FALSE, build_outline = FALSE)
	)

/obj/item/stack/sheet/wood
	name = "wooden plank"
	cases = list("деревянная доска", "деревянной доски", "деревянной доске", "деревянную доску", "деревянной доской", "деревянной доске")
	desc = "Можно только догадываться, что это связка дров."
	singular_name = "деревянная доска"
	plural_name = "деревянные доски"
	plurals_name = "деревянных досков"
	icon_state = "sheet-wood"
	origin_tech = "materials=1;biotech=1"

/obj/item/stack/sheet/wood/cyborg
	name = "wooden plank"
	cases = list("деревянная доска", "деревянной доски", "деревянной доске", "деревянную доску", "деревянной доской", "деревянной доске")
	desc = "Можно только догадываться, что это связка дров."
	singular_name = "деревянная доска"
	plural_name = "деревянные доски"
	plurals_name = "деревянных досков"
	icon_state = "sheet-wood"

/obj/item/stack/sheet/wood/atom_init()
	recipes = wood_recipes
	. = ..()

/*
 * Cloth
 */
var/global/list/datum/stack_recipe/cloth_recipes = list (
	new/datum/stack_recipe("марля", /obj/item/stack/medical/bruise_pack/rags/not_old, 1, 5, 25, 15),
	null,
	new/datum/stack_recipe("19x19 рамка", /obj/item/canvas/nineteen_nineteen, 3, time = 30),
	new/datum/stack_recipe("23x19 рамка", /obj/item/canvas/twentythree_nineteen, 4, time = 30),
	new/datum/stack_recipe("23x23 рамка", /obj/item/canvas/twentythree_twentythree, 5, time = 30),
	)

var/global/list/datum/stack_recipe/old_cloth_recipes = list (
	new/datum/stack_recipe("марля", /obj/item/stack/medical/bruise_pack/rags/old, 1, 5, 25, 15),
	null,
	new/datum/stack_recipe("19x19 рамка", /obj/item/canvas/nineteen_nineteen, 3, time = 30),
	new/datum/stack_recipe("23x19 рамка", /obj/item/canvas/twentythree_nineteen, 4, time = 30),
	new/datum/stack_recipe("23x23 рамка", /obj/item/canvas/twentythree_twentythree, 5, time = 30),
	)
/obj/item/stack/sheet/cloth
	name = "cloth"
	cases = list("ткань", "ткани", "ткани", "ткань", "тканью", "ткани")
	desc = "Этот рулон ткани изготовлен только из лучших химикатов и кроличьих шкурок."
	singular_name = "рулон ткани"
	plural_name = "рулона ткани"
	plurals_name = "рулонов ткани"
	icon_state = "sheet-cloth"
	origin_tech = "materials=2"

/obj/item/stack/sheet/cloth/atom_init(mapload, new_amount = null, merge = FALSE, force_old = FALSE, old_chance = 33)
	recipes = cloth_recipes
	. = ..()
	if(force_old || prob(old_chance))
		make_old()
		recipes = old_cloth_recipes

/*
 * Cardboard
 */
var/global/list/datum/stack_recipe/cardboard_recipes = list ( \
	new/datum/stack_recipe("Коробка", /obj/item/weapon/storage/box), \
	new/datum/stack_recipe("Коробка с патронами для дробовика", /obj/item/weapon/storage/box/shotgun), \
	new/datum/stack_recipe("Коробка для люминесцентных ламп", /obj/item/weapon/storage/box/lights/tubes), \
	new/datum/stack_recipe("Коробка для электрических лампочек", /obj/item/weapon/storage/box/lights/bulbs), \
	new/datum/stack_recipe("Картонная трубка", /obj/item/weapon/c_tube), \
	new/datum/stack_recipe("Мышеловка", /obj/item/weapon/storage/box/mousetraps), \
	new/datum/stack_recipe("Картонный костюм робота", /obj/item/clothing/suit/cardborg, 3), \
	new/datum/stack_recipe("Картоный шлем робота", /obj/item/clothing/head/cardborg), \
	new/datum/stack_recipe("Коробка пиццы", /obj/item/pizzabox), \
	null, \
	new/datum/stack_recipe_list("Папки",list( \
		new/datum/stack_recipe("Голубая папка", /obj/item/weapon/folder/blue), \
		new/datum/stack_recipe("Серая папка", /obj/item/weapon/folder), \
		new/datum/stack_recipe("Красная папка", /obj/item/weapon/folder/red), \
		new/datum/stack_recipe("Белая папка", /obj/item/weapon/folder/white), \
		new/datum/stack_recipe("Жёлтая папка", /obj/item/weapon/folder/yellow), \
		new/datum/stack_recipe("Зелёная папка", /obj/item/weapon/folder/green), \
		new/datum/stack_recipe("Коричневая папка", /obj/item/weapon/folder/brown), \
		new/datum/stack_recipe("Розовая папка", /obj/item/weapon/folder/pink), \
		new/datum/stack_recipe("Фиолетовая папка", /obj/item/weapon/folder/purple), \
		)) \
)

/obj/item/stack/sheet/cardboard	//BubbleWrap
	name = "cardboard"
	cases = list("картон", "картона", "картону", "картон", "картоном", "картоне")
	desc = "Большие листы картона, похожие на коробки, сложенные плашмя."
	singular_name = "лист картон"
	plural_name = "листа картона"
	plurals_name = "листов картона"
	icon_state = "sheet-card"
	origin_tech = "materials=1"

/obj/item/stack/sheet/cardboard/atom_init()
	recipes = cardboard_recipes
	. = ..()





var/global/list/datum/stack_recipe/sandbag_recipes = list ( \
	new/datum/stack_recipe("Укрытие из мешков с песком", /obj/structure/fence/sandbags, 1, time = 25, max_per_place = 1, build_outline = TRUE),
)

var/global/list/datum/stack_recipe/green_sandbag_recipes = list ( \
	new/datum/stack_recipe("Укрытие из мешков с песком", /obj/structure/fence/sandbags/green, 1, time = 25, max_per_place = 1, build_outline = TRUE),
)

/obj/item/stack/sheet/sandbag	//Sandbags
	name = "sandbag"
	cases = list("мешок с песком", "мешка с песком", "мешку с песком", "мешок с песком", "мешком с песком", "мешке с песком")
	desc = "Мешок с песком."
	singular_name = "мешок с песком"
	plural_name = "мешкки с песком"
	plurals_name = "мешков с песком"
	icon_state = "sheet-sandbag"
	origin_tech = "materials=1"

	item_state_world = "sheet-sandbag_world"

	max_amount = 5

/obj/item/stack/sheet/sandbag/atom_init()
	recipes = sandbag_recipes
	. = ..()

/obj/item/stack/sheet/sandbag_green
	name = "sandbag"
	desc = "Мешок с песком."
	singular_name = "мешок с песком"
	plural_name = "мешка с песком"
	plurals_name = "мешков с песком"
	icon_state = "sheet-sandbag_green"
	origin_tech = "materials=1"

	item_state_world = "sheet-sandbag_green_world"

	max_amount = 5

/obj/item/stack/sheet/sandbag_green/atom_init()
	recipes = green_sandbag_recipes
	. = ..()
