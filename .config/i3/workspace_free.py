#!/usr/bin/env python3
from i3ipc import Connection
import sys

i3 = Connection()
tree = i3.get_tree()
focused = tree.find_focused()
workspace = focused.workspace()
if focused.name == workspace.name:
    sys.exit(0)
else:
    sys.exit(1)

