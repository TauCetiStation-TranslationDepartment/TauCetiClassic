/datum/emote/whimper
	key = "whimper"

	message_1p = "Вы хнычете."
	message_3p = "хнычет."

	message_impaired_production = "издаёт слабый шум."
	message_impaired_reception = "делает печальное лицо."

	message_miming = "хнычет."
	message_muzzled = "издаёт слабый шум."

	message_type = SHOWMSG_AUDIO

	required_stat = CONSCIOUS
	blocklist_unintentional_traits = list(TRAIT_EMOTIONLESS)


/datum/emote/roar
	key = "roar"

	message_1p = "Вы рычите!"
	message_3p = "рычит!"

	message_impaired_production = "издаёт громкий шум!"

	message_miming = "издаёт рев!"
	message_muzzled = "издаёт громкий шум!"

	message_type = SHOWMSG_AUDIO

	required_stat = CONSCIOUS

/datum/emote/roar/get_impaired_msg(mob/user)
	return "открывает [THEIR_RU(user)] рот широко и страшно!"


/datum/emote/gasp
	key = "gasp"

	message_1p = "Вы дышите с трудом!"
	message_3p = "дышит с трудом!"

	message_impaired_production = "яростно втягивает воздух!"
	message_impaired_reception = "яростно втягивает воздух!"

	message_miming = "выглядит так, будто задыхается!"
	message_muzzled = "издаёт слабый шум."

	message_type = SHOWMSG_AUDIO

	required_stat = CONSCIOUS
	blocklist_unintentional_traits = list(TRAIT_NO_BREATHE)

	cloud = "cloud-gasp"


/datum/emote/choke
	key = "choke"

	message_1p = "Вы задыхаетесь."
	message_3p = "задыхается."

	message_impaired_production = "издаёт громкий шум."

	message_miming = "задыхается."
	message_muzzled = "издаёт громкий шум."

	message_type = SHOWMSG_AUDIO

	required_stat = CONSCIOUS
	blocklist_unintentional_traits = list(TRAIT_NO_BREATHE)

	cloud = "cloud-gasp"

/datum/emote/choke/get_impaired_msg(mob/user)
	return "отчаянно хватается за [THEIR_RU(user)] горло!"


/datum/emote/moan
	key = "moan"

	message_1p = "Вы стоните!"
	message_3p = "стонет!"

	message_impaired_production = "тихо стонет."

	message_miming = "кажется, что стонет!"
	message_muzzled = "тихо стонет!"

	message_type = SHOWMSG_AUDIO

	required_stat = CONSCIOUS
	blocklist_unintentional_traits = list(TRAIT_EMOTIONLESS)

/datum/emote/moan/get_impaired_msg(mob/user)
	return "открывает [THEIR_RU(user)] рот широко"


/datum/emote/cough
	key = "cough"

	message_1p = "Вы кашляете."
	message_3p = "кашляет."

	message_impaired_production = "сильные спазмы!"

	message_miming = "изображает кашель."
	message_muzzled = "пытается покашлять."

	required_stat = CONSCIOUS
	blocklist_unintentional_traits = list(TRAIT_NO_BREATHE)

/datum/emote/cough/get_impaired_msg(mob/user)
	return "дергается [THEIR_RU(user)] лицом вперед, как [THEY_RU(user)] открывает и закрывает [THEIR_RU(user)] рот!"
