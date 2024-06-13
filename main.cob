       IDENTIFICATION DIVISION.
       PROGRAM-ID. AProgram.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC S99 VALUE 0.
       01 Num2 PIC S99 VALUE 0.
       01 Result PIC S999 VALUE ZEROS.

       PROCEDURE DIVISION.
       Begin.
           DISPLAY "Enter a single digit number - " WITH NO ADVANCING
           ACCEPT Num1
           DISPLAY "Enter a single digit number - " WITH NO ADVANCING
           ACCEPT Num2
           MULTIPLY Num1 BY Num2 GIVING Result
           DISPLAY "Result is " Result
           STOP RUN.
