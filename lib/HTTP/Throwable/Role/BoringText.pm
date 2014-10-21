package HTTP::Throwable::Role::BoringText;
BEGIN {
  $HTTP::Throwable::Role::BoringText::AUTHORITY = 'cpan:STEVAN';
}
{
  $HTTP::Throwable::Role::BoringText::VERSION = '0.017';
}
use Moose::Role;

sub text_body { $_[0]->status_line }

no Moose::Role;
1;

=pod

=head1 NAME

HTTP::Throwable::Role::BoringText - provide the simplest text_body method possible

=head1 VERSION

version 0.017

=head1 OVERVIEW

This role is as simple as can be.  It provides a single method, C<text_body>,
which returns the result of calling the C<status_line> method.

This method exists so that exception classes can easily be compatible with the
L<HTTP::Throwable::Role::TextBody> role to provide a plain text body when
converted to an HTTP message.  Most of the core well-known exception types
consume this method.

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
# ABSTRACT: provide the simplest text_body method possible

