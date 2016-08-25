use 5.010;
print"please enter some characters:\n";
chomp($line =<STDIN>);
$line=reverse $line;
say"$line";


print"please enter some characters:\n";
@lines=<STDIN>;
@reverse_lines=reverse @lines;
say "@reverse_lines";
##############################

@choices=qw/fred betty barney dino wilma pebbles bamm-bamm/;
print"please enter some numbers from 1 to 7. one per line.then press Ctr-D:\n";
chomp(@num=<STDIN>);
foreach (@num){
	print "$choices[$_-1]\n";
}



#############################

print"please enter some numbers characters. one per line.then press Ctr-D:\n";
chomp(@char=<STDIN>);
sort (@char);
print "@char\n";
	







