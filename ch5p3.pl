# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 5 Exercise 3, format print with custom width

print "Enter desired width: ";
chomp(my $width = <STDIN>);
print "Enter some strings, CTRL-D to stop: \n";
chomp(my @entries = <STDIN>);
# any other ones digit besides 0 needs another factor of 10 for the ruler
# when "x" truncates the double we want that reflected so +.9 guarantees that
print "1234567890" x ($width/10 + .9), "\n";

foreach (@entries) {
    printf "%${width}s\n", $_;
}