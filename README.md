# xxPortKnocker

### Description ###
A basic port knocking client implemented in different languages. It sends a single TCP or UDP SYN packet for the given sequence.

### Usage ###
Depends on the language, but most of the versions should work fine like this:
```sh
xxPortKnocker tcp/udp IP PORT1 PORT2 PORT3...
```
You can also use t or u for short.

### Installation ###
It is a standalone tool implemented as different scripts. Just download the one you want and execute it.

Easy oneliner for download of Bash version:
```sh
wget https://raw.githubusercontent.com/thereisnotime/xxPortKnocker/master/xxPortKnocker.sh && chmod +x `pwd`/xxPortKnocker.sh && bash xxPortKnocker.sh
``` 

### Dependencies ###
Linux: No
Windows: nc

### Compatability ###
Multiplatform

### Uninstall ###
Just remove the script.
