package Acme::Lingua::Pirate::Perl;

require 5.005_62;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our $VERSION = '0.1';

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

  s/(\W)the booty/$1\$_/g;
  s/(\W)the treasure/$1\$_/g;

  s/(\W)hornpipe/$1\$%/g;

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
  
Then use the following bits of argot to pepper up yer Perl:

  "be" for "eq"
  "equal" for "=="

  "seize" for "shift"
  "steal" for "shift"
  "plunder" for "shift"
  "thrust" for "push"
  "hurl" for "pop"

  "keelhaul" for "die"
  "walk the plank" for "die"
  "scupper" for "die"
  "sink" for "die"
  "capsize" for "die"

  "curse" for "warn"

  "the booty" for "$_"
  "the treasure" for "$_"

  "hornpipe" for "$%"

  "sound off" for "print"
  "yell" for "print"
  "cry" for "print"

  "vast" for "uc"
  "puny" for "lc"

  "squint at" for "study"

  "cast off" for "return"

  "sail off" for "exit"

You also have a wide range of traditional pirate vocabulary to scatter 
through your code and make it all the more piratical, although they won't 
cause anything to actually happen....

  "Arr!" 
  "Arrr!"
  "Arrrr!"
  "Yar!"
  "Yarr!"
  "Yarrr!"
  "Avast!"
  "Shiver me timbers!"
  "Splice the mainbrace!"
  "Yo ho!"
  "Yo ho ho!"


=head1 DESCRIPTION

Avast, ye scurvy dogs! September 19th be B<International Talk Like A Pirate Day>! An' if 
thy code ain't shipshape, ye'll be walkin' that thar plank!

L<http://www.yarr.org.uk/>

=head1 AUTHOR

Earle Martin <emartin@cpan.org>, but really Simon Wistow <simon@twoshortplanks.com>, 
because this is a straight rip of his L<Acme::Lingua::Strine::Perl>!

=head1 BLAME

It's all london.pm's fault, of course.

=head1 SEE ALSO

L<Filter::Simple>, L<Acme::Scurvy::Whoreson::BilgeRat>

=cut
