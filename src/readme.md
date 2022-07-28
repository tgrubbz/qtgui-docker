# QT GUI x Docker
Proof of concept project to build and run a QT GUI project in Docker (VS Code Dev Container).

The VS Code Dev Container includes a OpenSSH server with root (password root) login enabled.

This allows another PC to connect to the Docker container via SSH and forward the display.

If you are using windows, you will need an xserver to do so.

# Open the Dev Container in VS Code
1. Open `/src` in vscode
1. Press `F1` and select `Remote-Containers: Reopen in container`. This will build the dev container and open vscode inside.
1. Enter the `/src/gui/` folder and build the project using `qmake`. Optionally the project can be configured for debug via `qmake "CONFIG+=debug"`.
1. Make the executable: `make`
1. To see the GUI application, from the host machine, you can run: `ssh -A -Y -R root:6000:localhost:6000 root@localhost -p 2222 "DISPLAY=localhost:0 QT_QPA_PLATFORM=xcb XDG_RUNTIME_DIR=/run/user/0 /workspaces/qtgui-docker/src/gui/gui"`. The password is `root`
1. To see the QT Creator IDE and debug the application, from the host machine, run: `ssh -A -Y -R root:6000:localhost:6000 root@localhost -p 2222 "DISPLAY=localhost:0 QT_QPA_PLATFORM=xcb XDG_RUNTIME_DIR=/run/user/0 qtcreator"` and then open the gui.pro project file.
1. From there, assuming you built in debug mode using `qmake "CONFIG+=debug"`, you can debug the code.


