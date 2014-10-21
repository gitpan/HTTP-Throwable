package HTTP::Throwable::Role::Status::UnsupportedMediaType;
BEGIN {
  $HTTP::Throwable::Role::Status::UnsupportedMediaType::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $HTTP::Throwable::Role::Status::UnsupportedMediaType::VERSION = '0.012';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 415 }
sub default_reason      { 'Unsupported Media Type' }

no Moose::Role; 1;



=pod

=head1 NAME

HTTP::Throwable::Role::Status::UnsupportedMediaType - 415 Unsupported Media Type

=head1 VERSION

version 0.012

=head1 DESCRIPTION

The server is refusing to service the request because the entity
of the request is in a format not supported by the requested resource
for the requested method.

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

# ABSTRACT: 415 Unsupported Media Type

