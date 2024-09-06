#!/bin/sh
# cat << EOF > /etc/fonts/conf.d/09-texlive.conf
# <?xml version="1.0"?>
# <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
# <fontconfig>
#   <dir>/usr/share/texmf-dist/fonts/opentype</dir>
# </fontconfig>
# EOF

fc-cache -vf
fc-list :outline -f "%{family}\n" | grep -ie "Open|Gyre"
