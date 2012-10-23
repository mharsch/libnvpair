CC = /usr/bin/gcc
DEBUG_FLAGS =   -g
WARN_FLAGS =	-Wall
PIC_FLAGS =     -fPIC
OPT_FLAGS =     -O2
C_STDFLAGS =    -std=c99
INC_FLAGS =	-I..

CFLAGS =        $(DEBUG_FLAGS) \
                $(WARN_FLAGS) \
                $(PIC_FLAGS) \
                $(OPT_FLAGS) \
                $(C_STDFLAGS) \
		$(INC_FLAGS)

STD_DEFS =      -D_GNU_SOURCE -D__EXTENSION__
LF64_DEFS =     -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
PIC_DEFS =      -DPIC

CPPFLAGS =      $(STD_DEFS) $(LF64_DEFS) $(PIC_DEFS)


hellonv: hello_nv.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -o hello_nv hello_nv.c ../libnvpair.a

clean:
	rm -rf $(OBJS) hello_nv hello_nv.dSYM/
