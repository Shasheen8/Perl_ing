#!/usr/bin/perl

use v5.28.1;

use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";

my $string = "Random long string";

say "Length of string ", length $string;

printf("long is at %d \n", index $string, "long");

printf("Last g is at %d \n", rindex $string, "g");

$string= $string. 'isn\'t that long';

say "Index 7 through 10", substr $string, 7,4;

my $animal = "Elephants";

printf("Last character is %s\n", chop $animal);

my $no_newline = "No Newline\n";
chomp $no_newline;

printf("Uppercase : %s \n", uc $string);
printf("Lowercase : %s \n", lc $string);
printf("1st Uppercase : %s \n", ucfirst $string);


my $long_string = "Hello to this World";

$long_string =~ s//,/g;
say $long_string;

my $twice = " What I say is " x 2;
say $twice;

my @array = ('a' ..'z');
print join(",", @array), "\n";

my $letter = 'c';
say "Next Letter ", ++$letter;
