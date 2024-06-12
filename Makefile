main: main.cobol
	@cobc -O3 -x -o out main.cobol

clean:
	@rm out