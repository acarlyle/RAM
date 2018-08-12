///get_input()

global.key_left = keyboard_check(vk_left); //move left
global.key_right = keyboard_check(vk_right); //move right
global.key_up = keyboard_check(vk_up); //enter doorways
global.key_space = keyboard_check_pressed(vk_space); //jump
global.key_z = keyboard_check_released(ord('Z')); //interact
global.key_spaceHeld = keyboard_check(vk_space);
