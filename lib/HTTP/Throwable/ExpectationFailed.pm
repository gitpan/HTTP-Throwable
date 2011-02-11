package HTTP::Throwable::ExpectationFailed;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 417 );
has '+reason'      => ( default => 'Expectation Failed' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::ExpectationFailed - 417 Expectation Failed

=head1 VERSION

version 0.003

=head1 DESCRIPTION

The expectation given in an Expect request-header field
could not be met by this server, or, if the server is a
proxy, the server has unambiguous evidence that the
request could not be met by the next-hop server.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 417 Expectation Failed

