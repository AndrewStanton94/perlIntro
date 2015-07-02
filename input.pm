package input;
use strict;
use warnings;
sub int{
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
sub float{
    my $prompt = shift;
    $prompt = 'Enter a float' unless (defined $prompt);
    $prompt .= ': ';
    my $input = '';
    until($input =~ /^[0-9]+(\.[0-9]+)?$/){
        print $prompt;
        $input = <>;
        chomp $input;
    }
    return $input;
}
1;
