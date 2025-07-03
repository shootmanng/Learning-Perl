# automatically turn on warnings
#! perl -w
use warnings;
use utf8;

# Chapter 2 Exercise 3, computing a circumference

# for something reused like pi, make it a scalar to avoid mistakes
# same with the radius
$pi = 3.141592654;
# message asking to input radius
# make a habit to chomp inputs!
print "Input positive radius: ";
chomp($radius = <STDIN>);
$circumference = $radius * 2 * $pi;

# check if radius is negative, if so return 0
# otherwise compute like normal
if ($radius < 0) {
    print "The radius is invalid (negative) return zero, 0.\n";
}
else {
print "The circumference is $circumference.\n";
}
