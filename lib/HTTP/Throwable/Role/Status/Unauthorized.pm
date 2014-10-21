package HTTP::Throwable::Role::Status::Unauthorized;
BEGIN {
  $HTTP::Throwable::Role::Status::Unauthorized::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::Unauthorized::VERSION = '0.014';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 401 }
sub default_reason      { 'Unauthorized' }

has 'www_authenticate' => (
    is       => 'ro',
    isa      => 'Str | ArrayRef[ Str ]',
    required => 1,
);

around 'build_headers' => sub {
    my $next     = shift;
    my $self     = shift;
    my $headers  = $self->$next( @_ );
    my $www_auth = $self->www_authenticate;
    if ( ref $www_auth ) {
        push @$headers => (map { ('WWW-Authenticate' => $_) } @$www_auth);
    }
    else {
        push @$headers => ('WWW-Authenticate' => $www_auth );
    }
    $headers;
};

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::Unauthorized - 401 Unauthorized

=head1 VERSION

version 0.014

=head1 DESCRIPTION

The request requires user authentication. The response MUST include a
WWW-Authenticate header field containing a challenge applicable to the
requested resource. The client MAY repeat the request with a suitable
Authorization header field. If the request already included Authorization
credentials, then the 401 response indicates that authorization has been
refused for those credentials. If the 401 response contains the same
challenge as the prior response, and the user agent has already attempted
authentication at least once, then the user SHOULD be presented the entity
that was given in the response, since that entity might include relevant
diagnostic information.

=head1 ATTRIBUTES

=head2 www_authenticate

This is a required string or array of string that will be used to populate
the 'WWW-Authenticate' header(s) when creating a PSGI response.

=head1 SEE ALSO

HTTP Authentication: Basic and Digest Access Authentication - L<http://www.apps.ietf.org/rfc/rfc2617.html>

WWW-Authenticate Header - L<http://www.apps.ietf.org/rfc/rfc2617.html#sec-3.2.1>

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

# ABSTRACT: 401 Unauthorized

