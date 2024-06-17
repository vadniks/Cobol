       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 RepCount PIC 9(4) VALUE ZEROS.
       01 PrnRepCount PIC Z,ZZ9 VALUE ZEROS.
       01 NumberOfTimes PIC 9(4) VALUE 1000.

       PROCEDURE DIVISION.
       Begin.
           PERFORM VARYING RepCount FROM 0 BY 50 UNTIL 
                   RepCount = NumberOfTimes
               MOVE RepCount TO PrnRepCount
               DISPLAY "Counting " PrnRepCOunt
           END-PERFORM
           MOVE RepCount TO PrnRepCount
           DISPLAY "RepCount " PrnRepCOunt
           STOP RUN.
