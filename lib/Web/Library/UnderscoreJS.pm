package Web::Library::UnderscoreJS;
use Moose;
with qw(Web::Library::Provider Web::Library::SimpleAssets);
our $VERSION = '0.03';
sub latest_version { '1.5.1' }

sub version_map {

    # all versions contain the same CSS and JS files
    +{  default => {
            css        => [],
            javascript => ['/js/underscore-min.js']
        }
    };
}
1;

=pod

=head1 NAME

Web::Library::UnderscoreJS - Distribution wrapper around UnderscoreJS

=head1 SYNOPSIS

    my $library_manager = Web::Library->instance;
    $library_manager->mount_library({ name => 'UnderscoreJS' });

=head1 DESCRIPTION

This is a distribution wrapper around Underscore.js. It enables you to include
the client-side library in multiple Web application projects with very little
effort. See L<Web::Library> for the general concept and how to use it with
L<Catalyst>.

=head1 LIBRARY VERSIONS

The following versions are available. For each version all included files are
listed. Files marked with an asterisk are included in that versions' asset
list - see L<Web::Library>'s C<css_link_tags_for()> and C<script_tags_for()>
methods for an explanation of the concept.

=over 4

=item Version 1.4.4
=item Version 1.5.0
=item Version 1.5.1 (the default)

    * js/underscore-min.js

=back

=head1 LIBRARY WEBSITE

Underscore.js can be found at L<http://underscorejs.org/>.

=head1 AUTHORS

The following person is the author of all the files provided in
this distribution EXCEPT Underscore.js files found in C<share/>.

Marcel Gruenauer C<< <marcel@cpan.org> >>, L<http://marcelgruenauer.com>

=head1 COPYRIGHT AND LICENSE

Underscore.js is licensed under the MIT license.

The following copyright notice applies to all files provided in this
distribution EXCEPT Underscore.js files found in C<share/>.

This software is copyright (c) 2013 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

