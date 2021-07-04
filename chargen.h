#ifndef CHARGEN_H
#define CHARGEN_H

int brawn, swiftness, health, cleverness, savvy, allure, coin;
char charname[32];
char race[20];
char job[32];
char weapon[32];
char armor[32];


const char *weapons[] =
    {
        "Dagger",
        "Broadsword"
    };

const char *armor[] = 
    {
        "Shield",
        "Leather",
        "Plate"
    };

typedef struct {
    char *toonname;
    char *race;
    char *job;
    char *weapon;
    char *armor;
    int coin;
    int brawn;
    int swiftness;
    int health;
    int cleverness;
    int savy;
    int allure;
} currentToon;

#endif