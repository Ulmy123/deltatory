global.start_room = party_test
global.start_x = 156
global.start_y = 92

global.new_game = false
global.title_buttons = false

global.party_exists = false
global.entered_new_room = false

//party IDs
global.p0 = 0//susie
global.p1 = 1//ralsei
global.p2 = 2//noelle

global.rm0 = 0
global.rm1 = 1
global.rm2 = 2
global.rm3 = 3
global.rm4 = 4
global.rm5 = 5

if(file_exists("chapter5.ini")){
	
	instance_create_depth(11, 58, 100, obj_buttons_continue)

	ini_open("chapter5.ini")
	global.start_room = ini_read_string("Save1", "room", Room1)
	global.start_x = ini_read_real("Save1", "x", 156)
	global.start_y = ini_read_real("Save1", "y", 92)
	global.party_member_1 = ini_read_real("Save1", "Party1", global.p0)
	global.party_member_2 = ini_read_real("Save1", "Party1", global.p1)
	global.party_member_1_follow_distance = ini_read_real("Save1", "Party1 Distance", 40)
	global.party_member_2_follow_distance = ini_read_real("Save1", "Party1 Distance", 80)
	global.party_exists = ini_read_string("Save1", "Party Exists", false)
	ini_close()

} else{
	
	instance_create_depth(11, 58, 100, obj_buttons_continue)

}

if (global.start_room = 0){
	
	global.start_room = Room1
	
}

if (global.start_room = 1){
	
	global.start_room = Room2	
}

if global.party_exists = true{

if (global.party_member_1 == 0){
	
	global.party_member_1 = obj_susie
}

if (global.party_member_1 == 1){
	
	global.party_member_1 = obj_ralsei
}

if (global.party_member_1 == 2){
	
	global.party_member_1 = obj_noelle
}
if (global.party_member_2 == 0){
	
	global.party_member_2 = obj_susie
}

if (global.party_member_2 == 1){
	
	global.party_member_2 = obj_ralsei
}

if (global.party_member_2 == 2){
	
	global.party_member_2 = obj_noelle
}
}