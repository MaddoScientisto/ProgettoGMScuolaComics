//GENERAL SURFACE STUFF
screen_x = 0;
screen_y = 0;
screen_w = BaseResolutionX;
screen_h = BaseResolutionY;
screen_scale_w = GameManager.SreenScale;
screen_scale_h = GameManager.SreenScale;
graphx=0

//EFFECT STUFF
GameManager.effect="none"/*Sets the type of effect on the screen at the moment. Their variables need to be set below. 
Effects: "none", "wave vertical", "wave horizontal"
*/

//For "wave horizontal"
part_num[1] = 900; //Amount of parts to the wave. it doesn't make a difference after you go over the width/height of the room
wave_width[1]=.2 //how far the wave goes out left and right
wave_height[1]=.9 //how long it takes the wave to go back and forth
part_thickness[1]=(room_height/part_num[1]) 
//Creating parts of the waves for "wave horizontal"
for (i = 0; i < part_num[1]; i += 1)
{
    part[1,i] = (room_width/part_num[1])*i;
}

//For "wave vertical"
part_num[2] = 900;
wave_width[2]=.2 //how far the wave goes out up and down
wave_height[2]=.9 
part_thickness[2]=(room_width/part_num[2]) 
//Creating parts of the waves for "wave vertical"
for (i = 0; i < part_num[2]; i += 1)
{
    part[2,i] = (room_height/part_num[2])*i;
}

// create a surface for the whole screen to be drawn on
//FOR EFFECT 'NONE'
screen[0,0] = surface_create(screen_w,screen_h);

//FOR WAVE EFFECTS
screen[1,0]= surface_create(screen_w,screen_h);
screen[1,1]= surface_create(screen_w,screen_h);

// this will destroy the screen object if surfaces are not supported on the graphics card, reverting to the viewport method
if screen = -1{instance_destroy();}
