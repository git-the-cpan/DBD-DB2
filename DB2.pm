#   $Id: DB2.pm,v 0.10 1996/06/12 17:39:50 mhm Rel $
#
#   Copyright (c) 1995,1996 International Business Machines Corp. 
#

{
    package DBD::DB2;

    use DBI;

    use DynaLoader;
    @ISA = qw(Exporter DynaLoader);
	
	@EXPORT_OK = qw($attrib_int $attrib_char $attrib_float 
				 $attrib_date $attrib_ts $attrib_dec
				 $attrib_ts_nullok $attrib_int_nullok $attrib_char_nullok);

    $VERSION = '0.58';
	my $revision = substr(q$Revision: 0.10 $, 10);
	require_version DBI 0.69 ;

    bootstrap DBD::DB2;

	use DB2::Constants;

    $err = 0;		# holds error code   for DBI::err
    $errstr = "";	# holds error string for DBI::errstr
    $drh = undef;	# holds driver handle once initialised

    $attrib_dec = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
                    'Stype' => SQL_DECIMAL,
                    'Prec'  => 31,
                    'Scale' => 4,
                  };
    $attrib_int = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
                    'Stype' => SQL_INTEGER,
                    'Prec'  => 10,
                    'Scale' => 4,
                  };
    $attrib_int_nullok = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
					'Snullok' => 1,
                    'Stype' => SQL_INTEGER,
                    'Prec'  => 10,
                    'Scale' => 4,
                  };
    $attrib_char = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
                    'Stype' => SQL_CHAR,
                    'Prec'  => 254,
                    'Scale' => 0,
                  };
    $attrib_char_nullok = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
					'Snullok' => 1,
                    'Stype' => SQL_CHAR,
                    'Prec'  => 254,
                    'Scale' => 0,
                  };
#	print "<",$attrib_char->{'Ctype'},">\n";
    $attrib_float = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
                    'Stype' => SQL_FLOAT,
                    'Prec'  => 15,
                    'Scale' => 6,
                  };
    $attrib_date = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
                    'Stype' => SQL_DATE,
                    'Prec'  => 10,
                    'Scale' => 9,
                  };
    $attrib_ts = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
                    'Stype' => SQL_TIMESTAMP,
                    'Prec'  => 26,
                    'Scale' => 11,
                  };
    $attrib_ts_nullok = { 'ParamT' => SQL_PARAM_INPUT,
                    'Ctype' => SQL_C_CHAR,
					'Snullok' => 1,
                    'Stype' => SQL_TIMESTAMP,
                    'Prec'  => 26,
                    'Scale' => 11,
					};
 
    sub driver{
	return $drh if $drh;
	my($class, $attr) = @_;

	unless ($ENV{'DB2_HOME'}){
		$ENV{DB2_HOME} = "/usr/lpp/db2_02_01";
	    my $msg = "set to $ENV{DB2_HOME}"; 
	    warn "DB2_HOME $msg\n";
	}

	$class .= "::dr";

	# not a 'my' since we use it above to prevent multiple drivers

	$drh = DBI::_new_drh($class, {
	    'Name' => 'DB2',
	    'Version' => $VERSION,
	    'Err'    => \$DBD::DB2::err,
	    'Errstr' => \$DBD::DB2::errstr,
	    'Attribution' => 'DB2 DBD by Mike Moran',
	    });

	$drh;
    }

    1;
}


{   package DBD::DB2::dr; # ====== DRIVER ======
    use strict;

    sub errstr {
	DBD::DB2::errstr(@_);
    }

    sub connect {
	my($drh, $dbname, $user, $auth)= @_;

	if ($dbname){	# application is asking for specific database
	}

	# create a 'blank' dbh

	my $this = DBI::_new_dbh($drh, {
	    'Name' => $dbname,
	    'USER' => $user, 'CURRENT_USER' => $user,
	    });

	DBD::DB2::db::_login($this, $dbname, $user, $auth)
	    or return undef;

	$this;
    }

}


{   package DBD::DB2::db; # ====== DATABASE ======
    use strict;

    sub errstr {
	DBD::DB2::errstr(@_);
    }

    sub prepare {
	my($dbh, $statement)= @_;

	# create a 'blank' dbh

	my $sth = DBI::_new_sth($dbh, {
	    'Statement' => $statement,
	    });

	DBD::DB2::st::_prepare($sth, $statement)
	    or return undef;

	$sth;
    }

}


{   package DBD::DB2::st; # ====== STATEMENT ======
    use strict;

    sub errstr {
	DBD::DB2::errstr(@_);
    }

}

1;
