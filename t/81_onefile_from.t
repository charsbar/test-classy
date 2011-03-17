use strict;
use warnings;
use Test::Classy;

load_tests_from 'Test::Classy::Test::OneFile';

run_tests;

package Test::Classy::Test::OneFile::First;
use Test::Classy::Base;

sub first_test : Test {
  my $class = shift;
  pass $class->message("first test is recognized");
}

package Test::Classy::Test::OneFile::Second;
use Test::Classy::Base;

sub second_test : Test {
  my $class = shift;
  pass $class->message("second test is recognized");
}