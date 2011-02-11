package HTTP::Throwable::GatewayTimeout;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 504 );
has '+reason'      => ( default => 'Gateway Timeout' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::GatewayTimeout - 504 Gateway Timeout

=head1 VERSION

version 0.003

=head1 DESCRIPTION

The server, while acting as a gateway or proxy, did not
receive a timely response from the upstream server specified
by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary
server (e.g. DNS) it needed to access in attempting to
complete the request.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 504 Gateway Timeout

