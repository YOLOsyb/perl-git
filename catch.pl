#!/usr/bin/perl
$_="Hello there , neighbor";

if(/(\S+) (\S+) , (\S+)/) {
	print"The word were $1 $2 $3!\n";
}
#################################################
my $dino = "I fear that I'll be extinct after 1000 years.";
if( $dino =~/(\d*) years/){
	print"That said  '$1' years !\n";
} 
#################################################
if($dino=~ / e(\w+)/){
	print "dino's word was $1.\n";
}else{
	print "dino  doesn't have a word.\n";
}
#################################################
my $dinner=" saurus steak";
if ($dinner=~ /(bronto)? saurus (steak|burger)/){
	print "Fred wants a $2\n";
}

if($dinner=~ /(?:bronto)? saurus (steak|burger)/){
	print "Fred wants a $1\n";
}

if($dinner=~ /(?:bronto)? saurus (?:BBQ)?(steak|burger)/){
	print "Fred wants a $1\n";
}
#################################################
my $names='fred or barney';
if($names=~ m/(\w*) (and|or) (\w*)/ ){
	print "I saw $1 and $2\n";
}

my $names='fred or barney';
if($names=~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ){
	print "I saw $+{name1} and $+{name2}\n";
}

use 5.010;
my $names='Fred Flinstone and Wilma Flinstone';
if($names=~ m/(?<last_name>\w+) and \w+ \g{last_name}/ ){
	say "I saw $+{last_name}";
}

if ("Hello there,neighbor"=~ /\s(\w+),/){
	print "That actually matched ($`) ($&) ($') .\n";
}


























