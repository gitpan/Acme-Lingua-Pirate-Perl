package Acme::Lingua::Pirate::Perl;

require 5.005_62;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our $VERSION = '0.12';

use Filter::Simple sub  {

  s/(\W)be/$1eq/g;
  s/(\W)equal/$1==/g;

  s/(\W)seize/$1shift/g;
  s/(\W)steal/$1shift/g;
  s/(\W)plunder/$1shift/g;
  s/(\W)thrust/$1push/g;
  s/(\W)hurl/$1pop/g;

  s/(\W)keelhaul/$1die/g;
  s/(\W)scupper/$1die/g;
  s/(\W)sink/$1die/g;
  s/(\W)capsize/$1die/g;

  s/(\W)curse/$1warn/g;

  s/(\W)the booty/$1\@_/g;
  s/(\W)the treasure/$1\@_/g;
  s/(\W)the gold/$1\$_/g;
  s/(\W)the doubloons/$1\$_/g;

  s/(\W)Davy Jones' Locker/$1\$\@/g;
  s/(\W)a whale/$1\$!/g;
  s/(\W)a hornpipe/$1\$%/g;

  s/(\W)sound off/$1print/g;
  s/(\W)yell/$1print/g;
  s/(\W)cry/$1print/g;

  s/(\W)vast/$1uc/g;
  s/(\W)puny/$1lc/g;

  s/(\W)squint at/$1study/g;

  s/(\W)cast off/$1return/g;

  s/(\W)sail off/$1exit/g;

  s/(\W)Arr!/$1/g;
  s/(\W)Arrr!/$1/g;
  s/(\W)Arrrr!/$1/g;
  s/(\W)Yar!/$1/g;
  s/(\W)Yarr!/$1/g;
  s/(\W)Yarrr!/$1/g;
  s/(\W)Rarr!/$1/g; # Cap'n Gellyfish of the good ship Fabulous
  s/(\W)Avast!/$1/g;
  s/(\W)Shiver me timbers!/$1/g;
  s/(\W)Splice the mainbrace!/$1/g;
  s/(\W)Yo ho!/$1/g;
  s/(\W)Yo ho ho!/$1/g;
	
};



1;
__END__

=head1 NAME

Acme::Lingua::Pirate::Perl - be writin' thy Perl like a swarthy sea-dog

=head1 SYNOPSIS

  use Acme::Lingua::Pirate::Perl;
  
Then use the following bits o' argot to pepper up yer Perl:

=over 4

=item * C<be> for C<eq>, C<equal> for C<==>

=item * C<seize> or C<steal> or C<plunder> for C<shift>

=item * C<thrust> for C<push>, C<hurl> for C<pop>

=item * C<keelhaul> or C<scupper> or C<sink> or C<capsize> for C<die>

=item * C<curse> for C<warn>

=item * C<the booty> or C<the treasure> for C<@_>

=item * C<the gold> or C<the doubloons> for C<$_>

=item * C<Davy Jones' Locker> for C<$@>, C<a whale> for C<$!> and C<a hornpipe> for C<$%>

=item * C<sound off>, C<yell> or C<cry> for C<print>

=item * C<vast> for C<uc>, C<puny> for C<lc>

=item * C<squint at> for C<study>

=item * C<cast off> for C<return>, C<sail off> for C<exit>

=back 

You also have a wide range of traditional pirate vocabulary to scatter 
through your code and make it all the more piratical, although they won't 
cause anything to actually happen, except perhaps terrifying any landlubbers
who happen to read your code.

=over 4

=item * Arr!

=item * Arrr!

=item * Arrrr!

=item * Yar!

=item * Yarr!

=item * Yarrr! (note the varying levels of emphasis to match your mood...)

=item * Avast!

=item * Shiver me timbers!

=item * Splice the mainbrace!

=item * Yo ho!

=item * Yo ho ho!

=back 

=head1 DESCRIPTION

Avast, ye scurvy dogs! September 19th be B<International Talk Like A Pirate Day>! An' if 
thy code ain't shipshape, ye'll be walkin' the plank!

L<http://www.yarr.org.uk/>

=head1 AUTHOR

Earle Martin <emartin@cpan.org>, but really Simon Wistow <simon@twoshortplanks.com>, 
because this is a straight rip of his L<Acme::Lingua::Strine::Perl>!

=head1 BLAME

It's all london.pm's fault, of course.

=head1 DEDICATION

This module is dedicated to Captain Jack Sparrow, the best pirate I have ever seen.

=head1 SEE ALSO

L<Filter::Simple>, L<Acme::Scurvy::Whoreson::BilgeRat>

=cut
