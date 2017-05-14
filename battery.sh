#!/bin/sh
date
upower -i $(upower -e | grep 'BAT') | grep -E "state|time\ to\ empty|percentage"
