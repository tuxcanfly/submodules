DS_TEST_MAKEFILE=forge-std/lib/ds-test/Makefile

${DS_TEST_MAKEFILE}: forge-std/README.md
	git submodule foreach git submodule update --init
	test -f ${DS_TEST_MAKEFILE} && echo "OK"

forge-std/README.md:
	git submodule init
	git submodule update --recursive

clean:
	rm -rf forge-std

.PHONY: clean
