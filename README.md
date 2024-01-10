# xenonstack-round1

This is assignment for Xenonstack internship 

There is a customer who came to you with a problem to have a custom linux
command for his operations. Your task is to understand the problem and create a linux
command via bash script as per the instructions.
Command name - internsctl
Command version - v0.1.0


Section A
1. I want a manual page of command so that I can see the full documentation of the command.
For example if you execute the command
man ls
as output we get the doc and usage guidelines. Similarly if I execute man internsctl I want
to see the manual of my command.
2. Each linux command has an option --help which helps the end user to understand the use
cases via examples. Similarly if I execute internsctl --help it should provide me the
necessary help
3. I want to see version of my command by executing
internsctl --version

Output:
![2](https://github.com/Yashwanthreddy711/xenonstack-round1/assets/99392805/c9466396-429b-4b82-938b-6c25c796f24b)

Section B
I want to execute the following command for -
Part1 | Level Easy
I want to get cpu information of my server through the following command:
$ internsctl cpu getinfo
Expected Output -
I want similar output as we get from lscpu command
---
I want to get memory information of my server through the following command:
$ internsctl memory getinfo
Expected Output
I want similar output as we get from free command

Output:
![4](https://github.com/Yashwanthreddy711/xenonstack-round1/assets/99392805/ac86e309-6628-4fab-8653-dedb6a8b08a7)



