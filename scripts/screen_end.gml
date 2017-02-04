switch (GameManager.effect)
{

case "none": 
{
surface_set_target(screen[0,0])
break;
}

case "wave horizontal":
{
surface_set_target(screen[1,0])
break;
}

case "wave vertical":
{
surface_set_target(screen[1,0])
break;
}
}
