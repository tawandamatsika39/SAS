DATA injury_data;
INPUT employee injuries;
CARDS;
1 69
1 32
1 85
1 66
1 58
1 52
2 51
2 31
2 58
2 20
2 47
2 37
2 49
2 40
3 26
3 43
3 10
3 45
3 30
3 35
3 53
3 41
;
RUN;
ODS HTML;
PROC ANOVA data=injury_data;
class employee;
model injuries=employee;

run;
ODS HTML CLOSE;