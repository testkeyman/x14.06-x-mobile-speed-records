#!/usr/bin/bash
# Снижаем уровень заряда батареи на 1% каждую секунду
GM="$HOME/genymotion/genymotion-shell -c"
$GM "battery setmode manual"
$GM "battery notcharging"
for i in {100..0}; do
    $GM "battery setlevel $i"
    sleep 1
done
