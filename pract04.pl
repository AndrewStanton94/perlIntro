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
    my $firstName = ucfirst lc <>;
    my $initial = shift $firstName;
    print "Last name: ";
    my $lastName = ucfirst lc <>;
    print "$initial . $lastName";
}
formalName();
