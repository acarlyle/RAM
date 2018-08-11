///player_move

//check if you can move
var move = global.key_left + global.key_right;
if (global.key_left) move *= -1; // change directional speed to left

//flip sprite to match direction
if (move != 0) image_xscale = move;

m_hspd = move * m_moveSpeed;
if (m_vspd < 10) m_vspd += m_grav;

//Jump -- If touching the ground, 
if (place_meeting(x, y+1, par_collisionTile)){
    m_jumps = m_jumpsMax;
}
else{
    if (m_jumps == m_jumpsMax) m_jumps -=1; 
}

if (global.key_space) && (m_jumps > 0){
    m_jumps -= 1;
    m_vspd = -m_jumpSpeed;
}

if (m_vspd < 0) && (!global.key_spaceHeld) m_vspd = max(m_vspd, 0);
//if (m_vspd < 0) && (!m_spaceBarHeld) m_vspd = max(m_vspd, -m_jumpSpeed/2);  //less frame perfect precision ... 

var hspdFinal = m_hspd;

if (move) print("hspdFinal: " + string(hspdFinal));

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
