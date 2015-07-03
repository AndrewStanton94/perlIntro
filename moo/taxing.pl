use strict;
use warnings;
use feature 'say';
use tax;
my $data = tax->new(salary =>17000);
# say $data->tax;
# say $data->ni;
$data->net;
