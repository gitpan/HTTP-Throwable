package HTTP::Throwable::NotAcceptable;
use Moose;
use MooseX::StrictConstructor;

extends 'HTTP::Throwable';

has '+status_code' => ( default => 406 );
has '+reason'      => ( default => 'Not Acceptable' );

__PACKAGE__->meta->make_immutable;

no Moose; 1;



=pod

=head1 NAME

HTTP::Throwable::NotAcceptable - 406 Not Acceptable

=head1 VERSION

version 0.001

=head1 DESCRIPTION

The resource identified by the request is only capable of generating
response entities which have content characteristics not acceptable
according to the accept headers sent in the request.

Unless it was a HEAD request, the response SHOULD include an entity
containing a list of available entity characteristics and location(s)
from which the user or user agent can choose the one most appropriate.
The entity format is specified by the media type given in the
Content-Type header field. Depending upon the format and the capabilities
of the user agent, selection of the most appropriate choice MAY be
performed automatically. However, this specification does not define
any standard for such automatic selection.

  Note: HTTP/1.1 servers are allowed to return responses which are
  not acceptable according to the accept headers sent in the
  request. In some cases, this may even be preferable to sending a
  406 response. User agents are encouraged to inspect the headers of
  an incoming response to determine if it is acceptable.

If the response could be unacceptable, a user agent SHOULD temporarily
stop receipt of more data and query the user for a decision on further
actions.

=head1 AUTHOR

Stevan Little <stevan.little@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: 406 Not Acceptable

