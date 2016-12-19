/// ReverseDirection(Directions direction);
//Arg0: direction
var dir = argument0;
if (dir == Directions.right)
{
 return Directions.left;
}
else if (dir == Directions.left)
{
 return Directions.right;
}
