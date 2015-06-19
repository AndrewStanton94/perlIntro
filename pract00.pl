use strict;
use warnings;

sub sayHello {
	print 'Hello World';
}

sub count {
     for (0 .. 9){     # .. Range
         print "$_\n";
         # $_ default scalar value
         # "" Expands variables
    }
}

sub kilos2Pounds {
    print 'Enter a weight in kilograms: ';
    my $kilos = <>;     # <> For input, Default to STDIN
    my $pounds = 2.2 * $kilos;  # Needs $ otherwise Bareword error
    print "The weight in pounds: $pounds\n";
}

kilos2Pounds()