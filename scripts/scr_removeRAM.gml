///scr_removeRAM(par_object obj)

var obj = argument0;

print("Remove RAM of: " + string(object_get_name(obj.object_index)));

obj_player.m_numItems--;
obj_player.m_RAMMap[? obj.m_spotInRAM] = "";
ds_list_delete(obj_player.m_itemList, ds_list_find_index(obj_player.m_itemList, obj));

print("Removed RAM of: " + string(object_get_name(obj.object_index)));

clear_playerRAM(obj_player);
scr_updateRAM();
