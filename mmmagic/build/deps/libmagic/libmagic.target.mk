# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := libmagic
DEFS_Debug := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DHAVE_CONFIG_H' \
	'-DVERSION="5.19"' \
	'-DLINK_SIZE=2' \
	'-DPCRE_STATIC' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O3 \
	-fPIC \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-O3

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-O3 \
	-fno-rtti \
	-fno-exceptions

INCS_Debug := \
	-I/usr/include/nodejs/src \
	-I/usr/include/nodejs/deps/uv/include \
	-I/usr/include/nodejs/deps/v8/include \
	-I$(srcdir)/deps/libmagic \
	-I$(srcdir)/deps/libmagic/src \
	-I$(srcdir)/deps/libmagic/pcre \
	-I$(srcdir)/deps/libmagic/config/linux

DEFS_Release := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DHAVE_CONFIG_H' \
	'-DVERSION="5.19"' \
	'-DLINK_SIZE=2' \
	'-DPCRE_STATIC'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-m64 \
	-fno-strict-aliasing \
	-fno-tree-vrp \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release := \
	-O3

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-O3 \
	-fno-rtti \
	-fno-exceptions

INCS_Release := \
	-I/usr/include/nodejs/src \
	-I/usr/include/nodejs/deps/uv/include \
	-I/usr/include/nodejs/deps/v8/include \
	-I$(srcdir)/deps/libmagic \
	-I$(srcdir)/deps/libmagic/src \
	-I$(srcdir)/deps/libmagic/pcre \
	-I$(srcdir)/deps/libmagic/config/linux

OBJS := \
	$(obj).target/$(TARGET)/deps/libmagic/src/apprentice.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/apptype.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/ascmagic.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/cdf.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/cdf_time.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/compress.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/encoding.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/fsmagic.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/funcs.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/is_tar.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/magic.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/print.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/readcdf.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/readelf.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/softmagic.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/fmtcheck.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/strlcat.o \
	$(obj).target/$(TARGET)/deps/libmagic/src/strlcpy.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/deps/libmagic/magic.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/deps/libmagic/magic.a: LIBS := $(LIBS)
$(obj).target/deps/libmagic/magic.a: TOOLSET := $(TOOLSET)
$(obj).target/deps/libmagic/magic.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/deps/libmagic/magic.a
# Add target alias
.PHONY: libmagic
libmagic: $(obj).target/deps/libmagic/magic.a

# Add target alias to "all" target.
.PHONY: all
all: libmagic

# Add target alias
.PHONY: libmagic
libmagic: $(builddir)/magic.a

# Copy this to the static library output path.
$(builddir)/magic.a: TOOLSET := $(TOOLSET)
$(builddir)/magic.a: $(obj).target/deps/libmagic/magic.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/magic.a
# Short alias for building this static library.
.PHONY: magic.a
magic.a: $(obj).target/deps/libmagic/magic.a $(builddir)/magic.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/magic.a

