tool
extends TextureFrame
var material = null
var height = 720.0

var posP0 = Vector2()
var posP1 = Vector2()
var posP2 = Vector2()
var posP3 = Vector2()

onready var P0 = get_node("P0")
onready var P1 = get_node("P1")
onready var P2 = get_node("P2")
onready var P3 = get_node("P3")

func _ready():
	height = get_size().y
	material = get_material()
	posP0 = P0.get_pos()
	posP1 = P1.get_pos()
	posP2 = P2.get_pos()
	posP3 = P3.get_pos()
	set_process(true)

func _process(delta):
	check_P0()
	check_P1()
	check_P2()
	check_P3()

func check_P0():
	var pos = P0.get_pos()
	if posP0 != pos:
		var new_pos = Vector2(pos.x, 0.0)
		P0.set_pos(new_pos)
		material.set_shader_param("P0", Vector2(new_pos.x / height, 0.0))
		posP0 = new_pos

func check_P3():
	var pos = P3.get_pos()
	if posP3 != pos:
		var new_pos = Vector2(pos.x, height)
		P3.set_pos(new_pos)
		material.set_shader_param("P3", Vector2(new_pos.x / height, 0.0))
		posP0 = new_pos

func check_P1():
	var pos = P1.get_pos()
	if posP1 != pos:
		P1.set_pos(pos)
		material.set_shader_param("P1", Vector2(pos.x / height, pos.y / height))
		posP1 = pos
		update()

func check_P2():
	var pos = P2.get_pos()
	if posP2 != pos:
		P2.set_pos(pos)
		material.set_shader_param("P2", Vector2(pos.x / height, pos.y / height))
		posP2 = pos