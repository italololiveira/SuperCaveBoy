///state_idle_bat
image_index = spr_enemy_bat_idle

//look for player

if(instance_exists(Player)){
    var dis = point_distance(x,y,Player.x,Player.y)
}

if(dis < sight){
    state = state_chase_bat
}
