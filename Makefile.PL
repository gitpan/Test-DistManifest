
use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Author test that validates a package MANIFEST",
  "AUTHOR" => "Jonathan Yu <jawnsy\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Test::More" => "0.62",
    "Test::NoWarnings" => "0.084"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Test-DistManifest",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Test::DistManifest",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Cwd" => 0,
    "ExtUtils::Manifest" => 0,
    "File::Find" => 0,
    "File::Spec" => 0,
    "Module::Manifest" => "0.07",
    "Test::Builder" => 0
  },
  "VERSION" => "1.012",
  "test" => {
    "TESTS" => "t/*.t"
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



