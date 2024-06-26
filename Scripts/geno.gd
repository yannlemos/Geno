extends Control

const RESULT = preload("res://Scenes/result.tscn")

@export var formula: Resource
@export var result_count = 10

@onready var results_container: VBoxContainer = $VBoxContainer

func _on_button_pressed() -> void:
	generate()

func generate() -> void:
	clear_results()
		
	for r in result_count:
		
		var new_result = RESULT.instantiate()
		
		for t in formula.template:
			if t.begins_with("{"):
				new_result.add_dynamic_symbol(formula.tokens[t])
			else:
				new_result.add_static_symbol(t)
				
		results_container.add_child(new_result)

func clear_results() -> void:
	for n in results_container.get_children():
		results_container.remove_child(n)
		n.queue_free()
