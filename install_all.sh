#! /bin/bash

set -x


# grab ITS-Tools converter
if [ ! -f itstools/its-tools ] ; then 
	mkdir itstools
	cd itstools
	wget --progress=dot:mega https://lip6.github.io/ITSTools/fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	unzip fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	rm fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	cd ..
fi


# grab Mist
if [ ! -f bin/mist ] ; then 
	wget --progress=dot:mega https://github.com/yanntm/mist/blob/linux/mist_linux.tar.gz?raw=true
	tar xvzf mist_linux.tar.gz
	cp mist/bin/mist bin/	
fi


