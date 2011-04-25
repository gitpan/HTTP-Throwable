package HTTP::Throwable::Role::Status::PreconditionFailed;
BEGIN {
  $HTTP::Throwable::Role::Status::PreconditionFailed::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::PreconditionFailed::VERSION = '0.013';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 412 }
sub default_reason      { 'Precondition Failed' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::PreconditionFailed - 412 Precondition Failed

=head1 VERSION

version 0.013

=head1 DESCRIPTION

The precondition given in one or more of the request-header
fields evaluated to false when it was tested on the server.
This response code allows the client to place preconditions
on the current resource metainformation (header field data)
and thus prevent the requested method from being applied to
a resource other than the one intended.

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

# ABSTRACT: 412 Precondition Failed

