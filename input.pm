package input;
use strict;
use warnings;
sub inputInt{
    my $prompt = shift;
    $prompt = 'Enter an integer' unless (defined $prompt);
    $prompt .= ': ';
    my $input = '';
    until($input =~ /^[0-9]+$/){
        print $prompt;
        $input = <>;
        chomp $input;
    }
    return $input;
}
# print inputInt('A number');
1;
