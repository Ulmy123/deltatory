room_goto(target_room)
obj_player.x = target_x
obj_player.y = target_y

if global.party_exists = true{
	
	party_warp = true
	global.entered_new_room = true
	global.new_room_facing = obj_player.sprite_index
	obj_player.player_x = -1
	obj_player.player_y = -1
	obj_player.past_facing = -1
	obj_player.follow_points = 100
	
	for(obj_player.follow_pos = obj_player.follow_points -1; obj_susie.follow_pos >= 0; obj_player.follow_pos--){
	
	obj_player.player_x[obj_player.follow_pos] = x
	obj_player.player_y[obj_player.follow_pos] = y
	}
	
	for(obj_player.follow_pos = obj_player.follow_points -1; obj_player.follow_pos >= 0; obj_player.follow_pos -= 48){
	
	obj_player.past_facing[obj_player.follow_pos] = obj_player.sprite_index
	}
}

if(facing = 0){
	
	obj_player.sprite_index = spr_KWR
	
}

if(facing = 1){
	
	obj_player.sprite_index = spr_KWL
	
}

if(facing = 2){
	
	obj_player.sprite_index = spr_KWD
	
}

if(facing = 3){
	
	obj_player.sprite_index = spr_KWU
	
}

image_speed = -1