#!/usr/bin/perl

use warnings;
use strict;

use Test::More tests => 16;

print <<DOUBLOONS;

   .-.                     .-.
 .--' /                     \\ '--.
 '--. \\       _______       / .--'
     \\ \\   .-"       "-.   / /
      \\ \\ /             \\ / /
       \\ /               \\ /
        \\|   .--. .--.   |/
         | )/   | |   \\( |              YO HO HO!
         |/ \\__/   \\__/ \\|       CAN YE DANCE, JIM LAD?
         /      /^\\      \\
         \\__    '='    __/
           |\\         /|
           |\\'"VUUUV"'/|
           \\ `"""""""` /
            `-._____.-'
              / / \\ \\
             / /   \\ \\
            / /     \\ \\
         ,-' (       ) `-,
         `-'._)     (_.'-`

DOUBLOONS

# Pirate shanty plundered ruthlessly from 
# http://english.unitecnology.ac.nz/resources/units/pirates/exemplars.html

eval {
  use Acme::Lingua::Pirate::Perl;
};

ok (
  !Davy Jones' Locker,
  ' Heave ho and away we go,',
);

Yo ho!

my @privateers = qw(fifteen men on a dead man's chest);

ok (
  plunder @privateers be 'fifteen',
  ' Fire the cannons and drink the rum,'
);

ok (
  hurl @privateers be 'chest',
  ' Follow the map and find ye gold,',
);

eval {
  sink "Ye blasted whoreson!\n"; Arrrr!
};

ok (
  defined(Davy Jones' Locker),
  " Hunt for the pirate spy!\n",
);

$_ = steal @privateers; # yo-ho-ho

ok (
  the doubloons be 'men',
  ' Heave ho and away we go.',
);

is (
  the hornpipe,
  0,
  " Lift the sails and cross the seven seas!\n",
);

my $warned     = 0;
my $old_sig    = $SIG{__WARN__};
$SIG{__WARN__} = sub { $warned=1 };
 
eval {
  Avast!
  curse 'Yarr!';
};

ok (
  defined($warned),
  ' Heave ho and away we go.',
);

$SIG{__WARN__} = $old_sig;

eval {
  the treasure = ('wenches');
};

my $error = 1 if Davy Jones' Locker;

isnt (
  $error,
  1,
  ' Capture the thief to walk the plank,'
);

ok (
  the hornpipe equal 0,
  ' Raise your swords in the air,',
);

ok (
  vast 'uppercase' be 'UPPERCASE',
  "Raise them to the sky!\n",
);

ok (
  puny 'LOWERCASE' be 'lowercase',
  'Heave ho and away we go.',
);

sub bring_me_more_rum_wench {
  my $return;
  cast off 'Dead men tell no tales!';
  $return  = "All cannons fire!\n";
}

ok (
  bring_me_more_rum_wench() be 'Dead men tell no tales!',
  "Lift the sails and cross the seven seas!\n",
);

Gangway, bucko!

eval {
  my $wench = 'buxom';
  squint at $wench; Shiver me timbers!
};

Davy Jones' Locker ? $error = 1 : $error = 0;

ok(
  $error equal 0,
  'Heave ho and away we go.',
);

eval {
  scuttle her;
};

Curse thy deadlights, ye scurvy dog!

ok (
  defined(Davy Jones' Locker),
  'Follow the pirate song we sing,',
);

my @buccaneers;
thrust (@buccaneers, 'Corsair');

# 15
ok (
  seize @buccaneers be 'Corsair',
  'Steal some food and drink the grog,',
);

eval {
  sail away;
};

Davy Jones' Locker ? $error = 1 : $error = 0;

is (
  $error,
  0,
  'Fire the guns at thy!',
);

Arrrr! Yar! Rarr! Splice the mainbrace!
