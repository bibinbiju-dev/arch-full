# python setup for nvim

## Method 1

1. Create your project folder :[mkdir ~/folder_name]
2. cd into the folder
3. use the mise python 3.14.2 [change the python according to the project] : [~/.local/share/mise/installs/python/3.14.2/bin/python3.14 -m venv .venv
   ] {just to know this that if not mise use like this python3.11 -m venv .venv (change the python versions according to the needs of the projects ) }

4. Activate the venv by this cmd [source .venv/bin/activate]
5. Install pynvim for neovim plugins by the following cmd [ 1.pip install --upgrade pip 2. pip install pynvim]

6. Make lazyvim automatically use this python by putting this in ~/.config/nvim/after/plugin/python.lua or [just make an prightconfig.json file and make a file with

```json
{
  "venvPath": ".",
  "venv": ".venv"
}
```

]

1. Activate the the project venv each time you enter the project just by the source cmd [source .venv/bin/activate (do this inside the project folder)]

## Method 2

Create an json file in the project folder with this json code

```json
{
  "pythonPath": "/usr/bin/python3.13."
}
```

[list out the installed python versions viva ls /usr/bin/python*]

## Method 3

There is a better way to slove this than method 2

1. install python versions like python 3.9 3.11 etc through mise viva [mise install python@3.9 and
   set it as globally with cmd mise use -g python@3.9 or 3.11 to change python versions (it is easy and more effiecent )

   ]
   <!-- BUG: -->: There will be an issue if you use mise use -g python@3.9 it will be gollably on the system which is cause some issues with modules
   <!-- NOTE: -->: it is better to use mise use python@3.9 which version need in the project folder

2. Now set the prightconfig.json file with this way

```json
{
  "pythonPath": "/home/bibin/.local/share/mise/installs/python/3.9.25/bin/python"
}
```

change the versions accordingolly

[for listing out python installed through mise use mise list python ]

<!-- BUG: -->: the json methos will override by the mise use cmd better not use json
