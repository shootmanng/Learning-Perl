use v5.4;
use feature qw<say>;

open FH, "<", "./Chapter 8/fred_test_new.txt";

while (<FH>) {
    chomp;
    if (/\h$/){
        say "$_+";
    }
}

close FH;