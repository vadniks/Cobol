       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 UserName PIC X(20).
       01 StartValue PIC 99 VALUE ZEROS.
       01 Countdown PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.
       Begin.
           DISPLAY "Enter your name: " WITH NO ADVANCING
           ACCEPT UserName

           DISPLAY "Enter the countdown start value: " WITH NO ADVANCING
           ACCEPT StartValue

           PERFORM VARYING Countdown FROM StartValue BY -1 UNTIL 
                   Countdown = ZERO
               DISPLAY Countdown
           END-PERFORM

           DISPLAY "Your name is: " UserName
           STOP RUN.
