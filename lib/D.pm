package D;
# ABSTRACT: D module
use strict;
use warnings;

our $VERSION = '0.001';

use Data::Dumper ();
use JSON::PP ();

use Exporter 'import';
our @EXPORT = qw(d $JSON);

sub d {
    local $| = 1;
    print Data::Dumper
        ->new([])
        ->Trailingcomma(1)
        ->Terse(1)
        ->Indent(1)
        ->Useqq(1)
        ->Deparse(1)
        ->Quotekeys(0)
        ->Sortkeys(1)
        ->Values(\@_)
        ->Dump
    ;
}

our $JSON = JSON::PP
    ->new
    ->utf8
    ->pretty
    ->canonical
    ->allow_nonref
    ->indent_length(2)
    ->space_before(0)
    ->allow_blessed
    ->relaxed
;

1;
