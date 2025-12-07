@interface SQLDB
+ (id)databaseWithURL:(id)l;
- (BOOL)setupSchema;
- (NSURL)shmURL;
- (NSURL)walURL;
- (SQLDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only;
- (id)lastInsertRowID;
- (id)readSetting:(id)setting;
- (int)executeQuery:(id)query withBind:(id)bind withCancellableResults:(id)results;
- (int)executeQuery:(id)query withBind:(id)bind withResults:(id)results;
- (int)transaction:(id)transaction immediate:(BOOL)immediate;
- (unint64_t)tableRowCount:(id)count;
- (void)dealloc;
- (void)deleteSetting:(id)setting;
- (void)setSetting:(id)setting toValue:(id)value;
- (void)setupPermissions;
@end

@implementation SQLDB

- (SQLDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only
{
  onlyCopy = only;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = SQLDB;
  v8 = [(SQLDB *)&v15 init];
  v9 = v8;
  if (v8)
  {
    if ((objc_storeStrong(&v8->_url, l), v10 = dispatch_semaphore_create(1), transactionSemaphore = v9->_transactionSemaphore, v9->_transactionSemaphore = v10, transactionSemaphore, !v9->_transactionSemaphore) || (db = sub_100003090(v9->_url, onlyCopy), (v9->_db = db) == 0) || (!onlyCopy ? ([(SQLDB *)v9 setupPermissions], v13 = sub_100003128(v9->_db, 0), db = v9->_db) : (v13 = 1), (v9->_readonly = v13, sqlite3_busy_timeout(db, 300000), !v9->_readonly) && ([(SQLDB *)v9 executeQuery:@"PRAGMA journal_mode = WAL" withBind:0 withResults:0], [(SQLDB *)v9 executeQuery:@"PRAGMA foreign_keys = ON" withBind:0 withResults:0], ![(SQLDB *)v9 setupSchema])))
    {

      v9 = 0;
    }
  }

  return v9;
}

+ (id)databaseWithURL:(id)l
{
  lCopy = l;
  v5 = sub_100006750(lCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DB being loaded from %{public}@", &v8, 0xCu);
  }

  v6 = [[self alloc] initWithDatabaseURL:lCopy];

  return v6;
}

- (NSURL)walURL
{
  path = [(NSURL *)self->_url path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  path2 = [(NSURL *)self->_url path];
  lastPathComponent = [path2 lastPathComponent];

  v7 = [NSString stringWithFormat:@"%@-wal", lastPathComponent];
  v8 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v7];
  v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

  return v9;
}

- (NSURL)shmURL
{
  path = [(NSURL *)self->_url path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  path2 = [(NSURL *)self->_url path];
  lastPathComponent = [path2 lastPathComponent];

  v7 = [NSString stringWithFormat:@"%@-shm", lastPathComponent];
  v8 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v7];
  v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

  return v9;
}

- (BOOL)setupSchema
{
  v2 = [(SQLDB *)self executeQuery:@"CREATE TABLE IF NOT EXISTS settings(name TEXT withBind:value TEXT withResults:PRIMARY KEY (name))", 0, 0];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100006750(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003FA60(v4);
    }
  }

  return v3 == 0;
}

- (void)setupPermissions
{
  dbURL = [(SQLDB *)self dbURL];
  path = [dbURL path];
  sub_100003284([path UTF8String]);

  shmURL = [(SQLDB *)self shmURL];
  path2 = [shmURL path];
  sub_100003284([path2 UTF8String]);

  walURL = [(SQLDB *)self walURL];
  path3 = [walURL path];
  sub_100003284([path3 UTF8String]);
}

- (void)dealloc
{
  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
  }

  v4.receiver = self;
  v4.super_class = SQLDB;
  [(SQLDB *)&v4 dealloc];
}

- (int)executeQuery:(id)query withBind:(id)bind withResults:(id)results
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002240;
  v10[3] = &unk_10005D858;
  resultsCopy = results;
  v8 = resultsCopy;
  LODWORD(bind) = [(SQLDB *)self executeQuery:query withBind:bind withCancellableResults:v10];

  return bind;
}

