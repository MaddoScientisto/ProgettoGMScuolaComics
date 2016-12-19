//application_surface_draw_enable(false);
//160x144
global.DeltaTime = 0;
var scale = GameScale;
var sizeX = BaseResolutionX*scale;
var sizeY = BaseResolutionY*scale;
window_set_size(sizeX, sizeY);
texture_set_interpolation(false);
CalculateDeltaTime(TargetFramerate);

global.MonitorW=display_get_width();
global.MonitorH=display_get_height();

global.Xoffset=(global.MonitorW-BaseResolutionX)/scale;
global.Yoffset=(global.MonitorH-BaseResolutionY)/scale;
window_set_position(global.Xoffset, global.Yoffset);
//surface_resize(application_surface,sizeX,sizeY);
//global.Xoffset=(global.MonitorW-sizeX)/2;
//global.Yoffset=(global.MonitorH-sizeY)/2;
