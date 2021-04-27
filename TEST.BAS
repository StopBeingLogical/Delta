DECLARE SUB WELCOME ()
DECLARE SUB CURRENT ()
DECLARE SUB NEWSTATS ()
DECLARE SUB GENERATE ()
DECLARE SUB NEWCHAR ()
DECLARE SUB LOADCHAR ()
DECLARE SUB VIEWCHAR ()


CLS

REM *** Set the Random Number seed ***
RANDOMIZE TIMER

REM *** Declare character variables ***

DIM SHARED brawn AS INTEGER
DIM SHARED swiftness AS INTEGER
DIM SHARED health AS INTEGER
DIM SHARED cleverness AS INTEGER
DIM SHARED savvy AS INTEGER
DIM SHARED allure AS INTEGER
DIM SHARED charname AS STRING
DIM SHARED race AS STRING
DIM SHARED class AS STRING
DIM SHARED weapon AS STRING
DIM SHARED armor AS STRING
DIM SHARED coin AS INTEGER

WELCOME

END

SUB CURRENT

REM *** Print current stats ***
PRINT
PRINT TAB(15); "Current Stats: "
PRINT
PRINT TAB(15); "Brawn:", brawn
PRINT TAB(15); "Swiftness:", swiftness
PRINT TAB(15); "Health:", health
PRINT TAB(15); "Cleverness:", cleverness
PRINT TAB(15); "Savvy:", savvy
PRINT TAB(15); "Allure:", allure

END SUB

SUB GENERATE

DO
    PRINT
    INPUT "Generate new stats? Y/N"; r$
    r$ = UCASE$(r$)

LOOP UNTIL r$ = "Y" OR r$ = "N"

IF r$ = "Y" THEN
    NEWSTATS
END IF


END SUB

SUB LOADCHAR

CLS



END SUB

SUB NEWCHAR

END SUB

SUB NEWSTATS

REM *** Generate new stats ***

RANDOMIZE TIMER
brawn = (INT(RND * 6) + 1) + (INT(RND * 6) + 1) + (INT(RND * 6) + 1)
swiftness = (INT(RND * 6) + 1) + (INT(RND * 6) + 1) + (INT(RND * 6) + 1)
health = (INT(RND * 6) + 1) + (INT(RND * 6) + 1) + (INT(RND * 6) + 1)
cleverness = (INT(RND * 6) + 1) + (INT(RND * 6) + 1) + (INT(RND * 6) + 1)
savvy = (INT(RND * 6) + 1) + (INT(RND * 6) + 1) + (INT(RND * 6) + 1)
allure = (INT(RND * 6) + 1) + (INT(RND * 6) + 1) + (INT(RND * 6) + 1)

CLS

CURRENT

GENERATE

END SUB

SUB VIEWCHAR

END SUB

SUB WELCOME

CLS

PRINT TAB(25); "Welcome to the Character Generator"
PRINT
PRINT TAB(25); "Please choose a function:"
PRINT
PRINT TAB(25); "A) Create a new character"
PRINT TAB(25); "B) Load a character"
PRINT TAB(25); "C) View a character"
PRINT TAB(25); "D) Exit Character Generator"

PRINT
INPUT "Make your selection: "; r$
r$ = UCASE$(r$)

SELECT CASE r$
CASE "A"
NEWCHAR
CASE "B"
LOADCHAR
CASE "C"
VIEWCHAR
CASE "D"
EXIT SUB
END SELECT

END SUB

