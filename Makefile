.PHONY: main
main: main.cob
	@cobc --fixed -Wall -Warchaic -O3 -std=ibm -o out -x main.cob

.PHONY: clean
clean:
	@rm out