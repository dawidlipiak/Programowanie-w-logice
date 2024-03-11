/* Check if a number is prime */
is_prime(X) :- 
    \+ (Y is integer(sqrt(X)), /* Write to Y rounded square root of X */
        between(2, Y, N), /* Y is a number between 2 and N */
        X mod N=:=0 ). /* X is divisable by N */

/* Go through every number between LO and HI and check if it is prime */
prime(LO, HI, N) :- between(LO, HI, N), N > 1, is_prime(N).