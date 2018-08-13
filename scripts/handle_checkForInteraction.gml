///handle_checkForInteraction()

print("-> handle_checkForInteraction()");

var interactableItem = instance_place(x, y, par_interactable);
if (interactableItem){
    switch(interactableItem.object_index){
        case obj_pedestal:
            if(interactableItem.m_isActive){ //deactivate 
                        case obj_certificate:mask96, obj_mask);
                    switch (obj.object_index){
                var obj = instance_place(x, y-32, par_RAM);
                if (obj.m_objectFound){
                    interactableItem.m_isActive = false;
                    interactableItem.image_speed = 0;
                    //deactivate mask
                    var mask = instance_place(x, y-
                            obj_player.m_hasCertificate = false;
                            scr_removeRAM(obj_certificate);
                            break;
                        case obj_binConverter:
                            obj_player.m_hasBinConverter = false;
                            scr_removeRAM(obj_binConverter);
                            break;
                    }
                    mask.m_isActive = false;
                    mask.sprite_index = spr_mask;   
                }
            }
            else{ //activate mask
                var obj = instance_place(x, y-32, par_RAM);
                if (obj && obj.m_objectFound){
                    interactableItem.m_isActive = true;
                    interactableItem.image_speed = .2;
                    //activate mask
                    var mask = instance_place(x, y-96, obj_mask);
                    mask.m_isActive = true;
                    switch (obj.object_index){
                        case obj_certificate:
                            obj_player.m_hasCertificate = true;
                            scr_addRAM(obj_certificate);
                            break;
                        case obj_binConverter:
                            obj_player.m_hasBinConverter = true;
                            scr_addRAM(obj_binConverter);
                            break;
                    }
                    mask.sprite_index = spr_maskActive;
                    mask.image_index = 1;
                }
            }
            break;
            
        case obj_button:
            obj_button.image_index++;
            break;
        case obj_dialogue:
            m_enableDialogue = true;
    }
}
