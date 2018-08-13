///clear_playerRAM(obj_player player);

//sets values to ""

print("clear_playerRAM");

var player = argument0;

for (var i = 0; i < player.m_numRAMSlots; i++){
    player.m_RAMMap[? i] = "";
}
