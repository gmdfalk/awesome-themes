#!/bin/bash
#

THEMEDIR="$HOME/.config/awesome/themes/niceandclean"

case "$1" in
        10inch)	killall conky
                awsetbg "$THEMEDIR"/background-large.jpg
                conky -c "$THEMEDIR"/conky/nice-and-clean-10inch/conkyhr &
                conky -c "$THEMEDIR"/conky/nice-and-clean-10inch/conkymin &
                conky -c "$THEMEDIR"/conky/nice-and-clean-10inch/conkystats &
                conky -c "$THEMEDIR"/conky/nice-and-clean-10inch/conkydate &;;
	1920)	killall conky
		awsetbg "$THEMEDIR"/background.jpg
		conky -c "$THEMEDIR"/conky/nice-and-clean-1920/conkyhr &
		conky -c "$THEMEDIR"/conky/nice-and-clean-1920/conkymin &
		conky -c "$THEMEDIR"/conky/nice-and-clean-1920/conkydate &
		conky -c "$THEMEDIR"/conky/nice-and-clean-1920/conkystats &;;
	large)	killall conky
		awsetbg "$THEMEDIR"/background-large.jpg
		conky -c "$THEMEDIR"/conky/nice-and-clean-large/conkyhr &
		conky -c "$THEMEDIR"/conky/nice-and-clean-large/conkymin &
		conky -c "$THEMEDIR"/conky/nice-and-clean-large/conkydate &
		conky -c "$THEMEDIR"/conky/nice-and-clean-large/conkystats &;;
	*)	killall conky
		awsetbg "$THEMEDIR"/background.jpg
		conky -c "$THEMEDIR"/conky/nice-and-clean/conkyhr &
		conky -c "$THEMEDIR"/conky/nice-and-clean/conkymin &
		conky -c "$THEMEDIR"/conky/nice-and-clean/conkydate &
		conky -c "$THEMEDIR"/conky/nice-and-clean/conkystats &;;
esac

