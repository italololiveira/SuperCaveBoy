///state_spider_jump

image_index = image_number-1;

//apply gravity

if(!place_meeting(x,y+1,Solid)){
    vspd+=grav;
} else {
    vspd = 0;

//use friction
apply_friction(acc);

//check for idle state
if(hspd == 0 && hspd == 0){
    state = state_spider_idle;
    alarm[0] = 15;
    image_speed = 0;
    image_index = 0;
    }
}

if(hspd != 0) image_xscale = sign(hspd);

horizontal_move_bounce(Solid);
