#!/bin/bash
echo ""
echo "Welcome to the data manager tool! Here is what you can do:"
echo "load -> load saved data and state into the database"
echo "save -> save data and state of database"
echo ""
read -p "Would you like to [load/save] database? " action

if [ "$action" = "load" ]; then
	docker run --rm --volumes-from club-website_db_1 -v $(pwd)/datadump:/datadump ubuntu bash -c "cd /var/lib/postgresql/data && tar xvf /datadump/devdump.tar --strip=1" > /dev/null
	echo "load"
	exit 0
elif [ "$action" = "save" ]; then
	docker run --rm --volumes-from club-website_db_1 -v $(pwd)/datadump:/datadump ubuntu bash -c "cd /var/lib/postgresql/data && tar cvf /datadump/devdump.tar ." > /dev/null
	echo "Data has been saved in the \"datadump\" directory!"
	exit 0
else
	echo "Incorrect response. Enter either \"load\" or \"save\"."
	exit 1
fi

