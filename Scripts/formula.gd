extends Resource

@export var template: Array[String] = [""]
@export var tokens = {}

func get_random_from(token_category):
	return tokens[token_category].pick_random()
