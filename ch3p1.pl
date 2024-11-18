# automatically turn on warnings
#! perl -w
use warnings;
use utf8;

# Chapter 3 Exercise 1, reverse list input

# message asking to input strings
# make a habit to chomp inputs!
print "Input strings to be reversed, use CTRL-D to end: ";

chomp(@str1 = <STDIN>);
@str1 = reverse(@str1);

# print the reversed string
print "The result is: @str1\.\n";