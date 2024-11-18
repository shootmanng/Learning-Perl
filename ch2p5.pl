# automatically turn on warnings
#! perl -w
use warnings;
use utf8;

# Chapter 2 Exercise 5, replicate string

# message asking to input numbers
# make a habit to chomp inputs!
print "Input string to be copied: ";
# no chomp because it wants each copy on new line
$str1 = <STDIN>;
print "Input number of copies: ";
chomp($num1 = <STDIN>);
$product = $str1 x $num1;

# print the product starting on a new line
# no new line at end needed because product is not chomped
print "The result is: \n$product";