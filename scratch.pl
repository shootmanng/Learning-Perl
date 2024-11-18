
use Data::Dumper;
use v5.34.0;

sub summer {
    my ($list) = @_;
    my $sum = 0;
    
    foreach(@$list) {
        $sum += $_;    
    }
    return $sum;
}
sub sum_of_multiples {

    my ( $factors, $limit ) = @_;
    # stupid cases
    return 0 if scalar(@$factors) == 0 || @$factors[0] == 0;
    my @mults = ();
        
    foreach(@$factors) {
        say $_, " factor";
        my $i = 0;
        my $factor = undef;
        say $factor, " var";
        my $factor = $_ unless $_ == 0;
        say $factor, " nvar";
        
        while (defined($factor) && $i * $factor < $limit) {

            push @mults, $i * $factor unless grep {$i * $factor == $_} @mults;
            $i++;
        }
    }
    
    return &summer(\@mults);
    
}

say(&sum_of_multiples([3,0],10));