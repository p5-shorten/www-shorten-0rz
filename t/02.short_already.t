#!/usr/bin/perl

use Test::More qw(no_plan);
use Test::Exception;

use WWW::Shorten '0rz';

dies_ok( sub {
    makeashorterlink('http://1234567890')
});

