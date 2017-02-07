GameManager.MapX = 0;
GameManager.MapY = 0;

GameManager.PlayerStartX = 128-16;
GameManager.PlayerStartY = 64+32;

GameManager.GravityMode = true;
GameManager.PlayerVspeed = 0;

GameManager.CurrentDirection = Directions.left;

GameManager.HasHighJump = false;

GameManager.Health = 3;
GameManager.MaxHealth = 3;

GameManager.GunLevel = 0;

GameManager.BossDefeated = false;
GameManager.BossDefeated2 = false;

GameManager.CurrentDimension = "past";
GameManager.TreeDestroyed = false;
//GameManager.HealthPickups[99] = 0;
//InitArray(GameManager.HealthPickups,99);
ds_map_clear(GameManager.HealthPickups);

audio_stop_all();
//audio_play_sound(music,0,true);
