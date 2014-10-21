package HTTP::Throwable::Role::Status::RequestEntityTooLarge;
BEGIN {
  $HTTP::Throwable::Role::Status::RequestEntityTooLarge::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::RequestEntityTooLarge::VERSION = '0.014';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 413 }
sub default_reason      { 'Request Entity Too Large' }

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

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::RequestEntityTooLarge - 413 Request Entity Too Large

=head1 VERSION

version 0.014

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

=head1 AUTHORS

=over 4

=item *

Stevan Little <stevan.little@iinteractive.com>

=item *

Ricardo Signes <rjbs@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 413 Request Entity Too Large

