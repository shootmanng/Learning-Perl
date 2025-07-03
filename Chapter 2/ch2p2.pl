# automatically turn on warnings
#! perl -w
use warnings;
use utf8;

# Chapter 2 Exercise 2, computing a circumference

# for something reused like pi, make it a scalar to avoid mistakes
# same with the radius
$pi = 3.141592654;
# message asking to input radius
# make a habit to chomp inputs!
print "Input radius: ";
chomp($radius = <STDIN>);

# always have a newline when printing
print "The circumference is ", $radius * 2 * $pi, ".\n";

# another option is to define $circumference=$radius*2*$pi,
# then you can just print the variable directly