extends Node2D

var chunk_coords = Vector2()
var chunk_data = []
var colors #0

func start(_chunk_coords):
	chunk_coords = _chunk_coords
	$Coords.text = str(chunk_coords)
	if WorldSave.loaded_coords.find(_chunk_coords) == -1:
		color()
		WorldSave.add_chunk(chunk_coords)
	else:
		chunk_data = WorldSave.retrive_data(chunk_coords)
		modulate = chunk_data[0]

func color():
	colors = Color(rand_range(0.3, 1), rand_range(0.3, 1), rand_range(0.3, 1))
	modulate = colors
	chunk_data.append(colors)

func save():
	WorldSave.save_chunk(chunk_coords, chunk_data)
	queue_free()
