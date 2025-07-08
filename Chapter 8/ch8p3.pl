use v5.4;
use Cwd;
use feature qw<say>;

say getcwd();

open FH, "<", "./Chapter 8/fred_test_new.txt";

while (<FH>) {
    chomp;
    if (/\b(\w*a)\b/) {
        print "Matched: |$`<$&>$'|\n";
        say "\$1 contains $1";
    } else {
        print "No match: |$_|\n";
    }
}

close FH;