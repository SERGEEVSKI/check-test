#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tg_test.h"

int check_data(int oneteam, int twoteam)
{
	int victoryoneteam, victorytwoteam, n = 0, pawn;
	
	if (oneteam == twoteam) {
		
		return 0;
	}
	
	FILE *test = fopen("data.txt", "r");
	for (n = 0; !feof(test); n++) {
		fscanf(test, "%d", &pawn);
		if (n == 64 * (oneteam - 1) + 2 * (twoteam - 1)) {
			victoryoneteam = pawn;
		} else if (n  == 64 * (twoteam - 1) + 2 * (oneteam - 1)) {
			victorytwoteam = pawn;
		}
	}
	fclose(test);
	
	if (victoryoneteam + victorytwoteam == 100) {
		
		return 0;
	} else {
		
		return -1;
	}
}
