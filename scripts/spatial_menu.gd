extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print("Button pressed")
	teleport_player()



func teleport_player():
	# Assuming you have a separate scene for the destination level
	# var destination_scene = preload("res://scene/main.tscn")

	# Change the scene to the destination scene
	get_tree().change_scene_to_file("res://scene/main.tscn")
