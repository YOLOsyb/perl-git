use 5.010;
$_="He's out bowling with Barney tonight";
#s/barney/fred/i;
#s/with (\w+)/againt $1's team/;
print "$_\n";
#############################
$_="green scally dinosaur";
s/(\w+) (\w+)/$2, $1/;
s/^/huge, /;
print "$_\n";
s/,.*een//;
print "$_\n";
s/green/red/;
print "$_\n";
s/\w+$/($`!)$&/;
print "$_\n";
s/\s+(!\W+)/$1/;
print "$_\n";
s/huge/gigantic/;
print "$_\n";
###########################
$_="I saw Barney with Fred.";
s/(fred|barney)/\U$1/gi;
print "$_\n";
s/(fred|barney)/\L$1/gi;
print "$_\n";
#s/(\w+) with (\w+)/\U$2\E with $1/i;
#print "$_\n";
s/(fred|barney)/\u$1/ig;
print "$_\n";
@fields=split /:/,"abc:def:g:h";
print "@fields\n";
my $x=join ":",4,6,8,10,12;
print $x;




