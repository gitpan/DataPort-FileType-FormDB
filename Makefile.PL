
####
# 
# The module ExtUtils::STDmaker generated this file from the contents of
#
# Docs::Site_SVD::DataPort_FileType_FormDB 
#
# Don't edit this file, edit instead
#
# Docs::Site_SVD::DataPort_FileType_FormDB
#
#	ANY CHANGES MADE HERE WILL BE LOST
#
#       the next time ExtUtils::STDmaker generates it.
#
#

use ExtUtils::MakeMaker;

my $tests = join ' ',unix2os('t/DataPort/FormDB.t');


WriteMakefile(
    NAME => 'DataPort::FileType-FormDB',
    DISTNAME => 'DataPort-FileType-FormDB',
    VERSION  => '0.03',
    dist     => {COMPRESS => 'gzip',
                'gz' => 'gz'},
    test     => {TESTS => $tests},
    PREREQ_PM => {'Test::Tech' => '1.08',
                  'Text::Scrub' => '0',
                  'File::Package' => '0',
                  'File::SmartNL' => '0',
                  'File::TestPath' => '0',
                  'DataPort::DataFile' => '0',},
    

    ($] >= 5.005 ?     
        (AUTHOR    => 'SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>',
        ABSTRACT  => 'Text Form Database with advantages over CSV that has text separation
sequences with very simple escapes so the separation sequences never
appear in the data. The text file resembles very closely hard copy
forms.', ) : ()),
);



use File::Spec;
use File::Spec::Unix;
sub unix2os
{
   my @file = ();
   foreach my $file (@_) {
       my (undef, $dir, $file_unix) = File::Spec::Unix->splitpath( $file );
       my @dir = File::Spec::Unix->splitdir( $dir );
       push @file, File::Spec->catfile( @dir, $file_unix);
   }
   @file;
}

