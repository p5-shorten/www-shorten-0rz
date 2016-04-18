use strict;
use warnings;

use Test::More;
use WWW::Shorten '0rz';

my $URL = 'http://metacpan.org/pod/WWW::Shorten::0rz';

my $short = makeashorterlink( $URL );

is($short, 'http://0rz.tw/8Fc6i', 'shorten: got the right URL');

my $long = makealongerlink('http://0rz.tw/8Fc6i');
is($long, $URL, 'longer: got the original URL');

done_testing();
