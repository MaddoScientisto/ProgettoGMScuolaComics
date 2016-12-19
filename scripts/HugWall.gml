/// HugWall(float xspd, float yspd, Object object);

var xspd = argument0;
var yspd = argument1;
dist = point_distance(0,0,xspd,yspd);
            if dist > 0{
            move_contact_solid(point_direction(0,0,xspd,yspd),dist)
}
