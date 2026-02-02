#!/bin/bash
echo "all args passed to script : $@"
echo "no of vars passed to script $#"
echo "script name:$0"
echo "present directory :$pwd"
echo "who is running :$USER"
echo "home directory of the current user :$HOME"
echo "PID of the script :$$"
sleep 100&
echo "PID of recently executed  background process :$!"
echo "all args passed to script :$*"
