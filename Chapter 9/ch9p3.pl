#!/usr/bin/perl
## Copyright (C) 2025 Yours Truly

use v5.4;
use feature qw<say>;

$^I = ".out";

while(<>) {

    s/fred/beans123/ig;
    s/Wilma/Fred/ig;
    s/beans123/Wilma/ig;
    print;
}
