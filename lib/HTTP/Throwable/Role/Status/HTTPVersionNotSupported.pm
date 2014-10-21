package HTTP::Throwable::Role::Status::HTTPVersionNotSupported;
BEGIN {
  $HTTP::Throwable::Role::Status::HTTPVersionNotSupported::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::HTTPVersionNotSupported::VERSION = '0.016';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 505 }
sub default_reason      { 'HTTP Version Not Supported' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::HTTPVersionNotSupported - 505 HTTP Version Not Supported

=head1 VERSION

version 0.016

=head1 DESCRIPTION

The server does not support, or refuses to support, the
HTTP protocol version that was used in the request message.
The server is indicating that it is unable or unwilling to
complete the request using the same major version as the
client, other than with this error message. The response
SHOULD contain an entity describing why that version is not
supported and what other protocols are supported by that
server.

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

# ABSTRACT: 505 HTTP Version Not Supported

