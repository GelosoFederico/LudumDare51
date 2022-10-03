extends Control

var themeCount = 0
const themes = [
	preload("res://themes/theme.tres"),
	preload("res://themes/theme1.tres"),
	preload("res://themes/theme2.tres"),
	preload("res://themes/theme3.tres")
]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	themeCount += 1
	if themeCount == 4: themeCount = 0
	theme = themes[themeCount]
	$Camera2d/CameraShake.start()
	#$AudioStreamPlayer.play()
