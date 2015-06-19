use strict;
use warnings;
sub personalGreeting{
    print 'What is your name: ';
    my $name = <>;
    chomp $name;    # Removes $/ (Input record separator) Currently new line. != chop
    print "Hello $name, nice to see you.\n";    # variable interpolation means sprintf not needed.
}
sub formalName{
    print "First name: ";
    my $firstName = <>;
    my $initial = uc substr $firstName, 0, 1;
    print "Last name: ";
    my $lastName = ucfirst lc <>;
    print "$initial.$lastName";
}
sub kilos2Pounds{
    print 'Enter a weight in kilograms: ';
    my $kilos = <>;
    my $pounds = 2.2 * $kilos;
    printf "%.2f kilos is equal to %.2f pounds\n", ($kilos, $pounds);
}
sub generateEmail{
    print "Enter first name: ";
    my $firstName = <>;
    print "Enter last name: ";
    my $lastName = <>;
    print "Enter year of enrolment: ";
    my $year = <>;
    chomp $year;
    printf "%.4s.%.1s.%s\@myport.ac.uk\n", ($lastName, $firstName, substr($year, -2));
}
sub gradeTest{
    my $grades = 'FFFFCCBBAAA';
    print "Enter mark: ";
    my $mark = <>;
    if (1 <= $mark && $mark <= 10 ){
        my $result = substr $grades, $mark, 1;
        print "$result\n";
    }
    else{
        print "Enter a value in range 0 .. 10\n";
    }
}
sub singASong{
    print 'Enter lyric: ';
    my $lyric = <>;
    chomp $lyric;
    print 'Enter number of lines: ';
    my $lines = <>;
    print 'Enter number of lyrics per line: ';
    my $lyricsPerLine = <>;
    my $line = ($lyric.' ') x $lyricsPerLine;
    $line .= "\n";
    foreach(1 .. $lines) {
        print $line;
    }
}
sub exchangeTable{
    print "Euros\tPounds\n";
    foreach(0 .. 20){
        printf "%3u\t%5.2f\n", ($_, $_/1.15);
    }
}

exchangeTable();
