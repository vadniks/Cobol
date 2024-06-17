       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 9 VALUE ZERO.
       01 Num2 PIC 9 VALUE ZERO.
       01 Result PIC 9.99 VALUE ZERO.
       01 Operator PIC X VALUE SPACE.
           88 ValidOperator VALUES "+" "-" "*" "/".
           88 EndOfCalculations VALUE "q".
       
       PROCEDURE DIVISION.
       Begin.
           PERFORM GetValidOperator UNTIL ValidOperator OR 
                   EndOfCalculations
           PERFORM UNTIL EndOfCalculations OR NOT ValidOperator
               PERFORM GetTwoNumbers
               EVALUATE Operator
                   WHEN "+" ADD Num2 TO Num1 GIVING Result
                   WHEN "-" SUBTRACT Num2 FROM Num1 GIVING Result
                   WHEN "*" MULTIPLY Num1 BY Num2 GIVING Result
                   WHEN "/" DIVIDE Num1 BY Num2 GIVING Result
               END-EVALUATE
               DISPLAY "Result: " Result
               MOVE SPACE TO Operator
               PERFORM GetValidOperator UNTIL EndOfCalculations OR 
                       ValidOperator
           END-PERFORM
           DISPLAY "End of calculations"
           STOP RUN.
       
       GetValidOperator.
           DISPLAY "Enter an arithmetic operator (+ - * /) (q to end): "
                   WITH NO ADVANCING
           ACCEPT Operator.

       GetTwoNumbers.
           DISPLAY "Enter a single digit number - " WITH NO ADVANCING
           ACCEPT Num1
           DISPLAY "Enter a single digit number - " WITH NO ADVANCING
           ACCEPT Num2.
