use inc::Module::Install;

name            ('WWW-Shorten-0rz');
all_from        ('lib/WWW/Shorten/0rz.pm');
requires        (
                 'WWW::Shorten' => 0,
                 'WWW::Mechanize' => 0,
                );
build_requires  ('Test::More');

auto_installl;

tests 't/*.t';
author_tests 'xt/*.t';

WriteAll;

