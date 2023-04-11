extends Node

const SAVE_PATH = "user://save.cfg"

func save_highscore(highscore):
	var config = ConfigFile.new()
	config.set_value("Game", "Highscore", highscore)
	config.save(SAVE_PATH)

func load_highscore():
	var highscore = 0
	var config = ConfigFile.new()
	var error = config.load(SAVE_PATH)
	if error != OK: return null
	highscore = config.get_value("Game", "Highscore")
	return highscore
