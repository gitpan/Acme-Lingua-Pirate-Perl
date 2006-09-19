#!/usr/bin/perl

use strict;

use Module::Build;

Module::Build->new(

	module_name        => 'Acme::Lingua::Pirate::Perl',
	requires           => {
				'Filter::Simple'  => 0.3
		              },
	license            => 'perl'

)->create_build_script;
