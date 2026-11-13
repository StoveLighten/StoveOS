extends Window
@onready var files = $ItemList

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var dir = DirAccess.get_files_at("res://")
	for i in dir:
		files.add_item(i)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
