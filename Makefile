# Make sure these tasks are always executed
.PHONY: all clean

# Make all the first target so it is run when no arguments are supplied
all: clean

clean:
	find . -type f -not -name '*.hs' -not -name 'Makefile' -not -name 'README.md' -not -name '.gitignore' -not -path './.git/*' | xargs rm -f

build:
	if [ -z "$P" ]; then echo "Usage: make $P=n build/run.\n"; exit; fi; ghc problem_$P.hs

run: build
	if [ -z "$P" ]; then exit; fi; ./problem_$P

