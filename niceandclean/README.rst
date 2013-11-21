Install
=======
Install this awesome theme as normal. Place the nice-and-clean-theme directory
in your themes directory, such as ~/.config/awesome/themes, and update your 
rc.lua file::

    beautiful.init("path/to/themes/nice-and-clean-theme/theme.lua")

There is an optional conky component of this theme as well - the date/time and 
system info displays. Install conky from your distro's repositories, and then
start up conky with the configuration files from the included conky 
subdirectory::

    cd conky
    conky -c conkydate &
    conky -c conkyhr &
    conky -c conkymin &
    conky -c conkystats &

Make sure you change your location code in the conkystats config 
to get accurate weather reports. The location code uses Accuweather's
system. For people in the US it is your zipcode.

About
=====
This awesome window manager theme is based off of ghost1227's Openbox theme.
All credit for the conky theme goes to ghost1227
http://workshop.ghost1227.com/2009/06/two-new-openbox-themes/
