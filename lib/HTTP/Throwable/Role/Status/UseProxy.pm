package HTTP::Throwable::Role::Status::UseProxy;
BEGIN {
  $HTTP::Throwable::Role::Status::UseProxy::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::UseProxy::VERSION = '0.016';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::Redirect',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 305 }
sub default_reason      { 'Use Proxy' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::UseProxy - 305 Use Proxy

=head1 VERSION

version 0.016

=head1 DESCRIPTION

The requested resource MUST be accessed through the proxy given
by the Location field. The Location field gives the URI of the
proxy. The recipient is expected to repeat this single request
via the proxy. 305 responses MUST only be generated by origin
servers.

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

# ABSTRACT: 305 Use Proxy

