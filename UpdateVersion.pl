use strict; use feature 'unicode_strings';
# enter new version to update all modules with
print "new version (empty to skip):";
my $newVersion = <STDIN>;
chomp $newVersion;

for my $libfile ("orea","ored","quantext") {
print "updating version for ${libfile}headerFull.html\n";
	my $data = read_file ("${libfile}headerFull.html");
	$data =~ s/ - version (.*?)<\/div>/ - version $newVersion<\/div>/s;
	write_file("${libfile}headerFull.html", $data);
}

sub read_file {
	my ($filename) = @_;

	open my $in, '<:encoding(UTF-8)', $filename or die "Could not open '$filename' for reading $!";
	binmode($in);
	local $/ = undef;
	my $all = <$in>;
	close $in;

	return $all;
}

sub write_file {
	my ($filename, $content) = @_;

	open my $out, '>:encoding(UTF-8)', $filename or die "Could not open '$filename' for writing $!";
	binmode($out);
	print $out $content;
	close $out;

	return;
}
