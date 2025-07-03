# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 6 Exercise 1, last names

# given table
my %last_name = (
    fred => 'flintstone',
    barney => 'rubble',
    wilma => 'flintstone'
);

print "Enter a first name to lookup a full name, CTRL-D to stop: \n";

while (<STDIN>) {
    # Note: this command must be declared on its own, if you do 
    # print chomp($_) it prints 1, because thats what the function returns
    chomp($_);
    if (exists $last_name{$_}) {
        print "The full name is $_ ", $last_name{$_},".\n";
        print "Enter a first name to lookup a full name, CTRL-D to stop: \n";
    } else {
        print "Hmm I don't know that name, try another one, CTRL-D to stop:\n";
    }
}