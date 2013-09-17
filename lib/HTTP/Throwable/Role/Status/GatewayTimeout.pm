package HTTP::Throwable::Role::Status::GatewayTimeout;
BEGIN {
  $HTTP::Throwable::Role::Status::GatewayTimeout::AUTHORITY = 'cpan:STEVAN';
}
{
  $HTTP::Throwable::Role::Status::GatewayTimeout::VERSION = '0.017';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 504 }
sub default_reason      { 'Gateway Timeout' }

no Moose::Role; 1;

=pod

=head1 NAME

HTTP::Throwable::Role::Status::GatewayTimeout - 504 Gateway Timeout

=head1 VERSION

version 0.017

=head1 DESCRIPTION

The server, while acting as a gateway or proxy, did not
receive a timely response from the upstream server specified
by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary
server (e.g. DNS) it needed to access in attempting to
complete the request.

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

# ABSTRACT: 504 Gateway Timeout

