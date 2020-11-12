#!/usr/bin/perl

use v5.28.1;

use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature "switch";


my $new_age = 30;
my $is_not_intoxicated = 1;
my $age_last_exam = 16;

if ($new_age < 16) {
    say "You cannot drive";
} elsif(!$is_not_intoxicated){
    say "You cannot drive";
}else {
    say "you can drive";
}

if(($new_age >= 1) && ($new_age < 16)){
  say "You can't Drive";
} elsif(!$is_not_intoxicated){
  say "You can't drive";
} elsif(($new_age >= 80) && (($new_age > 100) || (($new_age - $age_last_exam) > 5))){
  say "You can't drive";
} else {
  say "You can drive";
}

if ('a' eq 'b' ) {
    say "a equals b";
} else {
    say "a does not equal b";
}

unless (!$is_not_intoxicated){
    say "Get Sober";
}


say (($new_age > 18) ? "Can Vote" : "Cant Vote"); 
