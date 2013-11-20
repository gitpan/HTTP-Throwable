use strict;
use warnings;
use Test::More 0.88;
# This is a relatively nice way to avoid Test::NoWarnings breaking our
# expectations by adding extra tests, without using no_plan.  It also helps
# avoid any other test module that feels introducing random tests, or even
# test plans, is a nice idea.
our $success = 0;
END { $success && done_testing; }

# List our own version used to generate this
my $v = "\nGenerated by Dist::Zilla::Plugin::ReportVersions::Tiny v1.10\n";

eval {                     # no excuses!
    # report our Perl details
    my $want = "any version";
    $v .= "perl: $] (wanted $want) on $^O from $^X\n\n";
};
defined($@) and diag("$@");

# Now, our module version dependencies:
sub pmver {
    my ($module, $wanted) = @_;
    $wanted = " (want $wanted)";
    my $pmver;
    eval "require $module;";
    if ($@) {
        if ($@ =~ m/Can't locate .* in \@INC/) {
            $pmver = 'module not found.';
        } else {
            diag("${module}: $@");
            $pmver = 'died during require.';
        }
    } else {
        my $version;
        eval { $version = $module->VERSION; };
        if ($@) {
            diag("${module}: $@");
            $pmver = 'died during VERSION check.';
        } elsif (defined $version) {
            $pmver = "$version";
        } else {
            $pmver = '<undef>';
        }
    }

    # So, we should be good, right?
    return sprintf('%-45s => %-10s%-15s%s', $module, $pmver, $wanted, "\n");
}

eval { $v .= pmver('ExtUtils::MakeMaker','6.30') };
eval { $v .= pmver('HTTP::Request::Common','any version') };
eval { $v .= pmver('List::AllUtils','any version') };
eval { $v .= pmver('Module::Runtime','any version') };
eval { $v .= pmver('Moose','1.23') };
eval { $v .= pmver('Moose::Role','any version') };
eval { $v .= pmver('Moose::Util::TypeConstraints','any version') };
eval { $v .= pmver('MooseX::Role::WithOverloading','0.09') };
eval { $v .= pmver('MooseX::StrictConstructor','0.12') };
eval { $v .= pmver('Plack','0.9967') };
eval { $v .= pmver('Plack::Builder','any version') };
eval { $v .= pmver('Plack::Test','any version') };
eval { $v .= pmver('Plack::Util','any version') };
eval { $v .= pmver('Scalar::Util','any version') };
eval { $v .= pmver('StackTrace::Auto','any version') };
eval { $v .= pmver('Sub::Exporter','any version') };
eval { $v .= pmver('Sub::Exporter::Util','any version') };
eval { $v .= pmver('Test::Deep','any version') };
eval { $v .= pmver('Test::Fatal','0.003') };
eval { $v .= pmver('Test::Moose','any version') };
eval { $v .= pmver('Test::More','0.96') };
eval { $v .= pmver('Throwable','0.102080') };
eval { $v .= pmver('base','any version') };
eval { $v .= pmver('overload','any version') };
eval { $v .= pmver('strict','any version') };
eval { $v .= pmver('warnings','any version') };


# All done.
$v .= <<'EOT';

Thanks for using my code.  I hope it works for you.
If not, please try and include this output in the bug report.
That will help me reproduce the issue and solve your problem.

EOT

diag($v);
ok(1, "we really didn't test anything, just reporting data");
$success = 1;

# Work around another nasty module on CPAN. :/
no warnings 'once';
$Template::Test::NO_FLUSH = 1;
exit 0;
