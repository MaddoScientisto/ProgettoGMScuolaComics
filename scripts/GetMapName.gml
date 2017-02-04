///GetMapName(x, y, dimension);
var mapX = argument0;
var mapY = argument1;
var mapDim = argument2;

var newMapName = mapDim + "_"+string(mapX)+"_"+string(mapY);
var newMap = asset_get_index(newMapName);
if (newMap == -1)
{
    newMap = 0;
}

return newMap;
