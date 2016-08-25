#!/usr/bin/perl -w
use 5.010;
print"please enter a radius";
chomp($r=<STDIN>);
if($r <=0){
	print"shu ru shi fushu huo shi 0 \n";
}else{
	$pi=3.1415926;
	$c=2*$pi*$r;
	print $c."\n";
}



print "please enter a zifuchuang ";
chomp($s=<STDIN>);
print "please enter a number\n";
chomp($n=<STDIN>);
print $s x $n."\n"; 











