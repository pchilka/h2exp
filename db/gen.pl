
while (<>) {
    ($a,$b, $c, $id, $shortdesc, $longdesc, $reqaddr) = split('\t');
    $shortdesc =~ s/"//g;
    $longdesc  =~ s/"//g;
#    printf ("INSERT INTO requirements values ('$id', '$shortdesc', '$longdesc');\n");
printf qq<Requirement.create(reference: "$id", shortdesc: "$shortdesc", longdesc: "$longdesc")\n>;
}
