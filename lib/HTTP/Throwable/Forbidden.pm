package HTTP::Throwable::Forbidden;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 403 );
has '+reason'      => ( default => 'Forbidden' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::Forbidden - 403 Forbidden

=head1 VERSION

version 0.001

=head1 DESCRIPTION

The server understood the request, but is refusing to fulfill it.
Authorization will not help and the request SHOULD NOT be repeated.
If the request method was not HEAD and the server wishes to make
public why the request has not been fulfilled, it SHOULD describe
the reason for the refusal in the entity. If the server does not
wish to make this information available to the client, the status
code 404 (Not Found) can be used instead.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 403 Forbidden

