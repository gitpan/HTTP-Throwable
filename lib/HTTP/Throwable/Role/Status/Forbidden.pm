package HTTP::Throwable::Role::Status::Forbidden;
BEGIN {
  $HTTP::Throwable::Role::Status::Forbidden::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::Forbidden::VERSION = '0.016';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 403 }
sub default_reason      { 'Forbidden' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::Forbidden - 403 Forbidden

=head1 VERSION

version 0.016

=head1 DESCRIPTION

The server understood the request, but is refusing to fulfill it.
Authorization will not help and the request SHOULD NOT be repeated.
If the request method was not HEAD and the server wishes to make
public why the request has not been fulfilled, it SHOULD describe
the reason for the refusal in the entity. If the server does not
wish to make this information available to the client, the status
code 404 (Not Found) can be used instead.

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

# ABSTRACT: 403 Forbidden

