#!/usr/bin/perl

use File::Find;

my @content;

my $dir = ""

find(\&Wanted, $dir);

sub Wanted{
    /\.file$/ or next;	
    @content = $File::Find::name;

    open( OUTPUT, "< @content" ) or die "Can't open $filename : $!";
	
	while( <OUTPUT> ) {

	print;
		
    }
close OUTPUT;

}
