use Data::Dumper;
use v5.34.0;
use List::Util 'shuffle';

# Set a seed for reproducibility
srand(42);

# Generate 20 random positive integers (1 to 100)
my @random_numbers = map { int(rand(100)) + 1 } (1..20);
my @random_numbers = sort { $a <=> $b } @random_numbers;
# Print the list
print "@random_numbers\n";
sub bs {
    my ($array, $value, $left, $right) = @_;
    my @array = $array->@[$left..$right];
    my $len = @array;
    die "value not in array" if $len < 1;
    if ($len == 1) {
        if ($array[0] == $value) {
            return $left;
        } else {
            die "value not in array";
        }
    }
    my $middle = int($len/2);
    return bs($array, $value, $left, $left + $middle - 1) if $array[$middle] > $value;
    return bs($array, $value, $left + $middle, $right);
}
sub binary_search {
    my ( $array, $value ) = @_;
    bs($array, $value, 0, scalar $array->@* - 1)
}
1; print Dumper(&binary_search(\@random_numbers, 75 )), " bruh\n";
print Dumper(&binary_search( [ 1, 3, 4, 6, 8, 9, 11 ], 1 )), " yuh\n";