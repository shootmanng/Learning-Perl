# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 5 Exercise 1, reverse cat function

print reverse <>;

# On why while (<>) {print reverse $_} returns the same thing and
# while (<>) {print reverse <>} does closer to the right thing (STILL WRONG):
# the first gets a list context with one element, in a list context reverse
# just reverses the elements, but its a list with one element so the same thing
# comes out. However, reverse <> is a list context where each entry is a line from 
# the file so it works as intended.
#
# the second is still wrong because it hangs on input, DONT use <> twice