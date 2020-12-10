extends Node2D

const pipes = preload("res://Pipes.tscn")

export var pipe_interval = 250

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in 5000:
		var noise = OpenSimplexNoise.new()
		
		# Configure
		noise.seed = randi()
		noise.octaves = 4
		noise.period = 20.0
		noise.persistence = 0.8
		
		var pipe = pipes.instance()
		pipe.position.x = i * pipe_interval + 500
		pipe.position.y = noise.get_noise_1d(i / 20) * 250
		add_child(pipe)
