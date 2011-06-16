package HTTP::Throwable::Role::Status::LengthRequired;
BEGIN {
  $HTTP::Throwable::Role::Status::LengthRequired::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::LengthRequired::VERSION = '0.015';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 411 }
sub default_reason      { 'Length Required' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::LengthRequired - 411 Length Required

=head1 VERSION

version 0.015

=head1 DESCRIPTION

The server refuses to accept the request without a defined
Content-Length. The client MAY repeat the request if it
adds a valid Content-Length header field containing the
length of the message-body in the request message.

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

# ABSTRACT: 411 Length Required

