/// IsKeyPressed()
// Argument 0: pressed Key (Keys enum)
var key = argument0;
if (key == Keys.up)
{
    return (keyboard_check(vk_up) || keyboard_check(ord('W') /*|| 
    gamepad_button_check(0, gp_padu)*/ ));
}
else if (key == Keys.down)
{
    return (keyboard_check(vk_down) || keyboard_check(ord('S') /*|| 
    gamepad_button_check(0, gp_padd)*/));
}
else if (key == Keys.right)
{
    return (keyboard_check(vk_right) || keyboard_check(ord('D') /*|| 
    gamepad_button_check(1, gp_padr)*/));
}
else if (key == Keys.left)
{
    return (keyboard_check(vk_left) || keyboard_check(ord('A') /*|| 
    gamepad_button_check(0, gp_padl)*/));
}
else if (key == Keys.action1)
{
    return (keyboard_check_pressed(ord('Z')  /*|| 
    gamepad_button_check_pressed(0, gp_face1)*/));
}
else if (key == Keys.action2)
{
    return (keyboard_check_pressed(ord('X')));
}
else if (key == Keys.cancel)
{
    return (keyboard_check_pressed(ord('C')));
}
else if (key == Keys.pause)
{
    return (keyboard_check_pressed(vk_pause)); // todo: change
}
else if (key == Keys.esc)
{
    return (keyboard_check_pressed(vk_escape));
}
else
{
    return false;
}
