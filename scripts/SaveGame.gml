///SaveGame(x,y,room);

var startX = argument0;
var startY = argument1;

var roomSection = "Room";
var playerSection = "Player";
var bossSection = "Boss";

UpdateManager();

ini_open("savedata.ini");
ini_write_real(roomSection, "RoomX", GameManager.MapX);
ini_write_real(roomSection, "RoomY", GameManager.MapY);

ini_write_real(roomSection, "PosX", startX);
ini_write_real(roomSection, "PosY", startY);
ini_write_string(roomSection, "CurrentDimension", GameManager.CurrentDimension);

ini_write_real(playerSection, "GravityMode", GameManager.GravityMode);
ini_write_real(playerSection, "HasHighJump", GameManager.HasHighJump);
ini_write_real(playerSection, "MaxHealth", GameManager.MaxHealth);
ini_write_real(playerSection, "GunLevel", GameManager.GunLevel);
ini_write_real(bossSection, "TreeDestroyed", GameManager.TreeDestroyed);
ini_write_string(playerSection, "CollectedHealth", ds_map_write(GameManager.HealthPickups));

ini_write_real(bossSection, "BossDefeated", GameManager.BossDefeated);
ini_write_real(bossSection, "BossDefeated2", GameManager.BossDefeated2);

ini_close();
