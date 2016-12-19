/// MoveObject(int speed, Directions direction, bool handleCollisions)
// Argument0: speed (int)
// Argument1: direction (Directions)
// Argument2: handleCollisions (bool)

var movementSpeed = argument0;
var movementDirection = argument1;
var handleCollisions = argument2;

var xspd = 0;
var yspd = 0;

if (movementDirection == Directions.up) {
    if (handleCollisions){
       //if (!collision_rectangle(x,y,x+16,y-movementSpeed,SolidObject,false,true))
       if (!place_meeting(x,y-movementSpeed,SolidObject))    
        y-= movementSpeed;
        else
        {
            //HugWall(0,-movementSpeed);        
        }
    }
    else
    y-=movementSpeed;
}
else if (movementDirection == Directions.down) {
     if (handleCollisions){
        //if (!collision_rectangle(x,y,x+16,y+movementSpeed,SolidObject,false,true))
        if (!place_meeting(x,y+movementSpeed,SolidObject))    
        y+= movementSpeed;   
        else
        {
            //HugWall(0,movementSpeed);        
        }   
    }
    else    
    y+=movementSpeed;
}
else if (movementDirection == Directions.right) {
    if (handleCollisions){
       //if (!collision_rectangle(x,y,x+movementSpeed,y+16,SolidObject,false,true))
       if (!place_meeting(x+movementSpeed,y,SolidObject))    
        x+= movementSpeed; 
        else
        {
            //HugWall(movementSpeed+16,0);        
        }     
    }
    else
    x+= movementSpeed;
}
else if (movementDirection == Directions.left) {
    if (handleCollisions){
       //if (!collision_rectangle(x,y,x-movementSpeed,y+16,SolidObject,false,true))
       if (!place_meeting(x-movementSpeed,y,SolidObject))    
        x-= movementSpeed;   
        else
        {
            //HugWall(movementSpeed,0);        
        }   
    }
    else
    x-=movementSpeed;
}
