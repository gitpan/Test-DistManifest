#!/usr/bin/perl -T

# examples/checkmanifest.t
#  Ensures MANIFEST file is up-to-date
#
# $Id: checkmanifest.t 5 2008-12-25 23:16:47Z frequency $
#
# This test script is hereby released into the public domain.

use strict;
use warnings;

use Test::DistManifest;

manifest_ok();
