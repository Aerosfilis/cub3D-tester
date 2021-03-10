#!/bin/bash

make -C $1 re
cp $1/cub3D .

for map in $(ls $2)
do
	echo -e "\n./cub3D $map \e[91m"
	./cub3D $2/$map
	echo -en "\e[39m"
done
