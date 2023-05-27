extends Node2D

var poopScene = preload("res://Poop.tscn");
var testSpawnPoint;

var poopDelay = 0.5;
var nextPoop = poopDelay;

# Called when the node enters the scene tree for the first time.
func _ready():
	testSpawnPoint = %TestSpawnPoint;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	nextPoop -= delta;
	if (nextPoop <= 0):
		var poop = poopScene.instantiate();
		poop.position = testSpawnPoint.position;
		add_child(poop);
		nextPoop = poopDelay;
