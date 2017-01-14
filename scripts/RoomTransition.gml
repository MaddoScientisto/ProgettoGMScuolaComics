// arg0 = direction

var dir = argument0;

if (dir == Directions.down)
{
    GameManager.MapY += 1;
    GameManager.PlayerStartY = 16;
    GameManager.PlayerStartX = Player.x;
}
else if (dir == Directions.right) {
    GameManager.MapX += 1;
    GameManager.PlayerStartX = 1;
    GameManager.PlayerStartY = Player.y;
}
else if (dir == Directions.left) {
    GameManager.MapX -= 1;
    GameManager.PlayerStartX = room_width - 16;
    GameManager.PlayerStartY = Player.y;
}
else if (dir == Directions.up) {
    GameManager.MapY -= 1;
    GameManager.PlayerStartY = room_height - 16;
    GameManager.PlayerStartX = Player.x;
}

UpdateManager();

var newMapName = "room_"+string(GameManager.MapX)+"_"+string(GameManager.MapY);
var newMap = asset_get_index(newMapName);
if (newMap == -1)
{
    newMap = 0;
}
// todo: controllo di esistenza
//room_goto(GetRoomNumber(newMapName));
room_goto(newMap); // todo: non funziona in html5, conviene fare una tabella di corrispondenza

