#!/usr/bin/perl -w
# vi:ts=4:sw=4
package Catalyst::Plugin::Shortcut;

use strict;
use warnings;
use Class::C3;

our $VERSION = "0.02";

sub urifor
{
	my $self = shift;
	my ( $c, $a, @params ) = @_;

	$self->next::method(@_);
	return $self->uri_for( $self->controller($c)->action_for($a), @params );
}

1;

=head1 NAME

Catalyst::Plugin::Shortcut - shortcut collection for some methods of Catalyst.

=head1 DESCRIPTION

This module's just shortcut, if you don't like type more than needed.

=head1 SYNOPSIS

    # In your application class
    use Catalyst qw/Shortcut/;


    # Then in your TT template use
    [% Catalyst.urifor(
            'Book', 'list',
            @args?,
            \%query_values?
        )
    %]

    # istead of
    [% Catalyst.uri_for(
            Catalyst.controller('Book').action_for('list'),
            @args?,
            \%query_values?
        )
    %]

=head1 METHODS

=over 4

=item urifor

Shortcut for Catalyst::uri_for, see in SYNOPSIS

=head1 AUTHOR

Oleg Kostyuk aka CUB L<cub.uanic@gmail.com>

=head1 SEE ALSO

L<Catalyst>

=head1 COPYRIGHT & LICENSE

    Copyright (c) 2007 the aforementioned author(s). All rights
    reserved. This program is free software; you can redistribute
    it and/or modify it under the same terms as Perl itself.

=cut

