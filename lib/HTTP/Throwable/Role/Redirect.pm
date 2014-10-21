package HTTP::Throwable::Role::Redirect;
BEGIN {
  $HTTP::Throwable::Role::Redirect::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Redirect::VERSION = '0.013';
}
use Moose::Role;

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

    return $headers;
};

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Redirect - an exception that is a redirect

=head1 VERSION

version 0.013

=head1 OVERVIEW

This is an extremely simple method used by most of the 3xx series of
exceptions.  It adds a C<location> attribute that will be provided as the
Location header when the exception is converted to an HTTP message.

Note that "MultipleChoices," the 300 status code is I<not> currently a
redirect, as its Location header is optional.  This may change in the future of
the semantics of this role are refined.

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
# ABSTRACT: an exception that is a redirect

