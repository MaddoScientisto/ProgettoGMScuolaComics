//application_surface_draw_enable(false);
//160x144
global.DeltaTime = 0;
var scale = argument0;
var sizeX = BaseResolutionX*scale;
var sizeY = BaseResolutionY*scale;
window_set_size(sizeX, sizeY);
texture_set_interpolation(false);
CalculateDeltaTime(TargetFramerate);

global.MonitorW=display_get_width();
global.MonitorH=display_get_height();

global.Xoffset=(global.MonitorW/2)-sizeX/2;
global.Yoffset=(global.MonitorH/2)-sizeY/2;
window_set_position(global.Xoffset, global.Yoffset);
display_set_gui_size(BaseResolutionX, BaseResolutionY);
//surface_resize(application_surface,sizeX,sizeY);
//global.Xoffset=(global.MonitorW-sizeX)/2;
//global.Yoffset=(global.MonitorH-sizeY)/2;

// Trova il primo gamepad

