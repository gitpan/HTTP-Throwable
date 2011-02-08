package HTTP::Throwable::UseProxy;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 305 );
has '+reason'      => ( default => 'Use Proxy' );

has 'location' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

around 'build_headers' => sub {
    my $next    = shift;
    my $self    = shift;
    my $headers = $self->$next( @_ );
    push @$headers => ('Location' => $self->location);
    $headers;
};

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::UseProxy - 305 Use Proxy

=head1 VERSION

version 0.002

=head1 DESCRIPTION

The requested resource MUST be accessed through the proxy given
by the Location field. The Location field gives the URI of the
proxy. The recipient is expected to repeat this single request
via the proxy. 305 responses MUST only be generated by origin
servers.

=head1 ATTRIBUTES

=head2 location

This is a required string, which will be used in the Location header
when creating a PSGI response.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 305 Use Proxy

