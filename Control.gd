extends Control

const world = preload("res://World.tscn")

func _play():
	get_tree().change_scene_to(world)
