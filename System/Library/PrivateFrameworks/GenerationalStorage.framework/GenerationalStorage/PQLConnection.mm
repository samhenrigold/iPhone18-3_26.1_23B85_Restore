@interface PQLConnection
- (BOOL)_gotoV4;
- (BOOL)_initializeDB;
- (BOOL)_installFunctions;
- (BOOL)_setupDBIfNeeded;
- (BOOL)_setupPragmas;
- (BOOL)_setupPragmasNotUpsetAboutWAL_17553237;
- (BOOL)_upgradeDB:(int64_t)b;
- (BOOL)openAtPath:(id)path isReadOnly:(BOOL)only error:(id *)error;
- (NSError)translatedError;
- (id)loadLibraryState;
- (void)setCorruptionHandler:(id)handler;
@end

@implementation PQLConnection

- (void)setCorruptionHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D240;
  v6[3] = &unk_100040F78;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(PQLConnection *)self setSqliteErrorHandler:v6];
  sqliteErrorHandler = [(PQLConnection *)self sqliteErrorHandler];
  [(PQLConnection *)self setAutoRollbackHandler:sqliteErrorHandler];
}

- (NSError)translatedError
{
  lastError = [(PQLConnection *)self lastError];
  v3 = sub_10000D39C(lastError);

  return v3;
}

- (BOOL)_initializeDB
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000D6A8;
  v3[3] = &unk_100040FA0;
  v3[4] = self;
  return [(PQLConnection *)self performWithFlags:10 action:v3];
}

- (BOOL)_gotoV4
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000DA34;
  v3[3] = &unk_100040FA0;
  v3[4] = self;
  return [(PQLConnection *)self performWithFlags:10 action:v3];
}

- (BOOL)_upgradeDB:(int64_t)b
{
  if (b <= 2)
  {
    if (b == 1)
    {
      _gotoV2 = [(PQLConnection *)self _gotoV2];
      if (!_gotoV2)
      {
        return _gotoV2;
      }
    }

    else if (b != 2)
    {
      goto LABEL_12;
    }

    _gotoV2 = [(PQLConnection *)self _gotoV3];
    if (!_gotoV2)
    {
      return _gotoV2;
    }

    goto LABEL_10;
  }

  if (b == 3)
  {
LABEL_10:
    _gotoV2 = [(PQLConnection *)self _gotoV4];
    if (!_gotoV2)
    {
      return _gotoV2;
    }

    goto LABEL_11;
  }

  if (b == 4)
  {
LABEL_11:
    _gotoV2 = [(PQLConnection *)self _gotoV5];
    if (!_gotoV2)
    {
      return _gotoV2;
    }
  }

LABEL_12:
  userVersion = [(PQLConnection *)self userVersion];
  intValue = [userVersion intValue];

  if (intValue == 5)
  {
    LOBYTE(_gotoV2) = 1;
  }

  else
  {
    v7 = [NSError errorWithSqliteCode:24 andMessage:@"invalid user version"];
    [(PQLConnection *)self setLastError:v7];

    LOBYTE(_gotoV2) = 0;
  }

  return _gotoV2;
}

- (BOOL)_setupDBIfNeeded
{
  userVersion = [(PQLConnection *)self userVersion];
  longLongValue = [userVersion longLongValue];

  if (longLongValue)
  {

    return [(PQLConnection *)self _upgradeDB:?];
  }

  else
  {

    return [(PQLConnection *)self _initializeDB];
  }
}

- (BOOL)_setupPragmasNotUpsetAboutWAL_17553237
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000DF40;
  v3[3] = &unk_100040FA0;
  v3[4] = self;
  return [(PQLConnection *)self performWithFlags:2 action:v3];
}

- (BOOL)_setupPragmas
{
  v3 = [(PQLConnection *)self fetchObjectOfClass:objc_opt_class() sql:@"PRAGMA locking_mode = exclusive"];
  if (([v3 isEqualToString:@"exclusive"] & 1) == 0)
  {
    v12 = [NSError errorWithSqliteCode:2 andMessage:@"cannot set locking_mode to exclusive"];
    [(PQLConnection *)self setLastError:v12];

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (![(PQLConnection *)self _setupPragmasNotUpsetAboutWAL]|| ![(PQLConnection *)self execute:@"PRAGMA temp_store = MEMORY"]|| ![(PQLConnection *)self execute:@"PRAGMA cache_size = 128"]|| ![(PQLConnection *)self execute:@"PRAGMA cache_spill = 512"])
  {
    goto LABEL_13;
  }

  _vacuumMode = [(PQLConnection *)self _vacuumMode];
  if (_vacuumMode != 2)
  {
    v5 = sub_100003164(_vacuumMode);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PQLConnection *)self url];
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Database %@ isn't in incremental vacuum mode, doing the conversion now", &v15, 0xCu);
    }

    [(PQLConnection *)self execute:@"PRAGMA auto_vacuum = incremental"];
    [(PQLConnection *)self execute:@"VACUUM"];
    _vacuumMode2 = [(PQLConnection *)self _vacuumMode];
    v8 = _vacuumMode2;
    v9 = sub_100003164(_vacuumMode2);
    v10 = v9;
    if (v8 == 2)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(PQLConnection *)self url];
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] Database %@ successfully converted to incremental vacuum mode", &v15, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, 0x90u))
    {
      sub_1000272F8(self, v10);
    }
  }

  v13 = 1;