- (int)executeQuery:(id)query withBind:(id)bind withCancellableResults:(id)results
{
  queryCopy = query;
  bindCopy = bind;
  resultsCopy = results;
  ppStmt = 0;
  db = self->_db;
  p_db = &self->_db;
  v13 = sqlite3_prepare_v2(db, [queryCopy UTF8String], -1, &ppStmt, 0);
  if (v13)
  {
    v14 = v13;
    v15 = sub_100006750(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003FAA4(p_db);
    }

    v17 = sub_100006750(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10003FB38();
    }

    v18 = &__NSDictionary0__struct;
LABEL_40:
  }

  else
  {
    if (bindCopy)
    {
      bindCopy[2](bindCopy, ppStmt);
    }

    if (resultsCopy && (v19 = ppStmt, (v20 = sqlite3_column_count(ppStmt)) != 0))
    {
      v21 = v20;
      v18 = [NSMutableDictionary dictionaryWithCapacity:2 * v20];
      if (v21 >= 1)
      {
        v46 = bindCopy;
        v47 = queryCopy;
        v22 = 0;
        do
        {
          v23 = sqlite3_column_origin_name(v19, v22);
          v24 = sqlite3_column_name(v19, v22);
          v25 = sqlite3_column_table_name(v19, v22);
          if (v23 && v25)
          {
            v26 = [NSString stringWithUTF8String:v25];
            if ([v26 hasSuffix:@"s"])
            {
              v27 = [v26 substringToIndex:{objc_msgSend(v26, "length") - 1}];

              v26 = v27;
            }

            v28 = [NSNumber numberWithInt:v22];
            v29 = [NSString stringWithFormat:@"%@_%s", v26, v23];
            [v18 setObject:v28 forKeyedSubscript:v29];
          }

          if (v24)
          {
            v30 = [NSNumber numberWithInt:v22];
            v31 = [NSString stringWithUTF8String:v24];
            [v18 setObject:v30 forKeyedSubscript:v31];
          }

          v22 = (v22 + 1);
        }

        while (v21 != v22);
        bindCopy = v46;
        queryCopy = v47;
      }
    }

    else
    {
      v18 = &__NSDictionary0__struct;
    }

    do
    {
      v32 = sqlite3_step(ppStmt);
      v14 = v32;
      if ((v32 - 102) <= 0xFFFFFFFD)
      {
        v35 = sub_100006750(v32);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v44 = sqlite3_errmsg(*p_db);
          v45 = sqlite3_errcode(*p_db);
          *buf = 136446466;
          *v50 = v44;
          *&v50[8] = 1024;
          *&v50[10] = v45;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "SQL error '%{public}s' (%1d)", buf, 0x12u);
        }

        v17 = sub_100006750(v36);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v50 = v14;
          *&v50[4] = 2114;
          *&v50[6] = queryCopy;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Step error (%d) on query: %{public}@", buf, 0x12u);
        }

        goto LABEL_40;
      }

      v33 = v32 == 100;
      v34 = 1;
      if (resultsCopy && v14 == 100)
      {
        v34 = resultsCopy[2](resultsCopy, ppStmt, v18);
        v33 = 1;
      }
    }

    while (v33 && (v34 & 1) != 0);
    if (v33)
    {
      v14 = 100;
    }

    if (!(v34 & 1 | !v33))
    {
      v17 = sub_100006750(v34);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10003FBA0(v17);
      }

      v14 = 4;
      goto LABEL_40;
    }
  }

  v37 = v14;
  if (ppStmt)
  {
    v38 = sqlite3_finalize(ppStmt);
    v37 = v38;
    if (v38)
    {
      v39 = sub_100006750(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10003FAA4(p_db);
      }

      v41 = sub_100006750(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10003FBE4();
      }
    }
  }

  if (v14 == 101)
  {
    v42 = v37;
  }

  else
  {
    v42 = v14;
  }

  if (v14)
  {
    v37 = v42;
  }

  return v37;
}

- (int)transaction:(id)transaction immediate:(BOOL)immediate
{
  immediateCopy = immediate;
  transactionCopy = transaction;
  dispatch_semaphore_wait(self->_transactionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (immediateCopy)
  {
    v7 = @"begin immediate transaction";
  }

  else
  {
    v7 = @"begin transaction";
  }

  v8 = [(SQLDB *)self executeQuery:v7 withBind:0 withResults:0];
  if (!v8)
  {
    if (transactionCopy[2](transactionCopy) && ![(SQLDB *)self executeQuery:@"end transaction" withBind:0 withResults:0])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(SQLDB *)self executeQuery:@"rollback transaction" withBind:0 withResults:0];
    }
  }

  dispatch_semaphore_signal(self->_transactionSemaphore);

  return v8;
}

- (id)readSetting:(id)setting
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000029AC;
  v14 = sub_1000029BC;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000029C4;
  v8[3] = &unk_10005D880;
  settingCopy = setting;
  v9 = settingCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002A14;
  v7[3] = &unk_10005D8A8;
  v7[4] = &v10;
  [(SQLDB *)self executeQuery:@"SELECT value FROM settings WHERE name = ?1" withBind:v8 withResults:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)setSetting:(id)setting toValue:(id)value
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002B2C;
  v8[3] = &unk_10005D8D0;
  settingCopy = setting;
  valueCopy = value;
  v6 = valueCopy;
  v7 = settingCopy;
  [(SQLDB *)self executeQuery:@"INSERT OR REPLACE INTO settings (name withBind:value) VALUES (?1 withResults:?2)", v8, 0];
}

- (void)deleteSetting:(id)setting
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002C44;
  v5[3] = &unk_10005D880;
  settingCopy = setting;
  v4 = settingCopy;
  [(SQLDB *)self executeQuery:@"DELETE FROM settings WHERE name = ?1" withBind:v5 withResults:0];
}

- (unint64_t)tableRowCount:(id)count
{
  countCopy = count;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000029AC;
  v17 = sub_1000029BC;
  v18 = 0;
  countCopy = [NSString stringWithFormat:@"SELECT COUNT(*) FROM %@", countCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002E14;
  v12[3] = &unk_10005D8A8;
  v12[4] = &v13;
  v6 = [(SQLDB *)self executeQuery:countCopy withBind:0 withResults:v12];
  v7 = v6;
  if (v6)
  {
    v8 = sub_100006750(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003FC4C(countCopy, v7, v8);
    }
  }

  v9 = v14[5];
  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  _Block_object_dispose(&v13, 8);
  return unsignedIntegerValue;
}

- (id)lastInsertRowID
{
  insert_rowid = sqlite3_last_insert_rowid(self->_db);

  return [NSNumber numberWithLongLong:insert_rowid];
}

@end