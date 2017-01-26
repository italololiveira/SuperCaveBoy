///hurt_state
sprite_index = spr_player_damage
if(hspd != 0) image_xscale  = sign(hspd);

//Apply gravity
if(!place_meeting(x,y+1,Solid)){
    vspd+= grav;
} else {
    vspd = 0;
}

//Use friction
apply_friction(acc);

direction_move_bounce(Solid);

    //Change Back to MoveState
if(hspd == 0 && hspd == 0){
image_blend = c_white;
state = move_state;
}
 
