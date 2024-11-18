# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 4 Exercise 4, greeting

sub greet {
    state @guests = ();
    if (scalar @_ > 1) {
        print "Woah, one person at a time please!\n";
        # Main mistake here: was checking @_ ==0, which makes no sense
        # want to make sure guest list is empty not entry.
    } elsif (scalar @guests == 0) {
        print "Hi @_! You are the first one here!\n";
        push(@guests, @_);
    } else {
        # accessing a single element requires $ for list
        print "Hi @_! $guests[-1] is also here!\n";
        # throw out guests older than 1 person ago
        @guests = (@_, @guests[0]);
    }
}

# testing from the book
&greet("Fred");
&greet("Barney");
# My own test
&greet("Wilma","Betty");
&greet("Wilma");
&greet("Betty");