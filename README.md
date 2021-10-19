## Installation
The quickest method to install the script is to run:

	$ curl https://raw.githubusercontent.com/Will-Hoey/todo-finder/main/todof > ~/.local/bin/todof

and make sure the script is an executable with

	$ chmod 700 ~/.local/bin/todof


## Alternative Installation

In order to install and run this script, run `git clone git:github.com:Will-Hoey/todo-finder`

Once you have installed it you can run this like any other script 

	$ bash /path/to/script/todo_finder.sh


## Warning

Note that this will run the script in the current working directory. This means that if you run it in `/home` or a directory with a large number of subfolders, it WILL output everything.


## Setting an alias

A better method for running this script is to create an alias. The method in which you setup an alias will vary depending on what shell you are using.

Bash:

	$ alias_name="bash /path/to/script/todo_finder.sh"


Fish:

	 alias -s alias_name="bash /path/to/script/todo_finder.sh"

