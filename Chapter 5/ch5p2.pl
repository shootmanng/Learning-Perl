# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 5 Exercise 2, format print

print "Enter some strings, CTRL-D to stop: \n";
chomp(my @entries = <STDIN>);
print "1234567890" x 5, "\n";

foreach (@entries) {
    
    printf "%20s\n", $_;
}