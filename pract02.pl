use strict;
use warnings;
use Math::Trig;
use input;
sub circumferenceOfCircle{
    return input::float('What is the radius') * 2 * pi . "\n";
}
sub areaofCircle{
    my $area = input::int('Radius')**2 * pi;
    return $area;
}
sub costOfPizza{
    return areaofCircle() / 1.5;
}
sub getXY{
    my %data = (
        x1 => '',
        x2 => '',
        y1 => '',
        y2 => '',
    );
    foreach (sort keys %data){
        $data{$_} = input::float("Enter $_");     # Manipulating single element so treat as scalar
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
    my $vel = input::float('Average speed [km h^-1]');
    my $time = input::float('Duration of travel');
    my $distance = $vel * $time;
    my $fuelUsed = $distance / 5;
    return ($distance,  $fuelUsed);
}
sub sumOfNumbers{
    my $lim;
    my $sum = 0;
    if (@_ == 0) {
        $lim = input::int('Number to sum to');
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
    my $max = input::int('Get average of sum of range 1 to');
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
    my $pence = input::int('Amount of money [p]');
    my @denoms = (200, 100, 50, 20, 10, 5, 2, 1);
    print "Denomination\tQuantity\n";
    foreach (@denoms){
        print getDenom($_), int $pence / $_, "\n";
        $pence %= $_;
    }
}
