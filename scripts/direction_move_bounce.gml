///direction_move_bounce(collision_object)
var collision_object = argument0;

//Horizontal Collision
if(place_meeting(x+hspd,y,Solid)){
    while(!place_meeting(x+sign(hspd),y,Solid)){
        x += sign(hspd);
    }
    hspd = -hspd/2;
}

x += hspd;

//Verticalvo Collision
if(place_meeting(x,y+vspd,Solid)){
    while (!place_meeting(x,y+sign(vspd),Solid)){
        y  += sign(vspd);
    }
    vspd = -vspd/2;
    if(abs(vspd)<2) vspd = 0;
}

y += vspd;
