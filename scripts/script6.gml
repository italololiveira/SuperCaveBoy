///state_move_right_snake
var wall_at_left = place_meeting(x-1,y,Solid);
var ledge_at_left = !position_meeting(bbox_right-1,bbox_bottom+1,Solid);

if (wall_at_left || ledge_at_left){
    state = state_move_right_snake;
}


// Control the snake sprite
image_xscale = -1;

// Move the snake
x += -1;
