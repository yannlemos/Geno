extends Control

const DYNAMIC_RESULT_SYMBOL = preload("res://Scenes/dynamic_result_symbol.tscn")
const STATIC_RESULT_SYMBOL = preload("res://Scenes/static_result_symbol.tscn")

@export var h_box_container: HBoxContainer 

func add_dynamic_symbol(tokens):
	var new_dynamic_symbol = DYNAMIC_RESULT_SYMBOL.instantiate()
	new_dynamic_symbol.tokens = tokens.duplicate(true)
	print(new_dynamic_symbol.tokens)
	new_dynamic_symbol.randomize_token()
	h_box_container.add_child(new_dynamic_symbol)

func add_static_symbol(token):
	var new_static_symbol = STATIC_RESULT_SYMBOL.instantiate()
	new_static_symbol.text = token
	h_box_container.add_child(new_static_symbol)
