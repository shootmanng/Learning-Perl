#!/usr/bin/perl
## Copyright (C) 2025 Yours Truly

use v5.4;
use feature qw<say>;

$^I = ".out";

while(<>) {

    s/fred/Larry/ig;
    print;
}