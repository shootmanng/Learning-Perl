use v5.4;
use Cwd;
use feature qw<say>;

say getcwd();

open FH, "<", "./Chapter 8/fred_test_new.txt";

while (<FH>) {
    chomp;
    if (/\b(?<word>\w*a)\b/) {
        print "Matched: |$`<$&>$'|\n";
        say "'word' contains $+{word}";
    } else {
        print "No match: |$_|\n";
    }
}

close FH;