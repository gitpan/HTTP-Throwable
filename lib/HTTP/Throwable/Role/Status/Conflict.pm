package HTTP::Throwable::Role::Status::Conflict;
BEGIN {
  $HTTP::Throwable::Role::Status::Conflict::AUTHORITY = 'cpan:STEVAN';
}
{
  $HTTP::Throwable::Role::Status::Conflict::VERSION = '0.017';
}
use Moose::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 409 }
sub default_reason      { 'Conflict' }

no Moose::Role; 1;

=pod

=head1 NAME

HTTP::Throwable::Role::Status::Conflict - 409 Conflict

=head1 VERSION

version 0.017

=head1 DESCRIPTION

The request could not be completed due to a conflict with
the current state of the resource. This code is only allowed
in situations where it is expected that the user might be able
to resolve the conflict and resubmit the request. The response
body SHOULD include enough information for the user to recognize
the source of the conflict. Ideally, the response entity would
include enough information for the user or user agent to fix
the problem; however, that might not be possible and is not
required.

Conflicts are most likely to occur in response to a PUT request.
For example, if versioning were being used and the entity being
PUT included changes to a resource which conflict with those
made by an earlier (third-party) request, the server might use
the 409 response to indicate that it can't complete the request.
In this case, the response entity would likely contain a list of
the differences between the two versions in a format defined by
the response Content-Type.

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

# ABSTRACT: 409 Conflict

