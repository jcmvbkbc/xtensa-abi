CC := xtensa-dc233c-elf-gcc
LD := xtensa-dc233c-elf-ld
AS := $(CC) -c
LDFLAGS += -nostdlib

EXTENSIONS := .o .partial .so .elf .pie
TARGETS += $(addprefix xtensa_32,$(EXTENSIONS))
TARGETS += $(addprefix xtensa_pcrel,$(EXTENSIONS))
TARGETS += $(addprefix xtensa_plt,$(EXTENSIONS))
TARGETS += $(addprefix xtensa_relative,$(EXTENSIONS))
TARGETS += $(addprefix xtensa_rtld,$(EXTENSIONS))

all:  $(TARGETS)

clean:
	rm -f $(TARGETS) extern.so

%.partial: %.o
	$(LD) -r $^ -o $@

%.so: %.s
	$(CC) -shared $(LDFLAGS) $^ -o $@

%.elf: %.s extern.so
	$(CC) $^ $(LDFLAGS) -o $@

%.pie: %.s extern.so
	$(CC) $^ -pie $(LDFLAGS) -o $@
