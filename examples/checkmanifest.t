#!/usr/bin/perl -T

# examples/checkmanifest.t
#  Ensures MANIFEST file is up-to-date
#
# $Id: checkmanifest.t 4996 2009-01-19 21:05:47Z FREQUENCY@cpan.org $
#
# This test script is hereby released into the public domain.

use strict;
use warnings;

use Test::DistManifest;

manifest_ok();
