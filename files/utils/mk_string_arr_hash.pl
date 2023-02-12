#!/usr/bin/perl
# 2023-02-02

# See also perlreftut

# It's a template script that takes space seprated file
# and makes hash of it.
# Useful for sorting by Nth column or swapping columns
# in file like /etc/hosts.

# Instead of one-liners like this:
# perl -F"\s+" -lane '$t{$F[0]} = [] unless exists $t{$F[0]}; push @{$t{$F[0]}}, $F[1]; END {$" = ","; for $k (sort keys %t) {print "$k ==> @{$t{$k}}\n"}}'

use warnings;
use strict;

my %table;

while (<>) {
    chomp;
    if (/^$|^#/) {next};
    my ($c1, $c2) = split /\s+/;
    $table{$c1} = [] unless exists $table{$c1};
    push @{$table{$c1}}, $c2;
}

# for my $c1 (sort keys %table) {
#     print "$c1: ";
#     my @c2 = @{$table{$c1}};
#     print join ', ', sort @c2;
#     print ".\n";
# }
