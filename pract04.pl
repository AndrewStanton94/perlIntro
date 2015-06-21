use strict;
use warnings;
use 5.010;  # For say
use input;
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
    my $kilos = input::int('Enter a weight in kilograms');
    my $pounds = 2.2 * $kilos;
    printf "%.2f kilos is equal to %.2f pounds\n", ($kilos, $pounds);
}
sub generateEmail{
    print "Enter first name: ";
    my $firstName = <>;
    print "Enter last name: ";
    my $lastName = <>;
    my $year = input::int("Enter year of enrolment");
    printf "%.4s.%.1s.%s\@myport.ac.uk\n", ($lastName, $firstName, substr($year, -2));
}
sub gradeTest{
    my $grades = 'FFFFCCBBAAA';
    my $mark = input::int("Enter mark");
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
    my $lines = input::int('Enter number of lines');
    my $lyricsPerLine = input::int('Enter number of lyrics per line');
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
sub makeAcronym{
    print "Enter sentence to make acronym: ";
    my $input = <>;
    my @words = split / /, $input;
    foreach(@words) {
        print uc substr $_, 0, 1;
    }
    print "\n";
}
sub nameToNumber{
    my $total = 0;
    print "Enter your name: ";
    my $name = <>;
    chomp $name;
    $name = uc $name;
    my $wordLength = length $name;
    foreach(0 .. $wordLength - 1) {
        my $char = substr $name, $_, 1;
        my $numeric = (ord $char) - 64;
        $total += $numeric;
    }
    say "$name = $total";
}
sub filesInCaps{
    print "Enter filename: ";
    my $fileName = <>;
    open ('file', '<'.$fileName) or die 'Can\'t open file';
    while (<file>){
        print uc;
    }
}
sub rainfallChart{
    open ('data', '<rainfall.txt') or die 'Can\'t open file';
    while(<data>){
        my ($location, $rain) = split;
        printf "%13s||%s\n", ($location, '*' x $rain);
    }
    close 'data';
}
sub rainfallInInches{
    open ('rainIn', '<rainfall.txt') or die 'Can\'t open file';
    open (my $rainOut, '>', 'rainfallInches.txt') or die 'Can\'t open file';
    while(<rainIn>){
        my ($location, $rain) = split;
        my $rainInches = $rain / 25.4;
        printf <$rainOut>, '%s %.2f\n', ($location, $rainInches);
    }
    close 'rainIn';
    close $rainOut;
}
rainfallInInches();
