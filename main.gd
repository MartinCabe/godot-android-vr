extends Node3D

var interface: XRInterface

func _ready():
	interface = XRServer.find_interface("Native mobile")
	if interface and interface.initialize():
		print("Mobile vr initialized")
		
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		
		get_viewport().xr = true
	else:
		print("Mobile vr not initialized")
