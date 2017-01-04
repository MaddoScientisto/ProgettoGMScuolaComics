/// IsKeyPressed()
// Argument 0: pressed Key (Keys enum)
var key = argument0;
if (key == Keys.up)
{
    return (keyboard_check_released(vk_up) || keyboard_check_released(ord('W')));
}
else if (key == Keys.down)
{
    return (keyboard_check_released(vk_down) || keyboard_check_released(ord('S')));
}
else if (key == Keys.right)
{
    return (keyboard_check_released(vk_right) || keyboard_check_released(ord('D')));
}
else if (key == Keys.left)
{
    return (keyboard_check_released(vk_left) || keyboard_check_released(ord('A')));
}
else if (key == Keys.action1)
{
    return (keyboard_check_released(ord('Z')));
}
else if (key == Keys.action2)
{
    return (keyboard_check_released(ord('X')));
}
else if (key == Keys.cancel)
{
    return (keyboard_check_released(ord('C')));
}
else if (key == Keys.pause)
{
    return (keyboard_check_released(vk_pause)); // todo: change
}
else if (key == Keys.esc)
{
    return (keyboard_check_released(vk_escape));
}
else
{
    return false;
}
