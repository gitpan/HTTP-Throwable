package HTTP::Throwable::UnsupportedMediaType;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 415 );
has '+reason'      => ( default => 'Unsupported Media Type' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::UnsupportedMediaType - 415 Unsupported Media Type

=head1 VERSION

version 0.002

=head1 DESCRIPTION

The server is refusing to service the request because the entity
of the request is in a format not supported by the requested resource
for the requested method.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 415 Unsupported Media Type

