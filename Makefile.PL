use strict;
use warnings;



use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Triple-DES EDE encryption/decryption",
  "AUTHOR" => "Benjamin Trott <ben\@rhumba.pair.com>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Crypt-DES_EDE3",
  "LICENSE" => "perl",
  "NAME" => "Crypt::DES_EDE3",
  "PREREQ_PM" => {
    "Crypt::DES" => 0
  },
  "VERSION" => "0.02",
  "test" => {
    "TESTS" => ""
  }
);


my %FallbackPrereqs = (
  "Crypt::DES" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
