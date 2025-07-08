#!/usr/bin/perl
## Copyright (C) 2025 Yours Truly

use v5.4;
use feature qw<say>;

$^I = ".bout";
my $shebang = "#!/usr/bin/perl\n";
my $copyr = "## Copyright (C) 2025 Yours Truly\n";
@ARGV = grep {/\.pl$/} @ARGV;
my $i = 0;

while (<>) {
        if ($_ eq $shebang) {
            print $shebang;
            $i++;
        } elsif ($i == 1) {
            $_ eq $copyr ? print : print "$copyr\n";
            $i = 0;
        } else {print}
    }
