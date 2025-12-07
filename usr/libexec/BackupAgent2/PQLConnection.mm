@interface PQLConnection
- (BOOL)_performSchemaUpgrade:(id)upgrade fromDatabaseVersion:(unsigned int)version error:(id *)error;
- (BOOL)executeStatements:(id)statements error:(id *)error;
- (BOOL)executeWithError:(id *)error sql:(id)sql;
- (BOOL)fetchObjectOfClass:(Class)class outObject:(id *)object error:(id *)error sql:(id)sql;
- (BOOL)groupInTransaction:(id *)transaction transaction:(id)a4;
- (BOOL)performSchemaUpgrades:(id)upgrades isReadOnly:(BOOL)only error:(id *)error;
- (id)fetchObjectOfClass:(Class)class error:(id *)error sql:(id)sql;
- (unint64_t)fetchCountWithError:(id *)error sql:(id)sql;
@end

@implementation PQLConnection

- (BOOL)executeWithError:(id *)error sql:(id)sql
{
  v6 = [(PQLConnection *)self execute:sql args:&v9];
  v7 = v6;
  if (error && (v6 & 1) == 0)
  {
    *error = [(PQLConnection *)self lastError];
  }

  return v7;
}

- (BOOL)executeStatements:(id)statements error:(id *)error
{
  statementsCopy = statements;
  if (!error)
  {
    sub_10009FD8C();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = statementsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      if (![(PQLConnection *)self executeRaw:v12, v18])
      {
        break;
      }

      objc_autoreleasePoolPop(v13);
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    lastError = [(PQLConnection *)self lastError];
    objc_autoreleasePoolPop(v13);

    if (lastError)
    {
      v16 = lastError;
      v14 = 0;
      *error = lastError;
      goto LABEL_13;
    }

    v14 = 1;
  }

  else
  {
LABEL_10:
    v14 = 1;
    lastError = v7;
LABEL_13:
  }

  return v14;
}

- (id)fetchObjectOfClass:(Class)class error:(id *)error sql:(id)sql
{
  v7 = [(PQLConnection *)self fetchObjectOfClass:class sql:sql args:&v12];
  v8 = v7;
  if (error && !v7)
  {
    lastError = [(PQLConnection *)self lastError];
    *error = [lastError excludingNotFound];
  }

  return v8;
}

