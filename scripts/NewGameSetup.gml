GameManager.MapX = 0;
GameManager.MapY = 0;

GameManager.PlayerStartX = 32;
GameManager.PlayerStartY = 32;

GameManager.GravityMode = true;
GameManager.PlayerVspeed = 0;

GameManager.HasHighJump = false;

GameManager.Health = 3;
GameManager.MaxHealth = 3;

GameManager.GunLevel = 0;

GameManager.BossDefeated = false;

GameManager.CurrentDimension = "room";

//GameManager.HealthPickups[99] = 0;
//InitArray(GameManager.HealthPickups,99);
ds_map_clear(GameManager.HealthPickups);

audio_stop_all();
//audio_play_sound(music,0,true);
