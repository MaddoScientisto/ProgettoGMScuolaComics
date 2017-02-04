//application_surface_draw_enable(false);
//160x144
global.DeltaTime = 0;
var scale = argument0;
GameManager.SreenScale = scale;
var sizeX = BaseResolutionX*scale;
var sizeY = BaseResolutionY*scale;
window_set_size(sizeX, sizeY);
texture_set_interpolation(false);
CalculateDeltaTime(TargetFramerate);

GameManager.MonitorW=display_get_width();
GameManager.MonitorH=display_get_height();

GameManager.Xoffset=(GameManager.MonitorW/2)-sizeX/2;
GameManager.Yoffset=(GameManager.MonitorH/2)-sizeY/2;
window_set_position(GameManager.Xoffset, GameManager.Yoffset);
display_set_gui_size(BaseResolutionX, BaseResolutionY);
//surface_resize(application_surface,sizeX,sizeY);
//global.Xoffset=(global.MonitorW-sizeX)/2;
//global.Yoffset=(global.MonitorH-sizeY)/2;

// Trova il primo gamepad

