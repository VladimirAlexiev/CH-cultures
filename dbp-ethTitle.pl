#!perl -n

our $IGNORE;
$IGNORE or do {
  my $ign =
    join "|",
    sort {length($b) <=> length($a)} # longer matches first
    map {chomp; $_} <DATA>;
  $IGNORE = qr{($ign)};
};

my ($url,$name) = m{<(http://dbpedia.org/resource/(.*)_(?:peoples?|tribes?|cultures?))>} or next;
$name =~ s{_}{ }g;
$name =~ m{Lists? of|Category:|Template:| in | of | tea } and next;
$name =~ m{Olmec influences on Mesoamerican culture} and do {
  print "Olmec\thttp://dbpedia.org/resource/Olmec\n";
  print "\thttp://dbpedia.org/resource/Mesoamerican_culture\n"; # for some reason is missing!
  next};
$name =~ m{$IGNORE} and next;
print "$name\t$url\n";

__DATA__
3D
Alabama
Alternative
Bicycle
Blood
Deaf
Death
Devil
Dominant|Dominator
Earth
Embryo
Enrichment
Fed-batch
Former
Fraternity
Genocide
HIV-positive
Homeland
Hookup
Horse
Insect
LGBT
Manifesto
Middle-earth
Mother
Mumbai
Night
Normative
Oldest
Organizational
Osteodontokeratic
Outline
Page 3
Parochial
Participatory
Permission
Philosophy
Plant tissue
Poor
Popular
Potlach
Rainbows
Sun
Theology
Throat
Tissue
To my
Trans
U\.S\.
Uncontacted
Underground
Universiti
Video
Vietnamese boat
Welfare
Wikipedia
Winnipeg
Wealth
against
among
automobile
chosen
clash
customs
fascism
football
friendship
homeland
influence
inhabited
juggling
literary
management
mining
mobile
named after
personality
pop
rights
speaking
steamboat
transgender
youth
