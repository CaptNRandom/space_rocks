// @descrption spawn_off_camera
// arg obj
// arg number
function spawn_off_camera(obj,num){

	var xx,yy;

	var pad = 64;

	repeat(num){
		xx = random_range(0,room_width);
		yy = random_range(0,room_height);

		while( point_in_rectangle(xx,yy, global.cameraX - pad, global.cameraY-pad,
			global.cameraX+global.cameraWidth+pad, global.cameraY+global.cameraHeight+pad) ){
	
			xx = random_range(0,room_width);
			yy = random_range(0,room_height);
		}

		instance_create_layer(xx,yy,"Instances",obj);
	}
}