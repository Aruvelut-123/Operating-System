extends Node2D

var printing = false
var printed = false

func reset():
	printing = false
	printed = false

func print_effect(node, text_speed):
	if node.visible_characters != 0 and !printing and !printed:
		node.visible_characters = 0
		printing = true
		printed = false
	if !node.visible:
		node.visible = true
	var total_characters = node.text.length() 
	if node.visible_characters < total_characters:
		node.visible_characters += text_speed
		printing = true
		printed = false
		return true
	else:
		printing = false
		printed = true
		return false
	return false
