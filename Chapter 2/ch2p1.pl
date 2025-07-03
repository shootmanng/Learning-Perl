# automatically turn on warnings
#! perl -w
use warnings;
use utf8;

# Chapter 2 Exercise 1, computing a circumference

# for something reused like pi, make it a scalar to avoid mistakes
# same with the radius
$pi = 3.141592654;
$radius = 12.5;

# always have a newline when printing
print "The circumference is ", $radius * 2 * $pi, ".\n";