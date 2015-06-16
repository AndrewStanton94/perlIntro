use strict;
use warnings;
use Math::Trig;

#print &pi;

sub circumferenceOfCircle{
    print 'What is the radius: ';    
    return <> * 2 * pi . "\n";
}

sub areaofCircle{
    print 'Radius: ';
    my $area = <>**2 * pi;
    # print "$area\n";
    return $area;
}

sub costOfPizza{
    my $area = areaofCircle();
    return $area / 1.5;
}

sub getXY{
    my %data = (
        x1 => '', 
        x2 => '', 
        y1 => '', 
        y2 => '', 
    );

    foreach (sort keys %data){
        print "Enter $_:";
        $data{$_} = <>;     # Manipulating single element so treat as scalar
    }
    
    my $dx = $data{x2} - $data{x1};
    my $dy = $data{y2} - $data{y1};
    my @ans = ($dx, $dy,);
    return @ans;
}

sub slopeOfLine{
    my @xy = getXY();
    my $m = $xy[1] / $xy[0];
    return $m;
}

sub distanceBetweenPoints{
    my @xy = getXY();
    my $ans = sqrt (($xy[0]**2) + ($xy[1]**2));
    return $ans;
}

sub travelStatistics{
    print 'Average speed [km h^-1]: ';
    my $vel = <>;
    print 'Duration of travel: ';
    my $time = <>;
    my $distance = $vel * $time;
    my $fuelUsed = $distance / 5;
    return ($distance,  $fuelUsed);
}

sub sumOfNumbers{
    my $lim;
    my $sum = 0;
    if (@_ == 0) {
        print 'Number to sum to: ';
        $lim = <>;
    }
    else {
        $lim = $_[0];
    }
    foreach (1 .. $lim){
        $sum += $_;
    }
    return $sum;
}

sub averageOfNumbers{
    print 'Get average of sum of range 1 to: ';
    my $max = <>;
    my $sum = sumOfNumbers($max);
    return $sum / $max;
}

sub getDenom{
    my $d = $_[0];
    my $suffix;
    if ($d < 100) {
        $suffix = "p\t\t";
    }
    else{
        $d = int $d / 100;
        $suffix = " pounds\t"   # Encoding issue,  can't use £ symbol'
    }
    return $d . $suffix;
}

sub bsc{
    print 'Amount of money [p]: ';
    my $pence = <>;
    my @denoms = (200, 100, 50, 20, 10, 5, 2, 1);
    print "Denomination\tQuantity\n";
    foreach (@denoms){
        print getDenom($_), int $pence / $_, "\n";
        $pence %= $_;
    }
}
# print getXY();
foreach (getXY()){
    print "$_\n";
}
