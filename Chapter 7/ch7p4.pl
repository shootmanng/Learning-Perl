use v5.4;
use Data::Dumper;
use Cwd;
use feature qw<say>;

open FH, "<", "./Chapter 7/fred_test.txt";

while (<FH>) {

    chomp;

    if (/[A-Z][^A-Z\h]/) {
        
        say $_;
    }
}

close FH;