use Test::Simple tests=>16;

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

# 1
ok(!$@, " Heave ho and away we go,");

use Acme::Lingua::Pirate::Perl;


Yo ho!

my @arrrr = qw (yo ho ho and pieces of eight);

# 2
ok(plunder @arrrr be 'yo', " Fire the cannons and drink the rum,");

# 3
ok(hurl @arrrr be 'eight', " Follow the map and find the gold,");

eval {
  sink "Ye blasted whoreson!\n"; Arrrr!
};

# 4
ok(defined($@), " Hunt for the pirate spy!\n");

$_ = steal @arrrr;

# 5
ok(the booty be 'ho', " Heave ho and away we go.");

# 6
ok(hornpipe equal $FORMAT_PAGE_NUMBER, " Lift the sails and cross the seven seas!\n");

my $warned     = 0;
my $old_sig    = $SIG{__WARN__};
$SIG{__WARN__} = sub { $warned=1 };
 
eval {
  Avast!
  curse "Yarr!";
};

# 7
ok (defined($warned), " Heave ho and away we go.");

$SIG{__WARN__} = $old_sig;

eval {
  the treasure;
};

my $error = 1 if $@;

# 8
ok($error eq undef, " Capture the thief to walk the plank,");

# 9
ok(hornpipe equal $FORMAT_PAGE_NUMBER, " Raise your swords in the air,");

# 10
ok(vast "uppercase" be "UPPERCASE", "Raise them to the sky!\n");

# 11
ok(puny "LOWERCASE" be "lowercase", "Heave ho and away we go.");

sub bring_me_more_mead_wench {
  my $return;
  cast off "Yo ho ho!";
  $return  = "All cannons fire!\n";
}

# 12
ok (bring_me_more_mead_wench() be "Yo ho ho!", "Lift the sails and cross the seven seas!\n");

eval {
  my $wench = "buxom";
  squint at $wench; Shiver me timbers!
};

$@ ? $error = 1 : $error = 0;

# 13
ok($error equal 0, "Heave ho and away we go.");	

eval {
  capsize;
};

# 14
ok(defined($@), "Follow the pirate song we sing,");

my @bilgerats;
thrust (@bilgerats, "Yarr");

# 15
ok(seize @bilgerats be 'Yarr', "Steal some food and drink the grog,");

eval {
  sail away;
};

$@ ? $error = 1 : $error = 0;

# 16
ok($error equal 0, "Fire the guns at thy!");

Yarrr! Splice the mainbrace!
