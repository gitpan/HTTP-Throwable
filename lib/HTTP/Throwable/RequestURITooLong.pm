package HTTP::Throwable::RequestURITooLong;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 414 );
has '+reason'      => ( default => 'Request-URI Too Long' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::RequestURITooLong - 414 Request-URI Too Long

=head1 VERSION

version 0.002

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

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 414 Request-URI Too Long

