use v5.4;

while (<"beforematchafter">) {
    chomp;
    if (/match/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}