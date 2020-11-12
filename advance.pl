#!/usr/bin/perl

use v5.28.1;

use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";

print "Hello World\n";

my $name = "Shasheen";

my ($age, $street) = (27, '123 New York');

my $my_info = "$name lives on \"$street\"\n";

$my_info = qq{$name lives on "$street"\n};
print $my_info;

my $bunch_of_info = <<"END";
This has been a great day to
work out.
END

say $bunch_of_info;

my $my_biginteger = 1839978097872173;

# You can formatted strings by defining the data type after %
# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)

printf("%u \n", $my_biginteger + 1);

my $big_float = .10000000111000;

printf("%f \n", $big_float + .10000000111000);


my $first = 1;
my $second = 2;

($first, $second) = ($second, $first);

say "$first $second";


# ---------- MATH ----------
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;


# Built in functions
# Includes Trig functions plus
say "EXP 1 = ", exp 1; # e to the power of
say "HEX 10 = ", hex 10; # Convert from hexidecimal
say "OCT 10 = ", oct 10; # Convert from Octal
say "INT 6.45 = ", int(6.45); # Truncate You can use parentheses
say "LOG 2 = ", log 2; # Number to the power of e
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;
 
#operators

my $rand_num = 5;
$rand_num += 1;
say "New number now is ", $rand_num;

# Shortcut Increment and Decrement
say "6++ = ", $rand_num++;
say "++6 = ", ++$rand_num;
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;

# ---------- CONDITIONALS ----------
# Perl considers undef, 0, 0.0, "", and "0" to be false
# ==, !=, <, <=, >, >=
# Boolean Operators: !, &&, ||
