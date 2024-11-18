# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

# Chapter 4 Exercise 3, above average numbers

sub total {
    my $sum;
    foreach (@_) {
        $sum += $_;
    }
    $sum;
}

# average subroutine
sub average {
    my $avg;
    my $avg = &total(@_) / scalar @_;
    # Note: originally I tried the denominator as $#@_ but apparently this is not
    # allowed and causes a syntax error
}

# numbers above average subroutine
sub above_average {
    my $avg = &average(@_);
    my @result;

    foreach (@_) {
        if ($_ > $avg) {
            # Mistake !!! recall push is a function that returns the altered given array
            # @result = push(@result,$val) is nonsense!! (or unlikely what was intended)
            push(@result, $_);
            #print @result;
        }
    }
    @result;
}

# testing from the book
my @fred = &above_average(1..10);
print "\@fred is @fred.\n";