use v5.4;
use Module::CoreList;
use feature qw<say>;

# to install Module::Corelist go to terminal
# type cpan, then install Module::CoreList
# running perldoc Module::CoreList shows that
# the module shows all the modules that came with
# different versions of Perl.

my %modules = %{ $Module::CoreList::version{5.008} };

for (keys %modules) {
    say $_;
}