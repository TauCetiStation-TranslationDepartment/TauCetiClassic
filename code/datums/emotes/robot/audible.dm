/datum/emote/robot/beep
	key = "beep"

	message_1p = "Вы издаёте би-и-ип."
	message_3p = "издаёт би-и-ип."

	message_impaired_production = "издаёт слабый звук."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/twobeep.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/ping
	key = "ping"

	message_1p = "Вы издаёте пинг."
	message_3p = "издаёт пинг."

	message_impaired_production = "издаёт слабый звук."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/ping.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/buzz
	key = "buzz"

	message_1p = "Вы жужжите."
	message_3p = "жужжит."

	message_impaired_production = "издаёт слабый звук."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/buzz-sigh.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/law
	key = "law"

	message_1p = "Вы показываете свой официальный охранный значок в виде штрих-кода."
	message_3p = "показывает свой официальный охранный значок в виде штрих-кода."

	message_impaired_production = "издаёт звук."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/voice/beepsky/iamthelaw.ogg'

	required_stat = CONSCIOUS

/datum/emote/robot/law/can_emote(mob/user, intentional)
	var/mob/living/silicon/robot/R = user
	if(!istype(R.module, /obj/item/weapon/robot_module/security))
		if(intentional)
			to_chat(R, "<span class='notice'>У вас неактивирован необходимый модуль для этой эмоции.</span>")
		return FALSE

	return ..()


/datum/emote/robot/confirm
	key = "confirm"

	message_1p = "Вы издаёте утвердительный сигнал."
	message_3p = "издаёт утвердительный сигнал."

	message_impaired_production = "издаёт звук."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/synth_yes.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/deny
	key = "deny"

	message_1p = "Вы издаёте отрицательный сигнал."
	message_3p = "издаёт отрицательный сигнал."

	message_impaired_production = "издаёт звуки."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/synth_no.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/scary
	key = "scary"

	message_1p = "Вы имитируете обескураживающий звук."
	message_3p = "имитирует обескураживающий звук."

	message_impaired_production = "издаёт звуки."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/synth_alert.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/woop
	key = "woop"

	message_1p = "Вы радостно щебечете."
	message_3p = "радостно щебечет."

	message_impaired_production = "издаёт слабый звук."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/dwoop.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/boop
	key = "boop"

	message_1p = "Вы издаёте бууп."
	message_3p = "издаёт бууп."

	message_impaired_production = "издаёт слабый звук."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/roboboop.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/robochirp
	key = "chirp"

	message_1p = "Вы щебечете."
	message_3p = "щебечет."

	message_impaired_production = "издаёт слабый звук."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/robochirp.ogg'

	required_stat = CONSCIOUS


/datum/emote/robot/calling
	key = "call"

	message_1p = "Вы набираете номер."
	message_3p = "набирает номер."

	message_impaired_production = "издаёт звуки."
	message_impaired_reception = "мерцает."

	message_miming = "издаёт роботизированные звуки."
	message_muzzled = "издаёт слабый звук."

	message_type = SHOWMSG_AUDIO

	sound = 'sound/machines/longwhistle_robot.ogg'

	required_stat = CONSCIOUS
