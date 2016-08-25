sub total{
	#my @nums=@_;
	my $sum;
	foreach (@_){
		$sum+=$_;
	}
	$sum;
}

my @fred=qw/1 3 5 7 9/;
my $total_sum=&total(@fred);
print"The total if \@fred is $total_sum.\n";

#####################################

#print "enter some numbers on seperate lines";
#my $user_total=&total(<STDIN>);
#print "The total of those numbers is $user_total\n";


########################################


my @large_num=(1..1000);
my $user_total=&total(@large_num);
print "The total of numbers is $user_total\n";


####################################

sub above_average{
my $count=0;
my $sum=0;
foreach (@_){
	$count+=1;
	$sum+=$_;
}
my $average=($sum/$count);
foreach (@_){
	if($_>=$average){
		print "$_\t";
}
}
print "\n";
$average;
}

my @large_num=(100,1..10);
my $user_average=&above_average(@large_num);
print "The average is $user_average\n";

#####################
use 5.010;
sub greeting{
	state $last_person;
	my $name=shift;
	print "Hi $name!";
	if (defined $last_person){
		print "$last_person is alse here!\n";
	}else {
		print "You are the first one here!\n";
	}
	$last_person=$name;
}


greeting('Fred');
greeting('Barney');



use 5.010;
sub greeting1{
        state @names;
        my $name=shift;
        print "Hi $name!";
        unless( @names){
                print "@names is alse here!\n";
        }else {
                print "I have seen : @names!\n";
        }
        push @names ,$name;
}

greeting1('Fred');
greeting1('Barney');
greeting1('Betty');
greeting1('Wilma');






















