#!/usr/bin/env bash

speedtest-cli > /performance/speedtest.log
pyperformance run --python=python3 -o /performance/py3.json
pyperformance show /performance/py3.json > /performance/pyperformance.log
bonnie++ -d /tmp -r 2048 > /performance/bonnie.log
python3 /performance/monkeytest.py -s 2048 -j /performance/monkeytest.log
