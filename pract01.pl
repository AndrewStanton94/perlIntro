use strict;
use warnings;
use input;
sub sayName{
    print 'Andrew stanton';
}
sub sayHello2{
    foreach(("Hello\n", "World\n")) {
        print;      # Default value is $_
    };
}
sub euros2pounds{
    print (input::float('Enter amount in Euros') / 1.15);
}
sub addUp{
    my $v1 = input::float('Enter first number');
    my $v2 = input::float('Enter second number');
    print ($v1 + $v2);
}
sub changeCounter{
    my $oneP = input::int('How many 1p coins');
    my $twoP = input::int('How many 2p coins');
    my $fiveP = input::int('How many 5p coins');
    print 'The total amount is: ', $fiveP * 5 + $twoP * 2 + $oneP, "\n";
}
sub tenHellos{
    foreach(0 .. 9) {
        print "Hello World\n";
    }
}
sub count{
    foreach(0 .. 9){
        print 1 + $_, "\n";
    }
}
sub weightsTable{
    print "Kilos\tPounds\n";
    my $kilos = 0;
    until($kilos > 100){
        print "$kilos\t", $kilos*2.2, "\n";
        $kilos += 10;
    }
}
sub futureValue{
    my $initBalance = input::float('Initial balance');
    my $years = input::float('Years to invest');
    foreach(1 .. $years){
        $initBalance *= 1.055;
    }
    print "Final balance: $initBalance\n";
}
futureValue();
