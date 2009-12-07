####################################################################
# TESTCASE: 		perld085_stmtCreateTableXMLColumn.pl
# DESCRIPTION: 		Create a table with an XML column
# EXPECTED RESULT: 	Success
####################################################################

use DBI;
use DBD::DB2;

require 'connection.pl';
require 'perldutl.pl';

init();
($testcase = $0) =~ s@.*/@@;
($tcname,$extension) = split(/\./, $testcase);
$success = "y";
fvt_begin_testcase($tcname);

$dbh = DBI->connect("dbi:DB2:$DATABASE", "$USERID", "$PASSWORD", {PrintError => 0});
check_error("CONNECT");

$dbh->do("DROP TABLE xmltest");
$stmt = get_create_table_stmt("xmltest");

$dbh->do($stmt);
check_error("DO");

fvt_end_testcase($testcase, $success);

#
# init() initializes some global arrays and hashes
# for values in some tables
#
sub init
{
  get_attributes();

  #
  # Define column types for various tables
  #
  $xmltest = ['SMALLINT NOT NULL',
               'XML'];

}
