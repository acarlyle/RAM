///scr_addRAM(par_RAM obj)

var obj = argument0;

print("ADDRAM Map Before:");

for (var i = 0; i < ds_map_size(obj_player.m_RAMMap); i++){
    if (obj_player.m_RAMMap[? i] != ""){
        print("Item: " + string(object_get_name(obj_player.m_RAMMap[? i])));
    }
    else{
        print("Item (no item): " + string((obj_player.m_RAMMap[? i])));
    }
}
print("End ADDRAM Map Before");

print("add RAM: " + string(object_get_name(obj)));

ds_list_add(obj_player.m_itemList, obj);
obj.m_spotInRAM = obj_player.m_numItems;
obj_player.m_numItems++;
obj_player.m_RAMMap[? obj_player.m_numItems-1] = obj; 

print("ADDRAM Map now:");

for (var i = 0; i < ds_map_size(obj_player.m_RAMMap); i++){
    if (obj_player.m_RAMMap[? i] != ""){
        print("Item: " + string(object_get_name(obj_player.m_RAMMap[? i])));
    }
    else{
        print("Item (no item): " + string((obj_player.m_RAMMap[? i])));
    }
}
print("End ADDRAM Map now");
