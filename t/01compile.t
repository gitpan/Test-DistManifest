#!/usr/bin/perl -T

# t/01compile.t
#  Check that the module can be compiled and loaded properly.
#
# $Id: 01compile.t 8204 2009-07-25 18:44:04Z FREQUENCY@cpan.org $

use strict;
use warnings;

use Test::More tests => 2;
use Test::NoWarnings; # 1 test

# Check that we can load the module
BEGIN {
  use_ok('Test::DistManifest'); # 1 test
}
