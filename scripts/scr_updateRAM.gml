///scr_updateRAM

//ds_map_destroy(obj_player.m_RAMMap);
//obj_player.m_RAMMap = ds_map_create();

//ds_map_clear(obj_player.m_RAMMap);

print("UPDATE RAM Map before:");

for (var i = 0; i < ds_map_size(obj_player.m_RAMMap); i++){
    if (obj_player.m_RAMMap[? i]){
        print("Item: " + string(object_get_name(obj_player.m_RAMMap[? i])));
    }
    else{
        print("Item (no item): " + string((obj_player.m_RAMMap[? i])));
    }
}
print("End UPDATE RAM Map Before");

for(var block = 0; block < ds_list_size(obj_player.m_itemList); block++){
    var item = obj_player.m_itemList[| block];
    print(string(object_get_name(item.object_index)));
    obj_player.m_RAMMap[? block] = item.object_index; 
}

print("UPDATE RAM Map now:");

for (var i = 0; i < ds_map_size(obj_player.m_RAMMap); i++){
    if (obj_player.m_RAMMap[? i] != ""){
        print("Item: " + string(object_get_name(obj_player.m_RAMMap[? i])));
    }
    else{
        print("Item (no item): " + string((obj_player.m_RAMMap[? i])));
    }
}
print("End UPDATE RAM Map");
print("Player has this many items now: " + string(obj_player.m_numItems));
