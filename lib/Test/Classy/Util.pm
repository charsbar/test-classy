package Test::Classy::Util;

use strict;
use warnings;
use Test::More ();

sub _current_test {
  if ($Test::More::VERSION >= 2) {
    return Test::More->builder->history->results_count;
  }
  else {
    return Test::More->builder->{Curr_Test};
  }
}

sub _planned {
  if ($Test::More::VERSION >= 2) {
    return Test::More->builder->_plan_handled;
  }
  else {
    return Test::More->builder->{Have_Plan};
  }
}

1;

__END__

=head1 NAME

Test::Classy::Util

=head1 DESCRIPTION

Used internally to hide Test::Builder's internal changes.

=head1 AUTHOR

Kenichi Ishigaki, E<lt>ishigaki@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 by Kenichi Ishigaki.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut
