#
#   engn/perldb2/Constants/Constants.pm, engn_perldb2, db2_v6, 1.2 99/01/12 13:51:45
#
#   Copyright (c) 1995,1996,1999,2004 International Business Machines Corp.
#
package DBD::DB2::Constants;

use Carp;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK $AUTOLOAD);

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT = qw(
	DB2CLI_VER
	ODBCVER
	SQLAllocHandle
	SQL_ACCESSIBLE_PROCEDURES
	SQL_ACCESSIBLE_TABLES
	SQL_ACCESS_MODE
	SQL_ACTIVE_CONNECTIONS
	SQL_ACTIVE_ENVIRONMENTS
	SQL_ACTIVE_STATEMENTS
	SQL_ADD
	SQL_AD_ADD_CONSTRAINT_DEFERRABLE
	SQL_AD_ADD_CONSTRAINT_INITIALLY_DEFERRED
	SQL_AD_ADD_CONSTRAINT_INITIALLY_IMMEDIATE
	SQL_AD_ADD_CONSTRAINT_NON_DEFERRABLE
	SQL_AD_ADD_DOMAIN_CONSTRAINT
	SQL_AD_ADD_DOMAIN_DEFAULT
	SQL_AD_CONSTRAINT_NAME_DEFINITION
	SQL_AD_DROP_DOMAIN_CONSTRAINT
	SQL_AD_DROP_DOMAIN_DEFAULT
	SQL_AF_ALL
	SQL_AF_AVG
	SQL_AF_COUNT
	SQL_AF_DISTINCT
	SQL_AF_MAX
	SQL_AF_MIN
	SQL_AF_SUM
	SQL_AGGREGATE_FUNCTIONS
	SQL_ALL_CATALOGS
	SQL_ALL_EXCEPT_LIKE
	SQL_ALL_SCHEMAS
	SQL_ALL_TABLE_TYPES
	SQL_ALL_TYPES
	SQL_ALTER_DOMAIN
	SQL_ALTER_TABLE
	SQL_AM_CONNECTION
	SQL_AM_NONE
	SQL_AM_STATEMENT
	SQL_API_ALL_FUNCTIONS
	SQL_API_LOADBYORDINAL
	SQL_API_ODBC3_ALL_FUNCTIONS
	SQL_API_ODBC3_ALL_FUNCTIONS_SIZE
	SQL_API_SQLALLOCCONNECT
	SQL_API_SQLALLOCENV
	SQL_API_SQLALLOCHANDLE
	SQL_API_SQLALLOCHANDLESTD
	SQL_API_SQLALLOCSTMT
	SQL_API_SQLBINDCOL
	SQL_API_SQLBINDFILETOCOL
	SQL_API_SQLBINDFILETOPARAM
	SQL_API_SQLBINDPARAM
	SQL_API_SQLBINDPARAMETER
	SQL_API_SQLBROWSECONNECT
	SQL_API_SQLBUILDDATALINK
	SQL_API_SQLBULKOPERATIONS
	SQL_API_SQLCANCEL
	SQL_API_SQLCLOSECURSOR
	SQL_API_SQLCOLATTRIBUTE
	SQL_API_SQLCOLATTRIBUTES
	SQL_API_SQLCOLUMNPRIVILEGES
	SQL_API_SQLCOLUMNS
	SQL_API_SQLCONNECT
	SQL_API_SQLCOPYDESC
	SQL_API_SQLDATASOURCES
	SQL_API_SQLDESCRIBECOL
	SQL_API_SQLDESCRIBEPARAM
	SQL_API_SQLDISCONNECT
	SQL_API_SQLDRIVERCONNECT
	SQL_API_SQLDRIVERS
	SQL_API_SQLENDTRAN
	SQL_API_SQLERROR
	SQL_API_SQLEXECDIRECT
	SQL_API_SQLEXECUTE
	SQL_API_SQLEXTENDEDFETCH
	SQL_API_SQLFETCH
	SQL_API_SQLFETCHSCROLL
	SQL_API_SQLFOREIGNKEYS
	SQL_API_SQLFREECONNECT
	SQL_API_SQLFREEENV
	SQL_API_SQLFREEHANDLE
	SQL_API_SQLFREESTMT
	SQL_API_SQLGETCONNECTATTR
	SQL_API_SQLGETCONNECTOPTION
	SQL_API_SQLGETCURSORNAME
	SQL_API_SQLGETDATA
	SQL_API_SQLGETDATALINKATTR
	SQL_API_SQLGETDESCFIELD
	SQL_API_SQLGETDESCREC
	SQL_API_SQLGETDIAGFIELD
	SQL_API_SQLGETDIAGREC
	SQL_API_SQLGETENVATTR
	SQL_API_SQLGETFUNCTIONS
	SQL_API_SQLGETINFO
	SQL_API_SQLGETLENGTH
	SQL_API_SQLGETPOSITION
	SQL_API_SQLGETSQLCA
	SQL_API_SQLGETSTMTATTR
	SQL_API_SQLGETSTMTOPTION
	SQL_API_SQLGETSUBSTRING
	SQL_API_SQLGETTYPEINFO
	SQL_API_SQLINFOEXISTS
	SQL_API_SQLMORERESULTS
	SQL_API_SQLNATIVESQL
	SQL_API_SQLNUMPARAMS
	SQL_API_SQLNUMRESULTCOLS
	SQL_API_SQLPARAMDATA
	SQL_API_SQLPARAMOPTIONS
	SQL_API_SQLPREPARE
	SQL_API_SQLPRIMARYKEYS
	SQL_API_SQLPROCEDURECOLUMNS
	SQL_API_SQLPROCEDURES
	SQL_API_SQLPUTDATA
	SQL_API_SQLROWCOUNT
	SQL_API_SQLSETCOLATTRIBUTES
	SQL_API_SQLSETCONNECTATTR
	SQL_API_SQLSETCONNECTION
	SQL_API_SQLSETCONNECTOPTION
	SQL_API_SQLSETCURSORNAME
	SQL_API_SQLSETDESCFIELD
	SQL_API_SQLSETDESCREC
	SQL_API_SQLSETENVATTR
	SQL_API_SQLSETPARAM
	SQL_API_SQLSETPOS
	SQL_API_SQLSETSCROLLOPTIONS
	SQL_API_SQLSETSTMTATTR
	SQL_API_SQLSETSTMTOPTION
	SQL_API_SQLSPECIALCOLUMNS
	SQL_API_SQLSTATISTICS
	SQL_API_SQLTABLEPRIVILEGES
	SQL_API_SQLTABLES
	SQL_API_SQLTRANSACT
	SQL_APPLICATION_CODEPAGE
	SQL_ARD_TYPE
	SQL_ASYNC_ENABLE
	SQL_ASYNC_ENABLE_DEFAULT
	SQL_ASYNC_ENABLE_OFF
	SQL_ASYNC_ENABLE_ON
	SQL_ASYNC_MODE
	SQL_ATOMIC_DEFAULT
	SQL_ATOMIC_NO
	SQL_ATOMIC_YES
	SQL_ATTR_ACCESS_MODE
	SQL_ATTR_APP_PARAM_DESC
	SQL_ATTR_APP_ROW_DESC
	SQL_ATTR_ASYNC_ENABLE
	SQL_ATTR_AUTOCOMMIT
	SQL_ATTR_AUTO_IPD
	SQL_ATTR_CLISCHEMA
	SQL_ATTR_CLOSEOPEN
	SQL_ATTR_CLOSE_BEHAVIOR
	SQL_ATTR_CONCURRENCY
	SQL_ATTR_CONNECTION_DEAD
	SQL_ATTR_CONNECTION_POOLING
	SQL_ATTR_CONNECTION_TIMEOUT
	SQL_ATTR_CONNECTTYPE
	SQL_ATTR_CONN_CONTEXT
	SQL_ATTR_CP_MATCH
	SQL_ATTR_CURRENT_CATALOG
	SQL_ATTR_CURRENT_PACKAGE_SET
	SQL_ATTR_CURRENT_SCHEMA
	SQL_ATTR_CURSOR_HOLD
	SQL_ATTR_CURSOR_SCROLLABLE
	SQL_ATTR_CURSOR_SENSITIVITY
	SQL_ATTR_CURSOR_TYPE
	SQL_ATTR_DATALINK_COMMENT
	SQL_ATTR_DATALINK_LINKTYPE
	SQL_ATTR_DATALINK_URLCOMPLETE
	SQL_ATTR_DATALINK_URLPATH
	SQL_ATTR_DATALINK_URLPATHONLY
	SQL_ATTR_DATALINK_URLSCHEME
	SQL_ATTR_DATALINK_URLSERVER
	SQL_ATTR_DB2ESTIMATE
	SQL_ATTR_DB2EXPLAIN
	SQL_ATTR_DEFERRED_PREPARE
	SQL_ATTR_DISCONNECT_BEHAVIOR
	SQL_ATTR_EARLYCLOSE
	SQL_ATTR_ENABLE_AUTO_IPD
	SQL_ATTR_ENABLE_IPD_SETTING
	SQL_ATTR_ENLIST_IN_DTC
	SQL_ATTR_ENLIST_IN_XA
	SQL_ATTR_FETCH_BOOKMARK_PTR
	SQL_ATTR_FORCE_CONVERSION_ON_CLIENT
	SQL_ATTR_IMP_PARAM_DESC
	SQL_ATTR_IMP_ROW_DESC
	SQL_ATTR_INFO_ACCTSTR
	SQL_ATTR_INFO_APPLNAME
	SQL_ATTR_INFO_USERID
	SQL_ATTR_INFO_WRKSTNNAME
	SQL_ATTR_INHERIT_NULL_CONNECT
	SQL_ATTR_KEYSET_SIZE
	SQL_ATTR_LOGIN_TIMEOUT
	SQL_ATTR_LONGDATA_COMPAT
	SQL_ATTR_MAXCONN
	SQL_ATTR_MAX_LENGTH
	SQL_ATTR_MAX_ROWS
	SQL_ATTR_METADATA_ID
	SQL_ATTR_MINMEMORY_USAGE
	SQL_ATTR_NODESCRIBE
	SQL_ATTR_NODESCRIBE_INPUT
	SQL_ATTR_NODESCRIBE_OUTPUT
	SQL_ATTR_NOSCAN
	SQL_ATTR_ODBC_CURSORS
	SQL_ATTR_ODBC_VERSION
	SQL_ATTR_OPTIMIZE_SQLCOLUMNS
	SQL_ATTR_OUTPUT_NTS
	SQL_ATTR_PACKET_SIZE
	SQL_ATTR_PARAMOPT_ATOMIC
	SQL_ATTR_PARAMSET_SIZE
	SQL_ATTR_PARAMS_PROCESSED_PTR
	SQL_ATTR_PARAM_BIND_OFFSET_PTR
	SQL_ATTR_PARAM_BIND_TYPE
	SQL_ATTR_PARAM_OPERATION_PTR
	SQL_ATTR_PARAM_STATUS_PTR
	SQL_ATTR_PREFETCH
	SQL_ATTR_PROCESSCTL
	SQL_ATTR_QUERY_TIMEOUT
	SQL_ATTR_QUIET_MODE
	SQL_ATTR_READONLY
	SQL_ATTR_READWRITE_UNKNOWN
	SQL_ATTR_RETRIEVE_DATA
	SQL_ATTR_ROWS_FETCHED_PTR
	SQL_ATTR_ROW_ARRAY_SIZE
	SQL_ATTR_ROW_BIND_OFFSET_PTR
	SQL_ATTR_ROW_BIND_TYPE
	SQL_ATTR_ROW_NUMBER
	SQL_ATTR_ROW_OPERATION_PTR
	SQL_ATTR_ROW_STATUS_PTR
        SQL_ATTR_SET_SCHEMA
	SQL_ATTR_SIMULATE_CURSOR
	SQL_ATTR_STMTTXN_ISOLATION
	SQL_ATTR_SYNC_POINT
	SQL_ATTR_TRACE
	SQL_ATTR_TRACEFILE
	SQL_ATTR_TRANSLATE_LIB
	SQL_ATTR_TRANSLATE_OPTION
	SQL_ATTR_TXN_ISOLATION
	SQL_ATTR_USE_BOOKMARKS
	SQL_ATTR_WCHARTYPE
	SQL_ATTR_WRITE
	SQL_AT_ADD_COLUMN
	SQL_AT_ADD_COLUMN_COLLATION
	SQL_AT_ADD_COLUMN_DEFAULT
	SQL_AT_ADD_COLUMN_SINGLE
	SQL_AT_ADD_CONSTRAINT
	SQL_AT_ADD_TABLE_CONSTRAINT
	SQL_AT_CONSTRAINT_DEFERRABLE
	SQL_AT_CONSTRAINT_INITIALLY_DEFERRED
	SQL_AT_CONSTRAINT_INITIALLY_IMMEDIATE
	SQL_AT_CONSTRAINT_NAME_DEFINITION
	SQL_AT_CONSTRAINT_NON_DEFERRABLE
	SQL_AT_DROP_COLUMN
	SQL_AT_DROP_COLUMN_CASCADE
	SQL_AT_DROP_COLUMN_DEFAULT
	SQL_AT_DROP_COLUMN_RESTRICT
	SQL_AT_DROP_TABLE_CONSTRAINT_CASCADE
	SQL_AT_DROP_TABLE_CONSTRAINT_RESTRICT
	SQL_AT_SET_COLUMN_DEFAULT
	SQL_AUTOCOMMIT
	SQL_AUTOCOMMIT_DEFAULT
	SQL_AUTOCOMMIT_OFF
	SQL_AUTOCOMMIT_ON
	SQL_BATCH_ROW_COUNT
	SQL_BATCH_SUPPORT
	SQL_BEST_ROWID
	SQL_BIGINT
	SQL_BINARY
	SQL_BIND_BY_COLUMN
	SQL_BIND_TYPE
	SQL_BIND_TYPE_DEFAULT
	SQL_BIT
	SQL_BLOB
	SQL_BLOB_LOCATOR
	SQL_BOOKMARK_PERSISTENCE
	SQL_BP_CLOSE
	SQL_BP_DELETE
	SQL_BP_DROP
	SQL_BP_OTHER_HSTMT
	SQL_BP_SCROLL
	SQL_BP_TRANSACTION
	SQL_BP_UPDATE
	SQL_BRC_EXPLICIT
	SQL_BRC_PROCEDURES
	SQL_BRC_ROLLED_UP
	SQL_BS_ROW_COUNT_EXPLICIT
	SQL_BS_ROW_COUNT_PROC
	SQL_BS_SELECT_EXPLICIT
	SQL_BS_SELECT_PROC
	SQL_CA1_ABSOLUTE
	SQL_CA1_BOOKMARK
	SQL_CA1_BULK_ADD
	SQL_CA1_BULK_DELETE_BY_BOOKMARK
	SQL_CA1_BULK_FETCH_BY_BOOKMARK
	SQL_CA1_BULK_UPDATE_BY_BOOKMARK
	SQL_CA1_LOCK_EXCLUSIVE
	SQL_CA1_LOCK_NO_CHANGE
	SQL_CA1_LOCK_UNLOCK
	SQL_CA1_NEXT
	SQL_CA1_POSITIONED_DELETE
	SQL_CA1_POSITIONED_UPDATE
	SQL_CA1_POS_DELETE
	SQL_CA1_POS_POSITION
	SQL_CA1_POS_REFRESH
	SQL_CA1_POS_UPDATE
	SQL_CA1_RELATIVE
	SQL_CA1_SELECT_FOR_UPDATE
	SQL_CA2_CRC_APPROXIMATE
	SQL_CA2_CRC_EXACT
	SQL_CA2_LOCK_CONCURRENCY
	SQL_CA2_MAX_ROWS_AFFECTS_ALL
	SQL_CA2_MAX_ROWS_CATALOG
	SQL_CA2_MAX_ROWS_DELETE
	SQL_CA2_MAX_ROWS_INSERT
	SQL_CA2_MAX_ROWS_SELECT
	SQL_CA2_MAX_ROWS_UPDATE
	SQL_CA2_OPT_ROWVER_CONCURRENCY
	SQL_CA2_OPT_VALUES_CONCURRENCY
	SQL_CA2_READ_ONLY_CONCURRENCY
	SQL_CA2_SENSITIVITY_ADDITIONS
	SQL_CA2_SENSITIVITY_DELETIONS
	SQL_CA2_SENSITIVITY_UPDATES
	SQL_CA2_SIMULATE_NON_UNIQUE
	SQL_CA2_SIMULATE_TRY_UNIQUE
	SQL_CA2_SIMULATE_UNIQUE
	SQL_CASCADE
	SQL_CATALOG_LOCATION
	SQL_CATALOG_NAME
	SQL_CATALOG_NAME_SEPARATOR
	SQL_CATALOG_TERM
	SQL_CATALOG_USAGE
	SQL_CA_CONSTRAINT_DEFERRABLE
	SQL_CA_CONSTRAINT_INITIALLY_DEFERRED
	SQL_CA_CONSTRAINT_INITIALLY_IMMEDIATE
	SQL_CA_CONSTRAINT_NON_DEFERRABLE
	SQL_CA_CREATE_ASSERTION
	SQL_CB_CLOSE
	SQL_CB_DELETE
	SQL_CB_NON_NULL
	SQL_CB_NULL
	SQL_CB_PRESERVE
	SQL_CCOL_CREATE_COLLATION
	SQL_CCS_COLLATE_CLAUSE
	SQL_CCS_CREATE_CHARACTER_SET
	SQL_CCS_LIMITED_COLLATION
	SQL_CC_CLOSE
	SQL_CC_DEFAULT
	SQL_CC_DELETE
	SQL_CC_NO_RELEASE
	SQL_CC_PRESERVE
	SQL_CC_RELEASE
	SQL_CDO_COLLATION
	SQL_CDO_CONSTRAINT
	SQL_CDO_CONSTRAINT_DEFERRABLE
	SQL_CDO_CONSTRAINT_INITIALLY_DEFERRED
	SQL_CDO_CONSTRAINT_INITIALLY_IMMEDIATE
	SQL_CDO_CONSTRAINT_NAME_DEFINITION
	SQL_CDO_CONSTRAINT_NON_DEFERRABLE
	SQL_CDO_CREATE_DOMAIN
	SQL_CDO_DEFAULT
	SQL_CD_FALSE
	SQL_CD_TRUE
	SQL_CHAR
	SQL_CLOB
	SQL_CLOB_LOCATOR
	SQL_CLOSE
	SQL_CLOSE_BEHAVIOR
	SQL_CL_END
	SQL_CL_START
	SQL_CN_ANY
	SQL_CN_DIFFERENT
	SQL_CN_NONE
	SQL_CODE_DATE
	SQL_CODE_DAY
	SQL_CODE_DAY_TO_HOUR
	SQL_CODE_DAY_TO_MINUTE
	SQL_CODE_DAY_TO_SECOND
	SQL_CODE_HOUR
	SQL_CODE_HOUR_TO_MINUTE
	SQL_CODE_HOUR_TO_SECOND
	SQL_CODE_MINUTE
	SQL_CODE_MINUTE_TO_SECOND
	SQL_CODE_MONTH
	SQL_CODE_SECOND
	SQL_CODE_TIME
	SQL_CODE_TIMESTAMP
	SQL_CODE_YEAR
	SQL_CODE_YEAR_TO_MONTH
	SQL_COLATT_OPT_MAX
	SQL_COLATT_OPT_MIN
	SQL_COLLATION_SEQ
	SQL_COLUMN_ALIAS
	SQL_COLUMN_AUTO_INCREMENT
	SQL_COLUMN_CASE_SENSITIVE
	SQL_COLUMN_CATALOG_NAME
	SQL_COLUMN_COUNT
	SQL_COLUMN_DISPLAY_SIZE
	SQL_COLUMN_DISTINCT_TYPE
	SQL_COLUMN_DRIVER_START
	SQL_COLUMN_IGNORE
	SQL_COLUMN_LABEL
	SQL_COLUMN_LENGTH
	SQL_COLUMN_MONEY
	SQL_COLUMN_NAME
	SQL_COLUMN_NO_COLUMN_NUMBER
	SQL_COLUMN_NULLABLE
	SQL_COLUMN_NUMBER_UNKNOWN
	SQL_COLUMN_OWNER_NAME
	SQL_COLUMN_PRECISION
	SQL_COLUMN_QUALIFIER_NAME
	SQL_COLUMN_REFERENCE_TYPE
	SQL_COLUMN_SCALE
	SQL_COLUMN_SCHEMA_NAME
	SQL_COLUMN_SEARCHABLE
	SQL_COLUMN_TABLE_NAME
	SQL_COLUMN_TYPE
	SQL_COLUMN_TYPE_NAME
	SQL_COLUMN_UNSIGNED
	SQL_COLUMN_UPDATABLE
	SQL_COL_PRED_BASIC
	SQL_COL_PRED_CHAR
	SQL_COMMIT
	SQL_CONCAT_NULL_BEHAVIOR
	SQL_CONCURRENCY
	SQL_CONCURRENT_TRANS
	SQL_CONCUR_DEFAULT
	SQL_CONCUR_LOCK
	SQL_CONCUR_READ_ONLY
	SQL_CONCUR_ROWVER
	SQL_CONCUR_TIMESTAMP
	SQL_CONCUR_VALUES
	SQL_CONNECTTYPE
	SQL_CONNECTTYPE_DEFAULT
	SQL_CONNECT_OPT_DRVR_START
	SQL_CONN_CONTEXT
	SQL_CONN_OPT_MAX
	SQL_CONN_OPT_MIN
	SQL_CONNECT_CODEPAGE
	SQL_CONVERT_BIGINT
	SQL_CONVERT_BINARY
	SQL_CONVERT_BIT
	SQL_CONVERT_CHAR
	SQL_CONVERT_DATE
	SQL_CONVERT_DECIMAL
	SQL_CONVERT_DOUBLE
	SQL_CONVERT_FLOAT
	SQL_CONVERT_FUNCTIONS
	SQL_CONVERT_INTEGER
	SQL_CONVERT_INTERVAL_DAY_TIME
	SQL_CONVERT_INTERVAL_YEAR_MONTH
	SQL_CONVERT_LONGVARBINARY
	SQL_CONVERT_LONGVARCHAR
	SQL_CONVERT_NUMERIC
	SQL_CONVERT_REAL
	SQL_CONVERT_SMALLINT
	SQL_CONVERT_TIME
	SQL_CONVERT_TIMESTAMP
	SQL_CONVERT_TINYINT
	SQL_CONVERT_VARBINARY
	SQL_CONVERT_VARCHAR
	SQL_CONVERT_WCHAR
	SQL_CONVERT_WLONGVARCHAR
	SQL_CONVERT_WVARCHAR
	SQL_COORDINATED_TRANS
	SQL_CORRELATION_NAME
	SQL_CP_DEFAULT
	SQL_CP_MATCH_DEFAULT
	SQL_CP_OFF
	SQL_CP_ONE_PER_DRIVER
	SQL_CP_ONE_PER_HENV
	SQL_CP_RELAXED_MATCH
	SQL_CP_STRICT_MATCH
	SQL_CREATE_ASSERTION
	SQL_CREATE_CHARACTER_SET
	SQL_CREATE_COLLATION
	SQL_CREATE_DOMAIN
	SQL_CREATE_SCHEMA
	SQL_CREATE_TABLE
	SQL_CREATE_TRANSLATION
	SQL_CREATE_VIEW
	SQL_CR_CLOSE
	SQL_CR_DELETE
	SQL_CR_PRESERVE
	SQL_CS_AUTHORIZATION
	SQL_CS_CREATE_SCHEMA
	SQL_CS_DEFAULT_CHARACTER_SET
	SQL_CTR_CREATE_TRANSLATION
	SQL_CT_COLUMN_COLLATION
	SQL_CT_COLUMN_CONSTRAINT
	SQL_CT_COLUMN_DEFAULT
	SQL_CT_COMMIT_DELETE
	SQL_CT_COMMIT_PRESERVE
	SQL_CT_CONSTRAINT_DEFERRABLE
	SQL_CT_CONSTRAINT_INITIALLY_DEFERRED
	SQL_CT_CONSTRAINT_INITIALLY_IMMEDIATE
	SQL_CT_CONSTRAINT_NAME_DEFINITION
	SQL_CT_CONSTRAINT_NON_DEFERRABLE
	SQL_CT_CREATE_TABLE
	SQL_CT_GLOBAL_TEMPORARY
	SQL_CT_LOCAL_TEMPORARY
	SQL_CT_TABLE_CONSTRAINT
	SQL_CURRENT_QUALIFIER
	SQL_CURRENT_SCHEMA
	SQL_CURSOR_COMMIT_BEHAVIOR
	SQL_CURSOR_DYNAMIC
	SQL_CURSOR_FORWARD_ONLY
	SQL_CURSOR_HOLD
	SQL_CURSOR_HOLD_DEFAULT
	SQL_CURSOR_HOLD_OFF
	SQL_CURSOR_HOLD_ON
	SQL_CURSOR_KEYSET_DRIVEN
	SQL_CURSOR_ROLLBACK_BEHAVIOR
	SQL_CURSOR_SENSITIVITY
	SQL_CURSOR_STATIC
	SQL_CURSOR_TYPE
	SQL_CURSOR_TYPE_DEFAULT
	SQL_CUR_DEFAULT
	SQL_CUR_USE_DRIVER
	SQL_CUR_USE_IF_NEEDED
	SQL_CUR_USE_ODBC
	SQL_CU_DML_STATEMENTS
	SQL_CU_INDEX_DEFINITION
	SQL_CU_PRIVILEGE_DEFINITION
	SQL_CU_PROCEDURE_INVOCATION
	SQL_CU_TABLE_DEFINITION
	SQL_CVT_BIGINT
	SQL_CVT_BINARY
	SQL_CVT_BIT
	SQL_CVT_CHAR
	SQL_CVT_DATE
	SQL_CVT_DECIMAL
	SQL_CVT_DOUBLE
	SQL_CVT_FLOAT
	SQL_CVT_INTEGER
	SQL_CVT_INTERVAL_DAY_TIME
	SQL_CVT_INTERVAL_YEAR_MONTH
	SQL_CVT_LONGVARBINARY
	SQL_CVT_LONGVARCHAR
	SQL_CVT_NUMERIC
	SQL_CVT_REAL
	SQL_CVT_SMALLINT
	SQL_CVT_TIME
	SQL_CVT_TIMESTAMP
	SQL_CVT_TINYINT
	SQL_CVT_VARBINARY
	SQL_CVT_VARCHAR
	SQL_CVT_WCHAR
	SQL_CVT_WLONGVARCHAR
	SQL_CVT_WVARCHAR
	SQL_CV_CASCADED
	SQL_CV_CHECK_OPTION
	SQL_CV_CREATE_VIEW
	SQL_CV_LOCAL
	SQL_C_BINARY
	SQL_C_BIT
	SQL_C_BLOB_LOCATOR
	SQL_C_BOOKMARK
	SQL_C_CHAR
	SQL_C_CLOB_LOCATOR
	SQL_C_DATALINK
	SQL_C_DATE
	SQL_C_DBCHAR
	SQL_C_DBCLOB_LOCATOR
	SQL_C_DECIMAL_IBM
	SQL_C_DEFAULT
	SQL_C_DOUBLE
	SQL_C_FLOAT
	SQL_C_GUID
	SQL_C_INTERVAL_DAY
	SQL_C_INTERVAL_DAY_TO_HOUR
	SQL_C_INTERVAL_DAY_TO_MINUTE
	SQL_C_INTERVAL_DAY_TO_SECOND
	SQL_C_INTERVAL_HOUR
	SQL_C_INTERVAL_HOUR_TO_MINUTE
	SQL_C_INTERVAL_HOUR_TO_SECOND
	SQL_C_INTERVAL_MINUTE
	SQL_C_INTERVAL_MINUTE_TO_SECOND
	SQL_C_INTERVAL_MONTH
	SQL_C_INTERVAL_SECOND
	SQL_C_INTERVAL_YEAR
	SQL_C_INTERVAL_YEAR_TO_MONTH
	SQL_C_LONG
	SQL_C_NUMERIC
	SQL_C_SBIGINT
	SQL_C_SHORT
	SQL_C_SLONG
	SQL_C_SSHORT
	SQL_C_STINYINT
	SQL_C_TIME
	SQL_C_TIMESTAMP
	SQL_C_TINYINT
	SQL_C_TYPE_DATE
	SQL_C_TYPE_TIME
	SQL_C_TYPE_TIMESTAMP
	SQL_C_UBIGINT
	SQL_C_ULONG
	SQL_C_USHORT
	SQL_C_UTINYINT
	SQL_C_VARBOOKMARK
	SQL_DATABASE_NAME
	SQL_DATABASE_CODEPAGE
	SQL_DATALINK
	SQL_DATALINK_URL
	SQL_DATA_AT_EXEC
	SQL_DATA_SOURCE_NAME
	SQL_DATA_SOURCE_READ_ONLY
	SQL_DATE
	SQL_DATETIME
	SQL_DATETIME_LITERALS
	SQL_DATE_LEN
	SQL_DAY
	SQL_DAY_TO_HOUR
	SQL_DAY_TO_MINUTE
	SQL_DAY_TO_SECOND
	SQL_DA_DROP_ASSERTION
	SQL_DB2ESTIMATE
	SQL_DB2ESTIMATE_DEFAULT
	SQL_DB2ESTIMATE_OFF
	SQL_DB2ESTIMATE_ON
	SQL_DB2EXPLAIN
	SQL_DB2EXPLAIN_DEFAULT
	SQL_DB2EXPLAIN_MODE_ON
	SQL_DB2EXPLAIN_OFF
	SQL_DB2EXPLAIN_ON
	SQL_DB2EXPLAIN_SNAPSHOT_MODE_ON
	SQL_DB2EXPLAIN_SNAPSHOT_ON
	SQL_DBCLOB
	SQL_DBCLOB_LOCATOR
	SQL_DBMS_NAME
	SQL_DBMS_VER
	SQL_DB_DEFAULT
	SQL_DB_DISCONNECT
	SQL_DB_RETURN_TO_POOL
	SQL_DCS_DROP_CHARACTER_SET
	SQL_DC_DROP_COLLATION
	SQL_DDL_INDEX
	SQL_DD_CASCADE
	SQL_DD_DROP_DOMAIN
	SQL_DD_RESTRICT
	SQL_DECIMAL
	SQL_DEFAULT
	SQL_DEFAULT_PARAM
	SQL_DEFAULT_TXN_ISOLATION
	SQL_DEFERRED_PREPARE_DEFAULT
	SQL_DEFERRED_PREPARE_OFF
	SQL_DEFERRED_PREPARE_ON
	SQL_DELETE
	SQL_DELETE_BY_BOOKMARK
	SQL_DESCRIBE_PARAMETER
	SQL_DESC_ALLOC_AUTO
	SQL_DESC_ALLOC_TYPE
	SQL_DESC_ALLOC_USER
	SQL_DESC_ARRAY_SIZE
	SQL_DESC_ARRAY_STATUS_PTR
	SQL_DESC_AUTO_UNIQUE_VALUE
	SQL_DESC_BASE_COLUMN_NAME
	SQL_DESC_BASE_TABLE_NAME
	SQL_DESC_BIND_OFFSET_PTR
	SQL_DESC_BIND_TYPE
	SQL_DESC_CASE_SENSITIVE
	SQL_DESC_CATALOG_NAME
	SQL_DESC_CONCISE_TYPE
	SQL_DESC_COUNT
	SQL_DESC_DATA_PTR
	SQL_DESC_DATETIME_INTERVAL_CODE
	SQL_DESC_DATETIME_INTERVAL_PRECISION
	SQL_DESC_DESCRIPTOR_TYPE
	SQL_DESC_DISPLAY_SIZE
	SQL_DESC_DISTINCT_TYPE
	SQL_DESC_FIXED_PREC_SCALE
	SQL_DESC_INDICATOR_PTR
	SQL_DESC_LABEL
	SQL_DESC_LENGTH
	SQL_DESC_LITERAL_PREFIX
	SQL_DESC_LITERAL_SUFFIX
	SQL_DESC_LOCAL_TYPE_NAME
	SQL_DESC_MAXIMUM_SCALE
	SQL_DESC_MINIMUM_SCALE
	SQL_DESC_NAME
	SQL_DESC_NULLABLE
	SQL_DESC_NUM_PREC_RADIX
	SQL_DESC_OCTET_LENGTH
	SQL_DESC_OCTET_LENGTH_PTR
	SQL_DESC_PARAMETER_TYPE
	SQL_DESC_PRECISION
	SQL_DESC_REFERENCE_TYPE
	SQL_DESC_ROWS_PROCESSED_PTR
	SQL_DESC_ROWVER
	SQL_DESC_SCALE
	SQL_DESC_SCHEMA_NAME
	SQL_DESC_SEARCHABLE
	SQL_DESC_TABLE_NAME
	SQL_DESC_TYPE
	SQL_DESC_TYPE_NAME
	SQL_DESC_UNNAMED
	SQL_DESC_UNSIGNED
	SQL_DESC_UPDATABLE
	SQL_DIAG_ALTER_TABLE
	SQL_DIAG_CALL
	SQL_DIAG_CLASS_ORIGIN
	SQL_DIAG_COLUMN_NUMBER
	SQL_DIAG_CONNECTION_NAME
	SQL_DIAG_CREATE_INDEX
	SQL_DIAG_CREATE_TABLE
	SQL_DIAG_CREATE_VIEW
	SQL_DIAG_CURSOR_ROW_COUNT
	SQL_DIAG_DEFERRED_PREPARE_ERROR
	SQL_DIAG_DELETE_WHERE
	SQL_DIAG_DROP_INDEX
	SQL_DIAG_DROP_TABLE
	SQL_DIAG_DROP_VIEW
	SQL_DIAG_DYNAMIC_DELETE_CURSOR
	SQL_DIAG_DYNAMIC_FUNCTION
	SQL_DIAG_DYNAMIC_FUNCTION_CODE
	SQL_DIAG_DYNAMIC_UPDATE_CURSOR
	SQL_DIAG_GRANT
	SQL_DIAG_INSERT
	SQL_DIAG_MESSAGE_TEXT
	SQL_DIAG_NATIVE
	SQL_DIAG_NUMBER
	SQL_DIAG_RETURNCODE
	SQL_DIAG_REVOKE
	SQL_DIAG_ROW_COUNT
	SQL_DIAG_ROW_NUMBER
	SQL_DIAG_SELECT_CURSOR
	SQL_DIAG_SERVER_NAME
	SQL_DIAG_SQLSTATE
	SQL_DIAG_SUBCLASS_ORIGIN
	SQL_DIAG_UNKNOWN_STATEMENT
	SQL_DIAG_UPDATE_WHERE
	SQL_DI_CREATE_INDEX
	SQL_DI_DROP_INDEX
	SQL_DL_SQL92_DATE
	SQL_DL_SQL92_INTERVAL_DAY
	SQL_DL_SQL92_INTERVAL_DAY_TO_HOUR
	SQL_DL_SQL92_INTERVAL_DAY_TO_MINUTE
	SQL_DL_SQL92_INTERVAL_DAY_TO_SECOND
	SQL_DL_SQL92_INTERVAL_HOUR
	SQL_DL_SQL92_INTERVAL_HOUR_TO_MINUTE
	SQL_DL_SQL92_INTERVAL_HOUR_TO_SECOND
	SQL_DL_SQL92_INTERVAL_MINUTE
	SQL_DL_SQL92_INTERVAL_MINUTE_TO_SECOND
	SQL_DL_SQL92_INTERVAL_MONTH
	SQL_DL_SQL92_INTERVAL_SECOND
	SQL_DL_SQL92_INTERVAL_YEAR
	SQL_DL_SQL92_INTERVAL_YEAR_TO_MONTH
	SQL_DL_SQL92_TIME
	SQL_DL_SQL92_TIMESTAMP
	SQL_DM_VER
	SQL_DOUBLE
	SQL_DRIVER_COMPLETE
	SQL_DRIVER_COMPLETE_REQUIRED
	SQL_DRIVER_HDBC
	SQL_DRIVER_HDESC
	SQL_DRIVER_HENV
	SQL_DRIVER_HLIB
	SQL_DRIVER_HSTMT
	SQL_DRIVER_NAME
	SQL_DRIVER_NOPROMPT
	SQL_DRIVER_ODBC_VER
	SQL_DRIVER_PROMPT
	SQL_DRIVER_VER
	SQL_DROP
	SQL_DROP_ASSERTION
	SQL_DROP_CHARACTER_SET
	SQL_DROP_COLLATION
	SQL_DROP_DOMAIN
	SQL_DROP_SCHEMA
	SQL_DROP_TABLE
	SQL_DROP_TRANSLATION
	SQL_DROP_VIEW
	SQL_DS_CASCADE
	SQL_DS_DROP_SCHEMA
	SQL_DS_RESTRICT
	SQL_DTC_DONE
	SQL_DTC_ENLIST_EXPENSIVE
	SQL_DTC_TRANSITION_COST
	SQL_DTC_UNENLIST_EXPENSIVE
	SQL_DTR_DROP_TRANSLATION
	SQL_DT_CASCADE
	SQL_DT_DROP_TABLE
	SQL_DT_RESTRICT
	SQL_DV_CASCADE
	SQL_DV_DROP_VIEW
	SQL_DV_RESTRICT
	SQL_DYNAMIC_CURSOR_ATTRIBUTES1
	SQL_DYNAMIC_CURSOR_ATTRIBUTES2
	SQL_EARLYCLOSE_DEFAULT
	SQL_EARLYCLOSE_OFF
	SQL_EARLYCLOSE_ON
	SQL_ENSURE
	SQL_ENTIRE_ROWSET
	SQL_ERROR
	SQL_EXPRESSIONS_IN_ORDERBY
	SQL_EXT_API_LAST
	SQL_EXT_API_START
	SQL_FALSE
	SQL_FD_FETCH_ABSOLUTE
	SQL_FD_FETCH_BOOKMARK
	SQL_FD_FETCH_FIRST
	SQL_FD_FETCH_LAST
	SQL_FD_FETCH_NEXT
	SQL_FD_FETCH_PREV
	SQL_FD_FETCH_PRIOR
	SQL_FD_FETCH_RELATIVE
	SQL_FD_FETCH_RESUME
	SQL_FETCH_ABSOLUTE
	SQL_FETCH_BOOKMARK
	SQL_FETCH_BY_BOOKMARK
	SQL_FETCH_DIRECTION
	SQL_FETCH_FIRST
	SQL_FETCH_FIRST_SYSTEM
	SQL_FETCH_FIRST_USER
	SQL_FETCH_LAST
	SQL_FETCH_NEXT
	SQL_FETCH_PREV
	SQL_FETCH_PRIOR
	SQL_FETCH_RELATIVE
	SQL_FETCH_RESUME
	SQL_FILE_APPEND
	SQL_FILE_CATALOG
	SQL_FILE_CREATE
	SQL_FILE_NOT_SUPPORTED
	SQL_FILE_OVERWRITE
	SQL_FILE_QUALIFIER
	SQL_FILE_READ
	SQL_FILE_TABLE
	SQL_FILE_USAGE
	SQL_FLOAT
	SQL_FN_CVT_CAST
	SQL_FN_CVT_CONVERT
	SQL_FN_NUM_ABS
	SQL_FN_NUM_ACOS
	SQL_FN_NUM_ASIN
	SQL_FN_NUM_ATAN
	SQL_FN_NUM_ATAN2
	SQL_FN_NUM_CEILING
	SQL_FN_NUM_COS
	SQL_FN_NUM_COT
	SQL_FN_NUM_DEGREES
	SQL_FN_NUM_EXP
	SQL_FN_NUM_FLOOR
	SQL_FN_NUM_LOG
	SQL_FN_NUM_LOG10
	SQL_FN_NUM_MOD
	SQL_FN_NUM_PI
	SQL_FN_NUM_POWER
	SQL_FN_NUM_RADIANS
	SQL_FN_NUM_RAND
	SQL_FN_NUM_ROUND
	SQL_FN_NUM_SIGN
	SQL_FN_NUM_SIN
	SQL_FN_NUM_SQRT
	SQL_FN_NUM_TAN
	SQL_FN_NUM_TRUNCATE
	SQL_FN_STR_ASCII
	SQL_FN_STR_BIT_LENGTH
	SQL_FN_STR_CHAR
	SQL_FN_STR_CHARACTER_LENGTH
	SQL_FN_STR_CHAR_LENGTH
	SQL_FN_STR_CONCAT
	SQL_FN_STR_DIFFERENCE
	SQL_FN_STR_INSERT
	SQL_FN_STR_LCASE
	SQL_FN_STR_LEFT
	SQL_FN_STR_LENGTH
	SQL_FN_STR_LOCATE
	SQL_FN_STR_LOCATE_2
	SQL_FN_STR_LTRIM
	SQL_FN_STR_OCTET_LENGTH
	SQL_FN_STR_POSITION
	SQL_FN_STR_REPEAT
	SQL_FN_STR_REPLACE
	SQL_FN_STR_RIGHT
	SQL_FN_STR_RTRIM
	SQL_FN_STR_SOUNDEX
	SQL_FN_STR_SPACE
	SQL_FN_STR_SUBSTRING
	SQL_FN_STR_UCASE
	SQL_FN_SYS_DBNAME
	SQL_FN_SYS_IFNULL
	SQL_FN_SYS_USERNAME
	SQL_FN_TD_CURDATE
	SQL_FN_TD_CURRENT_DATE
	SQL_FN_TD_CURRENT_TIME
	SQL_FN_TD_CURRENT_TIMESTAMP
	SQL_FN_TD_CURTIME
	SQL_FN_TD_DAYNAME
	SQL_FN_TD_DAYOFMONTH
	SQL_FN_TD_DAYOFWEEK
	SQL_FN_TD_DAYOFYEAR
	SQL_FN_TD_EXTRACT
	SQL_FN_TD_HOUR
	SQL_FN_TD_MINUTE
	SQL_FN_TD_MONTH
	SQL_FN_TD_MONTHNAME
	SQL_FN_TD_NOW
	SQL_FN_TD_QUARTER
	SQL_FN_TD_SECOND
	SQL_FN_TD_TIMESTAMPADD
	SQL_FN_TD_TIMESTAMPDIFF
	SQL_FN_TD_WEEK
	SQL_FN_TD_YEAR
	SQL_FN_TSI_DAY
	SQL_FN_TSI_FRAC_SECOND
	SQL_FN_TSI_HOUR
	SQL_FN_TSI_MINUTE
	SQL_FN_TSI_MONTH
	SQL_FN_TSI_QUARTER
	SQL_FN_TSI_SECOND
	SQL_FN_TSI_WEEK
	SQL_FN_TSI_YEAR
	SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES1
	SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES2
	SQL_FROM_LITERAL
	SQL_FROM_LOCATOR
	SQL_GB_COLLATE
	SQL_GB_GROUP_BY_CONTAINS_SELECT
	SQL_GB_GROUP_BY_EQUALS_SELECT
	SQL_GB_NOT_SUPPORTED
	SQL_GB_NO_RELATION
	SQL_GD_ANY_COLUMN
	SQL_GD_ANY_ORDER
	SQL_GD_BLOCK
	SQL_GD_BOUND
	SQL_GETDATA_EXTENSIONS
	SQL_GET_BOOKMARK
	SQL_GRAPHIC
	SQL_GROUP_BY
	SQL_GUID
	SQL_HANDLE_DBC
	SQL_HANDLE_DESC
	SQL_HANDLE_ENV
	SQL_HANDLE_SENV
	SQL_HANDLE_STMT
	SQL_HOUR
	SQL_HOUR_TO_MINUTE
	SQL_HOUR_TO_SECOND
	SQL_IBM_ALTERTABLEVARCHAR
	SQL_IC_LOWER
	SQL_IC_MIXED
	SQL_IC_SENSITIVE
	SQL_IC_UPPER
	SQL_IDENTIFIER_CASE
	SQL_IDENTIFIER_QUOTE_CHAR
	SQL_IGNORE
	SQL_IK_ALL
	SQL_IK_ASC
	SQL_IK_DESC
	SQL_IK_NONE
	SQL_INDEX_ALL
	SQL_INDEX_CLUSTERED
	SQL_INDEX_HASHED
	SQL_INDEX_KEYWORDS
	SQL_INDEX_OTHER
	SQL_INDEX_UNIQUE
	SQL_INFO_DRIVER_START
	SQL_INFO_FIRST
	SQL_INFO_LAST
	SQL_INFO_SCHEMA_VIEWS
	SQL_INITIALLY_DEFERRED
	SQL_INITIALLY_IMMEDIATE
	SQL_INSENSITIVE
	SQL_INSERT_STATEMENT
	SQL_INTEGER
	SQL_INTEGRITY
	SQL_INTERVAL
	SQL_INTERVAL_DAY
	SQL_INTERVAL_DAY_TO_HOUR
	SQL_INTERVAL_DAY_TO_MINUTE
	SQL_INTERVAL_DAY_TO_SECOND
	SQL_INTERVAL_HOUR
	SQL_INTERVAL_HOUR_TO_MINUTE
	SQL_INTERVAL_HOUR_TO_SECOND
	SQL_INTERVAL_MINUTE
	SQL_INTERVAL_MINUTE_TO_SECOND
	SQL_INTERVAL_MONTH
	SQL_INTERVAL_SECOND
	SQL_INTERVAL_YEAR
	SQL_INTERVAL_YEAR_TO_MONTH
	SQL_INVALID_HANDLE
	SQL_ISV_ASSERTIONS
	SQL_ISV_CHARACTER_SETS
	SQL_ISV_CHECK_CONSTRAINTS
	SQL_ISV_COLLATIONS
	SQL_ISV_COLUMNS
	SQL_ISV_COLUMN_DOMAIN_USAGE
	SQL_ISV_COLUMN_PRIVILEGES
	SQL_ISV_CONSTRAINT_COLUMN_USAGE
	SQL_ISV_CONSTRAINT_TABLE_USAGE
	SQL_ISV_DOMAINS
	SQL_ISV_DOMAIN_CONSTRAINTS
	SQL_ISV_KEY_COLUMN_USAGE
	SQL_ISV_REFERENTIAL_CONSTRAINTS
	SQL_ISV_SCHEMATA
	SQL_ISV_SQL_LANGUAGES
	SQL_ISV_TABLES
	SQL_ISV_TABLE_CONSTRAINTS
	SQL_ISV_TABLE_PRIVILEGES
	SQL_ISV_TRANSLATIONS
	SQL_ISV_USAGE_PRIVILEGES
	SQL_ISV_VIEWS
	SQL_ISV_VIEW_COLUMN_USAGE
	SQL_ISV_VIEW_TABLE_USAGE
	SQL_IS_INSERT_LITERALS
	SQL_IS_INSERT_SEARCHED
	SQL_IS_INTEGER
	SQL_IS_POINTER
	SQL_IS_SELECT_INTO
	SQL_IS_SMALLINT
	SQL_IS_UINTEGER
	SQL_IS_USMALLINT
	SQL_KEYSET_CURSOR_ATTRIBUTES1
	SQL_KEYSET_CURSOR_ATTRIBUTES2
	SQL_KEYSET_SIZE
	SQL_KEYSET_SIZE_DEFAULT
	SQL_KEYWORDS
	SQL_LCK_EXCLUSIVE
	SQL_LCK_NO_CHANGE
	SQL_LCK_UNLOCK
	SQL_LD_COMPAT_DEFAULT
	SQL_LD_COMPAT_NO
	SQL_LD_COMPAT_YES
	SQL_LEN_BINARY_ATTR_OFFSET
	SQL_LEN_DATA_AT_EXEC_OFFSET
	SQL_LIKE_ESCAPE_CLAUSE
	SQL_LIKE_ONLY
	SQL_LOCK_EXCLUSIVE
	SQL_LOCK_NO_CHANGE
	SQL_LOCK_TYPES
	SQL_LOCK_UNLOCK
	SQL_LOGIN_TIMEOUT
	SQL_LOGIN_TIMEOUT_DEFAULT
	SQL_LONGDATA_COMPAT
	SQL_LONGVARBINARY
	SQL_LONGVARCHAR
	SQL_LONGVARGRAPHIC
	SQL_MAXCONN
	SQL_MAXIMUM_CATALOG_NAME_LENGTH
	SQL_MAXIMUM_COLUMNS_IN_GROUP_BY
	SQL_MAXIMUM_COLUMNS_IN_INDEX
	SQL_MAXIMUM_COLUMNS_IN_ORDER_BY
	SQL_MAXIMUM_COLUMNS_IN_SELECT
	SQL_MAXIMUM_COLUMN_NAME_LENGTH
	SQL_MAXIMUM_CONCURRENT_ACTIVITIES
	SQL_MAXIMUM_CURSOR_NAME_LENGTH
	SQL_MAXIMUM_DRIVER_CONNECTIONS
	SQL_MAXIMUM_IDENTIFIER_LENGTH
	SQL_MAXIMUM_INDEX_SIZE
	SQL_MAXIMUM_ROW_SIZE
	SQL_MAXIMUM_SCHEMA_NAME_LENGTH
	SQL_MAXIMUM_STATEMENT_LENGTH
	SQL_MAXIMUM_TABLES_IN_SELECT
	SQL_MAXIMUM_USER_NAME_LENGTH
	SQL_MAX_ASYNC_CONCURRENT_STATEMENTS
	SQL_MAX_BINARY_LITERAL_LEN
	SQL_MAX_CATALOG_NAME_LEN
	SQL_MAX_CHAR_LITERAL_LEN
	SQL_MAX_COLUMNS_IN_GROUP_BY
	SQL_MAX_COLUMNS_IN_INDEX
	SQL_MAX_COLUMNS_IN_ORDER_BY
	SQL_MAX_COLUMNS_IN_SELECT
	SQL_MAX_COLUMNS_IN_TABLE
	SQL_MAX_COLUMN_NAME_LEN
	SQL_MAX_CONCURRENT_ACTIVITIES
	SQL_MAX_CURSOR_NAME_LEN
	SQL_MAX_DRIVER_CONNECTIONS
	SQL_MAX_DSN_LENGTH
	SQL_MAX_IDENTIFIER_LEN
	SQL_MAX_ID_LENGTH
	SQL_MAX_INDEX_SIZE
	SQL_MAX_LENGTH
	SQL_MAX_LENGTH_DEFAULT
	SQL_MAX_MESSAGE_LENGTH
	SQL_MAX_NUMERIC_LEN
	SQL_MAX_OPTION_STRING_LENGTH
	SQL_MAX_OWNER_NAME_LEN
	SQL_MAX_PROCEDURE_NAME_LEN
	SQL_MAX_QUALIFIER_NAME_LEN
	SQL_MAX_ROWS
	SQL_MAX_ROWS_DEFAULT
	SQL_MAX_ROW_SIZE
	SQL_MAX_ROW_SIZE_INCLUDES_LONG
	SQL_MAX_SCHEMA_NAME_LEN
	SQL_MAX_STATEMENT_LEN
	SQL_MAX_TABLES_IN_SELECT
	SQL_MAX_TABLE_NAME_LEN
	SQL_MAX_USER_NAME_LEN
	SQL_MINMEMORY_USAGE
	SQL_MINUTE
	SQL_MINUTE_TO_SECOND
	SQL_MODE_DEFAULT
	SQL_MODE_READ_ONLY
	SQL_MODE_READ_WRITE
	SQL_MONTH
	SQL_MULTIPLE_ACTIVE_TXN
	SQL_MULT_RESULT_SETS
	SQL_NAMED
	SQL_NC_END
	SQL_NC_HIGH
	SQL_NC_LOW
	SQL_NC_START
	SQL_NEED_DATA
	SQL_NEED_LONG_DATA_LEN
	SQL_NNC_NON_NULL
	SQL_NNC_NULL
	SQL_NODESCRIBE
	SQL_NODESCRIBE_DEFAULT
	SQL_NODESCRIBE_INPUT
	SQL_NODESCRIBE_OFF
	SQL_NODESCRIBE_ON
	SQL_NODESCRIBE_OUTPUT
	SQL_NONSCROLLABLE
	SQL_NON_NULLABLE_COLUMNS
	SQL_NOSCAN
	SQL_NOSCAN_DEFAULT
	SQL_NOSCAN_OFF
	SQL_NOSCAN_ON
	SQL_NOT_DEFERRABLE
	SQL_NO_ACTION
	SQL_NO_COLUMN_NUMBER
	SQL_NO_DATA
	SQL_NO_DATA_FOUND
	SQL_NO_NULLS
	SQL_NO_ROW_NUMBER
	SQL_NO_TOTAL
	SQL_NTS
	SQL_NTSL
	SQL_NULLABLE
	SQL_NULLABLE_UNKNOWN
	SQL_NULL_COLLATION
	SQL_NULL_DATA
	SQL_NULL_HANDLE
	SQL_NULL_HDBC
	SQL_NULL_HDESC
	SQL_NULL_HENV
	SQL_NULL_HSTMT
	SQL_NUMERIC
	SQL_NUMERIC_FUNCTIONS
	SQL_NUM_EXTENSIONS
	SQL_NUM_FUNCTIONS
	SQL_OAC_LEVEL1
	SQL_OAC_LEVEL2
	SQL_OAC_NONE
	SQL_ODBC_API_CONFORMANCE
	SQL_ODBC_CURSORS
	SQL_ODBC_INTERFACE_CONFORMANCE
	SQL_ODBC_KEYWORDS
	SQL_ODBC_SAG_CLI_CONFORMANCE
	SQL_ODBC_SQL_CONFORMANCE
	SQL_ODBC_SQL_OPT_IEF
	SQL_ODBC_VER
	SQL_OIC_CORE
	SQL_OIC_LEVEL1
	SQL_OIC_LEVEL2
	SQL_OJ_ALL_COMPARISON_OPS
	SQL_OJ_CAPABILITIES
	SQL_OJ_FULL
	SQL_OJ_INNER
	SQL_OJ_LEFT
	SQL_OJ_NESTED
	SQL_OJ_NOT_ORDERED
	SQL_OJ_RIGHT
	SQL_ONEPHASE
	SQL_OPTIMIZE_SQLCOLUMNS_DEFAULT
	SQL_OPTIMIZE_SQLCOLUMNS_OFF
	SQL_OPTIMIZE_SQLCOLUMNS_ON
	SQL_OPT_TRACE
	SQL_OPT_TRACEFILE
	SQL_OPT_TRACE_DEFAULT
	SQL_OPT_TRACE_FILE_DEFAULT
	SQL_OPT_TRACE_OFF
	SQL_OPT_TRACE_ON
	SQL_ORDER_BY_COLUMNS_IN_SELECT
	SQL_OSCC_COMPLIANT
	SQL_OSCC_NOT_COMPLIANT
	SQL_OSC_CORE
	SQL_OSC_EXTENDED
	SQL_OSC_MINIMUM
	SQL_OUTER_JOINS
	SQL_OUTER_JOIN_CAPABILITIES
	SQL_OU_DML_STATEMENTS
	SQL_OU_INDEX_DEFINITION
	SQL_OU_PRIVILEGE_DEFINITION
	SQL_OU_PROCEDURE_INVOCATION
	SQL_OU_TABLE_DEFINITION
	SQL_OV_ODBC2
	SQL_OV_ODBC3
	SQL_OWNER_TERM
	SQL_OWNER_USAGE
	SQL_PACKET_SIZE
	SQL_PARAMOPT_ATOMIC
	SQL_PARAM_ARRAY_ROW_COUNTS
	SQL_PARAM_ARRAY_SELECTS
	SQL_PARAM_BIND_BY_COLUMN
	SQL_PARAM_BIND_TYPE_DEFAULT
	SQL_PARAM_DIAG_UNAVAILABLE
	SQL_PARAM_ERROR
	SQL_PARAM_IGNORE
	SQL_PARAM_INPUT
	SQL_PARAM_INPUT_OUTPUT
	SQL_PARAM_OUTPUT
	SQL_PARAM_PROCEED
	SQL_PARAM_SUCCESS
	SQL_PARAM_SUCCESS_WITH_INFO
	SQL_PARAM_TYPE_DEFAULT
	SQL_PARAM_TYPE_UNKNOWN
	SQL_PARAM_UNUSED
	SQL_PARC_BATCH
	SQL_PARC_NO_BATCH
	SQL_PAS_BATCH
	SQL_PAS_NO_BATCH
	SQL_PAS_NO_SELECT
	SQL_PC_NON_PSEUDO
	SQL_PC_NOT_PSEUDO
	SQL_PC_PSEUDO
	SQL_PC_UNKNOWN
	SQL_POSITION
	SQL_POSITIONED_STATEMENTS
	SQL_POS_ADD
	SQL_POS_DELETE
	SQL_POS_OPERATIONS
	SQL_POS_POSITION
	SQL_POS_REFRESH
	SQL_POS_UPDATE
	SQL_PRED_BASIC
	SQL_PRED_CHAR
	SQL_PRED_NONE
	SQL_PRED_SEARCHABLE
	SQL_PREFETCH_DEFAULT
	SQL_PREFETCH_OFF
	SQL_PREFETCH_ON
	SQL_PROCEDURES
	SQL_PROCEDURE_TERM
	SQL_PROCESSCTL_NOFORK
	SQL_PROCESSCTL_NOTHREAD
	SQL_PS_POSITIONED_DELETE
	SQL_PS_POSITIONED_UPDATE
	SQL_PS_SELECT_FOR_UPDATE
	SQL_PT_FUNCTION
	SQL_PT_PROCEDURE
	SQL_PT_UNKNOWN
	SQL_QL_END
	SQL_QL_START
	SQL_QUALIFIER_LOCATION
	SQL_QUALIFIER_NAME_SEPARATOR
	SQL_QUALIFIER_TERM
	SQL_QUALIFIER_USAGE
	SQL_QUERY_TIMEOUT
	SQL_QUERY_TIMEOUT_DEFAULT
	SQL_QUICK
	SQL_QUIET_MODE
	SQL_QUOTED_IDENTIFIER_CASE
	SQL_QU_DML_STATEMENTS
	SQL_QU_INDEX_DEFINITION
	SQL_QU_PRIVILEGE_DEFINITION
	SQL_QU_PROCEDURE_INVOCATION
	SQL_QU_TABLE_DEFINITION
	SQL_RD_DEFAULT
	SQL_RD_OFF
	SQL_RD_ON
	SQL_REAL
	SQL_REFRESH
	SQL_RESET_PARAMS
	SQL_RESTRICT
	SQL_RESULT_COL
	SQL_RETRIEVE_DATA
	SQL_RETURN_VALUE
	SQL_ROLLBACK
	SQL_ROWSET_SIZE
	SQL_ROWSET_SIZE_DEFAULT
	SQL_ROWVER
	SQL_ROW_ADDED
	SQL_ROW_DELETED
	SQL_ROW_ERROR
	SQL_ROW_IDENTIFIER
	SQL_ROW_IGNORE
	SQL_ROW_NOROW
	SQL_ROW_NO_ROW_NUMBER
	SQL_ROW_NUMBER
	SQL_ROW_NUMBER_UNKNOWN
	SQL_ROW_PROCEED
	SQL_ROW_SUCCESS
	SQL_ROW_SUCCESS_WITH_INFO
	SQL_ROW_UPDATED
	SQL_ROW_UPDATES
	SQL_SCCO_LOCK
	SQL_SCCO_OPT_ROWVER
	SQL_SCCO_OPT_TIMESTAMP
	SQL_SCCO_OPT_VALUES
	SQL_SCCO_READ_ONLY
	SQL_SCC_ISO92_CLI
	SQL_SCC_XOPEN_CLI_VERSION1
	SQL_SCHEMA_TERM
	SQL_SCHEMA_USAGE
	SQL_SCOPE_CURROW
	SQL_SCOPE_SESSION
	SQL_SCOPE_TRANSACTION
	SQL_SCROLLABLE
	SQL_SCROLL_CONCURRENCY
	SQL_SCROLL_DYNAMIC
	SQL_SCROLL_FORWARD_ONLY
	SQL_SCROLL_KEYSET_DRIVEN
	SQL_SCROLL_OPTIONS
	SQL_SCROLL_STATIC
	SQL_SC_FIPS127_2_TRANSITIONAL
	SQL_SC_NON_UNIQUE
	SQL_SC_SQL92_ENTRY
	SQL_SC_SQL92_FULL
	SQL_SC_SQL92_INTERMEDIATE
	SQL_SC_TRY_UNIQUE
	SQL_SC_UNIQUE
	SQL_SDF_CURRENT_DATE
	SQL_SDF_CURRENT_TIME
	SQL_SDF_CURRENT_TIMESTAMP
	SQL_SEARCHABLE
	SQL_SEARCH_PATTERN_ESCAPE
	SQL_SECOND
	SQL_SENSITIVE
	SQL_SERVER_NAME
	SQL_SETPARAM_VALUE_MAX
	SQL_SETPOS_MAX_LOCK_VALUE
	SQL_SETPOS_MAX_OPTION_VALUE
	SQL_SET_DEFAULT
	SQL_SET_NULL
	SQL_SFKD_CASCADE
	SQL_SFKD_NO_ACTION
	SQL_SFKD_SET_DEFAULT
	SQL_SFKD_SET_NULL
	SQL_SFKU_CASCADE
	SQL_SFKU_NO_ACTION
	SQL_SFKU_SET_DEFAULT
	SQL_SFKU_SET_NULL
	SQL_SG_DELETE_TABLE
	SQL_SG_INSERT_COLUMN
	SQL_SG_INSERT_TABLE
	SQL_SG_REFERENCES_COLUMN
	SQL_SG_REFERENCES_TABLE
	SQL_SG_SELECT_TABLE
	SQL_SG_UPDATE_COLUMN
	SQL_SG_UPDATE_TABLE
	SQL_SG_USAGE_ON_CHARACTER_SET
	SQL_SG_USAGE_ON_COLLATION
	SQL_SG_USAGE_ON_DOMAIN
	SQL_SG_USAGE_ON_TRANSLATION
	SQL_SG_WITH_GRANT_OPTION
	SQL_SIGNED_OFFSET
	SQL_SIMULATE_CURSOR
	SQL_SMALLINT
	SQL_SNVF_BIT_LENGTH
	SQL_SNVF_CHARACTER_LENGTH
	SQL_SNVF_CHAR_LENGTH
	SQL_SNVF_EXTRACT
	SQL_SNVF_OCTET_LENGTH
	SQL_SNVF_POSITION
	SQL_SO_DYNAMIC
	SQL_SO_FORWARD_ONLY
	SQL_SO_KEYSET_DRIVEN
	SQL_SO_MIXED
	SQL_SO_STATIC
	SQL_SPECIAL_CHARACTERS
	SQL_SPEC_MAJOR
	SQL_SPEC_MINOR
	SQL_SPEC_STRING
	SQL_SP_BETWEEN
	SQL_SP_COMPARISON
	SQL_SP_EXISTS
	SQL_SP_IN
	SQL_SP_ISNOTNULL
	SQL_SP_ISNULL
	SQL_SP_LIKE
	SQL_SP_MATCH_FULL
	SQL_SP_MATCH_PARTIAL
	SQL_SP_MATCH_UNIQUE_FULL
	SQL_SP_MATCH_UNIQUE_PARTIAL
	SQL_SP_OVERLAPS
	SQL_SP_QUANTIFIED_COMPARISON
	SQL_SP_UNIQUE
	SQL_SQL92_DATETIME_FUNCTIONS
	SQL_SQL92_FOREIGN_KEY_DELETE_RULE
	SQL_SQL92_FOREIGN_KEY_UPDATE_RULE
	SQL_SQL92_GRANT
	SQL_SQL92_NUMERIC_VALUE_FUNCTIONS
	SQL_SQL92_PREDICATES
	SQL_SQL92_RELATIONAL_JOIN_OPERATORS
	SQL_SQL92_REVOKE
	SQL_SQL92_ROW_VALUE_CONSTRUCTOR
	SQL_SQL92_STRING_FUNCTIONS
	SQL_SQL92_VALUE_EXPRESSIONS
	SQL_SQLSTATE_SIZE
	SQL_SQL_CONFORMANCE
	SQL_SQ_COMPARISON
	SQL_SQ_CORRELATED_SUBQUERIES
	SQL_SQ_EXISTS
	SQL_SQ_IN
	SQL_SQ_QUANTIFIED
	SQL_SRJO_CORRESPONDING_CLAUSE
	SQL_SRJO_CROSS_JOIN
	SQL_SRJO_EXCEPT_JOIN
	SQL_SRJO_FULL_OUTER_JOIN
	SQL_SRJO_INNER_JOIN
	SQL_SRJO_INTERSECT_JOIN
	SQL_SRJO_LEFT_OUTER_JOIN
	SQL_SRJO_NATURAL_JOIN
	SQL_SRJO_RIGHT_OUTER_JOIN
	SQL_SRJO_UNION_JOIN
	SQL_SRVC_DEFAULT
	SQL_SRVC_NULL
	SQL_SRVC_ROW_SUBQUERY
	SQL_SRVC_VALUE_EXPRESSION
	SQL_SR_CASCADE
	SQL_SR_DELETE_TABLE
	SQL_SR_GRANT_OPTION_FOR
	SQL_SR_INSERT_COLUMN
	SQL_SR_INSERT_TABLE
	SQL_SR_REFERENCES_COLUMN
	SQL_SR_REFERENCES_TABLE
	SQL_SR_RESTRICT
	SQL_SR_SELECT_TABLE
	SQL_SR_UPDATE_COLUMN
	SQL_SR_UPDATE_TABLE
	SQL_SR_USAGE_ON_CHARACTER_SET
	SQL_SR_USAGE_ON_COLLATION
	SQL_SR_USAGE_ON_DOMAIN
	SQL_SR_USAGE_ON_TRANSLATION
	SQL_SSF_CONVERT
	SQL_SSF_LOWER
	SQL_SSF_SUBSTRING
	SQL_SSF_TRANSLATE
	SQL_SSF_TRIM_BOTH
	SQL_SSF_TRIM_LEADING
	SQL_SSF_TRIM_TRAILING
	SQL_SSF_UPPER
	SQL_SS_ADDITIONS
	SQL_SS_DELETIONS
	SQL_SS_UPDATES
	SQL_STANDARD_CLI_CONFORMANCE
	SQL_STATIC_CURSOR_ATTRIBUTES1
	SQL_STATIC_CURSOR_ATTRIBUTES2
	SQL_STATIC_SENSITIVITY
	SQL_STILL_EXECUTING
	SQL_STMTTXN_ISOLATION
	SQL_STMT_OPT_MAX
	SQL_STMT_OPT_MIN
	SQL_STRING_FUNCTIONS
	SQL_SUBQUERIES
	SQL_SUCCESS
	SQL_SUCCESS_WITH_INFO
	SQL_SU_DML_STATEMENTS
	SQL_SU_INDEX_DEFINITION
	SQL_SU_PRIVILEGE_DEFINITION
	SQL_SU_PROCEDURE_INVOCATION
	SQL_SU_TABLE_DEFINITION
	SQL_SVE_CASE
	SQL_SVE_CAST
	SQL_SVE_COALESCE
	SQL_SVE_NULLIF
	SQL_SYNCPOINT_DEFAULT
	SQL_SYNC_POINT
	SQL_SYSTEM_FUNCTIONS
	SQL_TABLE_STAT
	SQL_TABLE_TERM
	SQL_TC_ALL
	SQL_TC_DDL_COMMIT
	SQL_TC_DDL_IGNORE
	SQL_TC_DML
	SQL_TC_NONE
	SQL_TIME
	SQL_TIMEDATE_ADD_INTERVALS
	SQL_TIMEDATE_DIFF_INTERVALS
	SQL_TIMEDATE_FUNCTIONS
	SQL_TIMESTAMP
	SQL_TIMESTAMP_LEN
	SQL_TIME_LEN
	SQL_TINYINT
	SQL_TRANSACTION_CAPABLE
	SQL_TRANSACTION_ISOLATION_OPTION
	SQL_TRANSACTION_NOCOMMIT
	SQL_TRANSACTION_READ_COMMITTED
	SQL_TRANSACTION_READ_UNCOMMITTED
	SQL_TRANSACTION_REPEATABLE_READ
	SQL_TRANSACTION_SERIALIZABLE
	SQL_TRANSLATE_DLL
	SQL_TRANSLATE_OPTION
	SQL_TRUE
	SQL_TWOPHASE
	SQL_TXN_CAPABLE
	SQL_TXN_ISOLATION
	SQL_TXN_ISOLATION_OPTION
	SQL_TXN_NOCOMMIT
	SQL_TXN_READ_COMMITTED
	SQL_TXN_READ_UNCOMMITTED
	SQL_TXN_REPEATABLE_READ
	SQL_TXN_SERIALIZABLE
	SQL_TXN_VERSIONING
	SQL_TYPE_DATE
	SQL_TYPE_DRIVER_END
	SQL_TYPE_DRIVER_START
	SQL_TYPE_MAX
	SQL_TYPE_MIN
	SQL_TYPE_NULL
	SQL_TYPE_TIME
	SQL_TYPE_TIMESTAMP
	SQL_UB_DEFAULT
	SQL_UB_FIXED
	SQL_UB_OFF
	SQL_UB_ON
	SQL_UB_VARIABLE
	SQL_UNBIND
	SQL_UNICODE
	SQL_UNICODE_CHAR
	SQL_UNICODE_LONGVARCHAR
	SQL_UNICODE_VARCHAR
	SQL_UNION
	SQL_UNION_STATEMENT
	SQL_UNKNOWN_TYPE
	SQL_UNNAMED
	SQL_UNSEARCHABLE
	SQL_UNSIGNED_OFFSET
	SQL_UNSPECIFIED
	SQL_UPDATE
	SQL_UPDATE_BY_BOOKMARK
	SQL_UPDT_READONLY
	SQL_UPDT_READWRITE_UNKNOWN
	SQL_UPDT_WRITE
	SQL_USER_NAME
	SQL_USE_BOOKMARKS
	SQL_US_UNION
	SQL_US_UNION_ALL
	SQL_U_UNION
	SQL_U_UNION_ALL
	SQL_VARBINARY
	SQL_VARCHAR
	SQL_VARGRAPHIC
	SQL_WCHARTYPE
	SQL_WCHARTYPE_CONVERT
	SQL_WCHARTYPE_DEFAULT
	SQL_WCHARTYPE_NOCONVERT
        SQL_XML
	SQL_DECFLOAT
	SQL_XOPEN_CLI_YEAR
	SQL_YEAR
	SQL_YEAR_TO_MONTH
	TRACE_VERSION
);
$VERSION = '1.76';

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.  If a constant is not found then control is passed
    # to the AUTOLOAD in AutoLoader.

    my $constname;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "& not defined" if $constname eq 'constant';
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
		croak "Your vendor has not defined DBD::DB2::Constants macro $constname";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap DBD::DB2::Constants $VERSION;

# Preloaded methods go here.

# Autoload methods go after __END__, and are processed by the autosplit program.

1;
__END__
