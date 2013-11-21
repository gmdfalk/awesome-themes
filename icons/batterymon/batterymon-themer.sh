#!/bin/sh
#simple batterymon themer for icon theme
#based on wicd-themer.sh
#version .1
# basically it just copies the battery icons to the folder that 
#batterymon uses for themes. Use the theme by calling batterymon 
#with the --theme option.
###########################
#check for root
if [ `id -u` != "0" ]; then
    echo "Must be root!";
    exit 1
fi

echo "Checking required files"
FILES=(battery_1.png battery_2.png battery_3.png battery_4.png battery_5.png battery_charging_1.png battery_charging_2.png battery_charging_3.png battery_charging_4.png battery_charging_5.png battery_charging_empty.png battery_charging_full.png battery_empty.png battery_full.png)
FOUND=1
for f in ${FILES[@]}
do
    if [ -r $f ]; then
        echo "  [found] $f"
    else
        echo "  [missing] $f"
        FOUND=0
    fi
done

if [ $FOUND == 1 ]; then

    echo "Everything looks fine"
    echo ""
    read -sp "Press ENTER to continue"
	
	echo ""
	echo "Name of theme: "; read NAME
	mkdir -p /usr/share/batterymon/icons/$NAME
	
	echo "Copying files..."
	cp -i ./*.png /usr/share/batterymon/icons/$NAME
	echo ""
	echo "Done."
	echo "To use your new theme, simply call batterymon"
	echo "with the -t THEME flag. Put it in your autostart.sh!"
	echo ""
else
	echo "Didn't find all required files. Check the output above. Aborting"
	exit 1
fi
