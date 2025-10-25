if inparty = true{

sprite_index = spr_NWD 
} else if inparty = true{
	
	sprite_index = spr_NWL

}
 if inparty = true{
	
	sprite_index = spr_NWR

}
 if inparty = true{
	
	sprite_index = spr_NWU

}
x[0] = round(x[0.1])
y[0] = round(y[0.1])

if inparty = true and obj_player.follow_points > 0{

 npc_mode = false
}
 if global.entered_new_room = true{
 
 if global.new_room_facing = spr_KWD{
 sprite_index = spr_NWD
 new_room_facing = sprite_index
 
 }
  if global.new_room_facing = spr_KWL{
 sprite_index = spr_NWL
 new_room_facing = sprite_index
 
 }
 
  if global.new_room_facing = spr_KWR{
 sprite_index = spr_NWR
 new_room_facing = sprite_index
 
 }
 
  if global.new_room_facing = spr_KWU{
 sprite_index = spr_NWU
 new_room_facing = sprite_index
 
 }
 
 if sprite_index != new_room_facing{
 
 global.entered_new_room = false
 
 }
 
 if global.party_member_1 = self{
 
	 switch(obj_player.past_facing[global.party_member_1_follow_distance]){
	 case spr_KWD: sprite_index = spr_NWD; break
	  case spr_KWL: sprite_index = spr_NWL; break
	   case spr_KWR: sprite_index = spr_NWR; break
	    case spr_KWU: sprite_index = spr_NWU; break
	 }
 
	 if obj_player.player_x[global.party_member_1_follow_distance] != 0{
	 
	 
		 x= obj_player.player_x[global.party_member_1_follow_distance]
		 y= obj_player.player_y[global.party_member_1_follow_distance]

		} else{
			if instance_exists(obj_fade)
			x = obj_fade.target_x
			y = obj_fade.target_y
		}
 } else{
 
	 switch(obj_player.past_facing[global.party_member_2_follow_distance]){
	 case spr_KWD: sprite_index = spr_NWD; break
	  case spr_KWL: sprite_index = spr_NWL; break
	   case spr_KWR: sprite_index = spr_NWR; break
	    case spr_KWU: sprite_index = spr_NWU; break
	 }
 
	 if obj_player.player_x[global.party_member_2_follow_distance] != 0{
	 
	 
		 x= obj_player.player_x[global.party_member_2_follow_distance]
		 y= obj_player.player_y[global.party_member_2_follow_distance]

		} else{
			if instance_exists(obj_fade)
			x = obj_fade.target_x
			y = obj_fade.target_y
		}
 }
 
  if x != xprevious or y != yprevious{
  
  image_speed = 1
  } else{
  
  image_speed = 0
  image_index = 0
  }
  
 }
 
 
 if inparty = false{
 
 image_speed = 0
 npc_mode = true
 
 
 }