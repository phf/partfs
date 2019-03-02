CFLAGS+=-Wall -Wextra -Wno-unused-parameter -O2
CFLAGS+=$(shell pkg-config --cflags fdisk fuse)
LDLIBS+=$(shell pkg-config --libs fdisk fuse)

ALL=partfs

all: $(ALL)

clean:
	$(RM) $(ALL)

distclean: clean

.PHONY: all clean distclean
