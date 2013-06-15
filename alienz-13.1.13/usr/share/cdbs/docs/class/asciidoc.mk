# -*- mode: makefile; coding: utf-8 -*-
# Copyright ©2013 Peter Kirkpatrick <peter.k143@gmail.com>
# Description: Provides make targets for transforming docbook xml
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2, or (at
# your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
# 02111-1307 USA.

ASCII=/usr/bin/asciidoc
XMLTO=/usr/bin/xmlto

%.1.xml : %.1.txt
	$(ASCII) -o $@ -b docbook -d manpage $<

%.1 : %.1.xml
	$(XMLTO) man $(XMLTOFLAGS) $<

%.5.xml : %.5.txt
	$(ASCII) -o $@ -b docbook -d manpage $<

%.5 : %.5.xml
	$(XMLTO) man $(XMLTOFLAGS) $<

