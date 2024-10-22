 The `env` command in Linux is used to display, set, or remove environment variables. Here are some of its features along with examples:

### 1. Displaying Environment Variables
You can use `env` without any arguments to list all the current environment variables and their values.

```sh
$ env
XDG_SESSION_ID=23456
HOSTNAME=your-hostname
TERM=xterm
SHELL=/bin/bash
USER=your-username
LOGNAME=your-username
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
PWD=/home/your-username
LANG=en_US.UTF-8
...
```

### 2. Displaying a Specific Environment Variable
You can specify the name of an environment variable to display its value.

```sh
$ env | grep USER
USER=your-username
```

### 3. Setting an Environment Variable
You can set new environment variables using the `-u` flag followed by the variable name and its value.

```sh
$ env -u MY_VARIABLE
```

### 4. Displaying Only Specific Variables
You can specify multiple variable names to display their values in a single command.

```sh
$ env | grep USER | grep LOGNAME
USER=your-username
LOGNAME=your-username
```

### 5. Removing an Environment Variable
To remove an environment variable, you can use the `-u` flag followed by the variable name and then set it to a null value using the `--null` flag.

```sh
$ env -u MY_VARIABLE --null
```

### 6. Setting Multiple Environment Variables
You can set multiple environment variables at once using the `-i` flag followed by key=value pairs separated by spaces or newlines.

```sh
$ env -i NEW_VAR1=value1 NEW_VAR2=value2
```

### 7. Running a Command with Specific Environment Variables
You can run a command with specific environment variables set using the `-` flag followed by key=value pairs separated by spaces or newlines.

```sh
$ env -i USERNAME=your-username LOGNAME=your-logname bash -c 'echo $USERNAME; echo $LOGNAME'
your-username
your-logname
```

### 8. Displaying the Path Variable
You can display the value of the `PATH` environment variable using:

```sh
$ env | grep PATH
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

### 9. Setting a Custom Environment Variable
You can set a custom environment variable by specifying the name and value with `=` between them.

```sh
$ env USERNAME=your-username bash -c 'echo $USERNAME'
your-username
```

These examples cover some of the basic and advanced uses of the `env` command in Linux.

