main: main.cob
	@cobc -O3 -x -o out main.cob

clean:
	@rm out