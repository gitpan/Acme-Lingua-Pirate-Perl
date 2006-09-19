package Acme::Lingua::Pirate::Perl;

require 5.005_62;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our $VERSION = '0.13';

use Filter::Simple sub  {

  s{(\W)be}{$1eq}g;
  s{(\W)equal}{$1==}g;

  s{(\W)seize}{$1shift}g;
  s{(\W)steal}{$1shift}g;
  s{(\W)plunder}{$1shift}g;
  s{(\W)thrust}{$1push}g;
  s{(\W)hurl}{$1pop}g;

  s{(\W)moor}{$1wait}g;
  
  s{(\W)keelhaul(?: her)?}{$1die}g;
  s{(\W)scuttle(?: her)?}{$1die}g;
  s{(\W)sink(?: her)?}{$1die}g;
  s{(\W)capsize(?: her)?}{$1die}g;

  s{(\W)curse}{$1warn}g;

  s{(\W)the booty}{$1\@_}g;
  s{(\W)(?:a|the) treasure}{$1\@_}g;
  s{(\W)the gold}{$1\$_}g;
  s{(\W)the doubloons}{$1\$_}g;

  s{(\W)the rope's end}{$1\$/}g;
  s{(\W)Davy Jones' Locker}{$1\$\@}g;
  s{(\W)(?:a|the) whale}{$1\$!}g;
  s{(\W)(?:a|the) hornpipe}{$1\$%}g;

  s{(\W)sound off}{$1print}g;
  s{(\W)yell}{$1print}g;
  s{(\W)cry}{$1print}g;

  s{(\W)vast}{$1uc}g;
  s{(\W)puny}{$1lc}g;

  s{(\W)squint at}{$1study}g;

  s{(\W)cast off}{$1return}g;

  s{(\W)sail off}{$1exit}g;
  s{(\W)weigh anchor}{$1exit}g;

  s{(\W)bilge:}{$1__DATA__g};
  s{(\W)poop deck:}{$1__END__}g;
  
  # random interjections are case-insensitive...
  
  s{(\W)ar[r]+(?:\W)}{$1}gi;
  s{(\W)ya[r]+(?:\W)}{$1}gi;
  s{(\W)rar[r]*(?:\W)}{$1}gi; # Cap'n Gellyfish of the good ship Fabulous

  s{(\W)avast(?:\W)}{$1}gi;
  s{(\W)bucko(?:\W)}{$1}gi;
  s{(\W)curse ye(?:\W)}{$1}gi;
  s{(\W)curse thy deadlights(?:\W)}{$1}gi;
  s{(\W)gangway(?:\W)}{$1}gi;
  s{(\W)matey(?:\W)}{$1}gi;
  s{(\W)me hearties(?:\W)}{$1}gi;
  s{(\W)scallywag[s]?(?:\W)}{$1}gi;
  s{(\W)shiver me timbers(?:\W)}{$1}gi;
  s{(\W)splice the mainbrace(?:\W)}{$1}gi;
  s{(\W)sprog[s]?(?:\W)}{$1}gi;
  s{(\W)swab[s]?(?:\W)}{$1}gi;
  s{(\W)ye scurvy dog[s]?(?:\W)}{$1}gi;
  s{(\W)yo[\s-]ho(?:[\s-]ho)?(?:\W)}{$1}gi;
  
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

=item * C<keelhaul> or C<scuttle> or C<sink> or C<capsize> for C<die> - add " her" if you like

=item * C<curse> for C<warn>

=item * C<the booty> or C<the treasure> (or C<a treasure>) for C<@_>

=item * C<the gold> or C<the doubloons> for C<$_>

=item * C<Davy Jones' Locker> for C<$@>, C<a whale> (or C<the whale>) for C<$!> and C<a hornpipe> or (C<the hornpipe>) for C<$%>

=item * C<the rope's end> for C<$/>

=item * C<sound off>, C<yell> or C<cry> for C<print>

=item * C<vast> for C<uc>, C<puny> for C<lc>

=item * C<squint at> for C<study>

=item * C<cast off> for C<return>, C<sail off> or C<weigh anchor> for C<exit>

=item * C<bilge:> for C<__DATA__> and C<poop deck:> for C<__END__>

=back 

You also have a wide range of traditional pirate vocabulary to scatter 
through your code and make it all the more piratical, although they won't 
cause anything to actually happen, except perhaps terrifying any landlubbers
who happen to read your code.

=over 4

=item * arr (or arrr, arrrr...)

=item * yar (or yarr, yarrr...)

=item * avast

=item * curse ye

=item * curse thy deadlights

=item * matey

=item * scallywag(s)

=item * shiver me timbers

=item * splice the mainbrace

=item * sprog(s)

=item * swab(s)

=item * ye scurvy dog(s)

=item * yo ho (ho) (optionally hyphenated)

=back 

These are case-insensitive and can be followed by a non-word character (i.e., space or punctuation), 
allowing you to mix and match at will. Examples:

    AVAST! YE SCURVY DOG!
    
    Arrrrrr. Shiver me timbers matey.
    
    Yar! Curse thy deadlights, sprog!
    
    yo-ho-ho, scallywags

More handy piratical vocab can be found at: L<http://www.puzzlepirates.com/Vocabulary.xhtml>
    
=head1 WHY?

Take heed! September 19th be B<International Talk Like A Pirate Day>! An' if 
thy code ain't shipshape, ye'll be walkin' the plank!

L<http://www.yarr.org.uk/>

=head1 AUTHOR

Earle Martin <hex [at] cpan [dot] org>, but really Simon Wistow <simon [at] twoshortplanks [dot] com>, 
because this is a straight rip of his L<Acme::Lingua::Strine::Perl>!

=head1 BLAME

It's all london.pm's fault, of course.

=head1 DEDICATION

This module is dedicated to Captain Jack Sparrow, the best pirate I have ever seen.

=head1 SEE ALSO

L<Filter::Simple>, L<Acme::Scurvy::Whoreson::BilgeRat>

=cut
