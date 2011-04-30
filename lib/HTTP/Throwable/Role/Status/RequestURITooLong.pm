package HTTP::Throwable::Role::Status::RequestURITooLong;
BEGIN {
  $HTTP::Throwable::Role::Status::RequestURITooLong::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::RequestURITooLong::VERSION = '0.014';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 414 }
sub default_reason      { 'Request-URI Too Long' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::RequestURITooLong - 414 Request-URI Too Long

=head1 VERSION

version 0.014

=head1 DESCRIPTION

The server is refusing to service the request because the
Request-URI is longer than the server is willing to interpret.
This rare condition is only likely to occur when a client has
improperly converted a POST request to a GET request with long
query information, when the client has descended into a URI
"black hole" of redirection (e.g., a redirected URI prefix that
points to a suffix of itself), or when the server is under attack
by a client attempting to exploit security holes present in some
servers using fixed-length buffers for reading or manipulating
the Request-URI.

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

# ABSTRACT: 414 Request-URI Too Long

