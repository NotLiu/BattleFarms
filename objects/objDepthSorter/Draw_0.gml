/// @description Insert description here
// You can write your code in this editor
var depthgrid = ds_depthgrid;
var inst_num = instance_number(par_depth);
ds_grid_resize(depthgrid, 2, inst_num);

//add instance info to grid
var yy = 0;
with(par_depth){	
	depthgrid[#	0, yy] = id;
	depthgrid[# 1, yy] = y;
	yy++;
}

//sort grid in ascending order

ds_grid_sort(depthgrid,1,true);

//loop through grid and draw
var inst;
yy = 0; repeat(inst_num){
	//pull id
	inst = depthgrid[# 1, yy];
	//get instance draw self
	with(inst){
		event_perform(ev_draw, 0); //use objects own draw event	
	}	
	yy++;
}
