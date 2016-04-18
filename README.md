# NAME

WWW::Shorten::0rz - Shorten URLs using [http://0rz.tw/](http://0rz.tw/)

# SYNOPSIS

    use strict;
    use warnings;

    use WWW::Shorten::0rz;
    # use WWW::Shorten '0rz';  # or, this way

    my $short_url = makeashorterlink('http://www.foo.com/some/long/url');
    my $long_url  = makealongerlink($short_url);

# DESCRIPTION

A Perl interface to the web site [http://0rz.tw](http://0rz.tw).  The service simply maintains
a database of long URLs, each of which has a unique identifier.

# FUNCTIONS

## makeashorterlink

The function `makeashorterlink` will call the [http://0rz.tw](http://0rz.tw) web site passing
it your long URL and will return the shorter version.

## makealongerlink

The function `makealongerlink` does the reverse. `makealongerlink`
will accept as an argument either the full URL or just the identifier.

If anything goes wrong, then either function will return `undef`.

# AUTHOR

Kang-min Liu <`gugod@gugod.org`>

# CONTRIBUTORS

- Chase Whitener <`capoeirab@cpan.org`>

# LICENSE AND COPYRIGHT

Copyright 2004-2009 by Kang-min Liu <`gugod@gugod.org`>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
