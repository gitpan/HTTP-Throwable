package HTTP::Throwable::TemporaryRedirect;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 307 );
has '+reason'      => ( default => 'Temporary Redirect' );

has 'location' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'additional_headers' => ( is => 'ro', isa => 'ArrayRef' );

around 'build_headers' => sub {
    my $next    = shift;
    my $self    = shift;
    my $headers = $self->$next( @_ );
    push @$headers => ('Location' => $self->location);
    if ( my $additional_headers = $self->additional_headers ) {
        push @$headers => @$additional_headers;
    }
    $headers;
};

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::TemporaryRedirect - 307 Temporary Redirect

=head1 VERSION

version 0.003

=head1 DESCRIPTION

The requested resource resides temporarily under a different URI.
Since the redirection MAY be altered on occasion, the client
SHOULD continue to use the Request-URI for future requests.
This response is only cacheable if indicated by a Cache-Control
or Expires header field.

The temporary URI SHOULD be given by the Location field in the
response. Unless the request method was HEAD, the entity of the
response SHOULD contain a short hypertext note with a hyperlink
to the new URI(s), since many pre-HTTP/1.1 user agents do not
understand the 307 status. Therefore, the note SHOULD contain
the information necessary for a user to repeat the original
request on the new URI.

=head1 ATTRIBUTES

=head2 location

This is a required string, which will be used in the Location header
when creating a PSGI response.

=head2 additional_headers

This is an optional ArrayRef containing HTTP headers that will be
included when creating the PSGI response.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 307 Temporary Redirect

