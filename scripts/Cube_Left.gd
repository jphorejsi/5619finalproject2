extends Node3D

@onready var cube_scene = preload("res://objects/blocks/blue/blueleftblock.tscn")
@onready var cube_scene_r = preload("res://objects/blocks/red/redleftblock.tscn")
@onready var player = $%PlayerBody
signal health_loss()
var spawn_cd = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# print(cubes.size())
	if spawn_cd == 0:
		var rand = randf()

		if rand < 0.5:
			var cube_instance = spawn_cube(cube_scene)
			cube_instance.add_to_group("blues")
			# cubes.append(cube_instance)
		if rand >= 0.5:
			var cube_instance = spawn_cube(cube_scene_r)
			cube_instance.add_to_group("reds")
		spawn_cd = randi_range(240, 480)

	for cube_instance in self.get_children():
		move_cube(cube_instance,delta)
		# print(cube_instance.position)	
	spawn_cd -= 1

func spawn_cube(cube):
	var cube_instance = cube.instantiate()
	self.add_child(cube_instance)
	cube_instance.transform.origin = self.transform.origin
	return cube_instance




func move_cube(cube_instance, delta):
	if cube_instance:
		if cube_instance.transform.origin.z >= 6.0:
			# cubes.erase(cubes.find(cube_instance))
			cube_instance.queue_free()
			emit_signal("health_loss")
		elif not cube_instance.is_queued_for_deletion():
			cube_instance.position.z += 0.01
		# Move the cube towards the player in the process function
		# cube_instance.translate(Vector3(0, 0, 1 * speed * delta))
