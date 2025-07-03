# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 4 Exercise 1, total subroutine (sum up array)

sub total {
    my $total = 0;
    foreach (@_) {
        $total += $_;
    }
    # implicit return of total
    # returns nothing if this is not here
    $total;
}

# suggested testing code from book
my @fred = qw { 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: \n";
# chomp unnecessary because total sub is being called, newlines gone
my $user_total = total(<STDIN>);
print "The total is $user_total.\n";