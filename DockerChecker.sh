#!/bin/bash

Check()
{
	if [ $(cat /proc/1/cgroup | grep -c "docker") -gt 1 ];
	then 
		echo "\n\033[31mThis is a Docker container...\033[0m"; 

	elif [ $(cat /proc/1/cpuset | grep -c "docker") -gt 1 ];
	then
		echo "\n\033[31mThis is a Docker container...\033[0m"; 

	elif [  -f "/.dockerenv" ];
	then
		echo "\n\033[31mThis is a Docker container...\033[0m";

	else
		echo "\n\033[32mThis is not a Docker container...\033[0m";
	fi

	echo "\n\033[34mYou can also have a check in /proc/1/sched ^_^\033[0m\n"
}

Check