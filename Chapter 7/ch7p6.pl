use v5.4;
use Data::Dumper;
use Cwd;
use feature qw<say>;

open FH, "<", "./Chapter 7/fred_test.txt";

while (<FH>) {

    chomp;

    if (/[fF]red/) {
        if (/[wW]ilma/) {
            
            say $_;
        }
    }
}

close FH;