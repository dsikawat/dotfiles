
CP = cp

USER_HOMEDIR = $(shell echo ~$(USER))
FILES = $(shell ls | grep -v Makefile)

#
# Copy over the files to home directory and source them as well.
#
copy/%:
	cp $(@F) $(USER_HOMEDIR)/.$(@F)

.DEFAULT_GOAL := all
all: $(foreach file,$(FILES),copy/$(file))
