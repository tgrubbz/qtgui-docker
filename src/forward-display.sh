ssh -A -Y -R root:6000:localhost:6000 root@localhost -p 2222 "DISPLAY=localhost:0 QT_QPA_PLATFORM=xcb XDG_RUNTIME_DIR=/run/user/0 /workspaces/x113/gui/gui"

ssh -A -Y -R root:6000:localhost:6000 root@localhost -p 2222 "DISPLAY=localhost:0 QT_QPA_PLATFORM=xcb XDG_RUNTIME_DIR=/run/user/0 qtcreator"