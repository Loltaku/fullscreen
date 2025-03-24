extends Node

func _unhandled_input(event):
	if event.is_action_pressed("toggle_fullscreen"):
		var window = get_window()
		
		if window.mode == Window.MODE_WINDOWED:
			window.mode = Window.MODE_EXCLUSIVE_FULLSCREEN
		else:
			# 切换回窗口模式
			window.mode = Window.MODE_WINDOWED
			window.size = Vector2i(640, 360)
