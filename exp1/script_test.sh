#!/bin/bash
# Script of testing

#gcc -o foo test.c -g -finstrument-functions
#chmod +x foo
#nm foo > mapping.txt

lttng create foo
lttng enable-event -u -a
lttng add-context -u -t vpid -t vtid -t procname
lttng start

LD_PRELOAD=/usr/lib/i386-linux-gnu/liblttng-ust-cyg-profile.so ./main

lttng stop
lttng destroy
#cd /home/frank/lttng-traces/
#clear

#ls
