///player_falling()

if (place_meeting(x, y+1, par_collisionTile)){
    m_state = player_idle;
}
else{
    y+=1;
}
