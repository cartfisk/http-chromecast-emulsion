#!/usr/bin/env bash
killall python
source env/bin/activate
python channel.py play >> playlog.txt 2>&1 &
python channel.py fade >> fadelog.txt 2>&1 &
python server.py >> log.txt 2>&1 &