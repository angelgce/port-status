
#!/bin/bash

for n in $(cat listaServidores.txt)
do
a=($(echo $n | tr ':' ' '))

open=`nmap -p ${a[1]} ${a[0]} | grep "$PORT" | grep open`
if [ -z "$open" ]; then
  echo "Server ${a[0]} Puerto ${a[1]} Problem"
else
  echo "Server ${a[0]} Puerto ${a[1]} OK"
fi
done


