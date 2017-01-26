///state_chase_bat
if(instance_exists(Player)){
    var dir = point_direction(x,y,Player.x,Player.y);
    hspd = lengthdir_x(spd,dir);
    vspd = lengthdir_y(spd,dir);
    
    //change to fly sprite
    sprite_index = spr_enemy_bat_fly;
    
    //face the right direction
    if(hspd!=0) image_xscale= sign(hspd);
    
    //move
    move(Solid);
    
}
