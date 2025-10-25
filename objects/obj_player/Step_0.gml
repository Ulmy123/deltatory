var up_key = keyboard_check(vk_up)
var down_key = keyboard_check(vk_down)
var left_key = keyboard_check(vk_left)
var right_key = keyboard_check(vk_right)


if(keyboard_check(vk_shift) or keyboard_check(ord("X"))){
	move_spd = run_spd
} else{
	move_spd = walk_spd
}

xspd = (right_key - left_key) * move_spd
yspd = (down_key - up_key) * move_spd

if(place_meeting(x + xspd, y, obj_collider)){
	
	xspd = 0
	
}

if(place_meeting(x, y + yspd, obj_collider)){
	
	yspd = 0
	
}

x += xspd
y += yspd

if (xspd > 0){
	sprite_index = spr_KWR	
} else if (xspd < 0){
	sprite_index = spr_KWL
} else if (yspd < 0){
	sprite_index = spr_KWU
} else if (yspd > 0){
	sprite_index = spr_KWD
}

if(xspd != 0 or yspd != 0){
	image_speed = 1
} else{
	image_speed = 0 
	image_index = 0
}

x[0] = round(x[0.1])
y[0] = round(y[0.1])

if(sprite_index = spr_KWD){
	facing_direction = 2
}
if(sprite_index = spr_KWU){
	facing_direction = 3
}
if(sprite_index = spr_KWR){
	facing_direction = 0
}
if(sprite_index = spr_KWL){
	facing_direction = 1
}

if place_meeting(x, y, obj_save){
	
	if sprite_index = spr_KWD{
		facing_direction = 0
	}
		if sprite_index = spr_KWL{
		facing_direction = 1
	}
		if sprite_index = spr_KWR{
		facing_direction = 2
	}
		if sprite_index = spr_KWU{
		facing_direction = 3
	}
}
if global.party_exists == true{
	
	if (x != xprevious or y != yprevious) and (!instance_exists(obj_fade))
		
		for(follow_pos = follow_points -1; follow_pos > 0; follow_pos--)
		
		player_x[follow_points] = player_x[follow_pos - 1]
		player_y[follow_points] = player_y[follow_pos - 1]
		
		past_facing[follow_pos] = past_facing[follow_pos - 1]
		}
		player_x[0] = x 
		player_y[0] = y 
		past_facing[0] = sprite_index

if instance_exists(obj_fade) and obj_fade.party_warp = true{

instance_create_layer(x, y, "player", global.party_member_1)
instance_create_layer(x, y, "player", global.party_member_2)
global.party_member_1.inparty = true
global.party_member_2.inparty = true
obj_fade.party_warp = false
}