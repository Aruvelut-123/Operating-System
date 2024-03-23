extends Node

var total_characters = 0
var text_speed = 1
var global = Global
var memory_size = 4096
var processed = false
var currect_memory = 0
var pre_text = "Award Modular BIOS v4.50G, An Energy Star Ally
Copyright (C) 1984-94, Award Software, Inc.

#401A0-0303

DX4-S CPU at 100MHz
Memory Test :      "

func _ready():
	$"BIOS Info".text = pre_text
	$"BIOS Info".visible = false
	$"ERROR Info".visible = false
	$"Left Info".visible = false
	$"Memory Info".visible = false

func _process(delta):
	if global.print_effect($"BIOS Info", text_speed):
		pass
	else:
		$"Memory Info".visible = true
		while currect_memory < memory_size and !processed:
			await get_tree().create_timer(0.5).timeout
			if currect_memory < memory_size:
				currect_memory = currect_memory + 1
			else:
				currect_memory = memory_size
			$"Memory Info".text = str(currect_memory) + "K OK"
		await get_tree().create_timer(0.5).timeout
		$"ERROR Info".visible = true
		await get_tree().create_timer(1).timeout
		$"Left Info".visible = true
		processed = true
