/// @description Insert description here
// You can write your code in this editor


if(keyboard_check(ord("W"))){
	if(y_vel == 0){
		y_vel -= 5;	
	}
	
	if(y_vel > -y_max){
			y_vel -= spd;
	}
}

if(keyboard_check(ord("S"))){
	if(y_vel == 0){
		y_vel += 5;	
	}
	
	if(y_vel < y_max){
			y_vel += spd;
	}
}

if(keyboard_check(ord("D"))){
	if(x_vel == 0){
		x_vel += 5;	
	}
	
	if(x_vel < x_max){
			x_vel += spd;
	}
}

if(keyboard_check(ord("A"))){
	if(x_vel == 0){
		x_vel -= 5;	
	}
	
	if(x_vel > -x_max){
			x_vel -= spd;
	}
}

x += x_vel;
y += y_vel;

if(keyboard_check(vk_nokey)){
		if(x_vel<0){ //decelerate x
			x_vel += decel;	
		}
		else{
			if(x_vel > 0){
				x_vel -= decel;
			}
		}
		
		if(x_vel < sign(x_vel)*decel){
			x_vel = 0;	
		}
		
		if(y_vel<0){ //decelerate y
			y_vel += decel;	
		}
		else{
			if(y_vel > 0){
				y_vel -= decel;
			}
		}
		
		if(y_vel < sign(y_vel)*decel){
			y_vel = 0;	
		}
}