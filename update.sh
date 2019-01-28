#!/bin/bash
./gen_README.sh
git commit -am 'auto commit from math.computer' 

git push origin master && \
	echo "Successfully updated and synced public repository."

