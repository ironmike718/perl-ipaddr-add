#!/usr/bin/env perl

print "\nplease type ip address in dotted decimal format:  x.x.x.x\n";

# get input from user

$addr = <STDIN>;
chomp($addr);

# parse input with regex

$addr =~ m/(\d+)\.(\d+)\.(\d+)\.(\d+)/;

$hex1 = sprintf("%02x",$1);
$hex2 = sprintf("%02x",$2);
$hex3 = sprintf("%02x",$3);
$hex4 = sprintf("%02x",$4);

# assemble hex string from dotted decimal ip addr

$hex = $hex1 . $hex2 . $hex3 . $hex4;

$plus1 = sprintf("%08x",0x00000001);

# add hex string plus 1 in decimal

$sum = hex($hex) + hex($plus1);

# convert decimal back to hex

$newaddr = sprintf("%08x",$sum);

# parse new hex into octets and convert to decimal

$newaddr =~ m/(\w{2})(\w{2})(\w{2})(\w{2})/;

$oc1 = hex($1);
$oc2 = hex($2);
$oc3 = hex($3);
$oc4 = hex($4);

# reassemble octets in decimal format

print "your ip address plus 1 is:  $oc1.$oc2.$oc3.$oc4\n";

exit;
