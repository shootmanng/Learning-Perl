# use 5.34 turns on warning and strict automatically
use 5.34.0;
use utf8;

my $longest = 0;

foreach my $key (keys %ENV) {
    if (length($key) > $longest) {
        $longest = length($key);
    }
}
printf "%-${longest}s %s\n", "Key", "| Value";
print "-" x $longest, "\n";

foreach my $key (sort keys %ENV) {
    printf "%-${longest}s %s\n", $key, $ENV{$key};
    print "-" x $longest, "\n";
}
