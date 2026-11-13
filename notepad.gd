extends Window
@onready var button = $Button
@onready var text = $TextEdit
@onready var file_dialog = $FileDialog
@onready var file_dialog2 = $FileDialog2
var current_chosen_file = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var text2 = text.text
	save(text2)
func save(saved: String):
	file_dialog.show()
	current_chosen_file = saved



func _on_file_dialog_file_selected(path: String) -> void:
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(current_chosen_file)


func _on_button_2_pressed() -> void:
	file_dialog2.show()


func _on_file_dialog_2_file_selected(path: String):
	var file = FileAccess.open(path, FileAccess.READ)
	var inside_text = file.get_as_text()
	print(inside_text)
	print("print")
	text.text = inside_text
