package HTTP::Throwable::Role::Generic;
BEGIN {
  $HTTP::Throwable::Role::Generic::AUTHORITY = 'cpan:STEVAN';
}
{
  $HTTP::Throwable::Role::Generic::VERSION = '0.017';
}
use Moose::Role;

with 'HTTP::Throwable';

sub default_status_code {
    confess "generic HTTP::Throwable must be given status code in constructor";
}

sub default_reason {
    confess "generic HTTP::Throwable must be given reason in constructor";
}

no Moose::Role; 1;

=pod

=head1 NAME

HTTP::Throwable::Role::Generic - a generic built-by-hand exception

=head1 VERSION

version 0.017

=head1 DESCRIPTION

This role is used (for boring internals-related reasons) when you throw an
exception with no special roles mixed in.

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

# ABSTRACT: a generic built-by-hand exception

