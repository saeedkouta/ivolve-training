### Create a Shell-Script that would ping every server in the subnet if ping succeeds statment "Server 192.168.1.s is up and running" will be displayed otherwise if it fails the statment "Server 192.168.1.s" is unreachable" will be displayed

1- create a file with .sh extension 

For Example :
```
vim script-lab3.sh
```
2- start with #!/bin/bash so that it recognizes it as a script
```
#!/bin/bash
```
 3- create a for loop that include the number of ips that available in your subnet
 in my case my subnet is 192.168.1.0/24 so the loop will be from 0 to 255
 ```
for s in {0..255}
```
s here is the variable of the number that will change 
then write the condetion of the loop
```
do
    if ping -c 1 -W 1 192.168.1.$s > /dev/null 2>&1
    then
        echo "Server 192.168.1.$s is up and running"
    else
        echo "Server 192.168.1.$s is unreachable"
    fi
done
```
that make the full script is :
```
#!/bin/bash

for s in {0..255}
do
    if ping -c 1 -W 1 192.168.1.$s > /dev/null 2>&1
    then
        echo "Server 192.168.1.$s is up and running"
    else
        echo "Server 192.168.1.$s is unreachable"
    fi
done
```
4- give the script file the pirmission to be executed
```
chmod +x script-lab3.sh
```
5- run the script
```
./script-lab3.sh
```
<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/60c948b4-c6af-4c21-bc16-16343e1c25c1" width="600" >
