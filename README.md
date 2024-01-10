# Xenonstack-round1

This is assignment for Xenonstack internship 

There is a customer who came to you with a problem to have a custom linux
command for his operations. Your task is to understand the problem and create a linux
command via bash script as per the instructions.
Command name - internsctl
Command version - v0.1.0

Flowchart:

![flow chart](https://github.com/Yashwanthreddy711/xenonstack-round1/assets/99392805/e3d00439-3001-44fc-a5cd-d291d7d1713c)



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


Part1 
**
I want to get cpu information of my server through the following command:
$ internsctl cpu getinfo
Expected Output -
I want similar output as we get from lscpu command
---**
I want to get memory information of my server through the following command:
$ internsctl memory getinfo
Expected Output
I want similar output as we get from free command



Part2 

I want to create a new user on my server through the following command:

$ internsctl user create <username>

 Note - above command should create user who can login to linux system and access his home
directory

I want to list all the regular users present on my server through the following command:
ternsctl user list

If want to list all the users with sudo permissions on my server through the following command:
$ internsctl user list --sudo-only

Output for both the parts:
![4](https://github.com/Yashwanthreddy711/xenonstack-round1/assets/99392805/ac86e309-6628-4fab-8653-dedb6a8b08a7)




Part3 

By executing below command I want to get some information about a file
$ internsctl file getinfo <file-name>
Expected Output [make sure to have the output in following format only]
xenonstack@xsd-034:~$ internsctl file getinfo hello.txt
File: hellot.txt
Access: -rw-r--r--

In case I want only specific information then I must have a provision to use options
$ internsctl file getinfo [options] <file-name>
--size, -s to print size
--permissions, -p print file permissions
--owner, o print file owner
--last-modified, m
Expected Output with options


If I want to obtain the size of the specified file only, I should be able to use the following
command:
xenonstack@xsd-034:~$ internsctl file getinfo --size hello.txt

If I want to obtain the permissions of the specified file only, I should be able to use the following
command:
xenonstack@xsd-034:~$ internsctl file getinfo --permissions hello.txt
-rw-r--r--

If I want to obtain the owner of the specified file only, I should be able to use the following
command:
xenonstack@xsd-034:~$ internsctl file getinfo --owner hello.txt

If I want to obtain the last modified time of the specified file only, I should be able to use the
following command:
xenonstack@xsd-034:~$ internsctl file getinfo --last-modified hello.txt

Outputs for above queries:

![5](https://github.com/Yashwanthreddy711/xenonstack-round1/assets/99392805/87b75ce5-b92d-4ffa-bb77-d901f4fd7cb1)

![3](https://github.com/Yashwanthreddy711/xenonstack-round1/assets/99392805/d284becc-eda2-49a0-9ecb-07cecfd8908b)

![1](https://github.com/Yashwanthreddy711/xenonstack-round1/assets/99392805/7d83db6f-1f85-43eb-84ed-76c4f4075879)

![6](https://github.com/Yashwanthreddy711/xenonstack-round1/assets/99392805/b6aba380-97bb-4362-b572-2de6626c1cda)


