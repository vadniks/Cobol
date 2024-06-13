main: main.cob
	@cobc -O3 -x -o out main.cob

.PHONY: clean
clean:
	@rm out