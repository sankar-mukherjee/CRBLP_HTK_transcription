#!/usr/local/bin/perl

#BY Sankar Mukherjee
use Cwd;
my $dir = getcwd;
$not_include_file = $dir.'/not_include';	

#$wav_path = $dir.'/train/wav/';
#$wav2_path = $dir.'/train/wav2/';
$wav_path = './train/wav/';
$wav2_path = './train/wav2/';

$wav = '.wav';
open (FILEIN,"$not_include_file") || die ("Unable to open $not_include_file for reading");
while ($line = <FILEIN>) {
  	$line =~ s/\R//g;
	print $wav2_path.$line.$wav."\n";
	$old = $wav_path.$line.'.wav';
	$new = $wav2_path.$line.'.wav';
  	rename $old, $new;
}
close(FILEIN);
