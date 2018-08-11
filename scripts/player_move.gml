///player_move

var move = -global.key_left + global.key_right; //check if you can move
if (move != 0) image_xscale = move; //flips sprite to match move direction
m_hspd = move * m_moveSpeed;
if (m_vspd < 10) m_vspd += m_grav;

//Jump -- If touching the ground, 
if (place_meeting(x, y+1, par_collisionTile)){ m_jumps = m_jumpsMax; }
else{ if (m_jumps == m_jumpsMax) m_jumps -=1; }

if (global.key_space) && (m_jumps > 0){
    m_jumps -= 1;
    m_vspd = -m_jumpSpeed;
    print("Jumped!");
    audio_play_sound(snd_jump, 10, false);
}

if (m_vspd < 0) && (!global.key_spaceHeld) m_vspd = max(m_vspd, 0);
var hspdFinal = m_hspd;

//Horizontal Collision
if (place_meeting(x+hspdFinal, y, par_collisionTile))
{
    while(!place_meeting(x+sign(hspdFinal), y, par_collisionTile))
    {
        x += sign(hspdFinal);
    }
    hspdFinal = 0;
    m_hspd = 0;
}
if (m_canMove){
    x += hspdFinal;
}
    
//Vertical Collision
if (place_meeting(x, y+m_vspd, par_collisionTile))
{
    while(!place_meeting(x, y+sign(m_vspd), par_collisionTile))
    {
        y += sign(m_vspd);
    }
    m_vspd = 0;
}
y += m_vspd;

//check for room transition
if (!move && global.key_up && place_meeting(x, y, par_entrance)) handle_roomTransition();
