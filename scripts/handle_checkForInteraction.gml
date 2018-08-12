///handle_checkForInteraction()

print("-> handle_checkForInteraction()");

var interactableItem = instance_place(x, y, par_interactable);
if (interactableItem){
    switch(interactableItem.object_index){
        case obj_pedestal:
            if(interactableItem.m_isActive){
                interactableItem.m_isActive = false;
                interactableItem.image_speed = 0;
                //deactivate mask
                var mask = instance_place(x, y-96, obj_mask);
                mask.m_isActive = false;
                mask.sprite_index = spr_mask;
            }
            else{
                interactableItem.m_isActive = true;
                interactableItem.image_speed = .2;
                //activate mask
                var mask = instance_place(x, y-96, obj_mask);
                mask.m_isActive = true;
                mask.sprite_index = spr_maskActive;
                mask.image_index = 1;
            }
            break;
        case obj_button:
            break;
    }
}
