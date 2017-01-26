///move_state
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var up_release = keyboard_check_released(vk_up);
var down = keyboard_check(vk_down);

//if player is in air
if(!place_meeting(x,y+1,Solid)){
    //apply gravity to player
    vspd += grav;
    
    sprite_index= spr_player_jump;
    image_speed = 0;
    image_index = (vspd >0);
    
    //Control Jump Height
    
    if(up_release && vspd < -6){
        vspd = -6;
    }
    
    
} else {
    //player is on ground
    vspd = 0;
    
    
    
    //jumping code
    if(up){
        vspd = -16;
    }
    
    if(hspd == 0){
        sprite_index = spr_player_idle;
    }else{
        sprite_index = spr_player_walk;
        image_speed = .6;
    }        
     
    
    
}


if(right){
    hspd = spd;
    hspd_dir = 1;
}
if(left){
    hspd = -spd;
    hspd_dir = -1;
}

if(left || right){
    hspd += (right-left)*acc;
    hspd_dir = right - left;
    
    if(hspd > spd) hspd = spd;
    if(hspd < -spd) hspd = -spd;
    
}else{
    apply_friction(acc);
}

//is moving
if(hspd != 0){
    image_xscale = sign(hspd);
}


//Friction
if(!right && !left){
    hspd=0;
}
 
move(Solid)

// Check for ledge grab state

var falling = y-yprevious > 0;
var wasnt_wall = !position_meeting(x+17*image_xscale,yprevious, Solid);
var is_wall = position_meeting(x+17,y,Solid);

if(falling && wasnt_wall && is_wall){
    hspd = 0;
    vspd = 0;
    
    //move against ledge
    while (!place_meeting(x+image_xscale,y,Solid)){
    x+=image_xscale
    
    }
    //make sure we are in the right height
    while(position_meeting(x+17*image_xscale,y-1,Solid)){
    y-=1
    }
    
    sprite_index = spr_player_ledge_grab;
    state = ledge_grab_state;
}

