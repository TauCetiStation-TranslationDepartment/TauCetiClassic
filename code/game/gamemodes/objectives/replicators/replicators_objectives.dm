/datum/objective/replicator_replicate
	explanation_text = "Соорудите блюспейс-катапульту и отправьте на ней в пространство 20 репликаторов!"

/datum/objective/replicator_replicate/check_completion()
	var/datum/faction/replicators/FR = get_or_create_replicators_faction()
	if(FR.replicators_launched >= REPLICATORS_CATAPULTED_TO_WIN)
		return OBJECTIVE_WIN
	return OBJECTIVE_LOSS
