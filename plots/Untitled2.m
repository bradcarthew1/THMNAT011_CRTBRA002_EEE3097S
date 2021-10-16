s = zpk('s');
n = 5*exp(-3*s);
d = s*(s/2 + 1);
g = n/d