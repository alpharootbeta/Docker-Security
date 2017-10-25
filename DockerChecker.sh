#!/bin/bash

isDocker()
{
	if [ $(cat /proc/self/cgroup|grep -c "docker") -gt 1 ];
	then 
		echo -e "\033[31mThis is a Docker container\033[0m"; 
	elif [ $(cat /proc/self/cpuset|grep -c "docker") -gt 1 ];
	then 
		echo -e "\033[31mThis is a Docker container\033[0m"; 
	elif [  -f "/.dockerenv" ];
	then  
		echo -e "\033[31mThis is a Docker container\033[0m";
	else 
		echo -e "\033[34mThis is not a Docker container\033[0m";fi
}

isDocker