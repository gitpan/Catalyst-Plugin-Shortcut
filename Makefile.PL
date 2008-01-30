#!/usr/bin/perl -w
# vi:ts=4:sw=4

use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME         => 'Catalyst::Plugin::Shortcut',
	VERSION_FROM => 'lib/Catalyst/Plugin/Shortcut.pm',
	ABSTRACT     => 'Shortcut collection for some methods of Catalyst',
	AUTHOR       => 'Oleg Kostyuk (cub.uanic@gmail.com)',
	PREREQ_PM    => { 'Catalyst' => '2.99', },
);

