package HTTP::Throwable::ProxyAuthenticationRequired;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 407 );
has '+reason'      => ( default => 'Proxy Authentication Required' );

has 'proxy_authenticate' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

around 'build_headers' => sub {
    my $next    = shift;
    my $self    = shift;
    my $headers = $self->$next( @_ );
    push @$headers => ('Proxy-Authenticate' => $self->proxy_authenticate);
    $headers;
};

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::ProxyAuthenticationRequired - 407 Proxy Authentication Required

=head1 VERSION

version 0.003

=head1 DESCRIPTION

This code is similar to 401 (Unauthorized), but indicates that the
client must first authenticate itself with the proxy. The proxy MUST
return a Proxy-Authenticate header field containing a challenge applicable
to the proxy for the requested resource. The client MAY repeat the request
with a suitable Proxy-Authorization header field.

=head1 ATTRIBUTES

=head2 proxy_authenticate

This is a required string that will be used to populate the 'Proxy-Authenticate'
header when creating a PSGI response.

=head1 SEE ALSO

HTTP Authentication: Basic and Digest Access Authentication - L<http://www.apps.ietf.org/rfc/rfc2617.html>

Proxy-Authenticate Header - L<http://www.apps.ietf.org/rfc/rfc2617.html#sec-3.6>

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 407 Proxy Authentication Required

