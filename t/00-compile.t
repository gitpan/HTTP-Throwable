use strict;
use warnings;

# This test was generated via Dist::Zilla::Plugin::Test::Compile 2.018

use Test::More 0.88;



use Capture::Tiny qw{ capture };

my @module_files = qw(
HTTP/Throwable.pm
HTTP/Throwable/Factory.pm
HTTP/Throwable/Role/BoringText.pm
HTTP/Throwable/Role/Generic.pm
HTTP/Throwable/Role/NoBody.pm
HTTP/Throwable/Role/Redirect.pm
HTTP/Throwable/Role/Status/BadGateway.pm
HTTP/Throwable/Role/Status/BadRequest.pm
HTTP/Throwable/Role/Status/Conflict.pm
HTTP/Throwable/Role/Status/ExpectationFailed.pm
HTTP/Throwable/Role/Status/Forbidden.pm
HTTP/Throwable/Role/Status/Found.pm
HTTP/Throwable/Role/Status/GatewayTimeout.pm
HTTP/Throwable/Role/Status/Gone.pm
HTTP/Throwable/Role/Status/HTTPVersionNotSupported.pm
HTTP/Throwable/Role/Status/ImATeapot.pm
HTTP/Throwable/Role/Status/InternalServerError.pm
HTTP/Throwable/Role/Status/LengthRequired.pm
HTTP/Throwable/Role/Status/MethodNotAllowed.pm
HTTP/Throwable/Role/Status/MovedPermanently.pm
HTTP/Throwable/Role/Status/MultipleChoices.pm
HTTP/Throwable/Role/Status/NotAcceptable.pm
HTTP/Throwable/Role/Status/NotFound.pm
HTTP/Throwable/Role/Status/NotImplemented.pm
HTTP/Throwable/Role/Status/NotModified.pm
HTTP/Throwable/Role/Status/PreconditionFailed.pm
HTTP/Throwable/Role/Status/ProxyAuthenticationRequired.pm
HTTP/Throwable/Role/Status/RequestEntityTooLarge.pm
HTTP/Throwable/Role/Status/RequestTimeout.pm
HTTP/Throwable/Role/Status/RequestURITooLong.pm
HTTP/Throwable/Role/Status/RequestedRangeNotSatisfiable.pm
HTTP/Throwable/Role/Status/SeeOther.pm
HTTP/Throwable/Role/Status/ServiceUnavailable.pm
HTTP/Throwable/Role/Status/TemporaryRedirect.pm
HTTP/Throwable/Role/Status/Unauthorized.pm
HTTP/Throwable/Role/Status/UnsupportedMediaType.pm
HTTP/Throwable/Role/Status/UseProxy.pm
HTTP/Throwable/Role/TextBody.pm
);

my @scripts = qw(

);

# no fake home requested

my @warnings;
for my $lib (@module_files)
{
    my ($stdout, $stderr, $exit) = capture {
        system($^X, '-Mblib', '-e', qq{require q[$lib]});
    };
    is($?, 0, "$lib loaded ok");
    warn $stderr if $stderr;
    push @warnings, $stderr if $stderr;
}



is(scalar(@warnings), 0, 'no warnings found') if $ENV{AUTHOR_TESTING};



done_testing;
