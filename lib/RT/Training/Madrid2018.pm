use strict;
use warnings;
package RT::Training::Madrid2018;

our $VERSION = '0.01';

=head1 NAME

RT-Training-Madrid2018 - Code examples from Madrid training

=head1 DESCRIPTION

Examples of ways to modify RT and RTIR from an extension.

=head1 RT VERSION

Works with RT 4.4 and RTIR 4.0

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

Add this line:

    Plugin('RT::Training::Madrid2018');

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=item C<make initdb>

Add a new action

=back

=head1 AUTHOR

Best Practical Solutions, LLC E<lt>modules@bestpractical.comE<gt>

=for html <p>All bugs should be reported via email to <a
href="mailto:bug-RT-Training-Madrid2018@rt.cpan.org">bug-RT-Training-Madrid2018@rt.cpan.org</a>
or via the web at <a
href="http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Training-Madrid2018">rt.cpan.org</a>.</p>

=for text
    All bugs should be reported via email to
        bug-RT-Training-Madrid2018@rt.cpan.org
    or via the web at
        http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Training-Madrid2018

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2018 by Best Practical Solutions, LLC

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
