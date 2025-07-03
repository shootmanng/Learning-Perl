use v5.34.0;
use Time::Piece;
use Time::Seconds;

# Get the current time in GMT
my $t = gmtime;

# Create a Time::Piece object from a specific datetime string
my $t2 = Time::Piece->strptime("2019-07-25T13:45:00", '%Y-%m-%dT%H:%M:%S');

# Calculate the difference
my $diff = $t - $t2;

# Extract seconds, minutes, hours, and days
my $seconds = $diff->seconds;
my $minutes = $diff->minutes;
my $hours = $t2->hour;
my $days = $t2->days;

# Print the difference
print "Difference: $days days, $hours hours, $minutes minutes, $seconds seconds\n";
