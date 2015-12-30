#!/usr/bin/perl
use Data::Dumper;


$inputnum=$ARGV[0] || die "no input number";

print "number: $inputnum\n";

$inputnum=~s/[^\d]//g;

print "numeric-only number: $inputnum\n";

@nums=split("",$inputnum);
print "num array:\n";
print Dumper(@nums);

$ponder=@nums+1;

print "starting ponder: $ponder\n";

$sum=0;

foreach $num (@nums) {
    print "multiplying num $num with $ponder and sum is now ";
    $sum+=$num*$ponder;
    $ponder--;
    print "$sum \n";

}

print "final sum: $sum\n";

$remainder=$sum % 11;

print "sum % 11 = $remainder\n";

if($remainder==10) {
    $checksum=0; }
elsif ($remainder == 0) {
    print "warning remainder is divisible by 11\n";
    $checksum=$0;
}
else {
    $checksum=11-$remainder;
}

print "checksum: $checksum\n";

print "number: ".$inputnum.$checksum."\n";
