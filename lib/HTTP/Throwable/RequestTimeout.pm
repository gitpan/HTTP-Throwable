package HTTP::Throwable::RequestTimeout;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 408 );
has '+reason'      => ( default => 'Request Timeout' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::RequestTimeout - 408 Request Timeout

=head1 VERSION

version 0.002

=head1 DESCRIPTION

The client did not produce a request within the
time that the server was prepared to wait. The
client MAY repeat the request without modifications
at any later time.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 408 Request Timeout

