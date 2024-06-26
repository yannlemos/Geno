extends Button

var tokens := [""] 

func randomize_token() -> void:
	text = tokens.pick_random()

func _on_pressed() -> void:
	randomize_token()
