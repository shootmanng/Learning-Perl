# automatically turn on warnings
#! perl -w
use warnings;
use utf8;

# Chapter 2 Exercise 4, product of two user input numbers

# message asking to input numbers
# make a habit to chomp inputs!
print "Input first number: ";
chomp($num1 = <STDIN>);
print "Input second number: ";
chomp($num2 = <STDIN>);
$product = $num1 * $num2;

# print the product
print "The product of these two numbers is $product.\n";