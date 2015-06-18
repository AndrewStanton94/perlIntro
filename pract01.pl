use strict;
use warnings;
sub sayName{
    print 'Andrew stanton';
}
sub sayHello2{
    foreach(("Hello\n", 'World')) {
        print $_;
    };
}
sub euros2pounds{
    print('Enter amount in Euros: ');
    print (<> / 1.15);
}
sub addUp{
    print 'Enter first number: ';
    my $v1 = <>;
    print 'Enter second number: ';
    my $v2 = <>;
    print ($v1 + $v2);
}
sub changeCounter{
    print 'How many 1p coins: ';
    my $oneP = <>;
    print 'How many 2p coins: ';
    my $twoP = <>;
    print 'How many 5p coins: ';
    my $fiveP = <>;
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
    print 'Initial balance: ';
    my $initBalance = <>;
    print 'Years to invest: ';
    my $years = <>;
    foreach(1 .. $years){
        $initBalance *= 1.055;
    }
    print "Final balance: $initBalance\n";
}
futureValue();
