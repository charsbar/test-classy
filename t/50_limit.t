use strict;
use warnings;
use lib 't/lib';
use Test::Classy;

load_tests_from 'Test::Classy::Test::Limit';

limit_tests_by 'Target';

run_tests;
