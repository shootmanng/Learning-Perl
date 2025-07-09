# COPIED CH6P3
use v5.4;
use feature qw<say>;

my $longest = 0;

## EXAMPLES

$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEFINED} = undef;

foreach my $key (keys %ENV) {
    if (length($key) > $longest) {
        $longest = length($key);
    }
}
printf "%-${longest}s %s\n", "Key", "| Value";
print "-" x $longest, "\n";

foreach my $key (sort keys %ENV) {
    printf "%-${longest}s %s\n", $key, $ENV{$key} // "(undefined value)";
    print "-" x $longest, "\n";
}