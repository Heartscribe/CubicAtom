extends Control

func _ready():
	$VBoxContainer/StartButton.pressed.connect(_on_start_pressed)
	$VBoxContainer/SettingsButton.pressed.connect(_on_settings_pressed)
	$VBoxContainer/QuitButton.pressed.connect(_on_quit_pressed)
	$ConfirmationDialog.confirmed.connect(_on_quit_confirmed)

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Program/Pages/Game/Game_Page.tscn")

func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Program/Pages/Settings/settings_page.tscn")

func _on_quit_pressed():
	$ConfirmationDialog.popup_centered()

func _on_quit_confirmed():
	get_tree().quit()
