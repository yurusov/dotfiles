#!/usr/bin/env python3
from i3ipc import Connection, ModeEvent

def write_to_file(message):
    with open("/tmp/binding_mode", "w") as file:
        file.write(message)



def on_event_change(i3,data):
    if  data.change == 'default':
        message = " "
    else:
        message = data.change
    write_to_file(message)

write_to_file(' ')    
i3 = Connection()
i3.on('mode', on_event_change)
i3.main()
