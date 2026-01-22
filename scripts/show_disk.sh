#Cálcul ocupació de disk de cada directori home.
#Data: 21/01/2026
#Version: 1.0
#Author: Pol García López
#!/bin/bash

for dir in $(ls /home)
  do
    du -chs "/home/$dir" 2> /dev/null
done
