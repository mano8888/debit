#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.credit$i container.."
    sleep 1
    docker run --name www.credit$i -d -it --rm nageshvkn/node3 /bin/bash
    echo "www.credit$i container has been created!"
	echo "=============================="
done
