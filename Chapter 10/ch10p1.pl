use v5.4;
use feature qw<say>;
my $secret = int(1 + rand 100);
my $prompt = "Guess the secret number from 1 to 100: ";

print $prompt;

while(<STDIN>) {
    
    if ($_== $secret) {
        say "Correct!";
        last
    }

    last if (/quit|exit|(^\s*$)/i);

    ($_ < $secret) ? say "Too low" : say "Too high";

    print $prompt;
}