extends Control

var slots = ["", "", "", ""]

func clear_row():
	for child in get_children():
		child.clear()
	
func row_lock():
	#a function to stop the editing of a row after it has been played
	pass

func check_row():
	# to be called when the check button is pressed
	# Needs to check and return the value of the code
	# so that the button can display the answers
	row_lock()
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#if 
	#	check()
	pass
