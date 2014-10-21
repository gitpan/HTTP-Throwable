package HTTP::Throwable::Role::NoBody;
BEGIN {
  $HTTP::Throwable::Role::NoBody::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::NoBody::VERSION = '0.014';
}
use Moose::Role;

sub body { return }

sub body_headers {
    my ($self, $body) = @_;

    return [
        'Content-Length' => 0,
    ];
}

sub as_string { $_[0]->status_line }

no Moose::Role;
1;



=pod

=head1 NAME

HTTP::Throwable::Role::NoBody - an exception with no body

=head1 VERSION

version 0.014

=head1 OVERVIEW

This is a very simple role, implementing the required C<as_string>, C<body>,
and C<body_headers> for L<HTTP::Throwable>.

When an HTTP::Throwable exception uses this role, its PSGI response will have
no entity body.  It will report a Content-Length of zero.  It will stringify to
its status line.

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
# ABSTRACT: an exception with no body

