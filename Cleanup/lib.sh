#!/bin/bash
# Authors: 	Dalibor Pospíšil	<dapospis@redhat.com>
#   Author: Dalibor Pospisil <dapospis@redhat.com>
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
#   Copyright (c) 2020 Red Hat, Inc. All rights reserved.
#
#   This copyrighted material is made available to anyone wishing
#   to use, modify, copy, or redistribute it subject to the terms
#   and conditions of the GNU General Public License version 2.
#
#   This program is distributed in the hope that it will be
#   useful, but WITHOUT ANY WARRANTY; without even the implied
#   warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
#   PURPOSE. See the GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public
#   License along with this program; if not, write to the Free
#   Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
#   Boston, MA 02110-1301, USA.
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#   library-prefix = CleanupWrapper
#   library-version = 1
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
__INTERNAL_Cleanup_wrapper_LIB_VERSION=1
__INTERNAL_Cleanup_wrapper_LIB_NAME='distribution/Cleanup'
: <<'=cut'
=pod

=head1 NAME

BeakerLib library distribution/Cleanup

=head1 DESCRIPTION

This is a compatibility layer to overcome a transitional phase from
distribution/Cleanup to ControlFLow/Cleanup.

=cut
echo -n "loading library $__INTERNAL_Cleanup_LIB_NAME v$__INTERNAL_Cleanup_LIB_VERSION... "

# epelWrapperLibraryLoaded ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {{{
CleanupWrapperLibraryLoaded() {
  rlRun "rlImport ControlFlow/Cleanup" || rlDie 'could not import library(ControlFlow/Cleanup)'
}; # end of CleanupWrapperLibraryLoaded }}}


: <<'=cut'
=pod

=head1 AUTHORS

=over

=item *

Dalibor Pospisil <dapospis@redhat.com>

=back

=cut

echo 'done.'
