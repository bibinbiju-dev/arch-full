## python setup for nvim

1. Create your project folder :[mkdir ~/folder_name]
2. cd into the folder
3. use the mise python 3.14.2 [change the python according to the project] : [~/.local/share/mise/installs/python/3.14.2/bin/python3.14 -m venv .venv
   ] {just to know this that if not mise use like this python3.11 -m venv .venv (change the python versions according to the needs of the projects ) }

4. Activate the venv by this cmd [source .venv/bin/activate]
5. Install pynvim for neovim plugins by the following cmd [ 1.pip install --upgrade pip 2. pip install pynvim]

6. Make lazyvim automatically use this python by putting this in ~/.config/nvim/after/plugins/python.lua
7. Activate the the project venv each time you enter the project just by the source cmd [source .venv/bin/activate (do this inside the project folder)]
