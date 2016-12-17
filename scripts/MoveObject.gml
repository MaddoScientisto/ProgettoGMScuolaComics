/// MoveObject()
// Argument0: speed (int)
// Argument1: direction (Directions)
// Argument1: handleCollisions (bool)

var movementSpeed = argument0;
var movementDirection = argument1;
var handleCollisions = argument2;

if (movementDirection == Directions.up && (handleCollisions &&  place_free(x,y-movementSpeed))) {    
    y-=movementSpeed;
}
else
if (movementDirection == Directions.down && (handleCollisions &&  place_free(x,y+movementSpeed))) {
    y+=movementSpeed;
}
else if (movementDirection == Directions.right && (handleCollisions &&  place_free(x+movementSpeed,y))) {
    x+= movementSpeed;
}
else if (movementDirection == Directions.left && (handleCollisions &&  place_free(x-movementSpeed,y))) {
    x-=movementSpeed;
}
