
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'a set of strongly-typed, PSGI-friendly HTTP 1.1 exception libraries',
  'AUTHOR' => 'Stevan Little <stevan.little@iinteractive.com>, Ricardo Signes <rjbs@cpan.org>',
  'BUILD_REQUIRES' => {
    'HTTP::Request::Common' => '0',
    'Plack::Builder' => '0',
    'Plack::Test' => '0',
    'Scalar::Util' => '0',
    'Test::Deep' => '0',
    'Test::Fatal' => '0.003',
    'Test::Moose' => '0',
    'Test::More' => '0.96'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'HTTP-Throwable',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'HTTP::Throwable',
  'PREREQ_PM' => {
    'List::AllUtils' => '0',
    'Moose' => '1.0',
    'Moose::Role' => '0',
    'Moose::Util::TypeConstraints' => '0',
    'MooseX::Role::WithOverloading' => '0',
    'MooseX::StrictConstructor' => '0.12',
    'Plack' => '0.9967',
    'Plack::Util' => '0',
    'StackTrace::Auto' => '0',
    'Sub::Exporter' => '0',
    'Sub::Exporter::Util' => '0',
    'Throwable' => '0.102080',
    'overload' => '0'
  },
  'VERSION' => '0.012',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



