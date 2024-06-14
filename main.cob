       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.
      * Aka calculator

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 9 VALUE ZERO.
       01 Num2 PIC 9 VALUE ZERO.
       01 Result PIC 99.9 VALUE ZEROS.
       01 Operator PIC X VALUE "-".
           88 ValidOperator VALUES "+", "-", "*", "/".
       
       PROCEDURE DIVISION.
       Begin.
           DISPLAY "Enter a single digit number: " WITH NO ADVANCING
           ACCEPT Num1
           DISPLAY "Enter a single digit number: " WITH NO ADVANCING
           ACCEPT Num2
           DISPLAY "Enter the operator to be applied: " WITH NO
               ADVANCING
           ACCEPT Operator

           EVALUATE Operator
               WHEN "+" ADD Num2 TO Num1 GIVING Result ROUNDED
               WHEN "-" SUBTRACT Num2 FROM Num1 GIVING Result ROUNDED
               WHEN "*" MULTIPLY Num1 BY Num2 GIVING Result ROUNDED
               WHEN "/" DIVIDE Num1 BY Num2 GIVING Result ROUNDED
               WHEN OTHER DISPLAY "Invalid operator entered"
           END-EVALUATE

           IF ValidOperator
               DISPLAY "Result is: " Result
           END-IF

           STOP RUN.
