package HTTP::Throwable::BadGateway;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 502 );
has '+reason'      => ( default => 'Bad Gateway' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::BadGateway - 502 Bad Gateway

=head1 VERSION

version 0.001

=head1 DESCRIPTION

The server, while acting as a gateway or proxy, received
an invalid response from the upstream server it accessed
in attempting to fulfill the request.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 502 Bad Gateway

