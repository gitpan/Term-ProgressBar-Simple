#!/usr/bin/perl -w

use strict;
use warnings;

use Test::More tests => 1000;

use Term::ProgressBar::Simple;
use Time::HiRes qw( sleep );

{

    my $progress = Term::ProgressBar::Simple->new(20_000);

    for ( 1 .. 10000 ) {
        $progress++;
    }

}

warn "progress destroyed";
ok 1;
