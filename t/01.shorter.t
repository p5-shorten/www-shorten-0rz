#!/usr/bin/perl

use Test::More qw(no_plan);

use WWW::Shorten '0rz';

my $short = makeashorterlink(
   'http://www.appledaily.com.tw/template/twapple/index.cfm'
   );

is($short, 'http://0rz.tw/8204J');

my $long = makealongerlink('http://0rz.tw/8204J');
is($long,'http://www.appledaily.com.tw/template/twapple/index.cfm');

