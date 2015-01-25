POSSIBLE += $(shell ls -1 | egrep -v '\.dat|README|LICENSE|Makefile' | sed -e 's/$$/.dat/g')

all: ${POSSIBLE}

%.dat : %
	@strfile $< $@
