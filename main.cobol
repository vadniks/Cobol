       IDENTIFICATION DIVISION.
       PROGRAM-ID. first.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CharIn PIC X.
           88 Vowel VALUE "a", "e", "i", "o", "u".
           88 Consonant VALUE "b", "c", "d", "f", "g", "h"
                              "j" THRU "n", "p" THRU "t", "v" THRU "z".
           88 Digit VALUE "0" THRU "9".
           88 ValidChar VALUE "a" THRU "z", "0" THRU "9".
           
       PROCEDURE DIVISION.
       Begin.
           DISPLAY "Enter lower case character or digit. Invalid char en
      -    "ds."
           ACCEPT CharIn
           PERFORM UNTIL NOT ValidChar
               EVALUATE TRUE
                   WHEN Vowel DISPLAY "The letter " CharIn " is a vowel.
      -    ""
                   WHEN Consonant DISPLAY "The letter " CharIn " is a co
      -    "nsonant."
                   WHEN Digit DISPLAY CharIn " is a digit."
               END-EVALUATE
               ACCEPT CharIn
           END-PERFORM
           STOP RUN.
