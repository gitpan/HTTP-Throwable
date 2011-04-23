package HTTP::Throwable::Role::Status::MethodNotAllowed;
BEGIN {
  $HTTP::Throwable::Role::Status::MethodNotAllowed::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::MethodNotAllowed::VERSION = '0.012';
}
use Moose::Role;
use Moose::Util::TypeConstraints;

use List::AllUtils qw[ uniq ];

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

enum 'HTTP::Throwable::Type::Method' => qw[
    OPTIONS GET HEAD
    POST PUT DELETE
    TRACE CONNECT
];

# TODO: Consider adding a coersion to upper-case lower-cased strings and to
# uniq the given input.  -- rjbs, 2011-02-21
subtype 'HTTP::Throwable::Type::MethodList'
    => as 'ArrayRef'
    => where { (scalar uniq @{$_}) == (scalar @{$_}) };

sub default_status_code { 405 }
sub default_reason      { 'Method Not Allowed' }

has 'allow' => (
    is       => 'ro',
    isa      => 'HTTP::Throwable::Type::MethodList[ HTTP::Throwable::Type::Method ]',
    required => 1
);

around 'build_headers' => sub {
    my $next    = shift;
    my $self    = shift;
    my $headers = $self->$next( @_ );
    push @$headers => ('Allow' => join "," => @{ $self->allow });
    $headers;
};

no Moose::Role; no Moose::Util::TypeConstraints; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::MethodNotAllowed - 405 Method Not Allowed

=head1 VERSION

version 0.012

=head1 DESCRIPTION

The method specified in the Request-Line is not allowed for the
resource identified by the Request-URI. The response MUST include
an Allow header containing a list of valid methods for the requested
resource.

=head1 ATTRIBUTES

=head2 allow

This is an ArrayRef of HTTP methods, it is required and the HTTP
methods will be type checked to ensure validity and uniqueness.

=head1 SEE ALSO

HTTP Methods - L<http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html>

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

# ABSTRACT: 405 Method Not Allowed

