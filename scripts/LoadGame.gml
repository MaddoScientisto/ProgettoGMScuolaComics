var roomSection = "Room";
var playerSection = "Player";
var bossSection = "Boss";
ini_open("savedata.ini");

GameManager.MapX = ini_read_real(roomSection, "RoomX", GameManager.MapX);
GameManager.MapY = ini_read_real(roomSection, "RoomY", GameManager.MapY);

GameManager.PlayerStartX = ini_read_real(roomSection, "PosX", GameManager.PlayerStartX);
GameManager.PlayerStartY = ini_read_real(roomSection, "PosY", GameManager.PlayerStartY);
GameManager.CurrentDimension = ini_read_real(roomSection, "CurrentDimension", GameManager.CurrentDimension); 

GameManager.GravityMode = ini_read_real(playerSection, "GravityMode", GameManager.GravityMode);
GameManager.HasHighJump = ini_read_real(playerSection, "HasHighJump", GameManager.HasHighJump);
GameManager.MaxHealth = ini_read_real(playerSection, "MaxHealth", GameManager.MaxHealth);
GameManager.GunLevel = ini_read_real(playerSection, "GunLevel", GameManager.GunLevel);

GameManager.TreeDestroyed = ini_read_real(bossSection, "TreeDestroyed", GameManager.TreeDestroyed);

ds_map_read(GameManager.HealthPickups, ini_read_string(playerSection, "CollectedHealth", ds_map_write(GameManager.HealthPickups)));

GameManager.BossDefeated = ini_read_real(bossSection, "BossDefeated", GameManager.BossDefeated);

ini_close();
