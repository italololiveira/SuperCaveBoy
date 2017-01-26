//state_spider_idle
if(instance_exists(Player)){

    var dis = distance_to_object(Player);
    if(dis < sight && alarm[0] <= 0){
        image_speed = 0.5
        
        //make sure is facing right direction
        if(Player.x!=x){
            image_xscale = sign(Player.x-x);
        }
    }

}

