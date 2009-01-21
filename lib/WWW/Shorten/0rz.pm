package WWW::Shorten::0rz;
use strict;
use warnings;
use Carp;
our $VERSION = '0.06';
use base qw( WWW::Shorten::generic Exporter );
our @EXPORT = qw( makeashorterlink makealongerlink );

use WWW::Mechanize;

sub makeashorterlink {
    my $url = shift;
    my $ua = new WWW::Mechanize;
    $ua->get('http://0rz.tw');
    $ua->submit_form(fields => { url => $url });
    my $short = $ua->uri;
    croak $ua->content unless $short =~qr{http://0rz.tw/.+=$}i;
    chop($short);
    return $short;
}

sub makealongerlink {
    my $tinyurl_url = shift
	or croak 'No TinyURL key / URL passed to makealongerlink';
    my $ua = __PACKAGE__->ua();
    $tinyurl_url = "http://0rz.tw/$tinyurl_url"
        unless $tinyurl_url =~ m!^http://!i;
    my $resp = $ua->get($tinyurl_url);
    return undef unless $resp->is_redirect;
    my $url = $resp->header('Location');
    return $url;
}

1;

__END__

=head1 NAME

WWW::Shorten::0rz - Shorten URL using 0rz.tw

=head1 DESCRIPTION

  use WWW::Shorten '0rz';
  my $short_url = makeashorterlink($longurl);

=head1 METHODS

=over

=item makeashorterlink( $url )

Given a very long $url, make it shorter using 0rz.tw url shorten
service.

=item makealongerlink( $url )

Given a shorted $url, turn it to back to its longer version.

=back

=head1 COPYRIGHT

Copyright 2004-2007 by Kang-min Liu <gugod@gugod.org>.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

See <http://www.perl.com/perl/misc/Artistic.html>

=cut

