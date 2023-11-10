DS_TEST_MAKEFILE=forge-std/lib/ds-test/Makefile

${DS_TEST_MAKEFILE}: forge-std
	git submodule foreach git submodule update --init
	test -f ${DS_TEST_MAKEFILE} && echo "OK"

forge-std:
	git submodule init
	git submodule update --recursive

clean:
	rm -rf forge-std

.PHONY: clean
