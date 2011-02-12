package HTTP::Throwable::MovedPermanently;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 301 );
has '+reason'      => ( default => 'Moved Permanently' );

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

HTTP::Throwable::MovedPermanently - 301 Moved Permanently

=head1 VERSION

version 0.004

=head1 DESCRIPTION

The requested resource has been assigned a new permanent URI and
any future references to this resource SHOULD use one of the
returned URIs. Clients with link editing capabilities ought to
automatically re-link references to the Request-URI to one or more
of the new references returned by the server, where possible. This
response is cacheable unless indicated otherwise.

The new permanent URI SHOULD be given by the Location field in the
response. Unless the request method was HEAD, the entity of the
response SHOULD contain a short hypertext note with a hyperlink to
the new URI(s).

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

# ABSTRACT: 301 Moved Permanently

