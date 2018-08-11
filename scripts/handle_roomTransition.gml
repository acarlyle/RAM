///handle_roomTransition()

print("-> handle_roomTransition()");

var entrance = instance_place(x, y, par_entrance);

room_goto(entrance.m_targetRoom);
