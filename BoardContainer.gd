extends Control

# Script that controls the master logic for the game, such as generating the code 

var ans = ["", "", "", ""] # Variable used to store the generated code
var row = 1 			   # Variable used to store which row is in use 

func clear_board():
	var children = get_children()
	children.pop_back()  # remove the check button from the list
	for child in children:
		child.clear_row()
	#GridContainer.check.checkbutton.uncheck() find some way of unchecking the button

func generate_code(): # generates a code for the player to guess against
	var chosen = []
	var cols = ["Red", "Green", "Yellow", "LightBlue", "DarkBlue", "Purple", "Pink"]
	for n in 3:   # 0 indexed
		chosen.append(cols[randi() % cols.size()])
	return chosen
	pass

func new_game(): # Handles various tasks when a new game is started
	clear_board()	
	ans = generate_code()
	row = 1
	# lock the other rows
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# recive the check button signal
	# row = row + 1
	# if row > 6
	# send lose signal
