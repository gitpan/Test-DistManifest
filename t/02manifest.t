#!/usr/bin/perl -T

# t/02manifest.t
#  Ensures MANIFEST file is up-to-date
#
# $Id: 02manifest.t 8204 2009-07-25 18:44:04Z FREQUENCY@cpan.org $

use strict;
use warnings;

use Test::DistManifest;

manifest_ok();
