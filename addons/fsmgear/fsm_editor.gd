@tool
extends Control

var editor_interface
var statesNodes=[]	
@onready var statesDisplay:GraphEdit=$GraphEdit
func show_fsm(node):
	$TargetLbl.text = node.name
	var i = 0

	for state in node.get_children():
		i += 1

		var stateDispNode: GraphNode = GraphNode.new()
		stateDispNode.title = state.name
		stateDispNode.position = Vector2(16, 16 + 128 * i)
		stateDispNode.position_offset = Vector2(16, 16 + 128 * i)

		statesDisplay.add_child(stateDispNode)
	

func clear_graph():
	$TargetLbl.text = "No FSM"
	for child in statesDisplay.get_children():
		if child is GraphNode:#to prevent missin conection_layer
			child.queue_free()
