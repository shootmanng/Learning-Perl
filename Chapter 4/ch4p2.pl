# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 4 Exercise 2, total the first 1000 numbers

sub total {
    # using the same name of the subroutine as the variable
    # could be confusing so use sum unlike p1
    my $sum = 0;
    foreach (@_) {
        $sum += $_;
    }
    # implicit return of sum
    # sub returns nothing if this is not here
    $sum;
}

# remember ampresand for calling subroutines!
my $total = &total(1..1000);
print "The total of all numbers from 1 to 1000 inclusive is $total.\n";