extends PanelContainer

@onready var texture_rect = $TextureRect
var occupied = false # store if the slot is occupied
var colour = ""		 # store the current colour, if there is any

func send_colour():
		# on the checkbutton signal send the current colour to the board for proccessing
	pass	

func _get_drag_data(_at_position):
	set_drag_preview(get_preivew())
	return texture_rect 
	
func _can_drop_data(_pos, data):
	return data is TextureRect
	
func _drop_data(_pos, data):
	var temp = texture_rect.texture 
	texture_rect.texture = data.texture
	data.texture = temp

func get_preivew():
	var preview_texture = TextureRect.new()
	
	preview_texture.texture = texture_rect.texture 
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(30,30)
	
	var preview = Control.new()
	preview.add_child(preview_texture)
	
	return preview
