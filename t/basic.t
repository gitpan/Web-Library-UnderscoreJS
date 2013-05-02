#!/usr/bin/env perl
use strict;
use warnings;
use Web::Library;
use FindBin qw($Bin);
use lib "$Bin/../lib";    # to get the right share files for testing
use Cwd qw(abs_path);
use File::Spec;
use Test::More;
use Test::Differences qw(eq_or_diff);
my $manager = Web::Library->instance;
$manager->mount_library({ name => 'UnderscoreJS', version => '1.4.4' });
my @inc = $manager->include_paths;
eq_or_diff \@inc, [ abs_path("$Bin/../share/1.4.4") ], 'include paths';
my $wanted_file = File::Spec->catfile($inc[0], qw(js underscore-min.js));
ok -e $wanted_file, "$wanted_file exists";
eq_or_diff [ $manager->css_assets_for('UnderscoreJS') ],
  [], 'css_assets_for("UnderscoreJS") works';
eq_or_diff [ $manager->javascript_assets_for('UnderscoreJS') ],
  ['/js/underscore-min.js'], 'javascript_assets_for("UnderscoreJS") works';
done_testing;
