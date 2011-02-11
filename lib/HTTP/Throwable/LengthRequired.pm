package HTTP::Throwable::LengthRequired;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 411 );
has '+reason'      => ( default => 'Length Required' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::LengthRequired - 411 Length Required

=head1 VERSION

version 0.003

=head1 DESCRIPTION

The server refuses to accept the request without a defined
Content-Length. The client MAY repeat the request if it
adds a valid Content-Length header field containing the
length of the message-body in the request message.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 411 Length Required

