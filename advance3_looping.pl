#!/usr/bin/perl

use v5.28.1;

use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";

#for (my $i = 0; $i <10; $i++){
 #   say $i; 
#}

#my $i = 1;
# 
#while ($i < 10){
#  if($i % 2 == 0){
#    $i++;
#    # next skips back to the beginning of the loop
#    next;
#  }
# 
#  # Last exits out of the loop
#  if($i == 7){ last; }
#  say $i;
#  $i++;
#}

#my $i = 1;
#my $lucky_num = 11;
#
#my $guess;
#
#do {
#  say "Guess a Number Between 1 and 15";
# 
#  # This is how you get user input
#  $guess = <STDIN>;
#} while $guess != $lucky_num;
# 
#say "You guessed 11";

my $age_old = 18;
given ($age_old) {
  when($_ > 16) {
    say "Drive";
 
    # Will continue with the next cases
    continue;
  }
  when($_ > 17) {say "Go Vote";}
  default {say "Nothing Special";}
}