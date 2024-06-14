       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT TargetFile ASSIGN TO "data.txt"
           ORGANIZATION IS SEQUENTIAL.
       
       DATA DIVISION.
       FILE SECTION.
       FD  TargetFile.
       01  TargetDetails.
           02 StudentId PIC X(5).
           02 StudentName PIC X(5).
           02 CourseCode PIC X(6).
           88 EndOfFile VALUE SPACES.

       PROCEDURE DIVISION.
       Begin.
           OPEN INPUT TargetFile
           
           READ TargetFile
               AT END SET EndOfFile TO TRUE
           END-READ
           PERFORM UNTIL EndOfFIle
               DISPLAY StudentId SPACE StudentName SPACE CourseCode
               READ TargetFile
                   AT END SET EndOfFile TO TRUE
               END-READ
           END-PERFORM
           CLOSE TargetFile.
           STOP RUN.
