#!/usr/bin/env perl
use strict;
use warnings;
use Web::Library::Test qw(:all);
use Test::More;
library_ok(
    name              => 'UnderscoreJS',
    version           => '1.4.4',
    css_assets        => [],
    javascript_assets => ['/js/underscore-min.js']
);
done_testing;
