use strict;
use warnings;
use 5.018;

use Exporter qw(import);

package Bob;
our $VERSION = '1.000';
our @EXPORT_OK = qw(hey);

sub hey {
  my $input = shift @_;
  my $upperInput = uc $input;
  my $response = 'Whatever.';

  if ($input =~ m{^\s*$})
  {
    $response = 'Fine. Be that way!';
  }
  elsif (($upperInput ne $input || $upperInput =~ m{^[^A-Z]+$}) && $input =~ m{\?$})
  {
    $response = 'Sure.';
  }
  elsif ($upperInput eq $input && $input =~ m{[A-Z]})
  {
    $response = 'Whoa, chill out!';
  }

  return $response;
}

1;
