package HTTP::Throwable::PreconditionFailed;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 412 );
has '+reason'      => ( default => 'Precondition Failed' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::PreconditionFailed - 412 Precondition Failed

=head1 VERSION

version 0.003

=head1 DESCRIPTION

The precondition given in one or more of the request-header
fields evaluated to false when it was tested on the server.
This response code allows the client to place preconditions
on the current resource metainformation (header field data)
and thus prevent the requested method from being applied to
a resource other than the one intended.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 412 Precondition Failed

