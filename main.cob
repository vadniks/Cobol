       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS HexNumber IS "0" THRU "9" "a" THRU "f"
           CLASS RealName IS "A" THRU "Z" "a" THRU "z" SPACE.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NumIn PIC X(4).
       01 NameIn PIC X(15).

       PROCEDURE DIVISION.
       Begin.
           DISPLAY "Enter a hex number - " WITH NO ADVANCING.
           ACCEPT NumIn.

           IF NumIn IS HexNumber THEN
               DISPLAY NumIn " is a hex number"
           ELSE
               DISPLAY NumIn " is not a hex number"
           END-IF.

           DISPLAY "Enter a name: " WITH NO ADVANCING.
           ACCEPT NameIn.

           IF NameIn IS RealName THEN
               DISPLAY NameIn " is a real name"
           ELSE
               DISPLAY NameIn " is not a real name"
           END-IF.

           STOP RUN.
