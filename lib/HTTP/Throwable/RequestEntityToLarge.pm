package HTTP::Throwable::RequestEntityToLarge;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 413 );
has '+reason'      => ( default => 'Request Entity To Large' );

has 'retry_after' => ( is => 'ro', isa => 'Str' );

around 'build_headers' => sub {
    my $next    = shift;
    my $self    = shift;
    my $headers = $self->$next( @_ );
    if ( my $retry = $self->retry_after ) {
        push @$headers => ('Retry-After' => $retry);
    }
    $headers;
};

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::RequestEntityToLarge - 413 Request Entity To Large

=head1 VERSION

version 0.003

=head1 DESCRIPTION

The server is refusing to process a request because the request
entity is larger than the server is willing or able to process.
The server MAY close the connection to prevent the client from
continuing the request.

If the condition is temporary, the server SHOULD include a
Retry-After header field to indicate that it is temporary and
after what time the client MAY try again.

=head1 ATTRIBUTES

=head2 retry_after

This is an optional string to be used to add a Retry-After header
in the PSGI response.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 413 Request Entity To Large

