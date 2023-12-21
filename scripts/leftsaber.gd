extends Node3D

var K : float = 2.0 # Adjust this value (0 < k < 1) to control the non-linearity
var D : float = 0.1 # The threshold distance for linear mapping


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var xr_controller = get_parent() # Reference to the XR controller node
	var XRCamera_position = %XRCamera3D.global_position
	
	# Get the position of the XR controller
	var controller_position : Vector3 = xr_controller.global_position

	# Calculate the distance from the origin to the controller position
	var distance : float = (controller_position - XRCamera_position).length()

	# Apply the non-linear mapping function
	var mapped_distance : float = non_linear_map(distance)

	# Normalize the controller position vector
	var normalized_position : Vector3 = (controller_position - XRCamera_position).normalized()

	# Calculate the position of the LeftSaber based on the mapped distance
	global_position = XRCamera_position + normalized_position * mapped_distance
	
	var bluesgroup = get_tree().get_nodes_in_group("blues")
	for object in bluesgroup:
		var correct = object.find_child("CorrectArea3D") as Area3D
		var incorrect = object.find_child("MissArea3D") as Area3D
		var saber = self.find_child("Area3D") as Area3D
		if correct.overlaps_area(saber):
			object.queue_free()

func non_linear_map(distance: float) -> float:
	if distance < D:
		return distance
	else:
		return distance + K * pow(distance - D, 2)
