extends Node

var loaded_coords = []
var data_in_chunk = []

func add_chunk(coords):
	loaded_coords.append(coords)
	data_in_chunk.append([])

func save_chunk(coords, data):
	data_in_chunk[loaded_coords.find(coords)] = data

func retrive_data(coords):
	var data = data_in_chunk[loaded_coords.find(coords)]
	return data
