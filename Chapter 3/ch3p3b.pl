# automatically turn on warnings
#! perl -w
use warnings;
use utf8;

# Chapter 3 Exercise 3, names in point order

# user inputs names
print "Input names, CTRL-D to end: \n";
chomp(@names = <STDIN>);

# sort the names
@names = sort(@names);
$end = $#names;
$i = 0;

# print sorted list on new lines with appropriate grammar
print "The ordered list is:\n";
foreach $_ (@names) {
    if ($i < $end) {
        print "$_,\n";
        $i += 1;
    } else {
    print "$_.\n";
    }
}