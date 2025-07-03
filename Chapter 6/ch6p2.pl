# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

print "Enter some words to count their duplicates, CTRL-D to stop: \n";
my %words = ();

# take user input and make a hash counting the number of times
# each name appears
while (<STDIN>) {
    chomp;
    # regular expression which says if the entry contains a nonletter it is not allowed
    if (/[^a-zA-Z]/){
        print "Please no numbers or special characters (including spaces) and only one name at a time.\nTry again, CTRL-D to stop:\n"
    } else {
        if (exists $words{$_}) {
            $words{$_} += 1;
        } else {$words{$_} = 1;}
    }
}
#loop through hash and print words and number of times they appeared
# sort the words alphabetically on output
# while (my ($keys, $values) = each %words) {
#        print "The word $keys appears $values times.\n";
# The above works WITHOUT sorting, sorted below:

foreach my $key (sort keys %words) {
    if ($words{$key} == 1) {
        print "The word $key appears $words{$key} time.\n"
    } else {
        print "The word $key appears $words{$key} times.\n"
    }
}