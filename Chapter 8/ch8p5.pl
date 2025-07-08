use v5.4;
use Cwd;
use feature qw<say>;

open FH, "<", "./Chapter 8/fred_test_new.txt";

while (<FH>) {
    chomp;
    if (/\b(?<word>\w*a)\b(?<bruh>.?.?.?.?.?)/) {
        print "Matched: |$`<$&>$'|\n";
        say "'word' contains '$+{word}'";
        say "'bruh' contains '$+{bruh}'";
    } else {
        print "No match: |$_|\n";
    }
}

close FH;