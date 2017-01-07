test:
	mlton -output build/test src/test.mlb

clean:
	rm -f build/test

all: test
