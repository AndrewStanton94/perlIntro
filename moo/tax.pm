package tax;
use Moo;
use feature 'say';
    has salary => (is => 'ro');
    my $nonTaxable = 10600;
    my $tax = 0.2;
    my $niExempt = 153;
    my $ni = 0.12;
    sub tax{
        my $self = shift;
        return ($self->salary - $nonTaxable) * $tax;
    }
    sub ni{
        my $self = shift;
        my $incomPerWeek = $self->salary / 52;
        my $niPerWeek = ($incomPerWeek - $niExempt) * $ni;
        return $niPerWeek * 52;
    }
    sub net{
        my $self = shift;
        my $gross = $self-> salary;
        printf "Gross income:\t\t%10.2f\n", $gross;
        my $tax = $self->tax;
        printf "Tax:\t\t\t%10.2f\n", $tax;
        my $ni = $self->ni;
        printf "National insurance:\t%10.2f\n", $ni;
        my $net = $gross - $tax - $ni;
        printf "Net income:\t\t%10.2f\n", $net;
        printf "Net income per month:\t%10.2f\n", $net / 12;
        return $net;
    }
1;
