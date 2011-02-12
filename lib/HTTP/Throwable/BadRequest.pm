package HTTP::Throwable::BadRequest;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 400 );
has '+reason'      => ( default => 'Bad Request' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::BadRequest - 400 Bad Request

=head1 VERSION

version 0.004

=head1 DESCRIPTION

The request could not be understood by the server due to
malformed syntax. The client SHOULD NOT repeat the request
without modifications.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 400 Bad Request

