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
else if (dir == Directions.dimension)
{
    if (GameManager.CurrentDimension == "room")
        GameManager.CurrentDimension = "past";
    else
        GameManager.CurrentDimension = "room";
        
        GameManager.PlayerStartX = Player.x;
        GameManager.PlayerStartY = Player.y;
}

UpdateManager();

var newMap = GetMapName(GameManager.MapX, GameManager.MapY, GameManager.CurrentDimension);

// todo: controllo di esistenza
room_goto(newMap); // todo: non funziona in html5, conviene fare una tabella di corrispondenza

