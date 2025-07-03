# automatically turn on warnings
#! perl -w
use warnings;
use utf8;
# used to sum values in an array
use List::Util 'sum';

# Chapter 3 Exercise 2, lookup names list from input

# given list
@list=qw( fred betty barney dino wilma pebbles bamm-bamm );

# define highest input number
$end = $#list + 1;
# message asking for list position
print "Input list numbers between 1 and $end, CTRL-D to end: \n";

# chomping not necessary because we're not printing these inputs
@ids = <STDIN>;
# sum inputs to check for invalid entries
$checksum = sum(@ids);
$length = $#ids + 1;

# check for invalid values: if all entries are between 1 and 7, any set of valid inputs would sum to between 7 and 7*$length
if (($checksum < 7) || ($checksum > 7 * $length)) {
    print "All input entries must be between 1 and 7, invalid entry.\n"
} else {
    print "The result is: \n";
    # because we're only using an index just use default $_
    foreach $_ (@ids) {
        #-1 because user entering 1 should give 0th element in list
        print "$list[$_-1]\n";
    }
}