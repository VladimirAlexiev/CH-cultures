#!perl -wp

BEGIN {binmode(STDIN,":utf8")};

our $IGNORE;
$IGNORE or do { # can't read <DATA> in BEGIN{}
  my $ign =
    join "|",
    sort {length($b) <=> length($a)} # longer matches first
    map {chomp; $_} <DATA>;
  $IGNORE = qr{ +($ign)\b}i; # IMPORTANT not to consume spaces after ), and to specify /i here
  # print $IGNORE; exit;
};

s{\@en}{};
s{\^\^<http://www.w3.org/2001/XMLSchema#string>}{};
s{.*<http://www.w3.org/2001/XMLSchema#gMonthDay>}{};
s{http://www.global-training-report.com/reyla_rev.htm}{};
s{http://web.archive.org/web/20060615093455/www.4dw.net/royalark/Turkey/turkey4.htm}{};
s{Gibraltariana}{Gibraltarian}g; # "a" comes from superscripted footnote
s{Jewsish}{Jewish};
s{([a-z])([A-Z])}{$1, $2}g; # correct bad extraction that has merged words
s{[0-9]+\.}{ }g;
s{[0-9/]th}{ }g;
s{[0-9%~≈<>=()\[\]?"#]+}{ }g;
s{''|-uninhabited-|non-|north-|-religious|`|incl\.}{}gi;
s{(‘|\200\230)}{'}g; # unicode lapos
s{(’|\200\231)}{'}g; # unicode rapos
s{(–|\200\223)}{-}g; # unicode dash
s{}{-}g; # unicode dash
s{ - }{-}g;
s{\band$}{ }gm;
s{\b(and|or|with|as well as|but)\b}{ \n }gi;
s{ *[,&*/;] *}{ \n }g;
s{: }{ \n }g;
s{  +}{ }g;
s{$IGNORE}{}gi;
s{^[- ]+}{}gm;
s{[ :.-]+$}{}gm;

# plural to singular.
# TODO: often we need the opposite: "X people" is in singular
s{bis$}{bi}gm; # Punjabis
s{chis$}{ch}gm; # Baloch
s{his$}{hi}gm; # Sindhi
s{ies$}{y}gm; # Pygmy
s{ngs$}{ng}gm; # Mising
s{nis$}{ni}gm; # Azerbaijani
s{ns$}{n}gm; # Australian
s{rs$}{r}gm; # Gotlander, Côtier
s{ris$}{ri}gm; # Deori, Mirpuri, Benadiri
s{us$}{u}gm; # Bantu, Hundu
s{las$}{la}# Jbala

__DATA__
Ashkenazic
India
North
Northeastern
Northern
Northwestern
Romania
Torres Strait
USA
U\.S
Ukraine
United States
Yemen
Zen Buddhist
a Normanised Breton..group[ |=]note
a few Slovenes
aboriginal
afro-descendant
against
all
almost
also
ambiguous
americann
an Indian
ancestry
are
as associate
as associates
as monolingual
asianntitry
background:transparent;?
belonged to an 'outcaste' community of tanners
bi-racial
big river
black
born in Dublin
boxers
by citizenship
ca
castes
caucasian
caucasican
caucasion
centaur
centaurs
central
chicken turkey kfc man
christian(ity)?
clan
completely
confederacy
converted to islam later under the name muhammad bushra
deaf populations
demographics?
demons?
deputy
descendants
descended
descent
disputed
diverse
dog
dwarfs?
east riding yorkshire ua:
elders?
employed
enrolled
estimates?
et al
etc
ethnic
ethnicities
ethnicity
eurasian
european
expatriates
family
father
fenwickians
fields
figures
first nations?
fishermen
font-weight:normal;?
for east riding of yorkshire ua
for shropshire ua
formerly
founder
from
gaud saraswat brahmin
gopher
groups
half
he did from around the time of age
heritage
himself
historian
homo sapien
human
humanity
hundred
i am albanian
i think he was from Europe because he said he was going to becomea citizen of the United States
in congo
in spanish
in the town
include
including
indigenous
indonesia
island tongva
islanders?
ixeys
japanesekorean
javaness
khatana
kintoori musavi sayyid
known
koxinga's parent were zheng zhilong
later
less
mainly
maybe
melting pot but has a mythical berber heritage
members?
midland
migrant
million
minority
mix
mixed
mixed-race
mixture
most
mostly
mother
mother teresa said by blood
mountain
mulatto
multicultural
multiracial
muslims?
n
nasirabadi
nationalities
native
ndash;?
never married
nexican
no
non
none
now returned to South Sudan
of
official
one
orcs
origin
originally
others?c?
owned
oyster bay
parents
part-
partially
parts
pending
peoples?
perhaps?
population
possibly
predominantly
predominately
primarily
quadlings
quarter
race
ref.the progenitor of the (stewarts )?stuarts (is|was) walter fitz alan
refugees?
related
religion
religious
scholarly
section
secular
see
self-identified
several
significant
sikhism
somali\|somali
some
source
south
speaking
spoken by
statistics
subscribed to
such as
territory
text
text-align:left;?
than
the
though
thousand
trace
tribal council
tribes?
unclear
undetermined
unidentified
unknown
unspecified
valeymilovskiy
various
to wage a war
were
were known
whites?
wild boar
witches
without UAE nationality
worshipper
wasp
Ulster
turtle
