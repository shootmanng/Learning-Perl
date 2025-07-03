# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 4 Exercise 5, greeting everybody

sub greet {
    state @guests = ();
    # another way is to not initialize and use the defined function
    if (scalar @_ > 1) {
        print "Woah, one person at a time please!\n";
        # Main mistake here: was checking @_ ==0, which makes no sense
        # want to make sure guest list is empty not entry.
    } elsif (scalar @guests == 0) {
        print "Hi @_! You are the first one here!\n";
        push(@guests, @_);
    } else {
        # note: interpolation will give spacing to printed arrays!
        print "Hi @_! I've seen: @guests. \n";
        push(@guests, @_);
    }
}

# testing from the book
&greet("Fred");
&greet("Barney");
# My own test
&greet("Wilma","Betty");
&greet("Wilma");
&greet("Betty");