///move(collision_object)
var collision_object = argument0;

//Horizontal Collision
if(place_meeting(x+hspd,y,Solid)){
    while(!place_meeting(x+sign(hspd),y,Solid)){
        x += sign(hspd);
    }
    hspd = 0;
}

x += hspd;

//Verticalvo Collision
if(place_meeting(x,y+vspd,Solid)){
    while (!place_meeting(x,y+sign(vspd),Solid)){
        y  += sign(vspd);
    }
    vspd = 0;
}

y += vspd;
