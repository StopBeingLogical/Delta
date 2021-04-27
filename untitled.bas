

RANDOMIZE TIMER


php = (INT(RND * 20) + 1)
ehp = (INT(RND * 20) + 1)


DO WHILE php OR ehp >= 0

    pdmg = (INT(RND * 4) + 1)
    edmg = (INT(RND * 4) + 1)

    patk = (INT(RND * 20) + 1)
    edef = (INT(RND * 20) + 1)
    IF patk >= edef THEN ehp = ehp - pdmg: PRINT "You Hit Enemy For "; pdmg; "HP!"

    eatk = (INT(RND * 20) + 1)
    pdef = (INT(RND * 20) + 1)
    IF eatk >= pdef THEN php = php - edmg: PRINT "Enemy Hit You For "; edmg; "HP!"

LOOP

IF php <= 0 THEN PRINT "The Enemy Has Killed You!"
IF ehp <= 0 THEN PRINT "You Killed the Enemy!"




