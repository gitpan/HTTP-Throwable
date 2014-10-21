package HTTP::Throwable::Role::Status::NotImplemented;
BEGIN {
  $HTTP::Throwable::Role::Status::NotImplemented::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::NotImplemented::VERSION = '0.016';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 501 }
sub default_reason      { 'Not Implemented' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::NotImplemented - 501 Not Implemented

=head1 VERSION

version 0.016

=head1 DESCRIPTION

The server does not support the functionality required to
fulfill the request. This is the appropriate response when
the server does not recognize the request method and is
not capable of supporting it for any resource.

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

# ABSTRACT: 501 Not Implemented

