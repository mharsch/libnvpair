CC = /usr/bin/gcc
DEBUG_FLAGS =	-g
WARN_FLAGS =	-Wall
PIC_FLAGS =	-fPIC
OPT_FLAGS =	-O2
C_STDFLAGS =	-std=c99

CFLAGS =	$(DEBUG_FLAGS) \
		$(WARN_FLAGS) \
		$(PIC_FLAGS) \
		$(OPT_FLAGS) \
		$(C_STDFLAGS)

STD_DEFS =	-D_GNU_SOURCE -D__EXTENSION__
LF64_DEFS =	-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
PIC_DEFS =	-DPIC

CPPFLAGS =	$(STD_DEFS) $(LF64_DEFS) $(PIC_DEFS)

SRCS =	nvpair.c \
	nvpair_alloc_system.c \
	libnvpair.c

OBJS =	$(SRCS:.c=.o)

all: libnvpair.a

libnvpair.a: $(OBJS)
	ar rcs libnvpair.a $(OBJS)

%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) libnvpair.a
