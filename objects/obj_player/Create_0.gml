xspeed = 0 
yspeed = 0

move_spd = 1
walk_spd = 1.5
run_spd = 2.9

facing_direction = 2

party_follow = false

ini_open("chapter5.ini")
	facing_direction = ini_read_real("Save1", "facing", 2)
	if facing_direction = 0{
		sprite_index = spr_KWD
	}
		if facing_direction = 1{
		sprite_index = spr_KWL
		}
		if facing_direction = 2{
		sprite_index = spr_KWR
		}
		if facing_direction = 3{
		sprite_index = spr_KWU
		}
ini_close()

follow_points = 100
for(follow_pos = follow_points -1; follow_pos >= 0; follow_pos--){
	player_x[follow_pos] = x
	player_y[follow_pos] = y 
	past_facing[follow_pos] = sprite_index
}