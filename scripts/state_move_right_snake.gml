///state_move_right_snake
var wall_at_right = place_meeting(x+1,y,Solid);
var ledge_at_right = !position_meeting(bbox_right+1,bbox_bottom+1,Solid);

if (wall_at_right || ledge_at_right){
    state = state_move_left_snake;
}


// Control the snake sprite
image_xscale = 1;

// Move the snake
x += 1;
