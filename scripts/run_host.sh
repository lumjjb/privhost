#!/bin/bash
PID=1
nsenter --ipc=${HOST_ROOT}/proc/$PID/ns/ipc \
        --mount=${HOST_ROOT}/proc/$PID/ns/mnt \
        --net=${HOST_ROOT}/proc/$PID/ns/net \
        --uts=${HOST_ROOT}/proc/$PID/ns/uts 
