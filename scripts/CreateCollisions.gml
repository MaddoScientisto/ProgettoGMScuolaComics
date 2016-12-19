/// CreateCollisions(int snapX, int snapY, int solidLayer, Object obj)
///loop through room and find tile of -5 depth and create a collision object.
// Arg0: snap X
// Arg1: snap y
// Arg2: solid layer

var snapX = argument0;
var snapY = argument1;
var solidLayer = argument2;
var obj = argument3;

for (var xx = 0; xx<=room_width;xx+=snapX)
for (var yy = 0; yy<=room_height;yy+=snapY)
    {
    if (tile_layer_find(solidLayer,xx,yy))
        {
        instance_create(xx,yy,obj);
        }
    }
   
