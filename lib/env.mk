# Main
obj-y +=  main.o \
	list.o \
	entity.o \
	player.o \
	command.o \
	vmap/vmap.o \
	vmap/tilemap/tilemap.o \

cflags-y += -DCONFIG_BUFSIZE=2048
cflags-y += -I./include -I. -I./vmap -I./vmap/tilemap -Wall -Wextra -ggdb
cflags-y += -D_GNU_SOURCE
cflags-y += -O3 -Wno-unused-parameter

ldflags-y += -lenet

CFLAGS += $(cflags-y)
LDFLAGS += $(ldflags-y)