LABEL_14:

  return v13;
}

- (BOOL)_installFunctions
{
  if (![(PQLConnection *)self registerFunction:@"gs_path_exists" nArgs:1 handler:&stru_100041060]|| ![(PQLConnection *)self registerFunction:@"gs_path_not_exists" nArgs:1 handler:&stru_100041080])
  {
    return 0;
  }

  return [(PQLConnection *)self registerFunction:@"gs_is_prunable" nArgs:2 handler:&stru_1000410A0];
}

- (BOOL)openAtPath:(id)path isReadOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  memset(&v31, 0, sizeof(v31));
  v8 = [path stringByAppendingPathComponent:@"db.sqlite"];
  v9 = [NSURL URLWithString:v8];
  v10 = +[GSUserDefaults defaults];
  -[PQLConnection setTraced:](self, "setTraced:", [v10 BOOLForKey:@"db.trace" byDefault:0]);

  if (!lstat([v8 fileSystemRepresentation], &v31))
  {
    if (v31.st_nlink == 1)
    {
      v30 = 0;
      v16 = [(PQLConnection *)self openAtURL:v9 withFlags:2 error:&v30];
      v17 = v30;
      v11 = v17;
      if (v16)
      {
        goto LABEL_23;
      }

      if (error)
      {
        v17 = sub_10000D39C(v17);
        *error = v17;
      }

      v18 = sub_100003164(v17);
      if (os_log_type_enabled(v18, 0x90u))
      {
        sub_100027458();
      }

      goto LABEL_34;
    }

    v19 = +[NSFileManager defaultManager];
    [v19 removeItemAtPath:v8 error:0];

    v21 = sub_100003164(v20);
    if (os_log_type_enabled(v21, 0x90u))
    {
      sub_1000273E4();
    }

LABEL_16:
    if (onlyCopy)
    {
      v11 = [NSString stringWithFormat:@"No valid database and storage is read-only"];
      v22 = sub_100003164(v11);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_1000274C0();
      }

      if (error)
      {
        v15 = sub_10000F0F8(111, v11, 0);
        goto LABEL_21;
      }

LABEL_35:
      v23 = 0;
      goto LABEL_36;
    }

    v29 = 0;
    v24 = [(PQLConnection *)self openAtURL:v9 sharedCache:0 error:&v29];
    v25 = v29;
    v11 = v25;
    if (v24)
    {
LABEL_23:
      [(PQLConnection *)self setAutoRollbackHandler:&stru_1000410E0];
      if ([(PQLConnection *)self _setupPragmas]&& [(PQLConnection *)self _setupDBIfNeeded]&& [(PQLConnection *)self _installFunctions])
      {
        v26 = +[GSUserDefaults defaults];
        [v26 doubleForKey:@"db.batchdelay" min:0.0 max:3.0 byDefault:0.2];
        -[PQLConnection useBatchingWithDelay:changeCount:](self, "useBatchingWithDelay:changeCount:", [v26 intForKey:@"db.batchsize" min:0 max:0x7FFFFFFFLL byDefault:10000], v27);

        v23 = 1;
        goto LABEL_36;
      }

      if (error)
      {
        *error = [(PQLConnection *)self translatedError];
      }

      [(PQLConnection *)self close:0];
      goto LABEL_35;
    }

    if (error)
    {
      v25 = sub_10000D39C(v25);
      *error = v25;
    }

    v18 = sub_100003164(v25);
    if (os_log_type_enabled(v18, 0x90u))
    {
      sub_100027458();
    }

LABEL_34:

    goto LABEL_35;
  }

  if (*__error() == 2)
  {
    goto LABEL_16;
  }

  v11 = [NSString stringWithFormat:@"Failed to access DB file at path %@", v8];
  v12 = __error();
  v13 = *v12;
  v14 = sub_100003164(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10002717C(v11, v13);
  }

  if (!error)
  {
    goto LABEL_35;
  }

  v15 = sub_10000F37C(v13, v11);
LABEL_21:
  v23 = 0;
  *error = v15;
LABEL_36:

  return v23;
}

- (id)loadLibraryState
{
  v2 = [(PQLConnection *)self fetch:@"SELECT v FROM state"];
  if ([v2 next])
  {
    v3 = [v2 unarchivedObjectOfClass:objc_opt_class() atIndex:0];
    [v2 close];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end