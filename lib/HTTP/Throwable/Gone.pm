package HTTP::Throwable::Gone;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 410 );
has '+reason'      => ( default => 'Gone' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::Gone - 410 Gone

=head1 VERSION

version 0.003

=head1 DESCRIPTION

The requested resource is no longer available at the server and
no forwarding address is known. This condition is expected to
be considered permanent. Clients with link editing capabilities
SHOULD delete references to the Request-URI after user approval.
If the server does not know, or has no facility to determine,
whether or not the condition is permanent, the status code 404
(Not Found) SHOULD be used instead. This response is cacheable
unless indicated otherwise.

The 410 response is primarily intended to assist the task of web
maintenance by notifying the recipient that the resource is
intentionally unavailable and that the server owners desire that
remote links to that resource be removed. Such an event is common
for limited-time, promotional services and for resources belonging
to individuals no longer working at the server's site. It is not
necessary to mark all permanently unavailable resources as "gone"
or to keep the mark for any length of time -- that is left to the
discretion of the server owner.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 410 Gone

