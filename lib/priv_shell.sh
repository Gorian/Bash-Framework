#!/usr/bin/env bash
# we pass our pipe names as arguments. This lets a calling script know what pipes to interact with
pipe_input="$1"
pipe_output="$2"
# we check to see if our pipes exist. If not, we create them.
if [[ ! -p "$pipe_input" ]]; then
  mkfifo $pipe_input;
fi
if [[ ! -p "$pipe_output" ]]; then
	mkfifo $pipe_output;
fi
# we call our infinite loop. The loop waits for input from the input pipe
# executes it, and then directs the output to the output pipe
while true; do # we call an infinite loop. We can exit our loop using commands into our names pipe.
	read input < $pipe_input; # here we get our command from our named input pipe
	eval "${input}" > $pipe_output; # we run the commands and output to our output pipe
done
# even though we technically have an infinite loop, 
# we'll exit the loop and contine the program when
# "break" is sent to the input pipe, so here we will
# make sure that we exit when the loop is broken
exit 0
