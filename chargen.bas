DECLARE SUB WELCOME ()
DECLARE SUB CURRENT ()
DECLARE SUB NEWSTATS ()
DECLARE SUB GENERATE ()
DECLARE SUB NEWCHAR ()
DECLARE SUB LOADCHAR ()
DECLARE SUB VIEWCHAR ()

Cls

Rem *** Set the Random Number seed ***
Randomize Timer

Rem *** Declare character variables ***

Dim Shared brawn As Integer
Dim Shared swiftness As Integer
Dim Shared health As Integer
Dim Shared cleverness As Integer
Dim Shared savvy As Integer
Dim Shared allure As Integer
Dim Shared charname As String
Dim Shared race As String
Dim Shared job As String
Dim Shared weapon As String
Dim Shared armor As String
Dim Shared coin As Integer




Type currentToon
    toonname As String
    race As String
    job As String
    weapon As String
    armor As String
    coin As Integer
    brawn As Integer
    swiftness As Integer
    health As Integer
    clerverness As Integer
    savvy As Integer
    allure As Integer
End Type


WELCOME

End

Sub CURRENT

    Rem *** Print current stats ***
    Print
    Print Tab(15); "Current Stats: "
    Print
    Print Tab(15); "Brawn:", brawn
    Print Tab(15); "Swiftness:", swiftness
    Print Tab(15); "Health:", health
    Print Tab(15); "Cleverness:", cleverness
    Print Tab(15); "Savvy:", savvy
    Print Tab(15); "Allure:", allure

End Sub

Sub GENERATE

    Do
        Print
        Input "Generate new stats? Y/N"; r$
        r$ = UCase$(r$)

    Loop Until r$ = "Y" Or r$ = "N"

    If r$ = "Y" Then
        NEWSTATS
    End If


End Sub

Sub LOADCHAR

    Cls



End Sub

Sub NEWCHAR

End Sub

Sub NEWSTATS

    Rem *** Generate new stats ***

    Randomize Timer
    brawn = (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1)
    swiftness = (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1)
    health = (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1)
    cleverness = (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1)
    savvy = (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1)
    allure = (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1) + (Int(Rnd * 6) + 1)

    Cls

    CURRENT

    GENERATE

End Sub

Sub VIEWCHAR

End Sub

Sub WELCOME

    Cls

    Print Tab(25); "Welcome to the Character Generator"
    Print
    Print Tab(25); "Please choose a function:"
    Print
    Print Tab(25); "A) Create a new character"
    Print Tab(25); "B) Load a character"
    Print Tab(25); "C) View a character"
    Print Tab(25); "D) Exit Character Generator"

    Print
    Input "Make your selection: "; r$
    r$ = UCase$(r$)

    Select Case r$
        Case "A"
            NEWCHAR
        Case "B"
            LOADCHAR
        Case "C"
            VIEWCHAR
        Case "D"
            Exit Sub
    End Select

End Sub

