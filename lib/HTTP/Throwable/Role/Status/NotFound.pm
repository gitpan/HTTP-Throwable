package HTTP::Throwable::Role::Status::NotFound;
BEGIN {
  $HTTP::Throwable::Role::Status::NotFound::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::NotFound::VERSION = '0.011';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 404 }
sub default_reason      { 'Not Found' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::NotFound - 404 Not Found

=head1 VERSION

version 0.011

=head1 DESCRIPTION

The server has not found anything matching the Request-URI.
No indication is given of whether the condition is temporary
or permanent. The 410 (Gone) status code SHOULD be used if
the server knows, through some internally configurable mechanism,
that an old resource is permanently unavailable and has no
forwarding address. This status code is commonly used when
the server does not wish to reveal exactly why the request
has been refused, or when no other response is applicable.

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

# ABSTRACT: 404 Not Found