- (BOOL)fetchObjectOfClass:(Class)class outObject:(id *)object error:(id *)error sql:(id)sql
{
  v9 = [(PQLConnection *)self fetchObjectOfClass:class sql:sql args:&v14];
  lastError = [(PQLConnection *)self lastError];
  excludingNotFound = [lastError excludingNotFound];

  if (!excludingNotFound)
  {
    v12 = v9;
    error = object;
    if (!object)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = excludingNotFound;
  if (error)
  {
LABEL_3:
    *error = v12;
  }

LABEL_4:

  return excludingNotFound == 0;
}

- (unint64_t)fetchCountWithError:(id *)error sql:(id)sql
{
  sqlCopy = sql;
  v6 = [(PQLConnection *)self fetchObjectOfClass:objc_opt_class() sql:sqlCopy args:&v9];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (BOOL)performSchemaUpgrades:(id)upgrades isReadOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  upgradesCopy = upgrades;
  if (!upgradesCopy)
  {
    sub_10009FE48();
  }

  if (!error)
  {
    sub_10009FE1C();
  }

  v10 = upgradesCopy;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [upgradesCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    version = 0;
    v14 = *v32;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        if ([v16 version] <= version)
        {
          sub_10009FDB8(a2, self);
        }

        version = [v16 version];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  else
  {
    version = 0;
  }

  userVersion = [(PQLConnection *)self userVersion];
  unsignedIntValue = [userVersion unsignedIntValue];

  if (unsignedIntValue >= version)
  {
LABEL_26:
    v19 = 1;
    goto LABEL_28;
  }

  if (!onlyCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      while (2)
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if (![(PQLConnection *)self _performSchemaUpgrade:*(*(&v27 + 1) + 8 * j) fromDatabaseVersion:unsignedIntValue error:error, v27])
          {
            [(PQLConnection *)self close:0];

            v19 = 0;
            goto LABEL_28;
          }

          userVersion2 = [(PQLConnection *)self userVersion];
          unsignedIntValue = [userVersion2 unsignedIntValue];
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_26;
  }

  [(PQLConnection *)self close:0];
  [MBError errorWithCode:1 format:@"Can't migrate RO database"];
  *error = v19 = 0;
LABEL_28:

  return v19;
}

- (BOOL)_performSchemaUpgrade:(id)upgrade fromDatabaseVersion:(unsigned int)version error:(id *)error
{
  v6 = *&version;
  upgradeCopy = upgrade;
  if (!error)
  {
    sub_10009FE74();
  }

  v9 = upgradeCopy;
  version = [upgradeCopy version];
  upgradeBlock = [v9 upgradeBlock];

  if (upgradeBlock)
  {
    if (version > v6)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v6;
        LOWORD(v37) = 1024;
        *(&v37 + 2) = version;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=pqldb= Migrating database from version %d to %d", buf, 0xEu);
        _MBLog(@"Df", "=pqldb= Migrating database from version %d to %d", v6, version);
      }

      *buf = 0;
      v37 = buf;
      v38 = 0x3032000000;
      v39 = sub_1000795DC;
      v40 = sub_1000795EC;
      v41 = 0;
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_1000795F4;
      v25 = &unk_1000FE508;
      v13 = v9;
      v28 = v6;
      v29 = version;
      v26 = v13;
      v27 = buf;
      if (([(PQLConnection *)self performWithFlags:10 action:&v22]& 1) != 0)
      {

        if (![v13 shouldVacuum])
        {
LABEL_12:
          [(PQLConnection *)self setUserVersion:version];
          v15 = 1;
LABEL_22:
          _Block_object_dispose(buf, 8);

          goto LABEL_23;
        }

        if (([(PQLConnection *)self execute:@"vacuum;"]& 1) != 0)
        {
          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 67109376;
            v31 = v6;
            v32 = 1024;
            v33 = version;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=pqldb= Vacuumed after migrating database from version %d to %d", v30, 0xEu);
            _MBLog(@"Df", "=pqldb= Vacuumed after migrating database from version %d to %d", v6, version);
          }

          goto LABEL_12;
        }

        lastError = [(PQLConnection *)self lastError];
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *v30 = 67109634;
          v31 = v6;
          v32 = 1024;
          v33 = version;
          v34 = 2112;
          v35 = lastError;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=pqldb= Vacuum after migration from version %d to %d failed: %@", v30, 0x18u);
          _MBLog(@"E ", "=pqldb= Vacuum after migration from version %d to %d failed: %@", v6, version, lastError, v22, v23, v24, v25);
        }

        v21 = lastError;
        *error = lastError;
      }

      else
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v30 = 67109376;
          v31 = v6;
          v32 = 1024;
          v33 = version;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=pqldb= Migration from version %d to %d failed", v30, 0xEu);
          _MBLog(@"E ", "=pqldb= Migration from version %d to %d failed", v6, version);
        }

        *error = *(v37 + 5);
        lastError = v26;
      }

      v15 = 0;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (version != v6)
  {
LABEL_17:
    v15 = 1;
    goto LABEL_23;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=pqldb= Found invalid database version %d", buf, 8u);
    _MBLog(@"Df", "=pqldb= Found invalid database version %d", v6);
  }

  [MBError errorWithCode:1 format:@"Found invalid database version %d", v6];
  *error = v15 = 0;
LABEL_23:

  return v15;
}

- (BOOL)groupInTransaction:(id *)transaction transaction:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000795DC;
  v16 = sub_1000795EC;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000798A0;
  v9[3] = &unk_1000FE530;
  v6 = a4;
  v10 = v6;
  v11 = &v12;
  v7 = [(PQLConnection *)self groupInTransaction:v9];
  if (transaction)
  {
    *transaction = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

@end