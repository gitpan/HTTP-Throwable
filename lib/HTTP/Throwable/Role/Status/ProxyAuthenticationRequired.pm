package HTTP::Throwable::Role::Status::ProxyAuthenticationRequired;
BEGIN {
  $HTTP::Throwable::Role::Status::ProxyAuthenticationRequired::AUTHORITY = 'cpan:STEVAN';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 407 }
sub default_reason      { 'Proxy Authentication Required' }

has 'proxy_authenticate' => (
    is       => 'ro',
    isa      => 'Str | ArrayRef[ Str ]',
    required => 1,
);

around 'build_headers' => sub {
    my $next    = shift;
    my $self    = shift;
    my $headers = $self->$next( @_ );
    my $proxy_auth = $self->proxy_authenticate;
    if ( ref $proxy_auth ) {
        push @$headers => (map { ('Proxy-Authenticate' => $_) } @$proxy_auth);
    }
    else {
        push @$headers => ('Proxy-Authenticate' => $proxy_auth );
    }
    $headers;
};

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::ProxyAuthenticationRequired - 407 Proxy Authentication Required

=head1 VERSION

version 0.010

=head1 DESCRIPTION

This code is similar to 401 (Unauthorized), but indicates that the
client must first authenticate itself with the proxy. The proxy MUST
return a Proxy-Authenticate header field containing a challenge applicable
to the proxy for the requested resource. The client MAY repeat the request
with a suitable Proxy-Authorization header field.

=head1 ATTRIBUTES

=head2 proxy_authenticate

This is a required string or array of strings that will be used to populate
the 'Proxy-Authenticate' header(s) when creating a PSGI response.

=head1 SEE ALSO

HTTP Authentication: Basic and Digest Access Authentication - L<http://www.apps.ietf.org/rfc/rfc2617.html>

Proxy-Authenticate Header - L<http://www.apps.ietf.org/rfc/rfc2617.html#sec-3.6>

=head1 AUTHORS

=over 4

=item *

Stevan Little <stevan.little@iinteractive.com>

=item *

Ricardo Signes <rjbs@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 407 Proxy Authentication Required

