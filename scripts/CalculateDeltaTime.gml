
var desired_fps = argument0;

expected_delta_time = 1 / desired_fps * 1000000; //In microseconds
delta = expected_delta_time / delta_time; //Turn this into a ratio


global.DeltaTime = delta;
return delta;
