void sub_1000B28B8(void *a1)
{
  v5 = a1;
  v1 = sub_1000143BC(v5);

  if (v1)
  {
    sub_1000145A0(v2);
    v4 = sub_1000143BC(v3);
    CSDBPerformUnlocked();
  }
}

void sub_1000B2928(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = sub_1000143BC(v6);

  if (v2)
  {
    sub_1000145A0(v3);
    v5 = sub_1000143BC(v4);
    CSDBPerformLockedSectionUsingUnfairLock();
  }
}

void sub_1000B29A0(void *a1)
{
  v5 = a1;
  v1 = sub_1000143BC(v5);

  if (v1)
  {
    sub_1000145A0(v2);
    v4 = sub_1000143BC(v3);
    CSDBPerformUnlockedSectionForRecordStore();
  }
}

void sub_1000B2A10(void *a1)
{
  v5 = a1;
  v1 = sub_1000143BC(v5);

  if (v1)
  {
    sub_1000145A0(v2);
    v4 = sub_1000143BC(v3);
    CSDBPerformLockedSectionForDatabase();
  }
}

void sub_1000B2A80(void *a1)
{
  v5 = a1;
  v1 = sub_1000143BC(v5);

  if (v1)
  {
    sub_1000145A0(v2);
    v4 = sub_1000143BC(v3);
    CSDBPerformUnlockedSectionForDatabase();
  }
}

void sub_1000B2AF0(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = sub_1000143BC(v6);

  if (v2)
  {
    sub_1000145A0(v3);
    v5 = sub_1000143BC(v4);
    CSDBPerformLockedSectionForQueryForWriting();
  }
}

void sub_1000B2B68(void *a1)
{
  v5 = a1;
  v1 = sub_1000143BC(v5);

  if (v1)
  {
    sub_1000145A0(v2);
    v4 = sub_1000143BC(v3);
    CSDBPerformLockedSectionForConnectionForReading();
  }
}

void sub_1000B2BD8(void *a1)
{
  v5 = a1;
  v1 = sub_1000143BC(v5);

  if (v1)
  {
    sub_1000145A0(v2);
    v4 = sub_1000143BC(v3);
    CSDBPerformLockedSectionForConnectionForWriting();
  }
}

void sub_1000B2C48(void *a1)
{
  v5 = a1;
  v1 = sub_1000143BC(v5);

  if (v1)
  {
    sub_1000145A0(v2);
    v4 = sub_1000143BC(v3);
    CSDBPerformUnlockedSectionForConnectionForReading();
  }
}

void sub_1000B2CB8(void *a1)
{
  v5 = a1;
  v1 = sub_1000143BC(v5);

  if (v1)
  {
    sub_1000145A0(v2);
    v4 = sub_1000143BC(v3);
    CSDBPerformUnlockedSectionForConnectionForWriting();
  }
}

void sub_1000B2D28(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = sub_1000143BC(v6);

  if (v2)
  {
    sub_1000145A0(v3);
    v5 = sub_1000143BC(v4);
    CSDBPerformUnlockedSectionForQueryForReading();
  }
}

void sub_1000B2DA0(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = sub_1000143BC(v6);

  if (v2)
  {
    sub_1000145A0(v3);
    v5 = sub_1000143BC(v4);
    CSDBPerformUnlockedSectionForQueryForWriting();
  }
}

void sub_1000B2E18(uint64_t a1)
{
  v1 = sub_1000143BC(a1);

  if (v1)
  {

    sub_1000160E4(&stru_100188D08);
  }
}

void sub_1000B2E6C(id a1, CSDBRecordStore *a2)
{
  CSDBRecordSaveStore();

  _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

void sub_1000B2EA8()
{
  v0 = +[APSLog database];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Saving database.", buf, 2u);
  }

  sub_1000B2E18(v1);
  v3 = sub_1000143BC(v2);

  if (v3)
  {
    v4 = +[APSLog database];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Destroying database.", v9, 2u);
    }

    v6 = sub_1000143BC(v5);
    CSDBThreadedRecordStoreTeardownDatabase();

    v7 = +[APSLog database];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Closed database.", v8, 2u);
    }
  }
}

uint64_t sub_1000B2FD4(uint64_t a1)
{
  v1 = sub_1000143BC(a1);

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1000B3088();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CSDBCreateUTF8StringFromCFString();
  if (v4)
  {
    v5 = v4;
    memset(&v8, 0, sizeof(v8));
    if (stat(v4, &v8))
    {
      SchemaVersionAtPath = 0;
    }

    else
    {
      SchemaVersionAtPath = CSDBSqliteUtilitiesGetSchemaVersionAtPath();
    }

    free(v5);
  }

  else
  {
    SchemaVersionAtPath = 0;
  }

  CFRelease(v3);
  return SchemaVersionAtPath;
}

uint64_t sub_1000B3088()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[APSMultiUserMode sharedInstance];
  v2 = [v1 isMultiUser];

  if (!v2)
  {
    v4 = [NSString stringWithUTF8String:CSDBGetMobileUserDirectory()];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v3 = +[APSMultiUserFS sharedInstance];
  v4 = [v3 systemPath];

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = [NSArray arrayWithObjects:v4, @"/Library/ApplePushService/", @"aps.db", 0];
  v6 = [NSString pathWithComponents:v5];

  [v6 fileSystemRepresentation];
  CSDBGetMobileUserUID();
  CSDBGetMobileUserGID();
  CSDBCreateDirectoriesToPathWithOwnership();
  v7 = [v6 stringByExpandingTildeInPath];
  v8 = [v7 stringByStandardizingPath];

  v9 = [v8 stringByResolvingSymlinksInPath];

  v10 = v9;
  v11 = [NSURL fileURLWithPath:v10 isDirectory:0];
  v12 = v10;
  if (v11)
  {
    v13 = [NSURL URLByResolvingAliasFileAtURL:v11 options:0 error:0];
    v14 = v13;
    v12 = v10;
    if (v13)
    {
      v12 = [v13 path];
    }
  }

LABEL_10:
  objc_autoreleasePoolPop(v0);
  return v12;
}

void sub_1000B3278(uint64_t a1)
{
  v2 = sub_1000143BC(a1);

  if (v2)
  {

    _CSDBSqliteSetDefaultPageCacheSize(a1);
  }
}

__CFString *__cdecl sub_1000B32CC(id a1)
{
  v1 = +[APSLog database];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = +[NSThread currentThread];
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Initializing database on thread: %@", &v4, 0xCu);
  }

  return sub_1000B3088();
}

void sub_1000B3390(id a1, CSDBThreadedRecordStore *a2)
{
  v2 = a2;
  CSDBThreadedRecordStoreRegisterClass();
  CSDBThreadedRecordStoreRegisterClass();
  CSDBThreadedRecordStoreRegisterClass();
}

uint64_t sub_1000B33F4(uint64_t a1, uint64_t a2)
{
  CSDBRecordStoreCreateTablesForClass();
  CSDBRecordStoreCreateTablesForClass();

  return CSDBRecordStoreCreateTablesForClass();
}

uint64_t sub_1000B3458(uint64_t a1, uint64_t a2)
{
  v2 = +[APSLog database];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Enabling auto vacuum.", buf, 2u);
  }

  CSDBSqliteConnectionPerformSQL();
  v3 = +[APSLog database];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Enabling WAL journal mode.", v7, 2u);
  }

  CSDBSqliteConnectionPerformSQL();
  v4 = +[APSLog database];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Enabling Foreign Key support.", v6, 2u);
  }

  return CSDBSqliteConnectionPerformSQL();
}

BOOL sub_1000B3594(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = +[APSLog database];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = a3;
    v8 = 1024;
    v9 = 15002;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "APSMessageStore - The current APS database is v%d.  The current schema version is v%d", v7, 0xEu);
  }

  if (a3 <= 0x3A99)
  {
    v5 = +[APSLog database];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APSMessageStore - This DB can be migrated.", v7, 2u);
    }
  }

  return a3 < 0x3A9A;
}

uint64_t sub_1000B36B8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = +[NSDate date];
  v6 = +[APSLog database];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 67109376;
    *&v49[4] = a3;
    *&v49[8] = 1024;
    *&v49[10] = 15002;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Beginning migration.  The APS db is currently at v%d, upgrading to v%d.", v49, 0xEu);
  }

  CSDBSqliteConnectionCommit();
  if (CSDBSqliteDatabaseCheckIntegrity())
  {
    v7 = +[APSLog database];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *v49 = 0;
    v8 = "APSMessageStore - Initial integrity check success";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v49, 2u);
    goto LABEL_27;
  }

  v9 = CSDBSqliteConnectionPerformSQL();
  if (v9 != 101 && (v10 = v9) != 0)
  {
    v11 = +[APSLog database];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10010CF10(v10, v11);
    }
  }

  else
  {
    v11 = +[APSLog database];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Reindexing the DB worked.", v49, 2u);
    }
  }

  if (CSDBSqliteDatabaseCheckIntegrity())
  {
    v7 = +[APSLog database];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *v49 = 0;
    v8 = "APSMessageStore - Post-reindex integrity check success";
    goto LABEL_24;
  }

  v12 = CSDBSqliteDatabaseVacuum();
  if (v12 != 101 && v12)
  {
    v13 = +[APSLog database];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10010CF88();
    }
  }

  else
  {
    v13 = +[APSLog database];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Database vacuum success", v49, 2u);
    }
  }

  v14 = CSDBSqliteDatabaseCheckIntegrity();
  v15 = +[APSLog database];
  v7 = v15;
  if (v14)
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *v49 = 0;
    v8 = "APSMessageStore - Final integrity check success";
    goto LABEL_24;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10010CFBC();
  }

LABEL_27:

  CSDBSqliteConnectionBegin();
  if (a3 > 0x3A9A)
  {
    v17 = +[APSLog database];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10010CFF0();
    }

    v18 = 2;
    goto LABEL_36;
  }

  CSDBSqliteConnectionBeginTransactionType();
  if (a3 == 7000)
  {
    CSDBSqliteDatabaseSetVersion();
    v16 = +[APSLog database];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Deleting high/normal priority messages we no longer own.", v49, 2u);
    }

    if (!sub_1000B4328(a2, @"Unable delete normal/high priority outgoing messages.", @"Successfully deleted messages we shouldn't resend.", @"DELETE FROM outgoing_message where priority != 1;"))
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
  }

  else if ((a3 & 0x3FFE) != 0x1B58)
  {
    goto LABEL_44;
  }

  CSDBSqliteDatabaseSetVersion();
  v22 = +[APSLog database];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Adding priority to incoming messages.", v49, 2u);
  }

  v23 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
  CSDBRecordStoreCreateTablesForClass();
  if (!v23)
  {
    goto LABEL_98;
  }

  CSDBSqliteDatabaseSetVersion();
LABEL_44:
  v24 = a3 - 7000;
  if (a3 - 7000 <= 2)
  {
    CSDBSqliteDatabaseSetVersion();
    v25 = +[APSLog database];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Adding identifier to outgoing messages.", v49, 2u);
    }

    v26 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v26)
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
  }

  if ((a3 & 0x3FFC) == 0x1B58)
  {
    CSDBSqliteDatabaseSetVersion();
    v27 = +[APSLog database];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Flushing deprecated storage of outgoing messages.", v49, 2u);
    }

    v28 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v28)
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
  }

  if (v24 <= 4)
  {
    CSDBSqliteDatabaseSetVersion();
    v29 = +[APSLog database];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Unifying iOS and OS X schemas.", v49, 2u);
    }

    v30 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
    CSDBRecordStoreCreateTablesForClass();
    v31 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE outgoing_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v30 || !v31)
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_61;
  }

  if (v24 <= 0x3E8)
  {
LABEL_61:
    CSDBSqliteDatabaseSetVersion();
    v32 = +[APSLog database];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "APSMessageStore - adding correlation identifier.", v49, 2u);
    }

    v33 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v33)
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_66;
  }

  if (v24 <= 0xBB9)
  {
LABEL_66:
    CSDBSqliteDatabaseSetVersion();
    v34 = +[APSLog database];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "APSMessageStore - adding tracing enabled and tracing uuid.", v49, 2u);
    }

    v35 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v35)
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_71;
  }

  if (a3 == 10002)
  {
LABEL_71:
    CSDBSqliteDatabaseSetVersion();
    v36 = +[APSLog database];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "APSMessageStore - adding push type.", v49, 2u);
    }

    v37 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v37)
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_75;
  }

  if (v24 <= 0xBBB)
  {
LABEL_75:
    CSDBSqliteDatabaseSetVersion();
    v38 = +[APSLog database];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "APSMessageStore - adding push flags.", v49, 2u);
    }

    v39 = sub_1000B4328(a2, @"Unable to drop legacy table", @"Successfully dropped legacy table", @"DROP TABLE incoming_message");
    CSDBRecordStoreCreateTablesForClass();
    if (!v39)
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_79;
  }

  if (a3 == 10004)
  {
LABEL_79:
    CSDBSqliteDatabaseSetVersion();
    v40 = +[APSLog database];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "APSMessageStore - adding channel table.", v49, 2u);
    }

    CSDBRecordStoreCreateTablesForClass();
    if (sub_1000B4328(a2, @"Unable to create index on push topic", @"Successfully created index on push topic", @"CREATE INDEX push_topic_idx ON channel(channel_topic)"))
    {
      goto LABEL_82;
    }

    goto LABEL_98;
  }

  if ((a3 - 10005) >> 2 <= 0x4E0)
  {
    CSDBSqliteDatabaseSetVersion();
    v41 = +[APSLog database];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "APSMessageStore - removing channel name column", v49, 2u);
    }

    v42 = sub_1000B4328(a2, @"Unable to drop legacy channels table", @"Removed legacy channel table", @"DROP TABLE channel");
    CSDBRecordStoreCreateTablesForClass();
    if (!v42)
    {
      goto LABEL_98;
    }

    CSDBSqliteDatabaseSetVersion();
  }

  if (a3 >> 3 < 0x753)
  {
    goto LABEL_83;
  }

  v43 = +[APSLog database];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Adding Token Namne and Environment columns", v49, 2u);
  }

  v44 = sub_1000B4328(a2, @"Unable to drop legacy channels table", @"Removed legacy channel table", @"DROP TABLE channel");
  CSDBRecordStoreCreateTablesForClass();
  v45 = sub_1000B4328(a2, @"Unable to create index on environmnet", @"Successfully created index on environment", @"CREATE INDEX environment_idx ON channel(environment)");
  v46 = sub_1000B4328(a2, @"Unable to create index on token name", @"Successfully created index on token name", @"CREATE INDEX token_name_idx ON channel(token_name)");
  v47 = sub_1000B4328(a2, @"Unable to create index on channel topic", @"Successfully created index on channel topic", @"CREATE INDEX channel_topic_idx ON channel(channel_topic)");
  if (!v44 || !v45 || !v46 || (v47 & 1) == 0)
  {
LABEL_98:
    CSDBSqliteConnectionCommit();
    v18 = 2;
    goto LABEL_99;
  }

LABEL_82:
  CSDBSqliteDatabaseSetVersion();
LABEL_83:
  CSDBSqliteConnectionCommit();
  CSDBSqliteConnectionPerformSQL();
  v18 = 0;
LABEL_36:
  v19 = +[APSLog database];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = +[NSDate date];
    [v20 timeIntervalSinceDate:v5];
    *v49 = 134217984;
    *&v49[4] = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "APSMessageStore - APS DB migration took %f seconds.", v49, 0xCu);
  }

LABEL_99:
  return v18;
}

uint64_t sub_1000B4328(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if ([v8 length])
  {
    v9 = CSDBSqliteConnectionPerformSQL();
    if (v9)
    {
      v10 = v9 == 101;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10;
    if (v9 && (v12 = v9, v9 != 101))
    {
      v13 = +[APSLog database];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412802;
        v16 = v6;
        v17 = 1024;
        v18 = v12;
        v19 = 2080;
        v20 = CSDBSqliteErrMsg();
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "APSMessageStore - %@ SQLiteResult: %d SQLite Message: %s", &v15, 0x1Cu);
      }
    }

    else
    {
      v13 = +[APSLog database];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "APSMessageStore - %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    v13 = +[APSLog database];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10010D024();
    }

    v11 = 1;
  }

  return v11;
}

void sub_1000B45C8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Notified of significant time change", &v3, 0xCu);
  }

  [v2 _handleSignificantTimeChange];
}

void *sub_1000B495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  pthread_once(&stru_1001BC778, sub_1000B5EF8);
  Instance = _CFRuntimeCreateInstance();
  v21 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 16) = 0;
    sub_1000145A0(Instance);
    v22 = CSDBRecordCreate();
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v31 = a2;
      v32 = a3;
      v33 = a4;
      v34 = a5;
      v35 = a6;
      v36 = a7;
      v37 = a8;
      v38 = a9;
      v39 = a10;
      v40 = a11;
      v41 = a12;
      v42 = a13;
      do
      {
        CSDBRecordSetProperty();
        ++v24;
      }

      while (v24 != 12);
      if (sub_1000B4B40(v23))
      {
        v21[3] = CSDBRecordGetID();
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v21[3];
          v27 = 138412546;
          v28 = v21;
          v29 = 2048;
          v30 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - New message record [%@] has ID [%lld].", &v27, 0x16u);
        }
      }

      else
      {
        CFRelease(v21);
        v21 = 0;
      }

      CFRelease(v23);
    }

    else
    {
      CFRelease(v21);
      return 0;
    }
  }

  return v21;
}

uint64_t sub_1000B4B40(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B4CB0;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000160E4(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000B4BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *sub_1000B4C04(uint64_t a1, uint64_t a2, int a3)
{
  pthread_once(&stru_1001BC778, sub_1000B5EF8);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  v6 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = a2;
  *(Instance + 16) = 0;
  if (a3)
  {
    v7 = sub_1000B4CF8(a2);
  }

  else
  {
    v7 = sub_1000B4DF8(a2);
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v7 = v6;
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

uint64_t sub_1000B4CB0(uint64_t result, uint64_t a2)
{
  if (*(result + 40))
  {
    v2 = result;
    CSDBRecordStoreAddRecord();
    result = CSDBRecordSaveStore();
    *(*(*(v2 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_1000B4CF8(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B4DB4;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000160E4(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000B4D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B4DB4(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000B4DF8(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B4EB4;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000B29A0(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000B4E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B4EB4(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1000B4EF8(const __CFString *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - APSOutgoingMessageRecordDeleteMessageForGUID %@", buf, 0xCu);
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      v2[0] = _NSConcreteStackBlock;
      v2[1] = 3221225472;
      v2[2] = sub_1000B5000;
      v2[3] = &unk_1001866F8;
      v2[4] = a1;
      sub_1000141E0(@"SELECT ROWID, guid, sender_token_name, topic, environment, payload, is_sent, message_id, identifier, priority, payload_format, timeout, date FROM outgoing_message WHERE guid = ? ORDER BY ROWID ASC", v2);
    }
  }
}

uint64_t sub_1000B5000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  v5 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v5);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      CFArrayGetValueAtIndex(v5, i);
      CSDBRecordStoreRemoveRecord();
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CSDBRecordSaveStore();

  return _CSDBRecordStoreInvalidateCachesWithStore(a2);
}

CFMutableArrayRef sub_1000B50B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  Default = CFAllocatorGetDefault();
  Mutable = CFArrayCreateMutable(Default, 0, &kCFTypeArrayCallBacks);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B5178;
  v11[3] = &unk_100189548;
  v12 = a3;
  v11[4] = a1;
  v11[5] = a4;
  v11[6] = a2;
  v11[7] = Mutable;
  sub_1000141E0(@"SELECT ROWID, guid, sender_token_name, topic, environment, payload, is_sent, message_id, identifier, priority, payload_format, timeout, date FROM outgoing_message WHERE is_sent = ? AND priority = ? AND environment = ? ORDER BY ROWID ASC LIMIT ?", v11);
  return Mutable;
}

void sub_1000B5178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  v5 = CSDBRecordStoreProcessStatement();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        CFArrayGetValueAtIndex(v6, i);
        ID = CSDBRecordGetID();
        v11 = sub_1000B4C04(kCFAllocatorDefault, ID, 0);
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(*(a1 + 56), v11);
          CFRelease(v12);
        }
      }
    }

    CFRelease(v6);
  }
}

uint64_t sub_1000B5294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B535C;
  v5[3] = &unk_100189570;
  v5[4] = &v6;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  sub_1000141E0(@"SELECT MIN(timeout+date), COUNT(*) FROM outgoing_message WHERE priority = ? AND environment = ? AND is_sent = 0", v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_1000B535C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStep();
  if (result)
  {
    *(*(a1[4] + 8) + 24) = CSDBSqliteStatementInteger64ResultColumn();
    result = CSDBSqliteStatementInteger64ResultColumn();
    v6 = a1[7];
    if (v6)
    {
      *v6 = result;
    }
  }

  return result;
}

const __CFString *sub_1000B53F0(const __CFString *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSOutgoingMessageRecordCopyMessageForGUID [%@]", &buf, 0xCu);
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v5 = 0x2020000000;
      v6 = 0;
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_1000B5550;
      v3[3] = &unk_1001895D8;
      v3[4] = &buf;
      v3[5] = a1;
      sub_1000141E0(@"SELECT ROWID, guid, sender_token_name, topic, environment, payload, is_sent, message_id, identifier, priority, payload_format, timeout, date FROM outgoing_message WHERE guid = ? ORDER BY ROWID ASC;", v3);
      a1 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void sub_1000B5530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B5550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  v5 = CSDBRecordStoreProcessStatement();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5))
    {
      CFArrayGetValueAtIndex(v6, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = sub_1000B4C04(kCFAllocatorDefault, ID, 0);
    }

    CFRelease(v6);
  }
}

void sub_1000B5610(uint64_t a1, char a2)
{
  if (a1)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1000B56A8;
    v2[3] = &unk_100189618;
    v2[4] = a1;
    v3 = a2;
    sub_1000B2928(a1 + 16, v2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10010D058();
  }
}

void sub_1000B56A8(uint64_t a1)
{
  v1 = sub_1000B4DF8(*(*(a1 + 32) + 24));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();
    sub_1000B29A0(&stru_1001895F8);

    CFRelease(v2);
  }
}

uint64_t sub_1000B5720(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 24);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Attempted to get record identifier for NULL message record: %@", &v2, 0xCu);
  }

  return 0;
}

uint64_t sub_1000B57C4(uint64_t a1)
{
  if (a1)
  {
    return CSDBRecordGetID();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - Attempted to get record identifier for NULL record: %@", &v2, 0xCu);
  }

  return 0;
}

uint64_t sub_1000B586C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B5954;
    v12[3] = &unk_100189640;
    v12[4] = &v13;
    v12[5] = a2;
    sub_1000B2928(a2 + 16, v12);
    v2 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_10010D0A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1000B593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B5954(uint64_t a1)
{
  v2 = sub_1000B4DF8(*(*(a1 + 40) + 24));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t sub_1000B59C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B5AA4;
    v12[3] = &unk_100189640;
    v12[4] = &v13;
    v12[5] = a2;
    sub_1000B28B8(v12);
    v2 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_10010D11C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1000B5A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B5AA4(uint64_t a1)
{
  v2 = sub_1000B4DF8(*(*(a1 + 40) + 24));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t sub_1000B5B10(uint64_t a1)
{
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B5BF8;
    v11[3] = &unk_100189640;
    v11[4] = &v12;
    v11[5] = a1;
    sub_1000B2928(a1 + 16, v11);
    v1 = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v2 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      sub_10010D198(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return 0;
  }

  return v1;
}

void sub_1000B5BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B5BF8(uint64_t a1)
{
  v2 = sub_1000B4DF8(*(*(a1 + 40) + 24));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

void sub_1000B5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a1)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B5D20;
    v22[3] = &unk_100189660;
    v22[4] = a1;
    v22[5] = a2;
    v22[6] = a3;
    v22[7] = a4;
    v22[8] = a5;
    v22[9] = a7;
    v22[10] = a8;
    v22[11] = a9;
    v22[12] = a10;
    v22[13] = a11;
    v22[14] = a12;
    v22[15] = a13;
    v22[16] = a14;
    sub_1000B2928(a1 + 16, v22);
  }

  else
  {
    v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      sub_10010D214(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

void sub_1000B5D20(uint64_t a1)
{
  v2 = sub_1000B4DF8(*(*(a1 + 32) + 24));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordGetID();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 80))
    {
      **(a1 + 80) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 88))
    {
      **(a1 + 88) = CSDBRecordGetProperty();
    }

    if (*(a1 + 96))
    {
      **(a1 + 96) = CSDBRecordGetProperty();
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordGetProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordGetProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordGetProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordGetProperty();
    }

    CFRelease(v3);
  }
}

uint64_t sub_1000B5EF8()
{
  v0 = 0;
  qword_1001BF8C0 = _CFRuntimeRegisterClass();
  v1 = &off_1001896E0;
  do
  {
    v1 += 5;
    result = CSDBRecordIndexOfPropertyNamed();
    dword_1001BF8C8[v0++] = result;
  }

  while (v0 != 12);
  return result;
}

const void *sub_1000B5F8C(uint64_t a1, uint64_t a2, int a3)
{
  pthread_once(&stru_1001BC788, sub_1000B7034);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  v6 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = a2;
  *(Instance + 16) = 0;
  if (a3)
  {
    v7 = sub_1000B6038(a2);
  }

  else
  {
    v7 = sub_1000B6138(a2);
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v7 = v6;
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

uint64_t sub_1000B6038(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B60F4;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000160E4(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000B60DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B60F4(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000B6138(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B61F4;
  v3[3] = &unk_1001865D0;
  v3[4] = &v4;
  v3[5] = a1;
  sub_1000B29A0(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000B61DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B61F4(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1000B6238(const __CFString *a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = a1;
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - APSIncomingMessageRecordDeleteMessagesForTopic %@ %lld environment %@", buf, 0x20u);
  }

  if (a1)
  {
    Length = CFStringGetLength(a1);
    if (a3)
    {
      if (Length)
      {
        if (CFStringGetLength(a3))
        {
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_1000B6380;
          v9[3] = &unk_100186690;
          v9[4] = a2;
          v9[5] = a1;
          v9[6] = a3;
          v9[7] = a4;
          sub_1000B2AF0(@"DELETE FROM incoming_message WHERE priority = ? AND topic = ? AND environment = ? AND token = ?", v9);
        }
      }
    }
  }
}

uint64_t sub_1000B6380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindBlobFromCFData();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

void sub_1000B63E8(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSMessageStore - APSIncomingMessageRecordDeleteMessagesOlderThanDate environment %@  %lld timeThreshold %lld", buf, 0x20u);
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000B6518;
      v6[3] = &unk_1001866D8;
      v6[4] = a2;
      v6[5] = a1;
      v6[6] = a3;
      sub_1000B2AF0(@"DELETE FROM incoming_message WHERE priority = ? AND ROWID < IFNULL(  (  SELECT MAX(m.ROWID) FROM incoming_message m   WHERE m.environment = ?   AND m.priority = ?   AND m.date < ?  ), 0) ", v6);
    }
  }
}

uint64_t sub_1000B6518(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();

  return _CSDBSqliteStatementPerform(a4, v5, v6);
}

uint64_t sub_1000B6580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B6648;
  v5[3] = &unk_100189570;
  v5[6] = a2;
  v5[7] = a3;
  v5[4] = &v6;
  v5[5] = a1;
  sub_1000141E0(@"SELECT topic FROM incoming_message WHERE priority = ? AND environment = ? AND token = ? ", v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

const void *sub_1000B6648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindBlobFromCFData();
  while (1)
  {
    result = CSDBSqliteStatementCopyStringResult();
    if (!result)
    {
      break;
    }

    v6 = result;
    v7 = *(*(a1[4] + 8) + 24);
    if (!v7)
    {
      *(*(a1[4] + 8) + 24) = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v7 = *(*(a1[4] + 8) + 24);
    }

    CFArrayAppendValue(v7, v6);
    CFRelease(v6);
  }

  return result;
}

const __CFString *sub_1000B6704(const __CFString *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSIncomingMessageRecordCopyMessageForGUID [%@]", &buf, 0xCu);
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v5 = 0x2020000000;
      v6 = 0;
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_1000B6864;
      v3[3] = &unk_1001895D8;
      v3[4] = &buf;
      v3[5] = a1;
      sub_1000141E0(@"SELECT ROWID, guid, token, topic, environment, correlation_identifier, payload, from_storage, last_from_storage, message_id, priority, date, tracing_enabled, tracing_uuid, push_type, push_flags FROM incoming_message WHERE guid = ? ORDER BY ROWID ASC;", v3);
      a1 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void sub_1000B6844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B6864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  v5 = CSDBRecordStoreProcessStatement();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5))
    {
      CFArrayGetValueAtIndex(v6, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = sub_1000B5F8C(kCFAllocatorDefault, ID, 0);
    }

    CFRelease(v6);
  }
}

uint64_t sub_1000B6924(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B6A0C;
    v12[3] = &unk_100189640;
    v12[4] = &v13;
    v12[5] = a2;
    sub_1000B2928(a2 + 16, v12);
    v2 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_10010D290(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1000B69F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B6A0C(uint64_t a1)
{
  v2 = sub_1000B6138(*(*(a1 + 40) + 24));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t sub_1000B6A78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B6B5C;
    v12[3] = &unk_100189640;
    v12[4] = &v13;
    v12[5] = a2;
    sub_1000B28B8(v12);
    v2 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_10010D30C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1000B6B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B6B5C(uint64_t a1)
{
  v2 = sub_1000B6138(*(*(a1 + 40) + 24));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t sub_1000B6BC8(uint64_t a1)
{
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B6CB0;
    v11[3] = &unk_100189640;
    v11[4] = &v12;
    v11[5] = a1;
    sub_1000B2928(a1 + 16, v11);
    v1 = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v2 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      sub_10010D388(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    return 0;
  }

  return v1;
}

void sub_1000B6C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B6CB0(uint64_t a1)
{
  v2 = sub_1000B6138(*(*(a1 + 40) + 24));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

void sub_1000B6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a1)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000B6DEC;
    v25[3] = &unk_100189960;
    v25[4] = a1;
    v25[5] = a2;
    v25[6] = a3;
    v25[7] = a4;
    v25[8] = a5;
    v25[9] = a7;
    v25[10] = a8;
    v25[11] = a9;
    v25[12] = a10;
    v25[13] = a11;
    v25[14] = a12;
    v25[15] = a13;
    v25[16] = a14;
    v25[17] = a15;
    v25[18] = a16;
    v25[19] = a17;
    sub_1000B2928(a1 + 16, v25);
  }

  else
  {
    v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      sub_10010D404(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

void sub_1000B6DEC(uint64_t a1)
{
  v2 = sub_1000B6138(*(*(a1 + 32) + 24));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordGetID();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 80))
    {
      **(a1 + 80) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 88))
    {
      **(a1 + 88) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 96))
    {
      **(a1 + 96) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordGetProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordGetProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordGetProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordGetProperty() != 0;
    }

    if (*(a1 + 136))
    {
      **(a1 + 136) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 144))
    {
      **(a1 + 144) = CSDBRecordGetProperty();
    }

    if (*(a1 + 152))
    {
      **(a1 + 152) = CSDBRecordGetProperty();
    }

    CFRelease(v3);
  }
}

uint64_t sub_1000B7034()
{
  v0 = 0;
  qword_1001BF8F8 = _CFRuntimeRegisterClass();
  v1 = &off_1001899E0;
  do
  {
    v1 += 5;
    result = CSDBRecordIndexOfPropertyNamed();
    dword_1001BF900[v0++] = result;
  }

  while (v0 != 15);
  return result;
}

void sub_1000B7868(id a1)
{
  v1 = objc_alloc_init(APSSystemMonitor);
  v2 = qword_1001BF940;
  qword_1001BF940 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B79B4()
{
  if (dword_1001BF950)
  {
    IONotificationPortSetDispatchQueue(qword_1001BF958, 0);
    IODeregisterForSystemPower(dword_1001BF960);
    IOServiceClose(dword_1001BF950);
    IONotificationPortDestroy(qword_1001BF958);
    dword_1001BF950 = 0;
  }
}

void sub_1000B818C(id a1, int a2)
{
  state64 = 0;
  notify_get_state(a2, &state64);
  v2 = +[APSSystemMonitor sharedInstance];
  [v2 _setSystemScreenState:state64 == 0];
}

void sub_1000B81E8(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v6 = objc_autoreleasePoolPush();
  if (a3 == -536870288)
  {
LABEL_7:
    v8 = IOAllowPowerChange(dword_1001BF950, a4);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_10010D588(v9);
      }
    }

    goto LABEL_13;
  }

  if (a3 != -536870144)
  {
    if (a3 != -536870272)
    {
      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SLEEP -- going to sleep now", buf, 2u);
    }

    v7 = +[APSSystemMonitor sharedInstance];
    [v7 _systemWillSleep];

    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "WAKE -- just woke up!", v10, 2u);
  }

  dispatch_async(&_dispatch_main_q, &stru_100189CB8);
LABEL_13:
  objc_autoreleasePoolPop(v6);
}

void sub_1000B8358(id a1)
{
  v1 = +[APSSystemMonitor sharedInstance];
  [v1 _systemDidWake];
}

void sub_1000B86B4(uint64_t a1, int a2, void *a3)
{
  if (qword_1001BF9C0 != -1)
  {
    sub_10010D644();
  }

  if (qword_1001BF9D0[0] != -1)
  {
    sub_10010D658();
  }

  v6 = off_1001BF9C8(a1);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"YES";
    *buf = 136315650;
    v24 = "_WiFiManagerClientWoWStateChangedCallback";
    v25 = 2112;
    if (!a2)
    {
      v7 = @"NO";
    }

    v26 = v7;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s WoW isEnabled %@ WoW state %@", buf, 0x20u);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = getpid();
  v9 = [(__CFString *)v6 objectForKey:qword_1001BF9B8];
  v10 = [v9 count];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000BAFD4;
  v17[3] = &unk_100189DC0;
  v18 = v8;
  v17[4] = &v19;
  [v9 enumerateObjectsUsingBlock:v17];
  if (a2 && *(v20 + 24) == 1 && v10 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "_WiFiManagerClientWoWStateChangedCallback";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s APSD is the only WoW subscriber. Preventing WoW from enabling dual mode!", buf, 0xCu);
    }

    a2 = 0;
  }

  v11 = a3;
  if (a2 != [v11 isWoWEnabled])
  {
    [v11 setIsWoWEnabled:a2 != 0];
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 shouldUseDualMode];
      v14 = [v11 isWoWEnabled];
      v15 = @"NO";
      v25 = 2080;
      v26 = "_WiFiManagerClientWoWStateChangedCallback";
      if (v13)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      *buf = 134218754;
      v24 = v11;
      v27 = 2112;
      if (v14)
      {
        v15 = @"YES";
      }

      v28 = v16;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%p %s shouldUseDualMode %@ isWoWEnabled %@", buf, 0x2Au);
    }

    [v11 _toggleWiFiAutoAssociateIfNecessary];
  }

  _Block_object_dispose(&v19, 8);
}

void sub_1000B89F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B8DB8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Notified of significant time change", &v3, 0xCu);
  }

  [v2 _handleSignificantTimeChange];
}

void sub_1000BAF54(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1001BF9B8, v2);
}

id sub_1000BAFD4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 intValue];
  if (result == *(a1 + 40))
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_1000BB17C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___PSAttribute__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___PSAttribute__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000BBD94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clear];
}

void sub_1000BC318(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1000BCBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) server];
  [v4 writeKeepAliveInfoToDisk:&v5 interface:*(a1 + 44) addressFamily:*(a1 + 40)];
}

void sub_1000BD058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BD080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained writeKeepAliveInfoToDisk:a4 interface:a2 addressFamily:a3];
}

void sub_1000BD0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportAOPEvents:a2 droppedEvents:a3];
}

id sub_1000BD238(id *a1, id *a2)
{
  *a1 = objc_retainBlock(*a2);
  a1[1] = objc_retainBlock(a2[1]);
  result = objc_retainBlock(a2[2]);
  a1[2] = result;
  return result;
}

void sub_1000BD28C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
}

void sub_1000BD37C(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_1000BDB3C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1000BF1D0(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v5 protocolConnection:v2 receivedMessageWithParameters:v3 generation:objc_msgSend(v4 isWaking:{"unsignedIntegerValue"), 0}];
}

uint64_t sub_1000BF240(unint64_t a1)
{
  if (a1 > 6)
  {
    return 255;
  }

  else
  {
    return dword_10015CEB0[a1];
  }
}

void sub_1000BF76C(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 32))
  {
    v8 = @"APSProtocolConnectedResponse";
    v9 = &off_100197B18;
    v2 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v3 = [v2 mutableCopy];

    v4 = *(a1 + 32);
    if (v4)
    {
      [v3 setObject:v4 forKeyedSubscript:@"APSProtocolServerTimeForBadNonce"];
    }

    v5 = [*(a1 + 40) presenceCompletion];

    if (v5)
    {
      v6 = [*(a1 + 40) presenceCompletion];
      (v6)[2](v6, v3, 0);
    }

    [*(a1 + 40) setQueuedPresenceSend:0];
  }

  else
  {
    v7 = *(a1 + 40);

    [v7 _markDisconnectedIsPermanent:0];
  }
}

void sub_1000C071C(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2;
  v8 = [v4 name];
  v6 = v5[5];

  LODWORD(v7) = *(a1 + 96);
  [v3 sendPresenceWithEnvironmentName:v8 guid:v6 token:*(a1 + 32) hwVersion:*(a1 + 40) swVersion:*(a1 + 48) swBuild:*(a1 + 56) certificates:*(a1 + 64) nonce:*(a1 + 72) signature:*(a1 + 80) additionalFlags:v7 hostCertificateInfo:*(a1 + 88)];
}

uint64_t sub_1000C1884(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 1) >= 3)
  {
    sub_10010DA98(v1);
  }

  return *&a1[qword_10015CEE8[(v1 - 1)]];
}

uint64_t sub_1000C18C0(void *a1, uint64_t a2)
{
  result = *a1;
  switch(result)
  {
    case 1:
      tb_transport_message_buffer_wrap_buffer();
      if (tb_message_construct())
      {
        sub_10010DB18();
      }

      result = tb_message_configure_received();
      if (a1[3])
      {
        v6 = 0;
        do
        {
          tb_message_decode_u8();
          result = (*(a2 + 16))(a2, v6++, 0);
        }

        while (v6 < a1[3]);
      }

      break;
    case 2:
      result = tb_message_subrange();
      if (result)
      {
        sub_10010DADC();
      }

      break;
    case 3:
      if (a1[2])
      {
        v5 = 0;
        do
        {
          result = (*(a2 + 16))(a2, v5, *(a1[1] + v5));
          ++v5;
        }

        while (v5 < a1[2]);
      }

      break;
    default:
      sub_10010DB54(result);
  }

  return result;
}

uint64_t sub_1000C1A80(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v3 = 0;
    do
    {
      tb_message_decode_u8();
      (*(*(a1 + 32) + 16))();
      ++v3;
    }

    while (v3 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t sub_1000C1B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = tb_owned_buffer_allocate();
    tb_transport_message_buffer_wrap_buffer();
    v6 = tb_message_construct();
    if (!v6)
    {
      v7 = 0;
      do
      {
        tb_message_encode_u8();
        ++v7;
      }

      while (a3 != v7);
      tb_message_destruct();
      *a1 = 1;
      *(a1 + 8) = v5;
      *(a1 + 16) = a3;
      *(a1 + 24) = a3;
    }
  }

  else
  {
    v6 = 0;
    *a1 = 3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
  }

  return v6;
}

void *sub_1000C1C24(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  *a1 = 3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  result = _Block_copy(aBlock);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1000C1C5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1000C1C78(double *a1, uint64_t a2, uint64_t a3)
{
  tb_transport_message_buffer_wrap_buffer();
  v3 = tb_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_f64();
    tb_message_destruct();
  }

  return v3;
}

uint64_t sub_1000C1D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  tb_transport_message_buffer_wrap_buffer();
  v4 = tb_message_construct();
  if (!v4)
  {
    tb_message_configure_received();
    tb_message_precheck_decoding();
    tb_message_raw_decode_f64();
    (*(a3 + 16))(a3, 0.0);
    tb_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C1E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  tb_transport_message_buffer_wrap_buffer();
  v3 = tb_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_f64();
    tb_message_raw_encode_u8();
    tb_message_raw_encode_u8();
    tb_message_destruct();
  }

  return v3;
}

uint64_t sub_1000C1F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  tb_transport_message_buffer_wrap_buffer();
  v4 = tb_message_construct();
  if (!v4)
  {
    tb_message_configure_received();
    tb_message_precheck_decoding();
    tb_message_raw_decode_f64();
    tb_message_raw_decode_u8();
    tb_message_raw_decode_u8();
    (*(a3 + 16))(a3, 0, 0);
    tb_message_destruct();
  }

  return v4;
}

void *sub_1000C2010(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0x7EA08A839B5CA7A1)
  {
    return 0;
  }

  return result;
}

void *sub_1000C2030(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0x819EE7A36A163403)
  {
    return 0;
  }

  return result;
}

void *sub_1000C2050(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0xE63B9D553865CA75)
  {
    return 0;
  }

  return result;
}

void *sub_1000C2070(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0xAD93ADE4DBB03D1ALL)
  {
    return 0;
  }

  return result;
}

void *sub_1000C2090(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0xD1302E1D19C591FFLL)
  {
    return 0;
  }

  return result;
}

void *sub_1000C20B0(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0xD3A101E500811122)
  {
    return 0;
  }

  return result;
}

void *sub_1000C20D0(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0x3076094B707DB4ECLL)
  {
    return 0;
  }

  return result;
}

void *sub_1000C20F0(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0x2C1838C7180DE40CLL)
  {
    return 0;
  }

  return result;
}

void *sub_1000C2110(uint64_t *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (v2 != 0x82DE86373BBB55A7)
  {
    return 0;
  }

  return result;
}

__n128 sub_1000C2130(uint64_t a1, __n128 *a2)
{
  *a1 = 0x7EA08A839B5CA7A1;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1000C2158(uint64_t a1, uint64_t a2)
{
  *a1 = 0x819EE7A36A163403;
  result = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1000C217C(uint64_t a1, __n128 *a2)
{
  *a1 = 0xE63B9D553865CA75;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  return result;
}

void *sub_1000C21A4(void *result, uint64_t a2)
{
  *result = 0xAD93ADE4DBB03D1ALL;
  result[1] = a2;
  return result;
}

uint64_t sub_1000C21BC(uint64_t result, int a2)
{
  *result = 0xD1302E1D19C591FFLL;
  *(result + 8) = a2;
  *(result + 10) = BYTE2(a2);
  return result;
}

void *sub_1000C21E0(void *result, uint64_t a2)
{
  *result = 0xD3A101E500811122;
  result[1] = a2;
  return result;
}

__n128 sub_1000C21F8(uint64_t a1, uint64_t a2)
{
  *a1 = 0x3076094B707DB4ECLL;
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1000C2228(uint64_t a1, uint64_t a2)
{
  *a1 = 0x2C1838C7180DE40CLL;
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1000C2258(uint64_t a1, uint64_t a2)
{
  *a1 = 0x82DE86373BBB55A7;
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C228C(uint64_t *a1)
{
  v1 = *a1;
  v2 = 20;
  if (*a1 <= 0xD1302E1D19C591FELL)
  {
    switch(v1)
    {
      case 0x819EE7A36A163403:
        v2 = 21;
        return v2 + 9;
      case 0x82DE86373BBB55A7:
        goto LABEL_15;
      case 0xAD93ADE4DBB03D1ALL:
        v2 = 13;
        break;
    }
  }

  else
  {
    if (v1 <= 0x2C1838C7180DE40BLL)
    {
      if (v1 == 0xD3A101E500811122)
      {
        v2 = 14;
      }

      if (v1 == 0xD1302E1D19C591FFLL)
      {
        v2 = 11;
      }

      return v2 + 9;
    }

    if (v1 == 0x2C1838C7180DE40CLL)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 0;
      v6 = _NSConcreteStackBlock;
      v7 = 0x40000000;
      v8 = sub_1000C5D68;
      v9 = &unk_10018A118;
      v10 = &v11;
      sub_1000C18C0(a1 + 2, &v6);
      v4 = v12[3];
      _Block_object_dispose(&v11, 8);
      v2 = v4 + 34;
      return v2 + 9;
    }

    if (v1 == 0x3076094B707DB4ECLL)
    {
LABEL_15:
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 0;
      v6 = _NSConcreteStackBlock;
      v7 = 0x40000000;
      v8 = sub_1000C5D68;
      v9 = &unk_10018A118;
      v10 = &v11;
      sub_1000C18C0(a1 + 2, &v6);
      v3 = v12[3];
      _Block_object_dispose(&v11, 8);
      v2 = v3 + 30;
    }
  }

  return v2 + 9;
}

uint64_t sub_1000C24BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  tb_transport_message_buffer_wrap_buffer();
  v4 = tb_message_construct();
  if (!v4)
  {
    sub_1000C228C(a1);
    tb_message_precheck_encoding();
    sub_1000C5D80(v6, a1);
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u8();
    tb_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C2598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tb_transport_message_buffer_wrap_buffer();
  v4 = tb_message_construct();
  if (!v4)
  {
    tb_message_configure_received();
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v4 = sub_1000C26B4(v15, &v9);
    if (!v4)
    {
      v5 = *(a3 + 16);
      v7[2] = v11;
      v7[3] = v12;
      v7[4] = v13;
      v8 = v14;
      v7[0] = v9;
      v7[1] = v10;
      v5(a3, v7);
    }

    tb_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C26B4(uint64_t a1, uint64_t a2)
{
  tb_message_decode_u64();
  v3 = *a2;
  result = 7;
  if (*a2 <= 0xD3A101E500811121)
  {
    if (v3 > 0xAD93ADE4DBB03D19)
    {
      if (v3 == 0xAD93ADE4DBB03D1ALL)
      {
        tb_message_decode_u8();
        sub_10010DC64(0);
      }

      if (v3 == 0xD1302E1D19C591FFLL)
      {
        tb_message_decode_u8();
        *(a2 + 8) = 0;
        tb_message_decode_u8();
        sub_10010DC20(0);
      }
    }

    else
    {
      if (v3 == 0x819EE7A36A163403)
      {
        tb_message_decode_u8();
        *(a2 + 8) = 0;
        tb_message_decode_u8();
        sub_10010DC20(0);
      }

      if (v3 == 0x82DE86373BBB55A7)
      {
        tb_message_decode_u8();
        sub_10010DB98(0);
      }
    }
  }

  else if (v3 <= 0x2C1838C7180DE40BLL)
  {
    if (v3 == 0xD3A101E500811122)
    {
      tb_message_decode_u8();
      *(a2 + 8) = 0;
      tb_message_decode_u8();
      sub_10010DC20(0);
    }

    if (v3 == 0xE63B9D553865CA75)
    {
      tb_message_decode_u8();
      *(a2 + 8) = 0;
      tb_message_decode_u8();
      sub_10010DC20(0);
    }
  }

  else
  {
    switch(v3)
    {
      case 0x2C1838C7180DE40CLL:
        tb_message_decode_u8();
        sub_10010DB98(0);
      case 0x3076094B707DB4ECLL:
        tb_message_decode_u8();
        sub_10010DB98(0);
      case 0x7EA08A839B5CA7A1:
        tb_message_decode_u8();
        *(a2 + 8) = 0;
        tb_message_decode_u8();
        sub_10010DC20(0);
    }
  }

  return result;
}

uint64_t sub_1000C2D10(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  tb_transport_message_buffer_wrap_buffer();
  v3 = tb_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u32();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_destruct();
  }

  return v3;
}

uint64_t sub_1000C2E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tb_transport_message_buffer_wrap_buffer();
  v4 = tb_message_construct();
  if (!v4)
  {
    tb_message_configure_received();
    v9 = 0uLL;
    v10 = 0;
    tb_message_precheck_decoding();
    tb_message_raw_decode_u32();
    tb_message_raw_decode_u16();
    tb_message_raw_decode_u16();
    tb_message_raw_decode_u16();
    tb_message_raw_decode_u16();
    tb_message_raw_decode_u16();
    tb_message_raw_decode_u16();
    tb_message_raw_decode_u16();
    tb_message_raw_decode_u16();
    v5 = *(a3 + 16);
    v7 = 0uLL;
    v8 = 0;
    v5(a3, &v7);
    tb_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C2F94(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 1) >= 3)
  {
    sub_10010DCA8(v1);
  }

  return *&a1[qword_10015CEE8[(v1 - 1)]];
}

uint64_t sub_1000C2FD0(void *a1, uint64_t a2)
{
  result = *a1;
  switch(result)
  {
    case 1:
      tb_transport_message_buffer_wrap_buffer();
      if (tb_message_construct())
      {
        sub_10010DD28();
      }

      result = tb_message_configure_received();
      if (a1[3])
      {
        v6 = 0;
        do
        {
          tb_message_decode_u32();
          result = (*(a2 + 16))(a2, v6++, 0);
        }

        while (v6 < a1[3]);
      }

      break;
    case 2:
      result = tb_message_subrange();
      if (result)
      {
        sub_10010DCEC();
      }

      break;
    case 3:
      if (a1[2])
      {
        v5 = 0;
        do
        {
          result = (*(a2 + 16))(a2, v5, *(a1[1] + 4 * v5));
          ++v5;
        }

        while (v5 < a1[2]);
      }

      break;
    default:
      sub_10010DD64(result);
  }

  return result;
}

uint64_t sub_1000C3190(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v3 = 0;
    do
    {
      tb_message_decode_u32();
      (*(*(a1 + 32) + 16))();
      ++v3;
    }

    while (v3 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t sub_1000C3214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3;
    v6 = tb_owned_buffer_allocate();
    tb_transport_message_buffer_wrap_buffer();
    v7 = tb_message_construct();
    if (!v7)
    {
      v8 = 0;
      do
      {
        tb_message_encode_u32();
        ++v8;
      }

      while (a3 != v8);
      tb_message_destruct();
      *a1 = 1;
      *(a1 + 8) = v6;
      *(a1 + 16) = v5;
      *(a1 + 24) = a3;
    }
  }

  else
  {
    v7 = 0;
    *a1 = 3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
  }

  return v7;
}

uint64_t sub_1000C3338(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = sub_1000C632C;
  v10 = &unk_10018A180;
  v11 = &v12;
  sub_1000C2FD0(a1, &v7);
  v2 = v13[3];
  _Block_object_dispose(&v12, 8);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = sub_1000C632C;
  v10 = &unk_10018A180;
  v11 = &v12;
  sub_1000C2FD0(a1 + 5, &v7);
  v3 = v13[3];
  _Block_object_dispose(&v12, 8);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = sub_1000C632C;
  v10 = &unk_10018A180;
  v11 = &v12;
  sub_1000C2FD0(a1 + 10, &v7);
  v4 = v13[3];
  _Block_object_dispose(&v12, 8);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = sub_1000C632C;
  v10 = &unk_10018A180;
  v11 = &v12;
  sub_1000C2FD0(a1 + 15, &v7);
  v5 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v2 + v3 + v4 + v5 + 32;
}

uint64_t sub_1000C3520(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tb_transport_message_buffer_wrap_buffer();
  v4 = tb_message_construct();
  if (!v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v8 = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000C632C;
    v11 = &unk_10018A180;
    v12 = &v13;
    sub_1000C2FD0(a1, &v8);
    _Block_object_dispose(&v13, 8);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v8 = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000C632C;
    v11 = &unk_10018A180;
    v12 = &v13;
    sub_1000C2FD0(a1 + 5, &v8);
    _Block_object_dispose(&v13, 8);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v8 = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000C632C;
    v11 = &unk_10018A180;
    v12 = &v13;
    sub_1000C2FD0(a1 + 10, &v8);
    _Block_object_dispose(&v13, 8);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v8 = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000C632C;
    v11 = &unk_10018A180;
    v12 = &v13;
    sub_1000C2FD0(a1 + 15, &v8);
    _Block_object_dispose(&v13, 8);
    tb_message_precheck_encoding();
    sub_1000C2F94(a1);
    tb_message_raw_encode_u64();
    v8 = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000C6344;
    v11 = &unk_10018A1A0;
    v12 = v6;
    sub_1000C2FD0(a1, &v8);
    sub_1000C2F94(a1 + 40);
    tb_message_raw_encode_u64();
    v8 = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000C6344;
    v11 = &unk_10018A1A0;
    v12 = v6;
    sub_1000C2FD0(a1 + 5, &v8);
    sub_1000C2F94(a1 + 80);
    tb_message_raw_encode_u64();
    v8 = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000C6344;
    v11 = &unk_10018A1A0;
    v12 = v6;
    sub_1000C2FD0(a1 + 10, &v8);
    sub_1000C2F94(a1 + 120);
    tb_message_raw_encode_u64();
    v8 = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000C6344;
    v11 = &unk_10018A1A0;
    v12 = v6;
    sub_1000C2FD0(a1 + 15, &v8);
    tb_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C38E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  tb_transport_message_buffer_wrap_buffer();
  v4 = tb_message_construct();
  if (!v4)
  {
    tb_message_configure_received();
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v32 = 0;
    tb_message_decode_u64();
    *&v10 = _NSConcreteStackBlock;
    *(&v10 + 1) = 0x40000000;
    *&v11 = sub_1000C6408;
    *(&v11 + 1) = &unk_10018A1C0;
    *&v12 = 0;
    *(&v12 + 1) = v30;
    v5 = tb_message_measure_subrange();
    if (v5)
    {
      v4 = v5;
      LOBYTE(v20) = 0;
    }

    else
    {
      *(&v20 + 1) = v30;
      *&v22 = v32;
      LOBYTE(v20) = 2;
      v32 = 0;
      tb_message_decode_u64();
      *&v10 = _NSConcreteStackBlock;
      *(&v10 + 1) = 0x40000000;
      *&v11 = sub_1000C6408;
      *(&v11 + 1) = &unk_10018A1C0;
      *&v12 = v32;
      *(&v12 + 1) = v30;
      v6 = tb_message_measure_subrange();
      if (v6)
      {
        v4 = v6;
        BYTE8(v22) = 0;
      }

      else
      {
        *&v23 = v30;
        *(&v24 + 1) = v32;
        BYTE8(v22) = 2;
        v32 = 0;
        tb_message_decode_u64();
        *&v10 = _NSConcreteStackBlock;
        *(&v10 + 1) = 0x40000000;
        *&v11 = sub_1000C6408;
        *(&v11 + 1) = &unk_10018A1C0;
        *&v12 = v32;
        *(&v12 + 1) = v30;
        v7 = tb_message_measure_subrange();
        if (v7)
        {
          v4 = v7;
          LOBYTE(v25) = 0;
        }

        else
        {
          *(&v25 + 1) = v30;
          *&v27 = v32;
          LOBYTE(v25) = 2;
          v4 = sub_1000C6350(v30, &v27 + 8);
          if (!v4)
          {
            v8 = *(a3 + 16);
            v16 = v26;
            v17 = v27;
            v18 = v28;
            v19 = v29;
            v12 = v22;
            v13 = v23;
            v14 = v24;
            v15 = v25;
            v10 = v20;
            v11 = v21;
            v8(a3, &v10);
          }
        }
      }
    }

    tb_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C3BD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7)
{
  v7 = a3;
  v8 = a2;
  v9 = tb_client_connection_message_construct();
  if (!v9)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    if (v8 >= 2)
    {
      sub_10010DDA8(v8);
    }

    tb_message_raw_encode_u8();
    if ((v7 | 2) != 6)
    {
      sub_10010DE30(v7);
    }

    tb_message_raw_encode_u8();
    tb_message_raw_encode_u8();
    tb_message_raw_encode_u8();
    tb_message_raw_encode_f64();
    tb_message_complete();
    v9 = tb_connection_send_query();
    if ((v9 & 0xFFFFFFF7) == 0)
    {
      v9 = 4;
    }

    tb_client_connection_message_destruct();
  }

  return v9;
}

uint64_t sub_1000C3DA8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = tb_client_connection_message_construct();
  if (!v4)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    if (v3 >= 2)
    {
      sub_10010DDA8(v3);
    }

    tb_message_raw_encode_u8();
    tb_message_complete();
    v4 = tb_connection_send_query();
    if ((v4 & 0xFFFFFFF7) == 0)
    {
      v4 = 4;
    }

    tb_client_connection_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C3F1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v6 = tb_client_connection_message_construct();
  if (!v6)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    if (v5 >= 2)
    {
      sub_10010DDA8(v5);
    }

    tb_message_raw_encode_u8();
    if ((v4 | 2) != 6)
    {
      sub_10010DE30(v4);
    }

    tb_message_raw_encode_u8();
    tb_message_complete();
    v7 = tb_connection_send_query();
    if ((v7 & 0xFFFFFFF7) != 0)
    {
      v6 = v7;
      tb_client_connection_message_destruct();
    }

    else
    {
      tb_client_connection_message_destruct();
      return 4;
    }
  }

  return v6;
}

uint64_t sub_1000C40F0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = tb_client_connection_message_construct();
  if (!v4)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    if (v3 >= 2)
    {
      sub_10010DDA8(v3);
    }

    tb_message_raw_encode_u8();
    tb_message_complete();
    v4 = tb_connection_send_query();
    if ((v4 & 0xFFFFFFF7) == 0)
    {
      v4 = 4;
    }

    tb_client_connection_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C4264(uint64_t *a1, uint64_t a2)
{
  tb_endpoint_set_interface_identifier();
  v3 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1000C42B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  tb_endpoint_set_interface_identifier();
  result = tb_client_connection_create_with_endpoint_static();
  if (!result)
  {
    result = tb_client_connection_activate();
    if (!result)
    {
      *a1 = a3;
    }
  }

  return result;
}

uint64_t sub_1000C4364(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  tb_endpoint_set_interface_identifier();
  *a2 = tb_service_connection_create_with_endpoint();
  return tb_service_connection_activate();
}

uint64_t sub_1000C48E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(*(a1 + 32) + 8);
  v4 = tb_service_connection_message_configure_reply();
  if (!v4)
  {
    if (v2 >= 5)
    {
      sub_10010E184(v2);
    }

    tb_message_encode_u8();
    *(v3 + 32) = 1;
  }

  return v4;
}

uint64_t sub_1000C4958(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(*(a1 + 32) + 8);
  v4 = tb_service_connection_message_configure_reply();
  if (!v4)
  {
    if (v2 >= 5)
    {
      sub_10010E184(v2);
    }

    tb_message_encode_u8();
    *(v3 + 32) = 1;
  }

  return v4;
}

uint64_t sub_1000C49CC(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = tb_service_connection_message_configure_reply();
  if (!v4)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_f64();
    tb_message_raw_encode_u8();
    tb_message_raw_encode_u8();
    *(v3 + 32) = 1;
  }

  return v4;
}

uint64_t sub_1000C4A68(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(*(a1 + 32) + 8);
  v4 = tb_service_connection_message_configure_reply();
  if (!v4)
  {
    if (v2 >= 5)
    {
      sub_10010E184(v2);
    }

    tb_message_encode_u8();
    *(v3 + 32) = 1;
  }

  return v4;
}

uint64_t sub_1000C4AE4(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 1) >= 3)
  {
    sub_10010E1C8(v1);
  }

  return *&a1[qword_10015CEE8[(v1 - 1)]];
}

uint64_t sub_1000C4B20(void *a1, uint64_t a2)
{
  result = *a1;
  switch(result)
  {
    case 1:
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      tb_transport_message_buffer_wrap_buffer();
      if (tb_message_construct())
      {
        sub_10010E248();
      }

      result = tb_message_configure_received();
      if (a1[3])
      {
        v7 = 0;
        do
        {
          v9 = 0;
          memset(v8, 0, sizeof(v8));
          if (sub_1000C26B4(v10, v8))
          {
            sub_10010E284();
          }

          result = (*(a2 + 16))(a2, v7++, v8);
        }

        while (v7 < a1[3]);
      }

      break;
    case 2:
      result = tb_message_subrange();
      if (result)
      {
        sub_10010E20C();
      }

      break;
    case 3:
      if (a1[2])
      {
        v5 = 0;
        v6 = 0;
        do
        {
          result = (*(a2 + 16))(a2, v6++, a1[1] + v5);
          v5 += 88;
        }

        while (v6 < a1[2]);
      }

      break;
    default:
      sub_10010E2C0(result);
  }

  return result;
}

uint64_t sub_1000C4CFC(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v4 = 0;
    do
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      if (sub_1000C26B4(a2, v6))
      {
        sub_10010E304();
      }

      (*(*(a1 + 32) + 16))();
      ++v4;
    }

    while (v4 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t sub_1000C4D98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a2;
    v8 = a3;
    do
    {
      v6 += sub_1000C228C(v7);
      v7 += 11;
      --v8;
    }

    while (v8);
    v9 = tb_owned_buffer_allocate();
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    tb_transport_message_buffer_wrap_buffer();
    result = tb_message_construct();
    if (!result)
    {
      v11 = a3;
      do
      {
        sub_1000C228C(v5);
        tb_message_precheck_encoding();
        sub_1000C5D80(v12, v5);
        tb_message_raw_encode_u64();
        tb_message_raw_encode_u8();
        v5 += 11;
        --v11;
      }

      while (v11);
      tb_message_destruct();
      result = 0;
      *a1 = 1;
      *(a1 + 8) = v9;
      *(a1 + 16) = v6;
      *(a1 + 24) = a3;
    }
  }

  else
  {
    result = 0;
    *a1 = 3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1000C4F04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v6 = tb_client_connection_message_construct();
  if (!v6)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    if (v5 >= 2)
    {
      sub_10010DDA8(v5);
    }

    tb_message_raw_encode_u8();
    if ((v4 | 2) != 6)
    {
      sub_10010DE30(v4);
    }

    tb_message_raw_encode_u8();
    tb_message_raw_encode_f64();
    tb_message_raw_encode_u8();
    tb_message_raw_encode_u8();
    tb_message_complete();
    v6 = tb_connection_send_query();
    tb_client_connection_message_destruct();
  }

  return v6;
}

uint64_t sub_1000C5074(void *a1, unsigned __int8 *a2, unsigned __int16 *a3)
{
  *&v7 = 0;
  *(&v7 + 1) = &v7;
  v8 = 0x2000000000uLL;
  *&v18 = _NSConcreteStackBlock;
  *(&v18 + 1) = 0x40000000;
  *&v19 = sub_1000C6464;
  *(&v19 + 1) = &unk_10018A1E8;
  *&v20 = &v7;
  sub_1000C4B20(a2, &v18);
  _Block_object_dispose(&v7, 8);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = tb_client_connection_message_construct();
  if (!v4)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    sub_1000C4AE4(a2);
    tb_message_raw_encode_u64();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_1000C64A0;
    v13[3] = &unk_10018A210;
    v13[4] = &v14;
    v13[5] = &v7;
    sub_1000C4B20(a2, v13);
    v5 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
    if (v5)
    {
      sub_10010E340();
    }

    tb_message_raw_encode_u32();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_raw_encode_u16();
    tb_message_complete();
    v13[0] = 0;
    v4 = tb_connection_send_query();
    tb_client_connection_message_destruct();
  }

  return v4;
}

uint64_t sub_1000C5308(void *a1, unsigned __int8 *a2)
{
  *&v5 = 0;
  *(&v5 + 1) = &v5;
  v6 = 0x2000000000uLL;
  *&v16 = _NSConcreteStackBlock;
  *(&v16 + 1) = 0x40000000;
  *&v17 = sub_1000C632C;
  *(&v17 + 1) = &unk_10018A180;
  *&v18 = &v5;
  sub_1000C2FD0(a2, &v16);
  _Block_object_dispose(&v5, 8);
  *&v5 = 0;
  *(&v5 + 1) = &v5;
  v6 = 0x2000000000uLL;
  *&v16 = _NSConcreteStackBlock;
  *(&v16 + 1) = 0x40000000;
  *&v17 = sub_1000C632C;
  *(&v17 + 1) = &unk_10018A180;
  *&v18 = &v5;
  sub_1000C2FD0(a2 + 5, &v16);
  _Block_object_dispose(&v5, 8);
  *&v5 = 0;
  *(&v5 + 1) = &v5;
  v6 = 0x2000000000uLL;
  *&v16 = _NSConcreteStackBlock;
  *(&v16 + 1) = 0x40000000;
  *&v17 = sub_1000C632C;
  *(&v17 + 1) = &unk_10018A180;
  *&v18 = &v5;
  sub_1000C2FD0(a2 + 10, &v16);
  _Block_object_dispose(&v5, 8);
  *&v5 = 0;
  *(&v5 + 1) = &v5;
  v6 = 0x2000000000uLL;
  *&v16 = _NSConcreteStackBlock;
  *(&v16 + 1) = 0x40000000;
  *&v17 = sub_1000C632C;
  *(&v17 + 1) = &unk_10018A180;
  *&v18 = &v5;
  sub_1000C2FD0(a2 + 15, &v16);
  _Block_object_dispose(&v5, 8);
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    sub_1000C2F94(a2);
    tb_message_raw_encode_u64();
    v11 = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1000C6344;
    v14 = &unk_10018A1A0;
    v15 = &v5;
    sub_1000C2FD0(a2, &v11);
    sub_1000C2F94(a2 + 40);
    tb_message_raw_encode_u64();
    v11 = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1000C6344;
    v14 = &unk_10018A1A0;
    v15 = &v5;
    sub_1000C2FD0(a2 + 5, &v11);
    sub_1000C2F94(a2 + 80);
    tb_message_raw_encode_u64();
    v11 = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1000C6344;
    v14 = &unk_10018A1A0;
    v15 = &v5;
    sub_1000C2FD0(a2 + 10, &v11);
    sub_1000C2F94(a2 + 120);
    tb_message_raw_encode_u64();
    v11 = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1000C6344;
    v14 = &unk_10018A1A0;
    v15 = &v5;
    sub_1000C2FD0(a2 + 15, &v11);
    tb_message_complete();
    v11 = 0;
    v3 = tb_connection_send_query();
    tb_client_connection_message_destruct();
  }

  return v3;
}

uint64_t sub_1000C5718(uint64_t *a1, uint64_t a2)
{
  tb_endpoint_set_interface_identifier();
  v3 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1000C576C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  tb_endpoint_set_interface_identifier();
  result = tb_client_connection_create_with_endpoint_static();
  if (!result)
  {
    result = tb_client_connection_activate();
    if (!result)
    {
      *a1 = a3;
    }
  }

  return result;
}

uint64_t sub_1000C5804(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  tb_endpoint_set_interface_identifier();
  *a2 = tb_service_connection_create_with_endpoint();
  return tb_service_connection_activate();
}

uint64_t sub_1000C5D80(uint64_t a1, void *a2)
{
  tb_message_raw_encode_u64();
  v4 = *a2;
  if (*a2 <= 0xD3A101E500811121)
  {
    if (v4 <= 0xAD93ADE4DBB03D19)
    {
      if (v4 == 0x819EE7A36A163403)
      {
        if (*(a2 + 8) >= 2u)
        {
          sub_10010DDA8(*(a2 + 8));
        }

        tb_message_raw_encode_u8();
        if ((*(a2 + 9) | 2) != 6)
        {
          sub_10010DE30(*(a2 + 9));
        }

        tb_message_raw_encode_u8();
        tb_message_raw_encode_f64();
        tb_message_raw_encode_u8();
        tb_message_raw_encode_u8();
        goto LABEL_29;
      }

      if (v4 != 0x82DE86373BBB55A7)
      {
        goto LABEL_46;
      }

      v5 = *(a2 + 8);
      if (v5 != 1)
      {
        sub_10010E4AC(v5);
      }

      tb_message_raw_encode_u8();
      if (*(a2 + 9) >= 2u)
      {
        sub_10010DDA8(*(a2 + 9));
      }

      goto LABEL_44;
    }

    if (v4 != 0xAD93ADE4DBB03D1ALL)
    {
      if (v4 == 0xD1302E1D19C591FFLL)
      {
        if (*(a2 + 8) >= 2u)
        {
          sub_10010DDA8(*(a2 + 8));
        }

        tb_message_raw_encode_u8();
        if ((*(a2 + 9) | 2) != 6)
        {
          sub_10010DE30(*(a2 + 9));
        }

        tb_message_raw_encode_u8();
        if ((*(a2 + 10) - 1) >= 2u)
        {
          sub_10010E4F0(*(a2 + 10));
        }

        goto LABEL_29;
      }

      goto LABEL_46;
    }

    if ((*(a2 + 8) - 1) >= 2u)
    {
      sub_10010E4F0(*(a2 + 8));
    }

    goto LABEL_36;
  }

  if (v4 <= 0x2C1838C7180DE40BLL)
  {
    if (v4 != 0xD3A101E500811122)
    {
      if (v4 == 0xE63B9D553865CA75)
      {
        if (*(a2 + 8) >= 2u)
        {
          sub_10010DDA8(*(a2 + 8));
        }

        tb_message_raw_encode_u8();
        if ((*(a2 + 9) | 2) != 6)
        {
          sub_10010DE30(*(a2 + 9));
        }

        goto LABEL_25;
      }

LABEL_46:
      sub_10010E534(v4);
    }

    if (*(a2 + 8) >= 2u)
    {
      sub_10010DDA8(*(a2 + 8));
    }

    tb_message_raw_encode_u8();
    if ((*(a2 + 9) | 2) != 6)
    {
      sub_10010DE30(*(a2 + 9));
    }

LABEL_36:
    tb_message_raw_encode_u8();

    return tb_message_raw_encode_u32();
  }

  if (v4 != 0x2C1838C7180DE40CLL)
  {
    if (v4 != 0x3076094B707DB4ECLL)
    {
      if (v4 == 0x7EA08A839B5CA7A1)
      {
        if (*(a2 + 8) >= 2u)
        {
          sub_10010DDA8(*(a2 + 8));
        }

        tb_message_raw_encode_u8();
        if ((*(a2 + 9) | 2) != 6)
        {
          sub_10010DE30(*(a2 + 9));
        }

LABEL_25:
        tb_message_raw_encode_u8();
        tb_message_raw_encode_f64();
        tb_message_raw_encode_u8();
LABEL_29:

        return tb_message_raw_encode_u8();
      }

      goto LABEL_46;
    }

    v8 = *(a2 + 8);
    if (v8 != 1)
    {
      sub_10010E4AC(v8);
    }

    tb_message_raw_encode_u8();
    if (*(a2 + 9) >= 2u)
    {
      sub_10010DDA8(*(a2 + 9));
    }

LABEL_44:
    tb_message_raw_encode_u8();
    sub_1000C1884(a2 + 16);
    tb_message_raw_encode_u64();
    v9 = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000C62C4;
    v12 = &unk_10018A138;
    v13 = a1;
    sub_1000C18C0(a2 + 2, &v9);
    tb_message_raw_encode_s32();
    tb_message_raw_encode_u32();
    tb_message_raw_encode_s16();
    tb_message_raw_encode_s8();
    return tb_message_raw_encode_s8();
  }

  v7 = *(a2 + 8);
  if (v7 != 1)
  {
    sub_10010E4AC(v7);
  }

  tb_message_raw_encode_u8();
  if (*(a2 + 9) >= 2u)
  {
    sub_10010DDA8(*(a2 + 9));
  }

  tb_message_raw_encode_u8();
  sub_1000C1884(a2 + 16);
  tb_message_raw_encode_u64();
  v9 = _NSConcreteStackBlock;
  v10 = 0x40000000;
  v11 = sub_1000C62C4;
  v12 = &unk_10018A138;
  v13 = a1;
  sub_1000C18C0(a2 + 2, &v9);
  tb_message_raw_encode_s32();
  tb_message_raw_encode_u32();
  tb_message_raw_encode_s16();
  tb_message_raw_encode_s8();
  tb_message_raw_encode_s8();
  return tb_message_raw_encode_u32();
}

uint64_t sub_1000C62D0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    do
    {
      tb_message_decode_u8();
      ++v2;
    }

    while (v2 < *(a1 + 32));
  }

  return 0;
}

uint64_t sub_1000C6350(uint64_t a1, uint64_t a2)
{
  tb_message_decode_u64();
  result = tb_message_measure_subrange();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    *(a2 + 8) = a1;
    *(a2 + 32) = 0;
    v5 = 2;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1000C6408(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    do
    {
      tb_message_decode_u32();
      ++v2;
    }

    while (v2 < *(a1 + 32));
  }

  return 0;
}

uint64_t sub_1000C6464(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1000C228C(a3);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000C64A0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000C5D80(*(a1 + 40), a3);
  tb_message_raw_encode_u64();
  result = tb_message_raw_encode_u8();
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t sub_1000C6500(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    result = sub_1000C26B4(*(a1 + 40), v4);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a1 + 32))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C6578(mach_port_t a1, mach_msg_timeout_t timeout)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x737A800000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 17, 0x18u, 0, 0, timeout, 0);
  if (v3 == 268435460)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(mach_task_self_, msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

unint64_t sub_1000C666C()
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((swift_isaMask & *v0) + 0x78);
  if ((v8)(v5))
  {
    v1 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    v2 = *((swift_isaMask & *v0) + 0x90);
    v9 = (swift_isaMask & *v0) + 144;
    v10 = v2();
    v30[1] = v9;
    if (v10 < v1)
    {
      result = v2();
      v12 = v1 - result;
      if (v1 >= result)
      {
        result = v8();
        v13 = result + v12;
        if (!__CFADD__(result, v12))
        {
          sub_100006B18();
          v14 = v0;
          v15 = static OS_os_log.default.getter();
          v16 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = v2;
            v19 = v17;
            *v17 = 134219008;
            *(v17 + 4) = v13;
            v30[0] = v12;
            *(v17 + 12) = 2048;
            *(v17 + 14) = v1;
            *(v17 + 22) = 2048;
            *(v17 + 24) = v18();
            *(v19 + 32) = 2048;
            *(v19 + 34) = v8();

            *(v19 + 42) = 2048;
            *(v19 + 44) = v30[0] / 0x3B9ACA00uLL;
            _os_log_impl(&_mh_execute_header, v15, v16, "Calculated server time in nanoseconds %llu {currentMonotonicTimeInNanoSeconds: %llu, alignedMonotonicTimeInNanoSeconds: %llu, mostRecentServerTimeInNanoSeconds: %llu, changeInSeconds: %llu}", v19, 0x34u);
          }

          else
          {
          }

          return v13;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    goto LABEL_11;
  }

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v21 = v20;
  v22 = *(v4 + 8);
  v4 += 8;
  result = v22(v7, v3);
  v23 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v23 <= -1.0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v23 < 1.84467441e19)
  {
    return v23;
  }

  __break(1u);
LABEL_11:
  v30[0] = v2;
  sub_100006B18();
  v24 = v0;
  v25 = static OS_os_log.default.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = v1;
    *(v27 + 12) = 2048;
    *(v27 + 14) = (v30[0])();

    _os_log_impl(&_mh_execute_header, v25, v26, "Monotonic time has rolled back -- reverting to system clock time! {currentMonotonicTimeInNanoSeconds: %llu, alignedMonotonicTimeInNanoSeconds: %llu}", v27, 0x16u);
  }

  else
  {

    v25 = v24;
  }

  (*((swift_isaMask & v24->isa) + 0x80))(0);
  (*((swift_isaMask & v24->isa) + 0x98))(0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v29 = v28;
  result = (*(v4 + 8))(v7, v3);
  v23 = v29 * 1000000000.0;
  if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v23 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v23 < 1.84467441e19)
  {
    return v23;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1000C6B1C(unint64_t a1)
{
  if (!is_mul_ok(a1, 0xF4240uLL))
  {
    __break(1u);
    return;
  }

  v2 = 1000000 * a1;
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (v2 >= v3)
  {
    (*((swift_isaMask & *v1) + 0x80))(v2);
    (*((swift_isaMask & *v1) + 0x98))(v3);
    sub_100006B18();
    oslog = static OS_os_log.default.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134218240;
      *(v5 + 4) = v2;
      *(v5 + 12) = 2048;
      *(v5 + 14) = v3;
      v6 = "Updated stored server time {serverTime: %llu, localTime: %llu}";
      goto LABEL_7;
    }
  }

  else
  {
    sub_100006B18();
    oslog = static OS_os_log.default.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134218240;
      *(v5 + 4) = v2;
      *(v5 + 12) = 2048;
      *(v5 + 14) = v3;
      v6 = "Did not update stored server time, nonsensical values! {serverTime: %llu, localTime: %llu}";
LABEL_7:
      _os_log_impl(&_mh_execute_header, oslog, v4, v6, v5, 0x16u);
    }
  }
}

unint64_t sub_1000C6DA8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((swift_isaMask & *v0) + 0x78);
  if ((v6)(v3))
  {
    v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    v8 = *((swift_isaMask & *v0) + 0x90);
    result = v8();
    v10 = v7 - result;
    if (v7 < result)
    {
      __break(1u);
    }

    else
    {
      result = v6();
      if (!__CFADD__(result, v10))
      {
        v31 = result + v10;
        v33 = 0;
        v34 = 0xE000000000000000;
        _StringGuts.grow(_:)(206);
        v11._countAndFlagsBits = 0xD000000000000019;
        v11._object = 0x8000000100155ED0;
        String.append(_:)(v11);
        v32 = (*((swift_isaMask & *v0) + 0x60))();
        v30 = v10;
        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v12);

        v13._object = 0x8000000100155EF0;
        v13._countAndFlagsBits = 0xD000000000000024;
        String.append(_:)(v13);
        v32 = v7;
        v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v14);

        v15._object = 0x8000000100155F20;
        v15._countAndFlagsBits = 0xD000000000000024;
        String.append(_:)(v15);
        v32 = v8();
        v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v16);

        v17._object = 0x8000000100155F50;
        v17._countAndFlagsBits = 0xD000000000000024;
        String.append(_:)(v17);
        v32 = v6();
        v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v18);

        v19._countAndFlagsBits = 0xD000000000000012;
        v19._object = 0x8000000100155F80;
        String.append(_:)(v19);
        v32 = v30 / 0x3B9ACA00;
        v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v20);

        v21._countAndFlagsBits = 0xD00000000000002ALL;
        v21._object = 0x8000000100155FA0;
        String.append(_:)(v21);
        v32 = v31;
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v23._countAndFlagsBits = 62;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);
        return v33;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v25 = v24;
  result = (*(v2 + 8))(v5, v1);
  v26 = v25 * 1000000000.0;
  if (COERCE__INT64(fabs(v25 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v26 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v26 < 1.84467441e19)
  {
    v27 = v26;
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v33 = 0xD00000000000002DLL;
    v34 = 0x8000000100155EA0;
    v32 = v27;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    return v33;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000C7258()
{
  v1 = OBJC_IVAR___APSServerTimeTracker__mostRecentServerTimeInNanoSeconds;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000C729C(uint64_t a1)
{
  v3 = OBJC_IVAR___APSServerTimeTracker__mostRecentServerTimeInNanoSeconds;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000C7350()
{
  v1 = OBJC_IVAR___APSServerTimeTracker__alignedMonotonicTimeInNanoSeconds;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000C7394(uint64_t a1)
{
  v3 = OBJC_IVAR___APSServerTimeTracker__alignedMonotonicTimeInNanoSeconds;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ClientIdentityMetric.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1000C7478()
{
  *&v0[OBJC_IVAR___APSServerTimeTracker__mostRecentServerTimeInNanoSeconds] = 0;
  *&v0[OBJC_IVAR___APSServerTimeTracker__alignedMonotonicTimeInNanoSeconds] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerTimeTracker();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000C751C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerTimeTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000C7578(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___APSAliasUserIdentityProvider_mainUserIdentityProvider] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1000C75C8(uint64_t a1)
{
  *&v1[OBJC_IVAR___APSAliasUserIdentityProvider_mainUserIdentityProvider] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AliasUserIdentityProvider();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000C76E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AliasUserIdentityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000C7818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void *, void))
{
  if (a3)
  {
    return a3(0, &_swiftEmptyArrayStorage, 0);
  }

  return result;
}

uint64_t sub_1000C7BE8(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 0);
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

id sub_1000C7CC0()
{
  result = *(v0 + OBJC_IVAR___APSAliasUserIdentityProvider_mainUserIdentityProvider);
  if (result)
  {
    return [result noteInvalidServerPresence];
  }

  __break(1u);
  return result;
}

SEL *sub_1000C7EF0(SEL *result)
{
  if (*(v1 + OBJC_IVAR___APSAliasUserIdentityProvider_mainUserIdentityProvider))
  {
    return [*(v1 + OBJC_IVAR___APSAliasUserIdentityProvider_mainUserIdentityProvider) *result];
  }

  __break(1u);
  return result;
}

id sub_1000C7F1C(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(a1 + OBJC_IVAR___APSAliasUserIdentityProvider_mainUserIdentityProvider);
  if (result)
  {
    return [result *a3];
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C80C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000C92E4;

  return v6();
}

uint64_t sub_1000C81A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000C8290;

  return v7();
}

uint64_t sub_1000C8290()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000C8384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C8C30(&unk_1001BCA60, &qword_10015D240);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000C9258(a3, v23 - v10, &unk_1001BCA60, &qword_10015D240);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000C91F8(v11, &unk_1001BCA60, &qword_10015D240);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000C91F8(a3, &unk_1001BCA60, &qword_10015D240);

    return v21;
  }

LABEL_8:
  sub_1000C91F8(a3, &unk_1001BCA60, &qword_10015D240);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1000C8680(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000C8778;

  return v6(a1);
}

uint64_t sub_1000C8778()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000C8870(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000C88E8(a1, a2, v4);
}

unint64_t sub_1000C88E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000C89A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C8C30(&unk_1001BCA80, &unk_10015D040);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000C9258(v4, &v13, &qword_1001BCA78, qword_10015D2E0);
      v5 = v13;
      v6 = v14;
      result = sub_1000C8870(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000C92C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000C8AD0()
{
  sub_1000C8C30(&qword_1001BCA70, &unk_10015D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10015CF40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000001ELL;
  *(inited + 56) = 0x80000001001562B0;
  sub_1000C89A0(inited);
  swift_setDeallocating();
  sub_1000C91F8(inited + 32, &qword_1001BCA78, qword_10015D2E0);
  v2 = objc_allocWithZone(NSError);
  v3 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 initWithDomain:v3 code:0 userInfo:isa];

  return swift_willThrow();
}

uint64_t sub_1000C8C30(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000C8C78()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C8290;

  return sub_1000C92F0(v2);
}

uint64_t sub_1000C8D24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C92E4;

  return sub_1000C80C0(v2, v3, v4);
}

uint64_t sub_1000C8DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000C92E4;

  return sub_1000C81A8(a1, v4, v5, v6);
}

uint64_t sub_1000C8EB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C92E4;

  return sub_1000C8680(a1, v4);
}

uint64_t sub_1000C8F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C8290;

  return sub_1000C8680(a1, v4);
}

uint64_t sub_1000C9020()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C92E4;

  return sub_1000C7BE8(v2);
}

uint64_t sub_1000C90CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C910C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C92E4;

  return sub_1000C92EC(v2);
}

uint64_t sub_1000C91B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C91F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000C8C30(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000C9258(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000C8C30(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1000C92C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_1000C92F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    a1 = a2;
  }

  return *&a1;
}

BOOL sub_1000C9304(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = *&a1 == *&a5;
  if ((a8 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = *&a1 == *&a5;
  if (*&a2 != *&a6)
  {
    v9 = 0;
  }

  if (a3 != a7)
  {
    v9 = 0;
  }

  if (a8)
  {
    v9 = 0;
  }

  if (a4)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

BOOL sub_1000C9354(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && v2 == v3;
  }

  if (*(a2 + 24))
  {
    return 0;
  }

  v5 = v2 == v3;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v5 = 0;
  }

  return *(a1 + 16) == *(a2 + 16) && v5;
}

uint64_t sub_1000C93E8()
{
  v1 = v0 + OBJC_IVAR___APSDefaultConnectionRetryStateManager_currentPhase;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1000C9438(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR___APSDefaultConnectionRetryStateManager_currentPhase;
  result = swift_beginAccess();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  return result;
}

uint64_t sub_1000C9550(uint64_t a1)
{
  v3 = OBJC_IVAR___APSDefaultConnectionRetryStateManager_remainingPhases;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000C9620(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___APSDefaultConnectionRetryStateManager_timeRemainingInPhase;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1000C96EC(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1000C9734(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___APSDefaultConnectionRetryStateManager_remainingPresences;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void sub_1000C9848(uint64_t a1)
{
  v3 = OBJC_IVAR___APSDefaultConnectionRetryStateManager_retryPhases;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {

    v6 = *_emptyDequeStorage.unsafeMutableAddressor();

    goto LABEL_9;
  }

  sub_1000C8C30(&qword_1001BCB20, &qword_10015D0A0);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v8 = v7 - 40;
  if (v7 < 40)
  {
    v8 = v7 - 9;
  }

  v6[2] = v8 >> 5;
  v6[3] = 0;
  v6[4] = 0;
  v9 = *(v4 + 16);
  if (!v9)
  {
LABEL_7:
    v6[3] = v5;
LABEL_9:
    (*((swift_isaMask & *v1) + 0xA8))(v6);
    sub_1000CAE9C();
    return;
  }

  if (v9 <= v5)
  {
    memcpy(v6 + 5, (v4 + 32), 32 * v9);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t (*sub_1000C9988(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APSDefaultConnectionRetryStateManager_retryPhases;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1000C9A10;
}

void sub_1000C9A10(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = *(v4 + 16);
    if (v5)
    {
      sub_1000C8C30(&qword_1001BCB20, &qword_10015D0A0);
      v6 = swift_allocObject();
      v7 = j__malloc_size(v6);
      v8 = v7 - 40;
      if (v7 < 40)
      {
        v8 = v7 - 9;
      }

      v6[2] = v8 >> 5;
      v6[3] = 0;
      v6[4] = 0;
      v9 = *(v4 + 16);
      if (v9)
      {
        if (v9 > v5)
        {
          __break(1u);
          return;
        }

        memcpy(v6 + 5, (v4 + 32), 32 * v9);
      }

      v6[3] = v5;
    }

    else
    {

      v6 = *_emptyDequeStorage.unsafeMutableAddressor();
    }

    (*((swift_isaMask & *v3[3]) + 0xA8))(v6);
    sub_1000CAE9C();
  }

  free(v3);
}

uint64_t sub_1000C9B4C()
{
  v1 = OBJC_IVAR___APSDefaultConnectionRetryStateManager_connectionAttemptTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000C9B90(uint64_t a1)
{
  v3 = OBJC_IVAR___APSDefaultConnectionRetryStateManager_connectionAttemptTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1000C9CE0()
{
  v1 = COERCE_DOUBLE((*((swift_isaMask & *v0) + 0x88))());
  if (v3 == -1)
  {
    return 0.0;
  }

  if (v3)
  {
    return v1;
  }

  return v2;
}

BOOL sub_1000C9E3C()
{
  *&v1 = COERCE_DOUBLE((*((swift_isaMask & *v0) + 0x88))());
  if (v3 == -1)
  {
    sub_100006B18();
    v6 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  else
  {
    if (v3)
    {
      v4 = *&v1;
    }

    else
    {
      v4 = v2;
    }

    return v4 > 0.0;
  }
}

uint64_t sub_1000C9FC0()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for DefaultsDebugOverrides();
  v1 = ClientIdentityMetric.__allocating_init()();
  v2 = (*(ObjectType + 296))(v1);
  swift_deallocPartialClassInstance();
  return v2;
}

int64_t sub_1000CA0E0(void *a1)
{
  v3 = &v1[OBJC_IVAR___APSDefaultConnectionRetryStateManager_currentPhase];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = -1;
  *&v1[OBJC_IVAR___APSDefaultConnectionRetryStateManager_remainingPhases] = 0;
  v4 = &v1[OBJC_IVAR___APSDefaultConnectionRetryStateManager_timeRemainingInPhase];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR___APSDefaultConnectionRetryStateManager_remainingPresences];
  *v5 = 0;
  v5[8] = 1;
  *&v1[OBJC_IVAR___APSDefaultConnectionRetryStateManager_retryPhases] = &off_10018A4E0;
  *&v1[OBJC_IVAR___APSDefaultConnectionRetryStateManager_connectionAttemptTime] = 0;
  *&v1[OBJC_IVAR___APSDefaultConnectionRetryStateManager_defaults] = a1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for DefaultConnectionRetryStateManager();
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v20, "init");
  v7 = [a1 connectionRetryPhases];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = (*((swift_isaMask & *v6) + 0x130))(v9);

    v11 = OBJC_IVAR___APSDefaultConnectionRetryStateManager_retryPhases;
    swift_beginAccess();
    *(v6 + v11) = v10;
  }

  v12 = OBJC_IVAR___APSDefaultConnectionRetryStateManager_retryPhases;
  swift_beginAccess();
  v13 = *(v6 + v12);
  v14 = *(v13 + 16);
  if (!v14)
  {

    v15 = *_emptyDequeStorage.unsafeMutableAddressor();

    goto LABEL_11;
  }

  sub_1000C8C30(&qword_1001BCB20, &qword_10015D0A0);
  v15 = swift_allocObject();
  result = j__malloc_size(v15);
  v17 = result - 40;
  if (result < 40)
  {
    v17 = result - 9;
  }

  v15[2] = v17 >> 5;
  v15[3] = 0;
  v15[4] = 0;
  v18 = *(v13 + 16);
  if (!v18)
  {
LABEL_9:
    v15[3] = v14;
LABEL_11:
    v19 = OBJC_IVAR___APSDefaultConnectionRetryStateManager_remainingPhases;
    swift_beginAccess();
    *(v6 + v19) = v15;

    sub_1000CAE9C();

    swift_unknownObjectRelease();
    return v6;
  }

  if (v18 <= v14)
  {
    memcpy(v15 + 5, (v13 + 32), 32 * v18);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

char *sub_1000CA388(unint64_t a1)
{
  v4 = v1;
  if (!*(a1 + 16))
  {
    return (*((swift_isaMask & *v4) + 0xE8))(a1);
  }

  v5 = a1;
  a1 = sub_1000C8870(0x68702D7972746572, 0xEC00000073657361);
  if ((v6 & 1) == 0)
  {
    return (*((swift_isaMask & *v4) + 0xE8))(a1);
  }

  sub_100006C70(*(v5 + 56) + 32 * a1, v35);
  sub_1000C8C30(&qword_1001BCB30, &qword_10015D0A8);
  a1 = swift_dynamicCast();
  if ((a1 & 1) == 0)
  {
    return (*((swift_isaMask & *v4) + 0xE8))(a1);
  }

  if (!*(v5 + 16) || (v7 = sub_1000C8870(0x68702D6C616E6966, 0xEB00000000657361), (v8 & 1) == 0) || (sub_100006C70(*(v5 + 56) + 32 * v7, v35), sub_1000C8C30(&qword_1001BCB38, qword_10015D0B0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_22:

    return (*((swift_isaMask & *v4) + 0xE8))(a1);
  }

  v9 = *(v34 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = &_swiftEmptyArrayStorage;
    while (v10 < *(v34 + 16))
    {
      v12 = v11;
      v13 = *(v34 + 8 * v10 + 32);
      v14 = *(v13 + 16);

      if (!v14 || (v15 = sub_1000C8870(0x6E6F697461727564, 0xE800000000000000), (v16 & 1) == 0) || !*(v13 + 16) || (v17 = *(*(v13 + 56) + 8 * v15), v18 = sub_1000C8870(0x79616C6564, 0xE500000000000000), (v19 & 1) == 0) || !*(v13 + 16) || (v2 = *(*(v13 + 56) + 8 * v18), v20 = sub_1000C8870(0x65636E6573657270, 0xE900000000000073), (v21 & 1) == 0))
      {

        goto LABEL_22;
      }

      v22 = *(*(v13 + 56) + 8 * v20);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1000CB184(0, *(v12 + 2) + 1, 1, v12);
      }

      v11 = v12;
      v23 = *(v12 + 2);
      v24 = *(v11 + 3);
      if (v23 >= v24 >> 1)
      {
        v11 = sub_1000CB184((v24 > 1), v23 + 1, 1, v11);
      }

      ++v10;
      *(v11 + 2) = v23 + 1;
      v25 = &v11[32 * v23];
      *(v25 + 4) = v17;
      *(v25 + 5) = v2;
      *(v25 + 6) = v22;
      v25[56] = 0;
      if (v9 == v10)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v11 = &_swiftEmptyArrayStorage;
LABEL_26:
  v2 = v11;

  if (!*(v34 + 16) || (v27 = sub_1000C8870(0x79616C6564, 0xE500000000000000), (v28 & 1) == 0))
  {

    goto LABEL_22;
  }

  v3 = *(*(v34 + 56) + 8 * v27);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v2 = sub_1000CB184(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = v3;
  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1000CB184((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[32 * v31];
  *(v32 + 4) = v29;
  *(v32 + 5) = 0;
  *(v32 + 6) = 0;
  v32[56] = 1;
  sub_100006B18();
  v33 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return v2;
}

uint64_t sub_1000CA798()
{
  v1 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v2 = *((swift_isaMask & *v0) + 0x108);

  return v2(v1);
}

void sub_1000CA964()
{
  v1 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v2 = *((swift_isaMask & *v0) + 0x100);
  if (v2())
  {
    if (v2() < v1)
    {
      v3 = (*((swift_isaMask & *v0) + 0xB8))();
      if ((v4 & 1) == 0)
      {
        v5 = *&v3;
        v6 = v2();
        if (v1 < v6)
        {
          __break(1u);
        }

        else
        {
          v7 = (v1 - v6) / 1000000000.0;
          if (v7 >= v5)
          {

            sub_1000CAE9C();
          }

          else
          {
            v8 = *((swift_isaMask & *v0) + 0xC0);

            (v8)(v5 - v7, 0);
          }
        }
      }
    }
  }
}

void sub_1000CAB20()
{
  v1 = (*((swift_isaMask & *v0) + 0xE8))();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000C8C30(&qword_1001BCB20, &qword_10015D0A0);
    v3 = swift_allocObject();
    v4 = j__malloc_size(v3);
    v5 = v4 - 40;
    if (v4 < 40)
    {
      v5 = v4 - 9;
    }

    v3[2] = v5 >> 5;
    v3[3] = 0;
    v3[4] = 0;
    v6 = *(v1 + 16);
    if (v6)
    {
      if (v6 > v2)
      {
        __break(1u);
        return;
      }

      memcpy(v3 + 5, (v1 + 32), 32 * v6);
    }

    v3[3] = v2;
  }

  else
  {
    v3 = *_emptyDequeStorage.unsafeMutableAddressor();
  }

  (*((swift_isaMask & *v0) + 0xA8))(v3);

  sub_1000CAE9C();
}

void sub_1000CACA4()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0xD0))();
  if ((v3 & 1) == 0)
  {
    v4 = v2;
    sub_100006B18();
    v5 = static OS_os_log.default.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "Noting a presence failure, remaining presences %ld", v7, 0xCu);
    }

    v8 = __OFSUB__(v4, 1);
    v9 = v4 - 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      (*((swift_isaMask & *v1) + 0xD8))(v9, 0);
      if (v9 <= 0)
      {
        v10 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_1000CAE9C();
      }
    }
  }
}

void sub_1000CAE9C()
{
  v1 = v0;
  v3 = (*((swift_isaMask & *v0) + 0xB0))(v16);
  if (!*v2)
  {
    goto LABEL_16;
  }

  if (*(*v2 + 24) < 1)
  {
    v3(v16, 0);
    sub_100006B18();
    v15 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v4 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000CB3B0();
  }

  v5 = *v4;
  v6 = *(*v4 + 32);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v8 = &v5[4 * v6];
  v10 = v8[5];
  v9 = v8[6];
  v11 = v8[7];
  v12 = *(v8 + 64);
  v13 = v5[3];
  if (v7 >= v5[2])
  {
    v7 = 0;
  }

  v5[4] = v7;
  if (__OFSUB__(v13, 1))
  {
    goto LABEL_15;
  }

  v5[3] = v13 - 1;
  v3(v16, 0);
  (*((swift_isaMask & *v1) + 0x90))(v10, v9, v11, v12);
  v14 = *((swift_isaMask & *v1) + 0xC0);
  if (v12)
  {
    v14(0, 1);
    (*((swift_isaMask & *v1) + 0xD8))(0, 1);
  }

  else
  {
    v14(v10, 0);
    (*((swift_isaMask & *v1) + 0xD8))(v11, 0);
  }
}

id sub_1000CB0F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultConnectionRetryStateManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000CB184(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C8C30(&qword_1001BCB68, &qword_10015D140);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t initializeBufferWithCopyOfBuffer for RetryPhase(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for RetryPhase(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RetryPhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RetryPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000CB3B0()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_1000C8C30(&qword_1001BCB20, &qword_10015D0A0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_1000CB450(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

void sub_1000CB450(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[32 * v4], &__src[32 * v4], 32 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 32 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

id sub_1000CB618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___APSUserDependencies_clientIdentityProvider] = a1;
  *&v4[OBJC_IVAR___APSUserDependencies_systemTokenStorage] = a2;
  *&v4[OBJC_IVAR___APSUserDependencies_userPreferences] = a3;
  *&v4[OBJC_IVAR___APSUserDependencies_userAppIDManager] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for UserDependencies();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1000CB798()
{
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(96);
  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x8000000100156620;
  String.append(_:)(v1);
  v15 = *(v0 + OBJC_IVAR___APSUserDependencies_clientIdentityProvider);
  v2 = sub_1000C8C30(&qword_1001BCB90, &unk_10015D148);
  v3._countAndFlagsBits = sub_1000D1C18(&v15, v2);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x8000000100156640;
  String.append(_:)(v4);
  v15 = *(v0 + OBJC_IVAR___APSUserDependencies_systemTokenStorage);
  v5 = sub_1000C8C30(&qword_1001BCB98, &unk_10015D158);
  v6._countAndFlagsBits = sub_1000D1C18(&v15, v5);
  String.append(_:)(v6);

  v7._object = 0x8000000100156660;
  v7._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v7);
  v15 = *(v0 + OBJC_IVAR___APSUserDependencies_userPreferences);
  v8 = sub_1000C8C30(&qword_1001BCC00, &unk_10015D168);
  v9._countAndFlagsBits = sub_1000D1C18(&v15, v8);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000014;
  v10._object = 0x8000000100156680;
  String.append(_:)(v10);
  v15 = *(v0 + OBJC_IVAR___APSUserDependencies_userAppIDManager);
  v11 = sub_1000C8C30(&qword_1001BCC08, qword_10015D178);
  v12._countAndFlagsBits = sub_1000D1C18(&v15, v11);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 15931;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  return v16;
}

id sub_1000CB9E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDependencies();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000CBA18()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v0 initWithUserDefaults:v1];

  return v2;
}

id sub_1000CBA78(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1000CBAC8(uint64_t a1)
{
  *&v1[OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DefaultsDebugOverrides();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000CBB18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultsDebugOverrides();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000CBCE0()
{
  v1 = *(v0 + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

__CFString *sub_1000CBD48(unint64_t a1)
{
  v2 = v1;
  *&v16 = 45;
  *(&v16 + 1) = 0xE100000000000000;
  result = sub_10001B3FC(a1);
  if (result)
  {
    v4 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String.lowercased()();

    String.append(_:)(v5);

    v7 = *(&v16 + 1);
    v6._countAndFlagsBits = v16;
    *&v16 = 0xD00000000000001FLL;
    *(&v16 + 1) = 0x8000000100156A30;
    v6._object = v7;
    String.append(_:)(v6);

    v8 = *(v2 + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      if (swift_dynamicCast())
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000CBF84(&v16);
    }

    v11 = String._bridgeToObjectiveC()();
    v12 = [v8 objectForKey:v11];

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      if (swift_dynamicCast())
      {
LABEL_14:
        sub_1000CBFEC();
        return NSNumber.init(integerLiteral:)(v13).super.super.isa;
      }
    }

    else
    {
      sub_1000CBF84(&v16);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CBF84(uint64_t a1)
{
  v2 = sub_1000C8C30(&qword_1001BCC48, &unk_10015D1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000CBFEC()
{
  result = qword_1001BDB20;
  if (!qword_1001BDB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BDB20);
  }

  return result;
}

NSNumber sub_1000CC0C8()
{
  v1 = *(v0 + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1000CBFEC();
      return NSNumber.init(integerLiteral:)(v5);
    }
  }

  else
  {
    sub_1000CBF84(v8);
  }

  return 0;
}

uint64_t sub_1000CC2C0()
{
  v1 = *(v0 + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dictionaryForKey:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

NSNumber sub_1000CC3AC()
{
  v1 = *(v0 + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1000CBFEC();
      return NSNumber.init(integerLiteral:)(v5);
    }
  }

  else
  {
    sub_1000CBF84(v8);
  }

  return 0;
}

id sub_1000CC520()
{
  v1 = *(v0 + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

id sub_1000CC588()
{
  v1 = *(v0 + OBJC_IVAR___APSDefaultsDebugOverrides_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

id sub_1000CC600(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NoOpClientIdentityProvider();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000CC698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoOpClientIdentityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CC964(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))();
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1000CCB50(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 0);
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1000CCDEC()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1000CCF00;
  v2 = swift_continuation_init();
  v0[17] = sub_1000C8C30(&qword_1001BCC80, qword_10015D208);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000CCFE0;
  v0[13] = &unk_10018A6C0;
  v0[14] = v2;
  [v1 forceIdentityRefresh:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000CCF00()
{

  return _swift_task_switch(sub_1000C7F38, 0, 0);
}

uint64_t sub_1000CCFE0(uint64_t a1)
{
  v1 = *sub_1000CD690((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_1000CD188(const void *a1, void *a2)
{
  *(v2 + 144) = a2;
  *(v2 + 152) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000CD200, 0, 0);
}

uint64_t sub_1000CD200()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1000CD314;
  v2 = swift_continuation_init();
  v0[17] = sub_1000C8C30(&qword_1001BCC80, qword_10015D208);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000CCFE0;
  v0[13] = &unk_10018A7B0;
  v0[14] = v2;
  [v1 forceIdentityRefresh:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000CD314()
{

  return _swift_task_switch(sub_1000CD3F4, 0, 0);
}

uint64_t sub_1000CD3F4()
{
  v1 = *(v0 + 152);

  if (v1)
  {
    v2 = *(v0 + 152);
    v2[2](v2);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CD48C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C8290;

  return sub_1000CD188(v2, v3);
}

uint64_t sub_1000CD538()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C92E4;

  return sub_1000CCB50(v2);
}

uint64_t sub_1000CD5E4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C92E4;

  return sub_1000CC964(v2);
}

void *sub_1000CD690(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Int sub_1000CD72C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000CD770(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000CD8B0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000CD910(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___APSProcessModeUserTracker_responder;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000CD9A8;
}

void sub_1000CD9A8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_1000CDA28(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___APSProcessModeUserTracker_systemModeUser;
  *&v3[v4] = [objc_allocWithZone(APSUser) initUserWithSystemMode:0];
  v5 = OBJC_IVAR___APSProcessModeUserTracker_userModeUser;
  *&v3[v5] = [objc_allocWithZone(APSUser) initUserWithSystemMode:1];
  *&v3[OBJC_IVAR___APSProcessModeUserTracker_multiUserMode] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_1000CDAE8(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___APSProcessModeUserTracker_systemModeUser;
  *&v1[v3] = [objc_allocWithZone(APSUser) initUserWithSystemMode:0];
  v4 = OBJC_IVAR___APSProcessModeUserTracker_userModeUser;
  *&v1[v4] = [objc_allocWithZone(APSUser) initUserWithSystemMode:1];
  *&v1[OBJC_IVAR___APSProcessModeUserTracker_multiUserMode] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ProcessModeUserTracker();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1000CDBC4()
{
  v0 = objc_allocWithZone(APSUser);

  return [v0 initUserWithSystemMode:0];
}

id sub_1000CDC00()
{
  v0 = objc_allocWithZone(APSUser);

  return [v0 initUserWithSystemMode:1];
}

id sub_1000CDCC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessModeUserTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000CDDFC()
{
  v1 = [*&v0[OBJC_IVAR___APSProcessModeUserTracker_multiUserMode] isMultiUser];
  sub_1000C8C30(&qword_1001BCCD0, &unk_10015D320);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10015D310;
    v3 = *&v0[OBJC_IVAR___APSProcessModeUserTracker_systemModeUser];
    *(v2 + 32) = v3;
    v4 = v3;
    *(v2 + 40) = [v0 defaultUser];
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10015D300;
    v5 = *&v0[OBJC_IVAR___APSProcessModeUserTracker_systemModeUser];
    *(v2 + 32) = v5;
    v6 = v5;
  }

  return v2;
}

void sub_1000CDED8()
{
  v1 = [v0 sortedLoggedInUsers];
  sub_1000C8C30(&qword_1001BCCD8, &qword_10015D330);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = *((swift_isaMask & *v0) + 0x70);
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v7 = v5();
            if (!v7)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v6 = *(v2 + 8 * v4 + 32);
            v8 = swift_unknownObjectRetain();
            v7 = (v5)(v8);
            if (!v7)
            {
              goto LABEL_6;
            }
          }

          [v7 setupUser:v6];
          swift_unknownObjectRelease();
LABEL_6:
          swift_unknownObjectRelease();
          if (v3 == ++v4)
          {
            goto LABEL_13;
          }
        }
      }

      __break(1u);
      goto LABEL_28;
    }
  }

LABEL_13:

  v9 = [v0 sortedLoggedInUsers];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_15:
      if (v11 < 1)
      {
LABEL_28:
        __break(1u);
        return;
      }

      v12 = 0;
      v13 = *((swift_isaMask & *v0) + 0x70);
      while ((v10 & 0xC000000000000001) == 0)
      {
        v14 = *(v10 + 8 * v12 + 32);
        v16 = swift_unknownObjectRetain();
        v15 = (v13)(v16);
        if (v15)
        {
          goto LABEL_22;
        }

LABEL_17:
        swift_unknownObjectRelease();
        if (v11 == ++v12)
        {
          goto LABEL_24;
        }
      }

      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = v13();
      if (!v15)
      {
        goto LABEL_17;
      }

LABEL_22:
      [v15 loginForUser:v14];
      swift_unknownObjectRelease();
      goto LABEL_17;
    }
  }

LABEL_24:
}

uint64_t sub_1000CE1CC(uint64_t a1)
{
  sub_100004BF8(a1);

  return swift_unknownObjectRetain();
}

id sub_1000CE214(void *a1)
{
  v2 = [objc_allocWithZone(APSKeychainClientIdentityProvider) init];
  if ([a1 isDefaultUser])
  {
    v3 = v2;
  }

  else
  {
    type metadata accessor for NoOpClientIdentityProvider();
    v3 = ClientIdentityMetric.__allocating_init()();
  }

  v4 = v3;
  type metadata accessor for UserDependencies();
  v5 = sub_1000075F0(v4, [objc_allocWithZone(APSProcessModeTokenStorage) initWithUser:a1], objc_msgSend(objc_allocWithZone(APSProcessModePreferences), "initWithUser:", a1), objc_msgSend(objc_allocWithZone(APSHashingAppIDManager), "init"));

  return v5;
}

char *sub_1000CE498(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C8C30(&qword_1001BDEA0, &unk_10015D410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1000CE590()
{
  result = qword_1001BCCE0;
  if (!qword_1001BCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for APSFeatureFlag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for APSFeatureFlag(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000CE6CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APSOffloadHeuristics_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1000CE744()
{
  result = [objc_allocWithZone(type metadata accessor for OffloadHeuristics(0)) init];
  qword_1001C0450 = result;
  return result;
}

uint64_t *sub_1000CE778()
{
  if (qword_1001BFBE0 != -1)
  {
    swift_once();
  }

  return &qword_1001C0450;
}

id sub_1000CE7C8()
{
  if (qword_1001BFBE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1001C0450;

  return v0;
}

uint64_t static OffloadHeuristics.shared.getter()
{
  if (!sub_100013188())
  {
    return 0;
  }

  if (qword_1001BFBE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1001C0450;
  v1 = qword_1001C0450;
  return v0;
}

uint64_t sub_1000CE8D8(uint64_t a1)
{
  v3 = OBJC_IVAR___APSOffloadHeuristics_delegates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1000CE990()
{
  v1 = type metadata accessor for Application();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D19F8(1);
  *&v0[OBJC_IVAR___APSOffloadHeuristics_delegates] = &_swiftEmptyArrayStorage;
  v5 = type metadata accessor for OffloadHeuristics(0);
  v9.receiver = v0;
  v9.super_class = v5;
  v6 = objc_msgSendSuper2(&v9, "init");
  type metadata accessor for ULPNHeuristics();
  v7 = v6;
  static ULPNHeuristics.shared.getter();
  sub_1000D15C4(&qword_1001BCDD8, type metadata accessor for OffloadHeuristics, &protocol conformance descriptor for OffloadHeuristics);
  (*(v2 + 104))(v4, enum case for Application.push(_:), v1);
  dispatch thunk of ULPNHeuristics.register(delegate:application:)();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t type metadata accessor for OffloadHeuristics(uint64_t a1)
{
  result = qword_1001BFC70;
  if (!qword_1001BFC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OffloadHeuristics.addDelegate(_:)(uint64_t a1)
{
  v2 = (*((swift_isaMask & *v1) + 0x70))(v6);
  v4 = v3;
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v2(v6, 0);
}

BOOL OffloadHeuristics.canOffload(onInterface:)(uint64_t a1)
{
  v2 = v1;
  v39 = type metadata accessor for OffloadAdviceReasons();
  __chkstk_darwin(v39);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OffloadAdvice();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for OffloadAdviceResult();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = __chkstk_darwin(v12);
  v41 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  v17 = type metadata accessor for InterfaceType();
  v43 = *(v17 - 8);
  v44 = v17;
  __chkstk_darwin(v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0xE0))(a1);
  type metadata accessor for ULPNHeuristics();
  static ULPNHeuristics.shared.getter();
  v42 = v19;
  dispatch thunk of ULPNHeuristics.getOffloadAdvice(_:)();

  OffloadAdviceResult.advice.getter();
  v20 = enum case for OffloadAdvice.recommended(_:);
  v40 = *(v6 + 104);
  v40(v9, enum case for OffloadAdvice.recommended(_:), v5);
  sub_1000D15C4(&qword_1001BCDE0, &type metadata accessor for OffloadAdvice, &protocol conformance descriptor for OffloadAdvice);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v6 + 8);
  v21(v9, v5);
  v21(v11, v5);
  if ((a1 & 1) == 0)
  {
    (*(v45 + 16))(v41, v16, v46);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v35 = v22;
      v25 = v24;
      v36 = swift_slowAlloc();
      v48 = v36;
      *v25 = 136315138;
      v37 = v20;
      v34 = v23;
      v26 = v41;
      OffloadAdviceResult.reason.getter();
      v39 = String.init<A>(describing:)();
      v28 = v27;
      (*(v45 + 8))(v26, v46);
      v29 = sub_100007B6C(v39, v28, &v48);
      v20 = v37;

      v30 = v25;
      v33 = v25;
      *(v25 + 4) = v29;
      v31 = v35;
      _os_log_impl(&_mh_execute_header, v35, v34, "Offloading heuristics does not recommend offloading with reason: %s", v30, 0xCu);
      sub_100006CCC(v36);
    }

    else
    {

      (*(v45 + 8))(v41, v46);
    }
  }

  OffloadAdviceResult.advice.getter();
  v40(v9, v20, v5);
  sub_1000D15C4(&qword_1001BCDE8, &type metadata accessor for OffloadAdvice, &protocol conformance descriptor for OffloadAdvice);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21(v9, v5);
  v21(v11, v5);
  (*(v45 + 8))(v16, v46);
  (*(v43 + 8))(v42, v44);
  return v48 == v47;
}

uint64_t sub_1000CF3E8(uint64_t a1, unsigned int *a2)
{
  v26 = a2;
  v24 = a1;
  v3 = type metadata accessor for TelemetryData();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for PushTelemetryEvent();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  __chkstk_darwin(v9 - 8);
  v22 = type metadata accessor for PushTelemetry();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for InterfaceType();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0xE0))(v24);
  static Date.now.getter();
  (*(v6 + 104))(v8, *v26, v21);
  PushTelemetry.init(timestamp:event:)();
  type metadata accessor for ULPNHeuristics();
  static ULPNHeuristics.shared.getter();
  sub_1000C8C30(&qword_1001BCDF0, &qword_10015D420);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10015CF40;
  v17 = v22;
  (*(v10 + 16))(v16 + v15, v12, v22);
  *v5 = v16;
  v19 = v27;
  v18 = v28;
  (*(v27 + 104))(v5, enum case for TelemetryData.push(_:), v28);
  dispatch thunk of ULPNHeuristics.reportTelemetry(_:events:)();

  (*(v19 + 8))(v5, v18);
  (*(v10 + 8))(v12, v17);
  return (*(v23 + 8))(v14, v25);
}

uint64_t OffloadHeuristics.connectionAttemptFailed(error:interface:)(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v4 = type metadata accessor for TelemetryData();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for PushTelemetryEvent();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v26 = type metadata accessor for PushTelemetry();
  v11 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for InterfaceType();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0xE0))(v24);
  if (a1)
  {
    swift_errorRetain();
  }

  static Date.now.getter();
  *v9 = a1;
  (*(v7 + 104))(v9, enum case for PushTelemetryEvent.connectionAttemptFailed(_:), v23);
  PushTelemetry.init(timestamp:event:)();
  type metadata accessor for ULPNHeuristics();
  static ULPNHeuristics.shared.getter();
  sub_1000C8C30(&qword_1001BCDF0, &qword_10015D420);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10015CF40;
  v19 = v26;
  (*(v11 + 16))(v18 + v17, v13, v26);
  *v6 = v18;
  v21 = v27;
  v20 = v28;
  (*(v27 + 104))(v6, enum case for TelemetryData.push(_:), v28);
  dispatch thunk of ULPNHeuristics.reportTelemetry(_:events:)();

  (*(v21 + 8))(v6, v20);
  (*(v11 + 8))(v13, v19);
  return (*(v14 + 8))(v16, v25);
}

uint64_t OffloadHeuristics.connectionDisconnect(withError:interface:)(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for TelemetryData();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v30 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PushTelemetryEvent();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Date();
  __chkstk_darwin(v9 - 8);
  v27 = type metadata accessor for PushTelemetry();
  v10 = *(v27 - 8);
  __chkstk_darwin(v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InterfaceType();
  v28 = *(v13 - 8);
  v29 = v13;
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0xE0))(v25);
  static Date.now.getter();
  *v8 = a1;
  v16 = enum case for PushDisconnectErrors.nwConnectionError(_:);
  v17 = type metadata accessor for PushDisconnectErrors();
  (*(*(v17 - 8) + 104))(v8, v16, v17);
  (*(v6 + 104))(v8, enum case for PushTelemetryEvent.connectionDisconnect(_:), v26);
  swift_errorRetain();
  PushTelemetry.init(timestamp:event:)();
  type metadata accessor for ULPNHeuristics();
  static ULPNHeuristics.shared.getter();
  sub_1000C8C30(&qword_1001BCDF0, &qword_10015D420);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10015CF40;
  v20 = v27;
  (*(v10 + 16))(v19 + v18, v12, v27);
  v21 = v30;
  v22 = v31;
  *v30 = v19;
  v23 = v32;
  (*(v22 + 104))(v21, enum case for TelemetryData.push(_:), v32);
  dispatch thunk of ULPNHeuristics.reportTelemetry(_:events:)();

  (*(v22 + 8))(v21, v23);
  (*(v10 + 8))(v12, v20);
  return (*(v28 + 8))(v15, v29);
}

uint64_t OffloadHeuristics.connectionDisconnect(withAPSReason:interface:)(unsigned int a1, uint64_t a2)
{
  v24 = a2;
  v26 = a1;
  v3 = type metadata accessor for TelemetryData();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for PushTelemetryEvent();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Date();
  __chkstk_darwin(v9 - 8);
  v27 = type metadata accessor for PushTelemetry();
  v10 = *(v27 - 8);
  __chkstk_darwin(v27);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InterfaceType();
  v28 = *(v13 - 8);
  v29 = v13;
  __chkstk_darwin(v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v2) + 0xE0))(v24);
  static Date.now.getter();
  *v8 = v26;
  v16 = enum case for PushDisconnectErrors.apsDisconnectReason(_:);
  v17 = type metadata accessor for PushDisconnectErrors();
  (*(*(v17 - 8) + 104))(v8, v16, v17);
  (*(v6 + 104))(v8, enum case for PushTelemetryEvent.connectionDisconnect(_:), v25);
  PushTelemetry.init(timestamp:event:)();
  type metadata accessor for ULPNHeuristics();
  static ULPNHeuristics.shared.getter();
  sub_1000C8C30(&qword_1001BCDF0, &qword_10015D420);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10015CF40;
  v20 = v27;
  (*(v10 + 16))(v19 + v18, v12, v27);
  *v5 = v19;
  v22 = v30;
  v21 = v31;
  (*(v30 + 104))(v5, enum case for TelemetryData.push(_:), v31);
  dispatch thunk of ULPNHeuristics.reportTelemetry(_:events:)();

  (*(v22 + 8))(v5, v21);
  (*(v10 + 8))(v12, v20);
  return (*(v28 + 8))(v15, v29);
}

uint64_t sub_1000D066C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v29 = a3;
  v27 = a2;
  v25 = a1;
  v4 = type metadata accessor for TelemetryData();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for PushTelemetryEvent();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v24 = type metadata accessor for PushTelemetry();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for InterfaceType();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v3) + 0xE0))(v25);
  static Date.now.getter();
  *v9 = v27;
  v9[8] = 0;
  (*(v7 + 104))(v9, *v29, v23);
  PushTelemetry.init(timestamp:event:)();
  type metadata accessor for ULPNHeuristics();
  static ULPNHeuristics.shared.getter();
  sub_1000C8C30(&qword_1001BCDF0, &qword_10015D420);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10015CF40;
  v18 = v24;
  (*(v11 + 16))(v17 + v16, v13, v24);
  *v6 = v17;
  v20 = v30;
  v19 = v31;
  (*(v30 + 104))(v6, enum case for TelemetryData.push(_:), v31);
  dispatch thunk of ULPNHeuristics.reportTelemetry(_:events:)();

  (*(v20 + 8))(v6, v19);
  (*(v11 + 8))(v13, v18);
  return (*(v26 + 8))(v15, v28);
}

uint64_t sub_1000D0B48(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v29 = a1;
  v30 = a3;
  v27 = a2;
  v4 = type metadata accessor for TelemetryData();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for PushTelemetryEvent();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v25 = type metadata accessor for PushTelemetry();
  v11 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for InterfaceType();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v3) + 0xE0))(v27);
  static Date.now.getter();
  v16 = v30;
  *v9 = v29;
  (*(v7 + 104))(v9, *v16, v24);
  PushTelemetry.init(timestamp:event:)();
  type metadata accessor for ULPNHeuristics();
  static ULPNHeuristics.shared.getter();
  sub_1000C8C30(&qword_1001BCDF0, &qword_10015D420);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10015CF40;
  v19 = v25;
  (*(v11 + 16))(v18 + v17, v13, v25);
  *v6 = v18;
  v21 = v31;
  v20 = v32;
  (*(v31 + 104))(v6, enum case for TelemetryData.push(_:), v32);
  dispatch thunk of ULPNHeuristics.reportTelemetry(_:events:)();

  (*(v21 + 8))(v6, v20);
  (*(v11 + 8))(v13, v19);
  return (*(v26 + 8))(v15, v28);
}

unint64_t sub_1000D0FCC(uint64_t a1, uint64_t a2, const char *a3, SEL *a4, ...)
{
  v7 = v4;
  v8 = type metadata accessor for InterfaceType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for InterfaceType.cellular(_:), v8);
  sub_1000D15C4(&qword_1001BCDF8, &type metadata accessor for InterfaceType, &protocol conformance descriptor for InterfaceType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v9 + 8))(v11, v8);
  v12 = v31 != v30;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = a3;
    v17 = v16;
    v31 = v16;
    *v15 = 136315138;
    v18 = sub_1000067F8(v12);
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_100007B6C(v19, v21, &v31);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, v29, v15, 0xCu);
    sub_100006CCC(v17);
  }

  result = (*((swift_isaMask & *v7) + 0x60))();
  v24 = result;
  if (!(result >> 62))
  {
    v25 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_5;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v25 = result;
  if (!result)
  {
  }

LABEL_5:
  if (v25 >= 1)
  {
    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v24 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v27 *a4];
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D1308@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v18 = v7;
        *v6 = 136315138;
        v8 = sub_1000067F8(a1);
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12 = sub_100007B6C(v9, v11, &v18);

        *(v6 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v4, v5, "Unexpected interface found! %s", v6, 0xCu);
        sub_100006CCC(v7);
      }
    }

    v13 = &enum case for InterfaceType.wifiInfra(_:);
  }

  else
  {
    v13 = &enum case for InterfaceType.cellular(_:);
  }

  v14 = *v13;
  v15 = type metadata accessor for InterfaceType();
  v16 = *(*(v15 - 8) + 104);

  return v16(a2, v14, v15);
}

id OffloadHeuristics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OffloadHeuristics(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000D15C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D1614(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000D16B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10018A9A8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D1704(char a1)
{
  if (a1)
  {
    return 0x6564616F6C66664FLL;
  }

  else
  {
    return 0x627553627550;
  }
}

uint64_t sub_1000D173C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6564616F6C66664FLL;
  }

  else
  {
    v3 = 0x627553627550;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x6564616F6C66664FLL;
  }

  else
  {
    v5 = 0x627553627550;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000D17E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D1868(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000D18D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D1958@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10018A9A8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000D19B8(uint64_t *a1@<X8>)
{
  v2 = 0x627553627550;
  if (*v1)
  {
    v2 = 0x6564616F6C66664FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000D19F8(char a1)
{
  if (a1)
  {
    v1 = 0x6564616F6C66664FLL;
  }

  else
  {
    v1 = 0x627553627550;
  }

  if (a1)
  {
    v2 = 0xE900000000000072;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  return Logger.init(subsystem:category:)(0x6C7070612E6D6F63, 0xEE00647370612E65, v1, v2);
}

unint64_t sub_1000D1A54()
{
  result = qword_1001BCE28;
  if (!qword_1001BCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCE28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000D1C18(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

uint64_t sub_1000D1CD0()
{
  v1 = OBJC_IVAR___APSClientIdentityMetric_hasExistingToken;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D1D14(char a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_hasExistingToken;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000D1DC4()
{
  v1 = OBJC_IVAR___APSClientIdentityMetric_baaFetchAttempts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D1E08(uint64_t a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_baaFetchAttempts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000D1EB8()
{
  v1 = OBJC_IVAR___APSClientIdentityMetric_albertFetchAttempts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D1EFC(uint64_t a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_albertFetchAttempts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000D1FAC()
{
  v1 = OBJC_IVAR___APSClientIdentityMetric_invalidPresenceAttempts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D1FF0(uint64_t a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_invalidPresenceAttempts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000D20A8()
{
  v1 = OBJC_IVAR___APSClientIdentityMetric_identitySwapReason;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D20EC(char a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_identitySwapReason;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000D219C()
{
  v1 = OBJC_IVAR___APSClientIdentityMetric_startingProvider;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D21E0(uint64_t a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_startingProvider;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000D2290()
{
  v1 = OBJC_IVAR___APSClientIdentityMetric_successfulProvider;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000D22D4(uint64_t a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_successfulProvider;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000D23CC(uint64_t a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_identityErrors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ClientIdentityMetric.correlationID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_correlationID;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ClientIdentityMetric.correlationID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___APSClientIdentityMetric_correlationID;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *ClientIdentityMetric.failureMetric.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClientIdentityMetric.FailureMetric();
  v3 = swift_allocObject();
  v3[2] = 0xD000000000000018;
  v3[3] = 0x8000000100156EB0;
  v3[4] = v2;
  v4 = v2;
  return v3;
}

void *sub_1000D29E4(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0xD000000000000018;
  result[3] = 0x8000000100156EB0;
  result[4] = a1;
  return result;
}

uint64_t ClientIdentityMetric.name.getter()
{
  v1 = (v0 + OBJC_IVAR___APSClientIdentityMetric_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ClientIdentityMetric.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APSClientIdentityMetric_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1000D2C74(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = objc_allocWithZone(v8);
  v14 = OBJC_IVAR___APSClientIdentityMetric_baaFetchAttempts;
  *&v13[OBJC_IVAR___APSClientIdentityMetric_baaFetchAttempts] = 0;
  v15 = OBJC_IVAR___APSClientIdentityMetric_albertFetchAttempts;
  *&v13[OBJC_IVAR___APSClientIdentityMetric_albertFetchAttempts] = 0;
  v16 = OBJC_IVAR___APSClientIdentityMetric_invalidPresenceAttempts;
  *&v13[OBJC_IVAR___APSClientIdentityMetric_invalidPresenceAttempts] = 0;
  v17 = OBJC_IVAR___APSClientIdentityMetric_identitySwapReason;
  v13[OBJC_IVAR___APSClientIdentityMetric_identitySwapReason] = 6;
  UUID.init()();
  v18 = &v13[OBJC_IVAR___APSClientIdentityMetric_name];
  *v18 = 0xD000000000000017;
  v18[1] = 0x8000000100156ED0;
  v13[OBJC_IVAR___APSClientIdentityMetric_hasExistingToken] = a1;
  swift_beginAccess();
  *&v13[v14] = a2;
  swift_beginAccess();
  *&v13[v15] = a3;
  swift_beginAccess();
  *&v13[v16] = a4;
  swift_beginAccess();
  v13[v17] = a5;
  *&v13[OBJC_IVAR___APSClientIdentityMetric_startingProvider] = a6;
  *&v13[OBJC_IVAR___APSClientIdentityMetric_successfulProvider] = a7;
  *&v13[OBJC_IVAR___APSClientIdentityMetric_identityErrors] = a8;
  v24.receiver = v13;
  v24.super_class = v8;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_1000D2DFC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = OBJC_IVAR___APSClientIdentityMetric_baaFetchAttempts;
  *&v8[OBJC_IVAR___APSClientIdentityMetric_baaFetchAttempts] = 0;
  v15 = OBJC_IVAR___APSClientIdentityMetric_albertFetchAttempts;
  *&v8[OBJC_IVAR___APSClientIdentityMetric_albertFetchAttempts] = 0;
  v16 = OBJC_IVAR___APSClientIdentityMetric_invalidPresenceAttempts;
  *&v8[OBJC_IVAR___APSClientIdentityMetric_invalidPresenceAttempts] = 0;
  v17 = OBJC_IVAR___APSClientIdentityMetric_identitySwapReason;
  v8[OBJC_IVAR___APSClientIdentityMetric_identitySwapReason] = 6;
  UUID.init()();
  v18 = &v8[OBJC_IVAR___APSClientIdentityMetric_name];
  *v18 = 0xD000000000000017;
  v18[1] = 0x8000000100156ED0;
  v8[OBJC_IVAR___APSClientIdentityMetric_hasExistingToken] = a1;
  swift_beginAccess();
  *&v8[v14] = a2;
  swift_beginAccess();
  *&v8[v15] = a3;
  swift_beginAccess();
  *&v8[v16] = a4;
  swift_beginAccess();
  v8[v17] = a5;
  *&v8[OBJC_IVAR___APSClientIdentityMetric_startingProvider] = a6;
  *&v8[OBJC_IVAR___APSClientIdentityMetric_successfulProvider] = a7;
  *&v8[OBJC_IVAR___APSClientIdentityMetric_identityErrors] = a8;
  v23.receiver = v8;
  v23.super_class = type metadata accessor for ClientIdentityMetric(0);
  return objc_msgSendSuper2(&v23, "init");
}

unint64_t ClientIdentityMetric.dictionaryRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D4068(&_swiftEmptyArrayStorage);
  (*((swift_isaMask & *v2) + 0xA0))();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v7;
  v10 = sub_1000D416C(isa, 0xD000000000000010, 0x8000000100156EF0, isUniquelyReferenced_nonNull_native, &v39);
  v11 = v39;
  (*((swift_isaMask & *v2) + 0xB8))(v10);
  v12 = Int._bridgeToObjectiveC()().super.super.isa;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v11;
  v14 = sub_1000D416C(v12, 0xD000000000000010, 0x8000000100156F10, v13, &v39);
  v15 = v39;
  (*((swift_isaMask & *v2) + 0xD0))(v14);
  v16 = Int._bridgeToObjectiveC()().super.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v15;
  v18 = sub_1000D416C(v16, 0xD000000000000013, 0x8000000100156F30, v17, &v39);
  v19 = v39;
  (*((swift_isaMask & *v2) + 0xE8))(v18);
  v20 = Int._bridgeToObjectiveC()().super.super.isa;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v19;
  v22 = sub_1000D416C(v20, 0xD000000000000017, 0x8000000100156F50, v21, &v39);
  v23 = v39;
  v24 = (*((swift_isaMask & *v2) + 0x100))(v22);
  if (v24 != 6)
  {
    sub_1000D79E0(v24);
    v25 = Int._bridgeToObjectiveC()().super.super.isa;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v23;
    v24 = sub_1000D416C(v25, 0xD000000000000012, 0x8000000100156FB0, v26, &v39);
    v23 = v39;
  }

  (*((swift_isaMask & *v2) + 0x118))(v24);
  v27 = UInt._bridgeToObjectiveC()().super.super.isa;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v23;
  v29 = sub_1000D416C(v27, 0xD000000000000010, 0x8000000100156F70, v28, &v39);
  v30 = v39;
  (*((swift_isaMask & *v2) + 0x130))(v29);
  v31 = UInt._bridgeToObjectiveC()().super.super.isa;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v30;
  v33 = sub_1000D416C(v31, 0xD000000000000012, 0x8000000100156F90, v32, &v39);
  v34 = v39;
  (*((swift_isaMask & *v2) + 0x160))(v33);
  UUID.uuidString.getter();
  (*(v4 + 8))(v6, v3);
  v35 = String._bridgeToObjectiveC()();

  v36 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v34;
  sub_1000D416C(v35, 0x74616C6572726F43, 0xED000044496E6F69, v36, &v39);
  return v39;
}

uint64_t ClientIdentityMetric.FailureMetric.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ClientIdentityMetric.FailureMetric.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t *ClientIdentityMetric.FailureMetric.dictionaryRepresentation.getter()
{
  v1 = *(v0 + 32);
  v2 = (*((swift_isaMask & *v1) + 0x1A8))();
  v3 = *((*((swift_isaMask & *v1) + 0x178))() + 16);
  if (v3)
  {
    sub_1000D3F44(0, v3, 0);
    v4 = 32;
    v5 = &_swiftEmptyArrayStorage;
    do
    {
      swift_errorRetain();
      v6 = _convertErrorToNSError(_:)();
      v7 = [v6 code];

      v13 = v5;
      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        sub_1000D3F44((v8 > 1), v9 + 1, 1);
        v5 = v13;
      }

      v5[2] = v9 + 1;
      v5[v9 + 4] = v7;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v2;
  sub_1000D416C(isa, 0x797469746E656449, 0xEE0073726F727245, isUniquelyReferenced_nonNull_native, &v13);
  return v13;
}

void *sub_1000D3928(uint64_t a1)
{
  v1[2] = 0xD000000000000018;
  v1[3] = 0x8000000100156EB0;
  v1[4] = a1;
  return v1;
}

uint64_t type metadata accessor for ClientIdentityMetric(uint64_t a1)
{
  result = qword_1001BFE00;
  if (!qword_1001BFE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClientIdentityMetric.FailureMetric.deinit()
{

  return v0;
}

uint64_t ClientIdentityMetric.FailureMetric.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

id ClientIdentityMetric.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientIdentityMetric(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_1000D3B2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000C8C30(&unk_1001BD540, &unk_10015DB90);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1000D3DD4()
{
  v1 = v0;
  sub_1000C8C30(&unk_1001BD540, &unk_10015DB90);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1000D3F44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D3F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3F64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C8C30(&unk_1001BD040, &qword_10015D620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_1000D4068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C8C30(&unk_1001BD540, &unk_10015DB90);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000C8870(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000D416C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1000C8870(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000D3B2C(v16, a4 & 1);
      v11 = sub_1000C8870(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000D3DD4();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1000D42F0(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for APSIdentityProviderStatus()
{
  if (!qword_1001BD020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1001BD020);
    }
  }
}

uint64_t sub_1000D4410()
{
  type metadata accessor for ClientIdentityMetricReporter();
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 6;
  *(result + 56) = 0;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *(result + 80) = 1;
  *(result + 88) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000D446C()
{
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 6;
  *(result + 56) = 0;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *(result + 80) = 1;
  *(result + 88) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000D45EC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000D464C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___APSMultiClientIdentityProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000CD9A8;
}

uint64_t sub_1000D47C0()
{
  v1 = (v0 + OBJC_IVAR___APSMultiClientIdentityProvider_identityAvailabilityDidChangeBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001C53C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1000D48DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APSMultiClientIdentityProvider_identityAvailabilityDidChangeBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001C894(v6, v7);
}

id sub_1000D499C()
{
  result = [objc_opt_self() identityUtilities];
  if (result)
  {
    v1 = result;
    v2 = [result forcedProviderDefault];

    if (!v2)
    {
      return 0;
    }

    v3 = [v2 unsignedIntegerValue];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000D4A7C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider;
  *&v3[OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider] = 0;
  v8 = OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider;
  *&v3[OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider] = 0;
  v9 = OBJC_IVAR___APSMultiClientIdentityProvider_identityFetchErrors;
  *&v3[OBJC_IVAR___APSMultiClientIdentityProvider_identityFetchErrors] = 0;
  v10 = OBJC_IVAR___APSMultiClientIdentityProvider_metrics;
  type metadata accessor for ClientIdentityMetricReporter();
  v11 = swift_allocObject();
  *(v11 + 16) = 2;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 24) = 0;
  *(v11 + 48) = 6;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;
  *(v11 + 72) = 0;
  *(v11 + 80) = 1;
  *(v11 + 88) = &_swiftEmptyArrayStorage;
  *&v3[v10] = v11;
  swift_unknownObjectWeakInit();
  v12 = &v3[OBJC_IVAR___APSMultiClientIdentityProvider_identityAvailabilityDidChangeBlock];
  *v12 = 0;
  v12[1] = 0;
  v13 = [objc_allocWithZone(APSBAAClientIdentityProvider) init];
  v14 = *&v3[v7];
  *&v3[v7] = v13;

  *&v3[v8] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v3[OBJC_IVAR___APSMultiClientIdentityProvider_retryCount] = 5;
  v3[OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled] = 1;
  v3[OBJC_IVAR___APSMultiClientIdentityProvider_albertFallbackEnabled] = 1;
  v3[OBJC_IVAR___APSMultiClientIdentityProvider_shouldSwapIdentityProviderAfterNextInvalidPresence] = 0;
  swift_beginAccess();
  *&v3[v9] = &_swiftEmptyArrayStorage;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v54.receiver = v3;
  v54.super_class = type metadata accessor for MultiClientIdentityProvider();
  v15 = objc_msgSendSuper2(&v54, "init");
  v16 = v15;
  v47 = a1;
  if (a1)
  {
    v17 = v15;
    v18 = [a1 tokenType];
    if (!v18)
    {
      goto LABEL_11;
    }

    if (v18 == 1)
    {
LABEL_10:
      v19 = 0;
      goto LABEL_12;
    }

    if (v18 != 2)
    {
      v19 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    v20 = v15;
  }

  v21 = [objc_opt_self() identityUtilities];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 baaPushIdentityEnabled];

    if (v23 && (*(v16 + OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled) & 1) != 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v19 = 1;
LABEL_12:
    v24 = v16 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState;
    *v24 = v19;
    v24[8] = 0;
    v25 = *((swift_isaMask & *v16) + 0x1B0);
    v26 = v25();
    if ((v27 & 1) == 0)
    {
      v28 = (v25)(v26);
      v29 = v16 + OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState;
      *v29 = v28;
      v29[8] = v30 & 1;
    }

    v31 = OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider;
    v32 = *(v16 + OBJC_IVAR___APSMultiClientIdentityProvider_baaIdentityProvider);
    if (v32)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v16;
      v52 = sub_1000D7B50;
      v53 = v33;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_1000D8DD0;
      v51 = &unk_10018AAF8;
      v34 = _Block_copy(&aBlock);
      v35 = v16;
      v36 = v32;

      [v36 setIdentityAvailabilityDidChangeBlock:v34];
      _Block_release(v34);

      v37 = *(v35 + OBJC_IVAR___APSMultiClientIdentityProvider_albertIdentityProvider);
      if (v37)
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v35;
        v52 = sub_1000D7C24;
        v53 = v38;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_1000D8DD0;
        v51 = &unk_10018AB48;
        v39 = _Block_copy(&aBlock);
        v40 = v35;
        swift_unknownObjectRetain();

        [v37 setIdentityAvailabilityDidChangeBlock:v39];
        _Block_release(v39);
        swift_unknownObjectRelease();
        sub_100006B18();
        v41 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_1000D50B0();
        v42 = *(v16 + v31);
        if (v42)
        {
          v43 = swift_allocObject();
          *(v43 + 16) = v40;
          v52 = sub_1000D7CE4;
          v53 = v43;
          aBlock = _NSConcreteStackBlock;
          v49 = 1107296256;
          v50 = sub_1000D8D8C;
          v51 = &unk_10018AB98;
          v44 = _Block_copy(&aBlock);
          v45 = v40;
          v46 = v42;

          [v46 setBaaIdentityRefreshedBlock:v44];
          _Block_release(v44);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

id sub_1000D5034()
{
  result = [objc_opt_self() identityUtilities];
  if (result)
  {
    v2 = result;
    v3 = [result baaPushIdentityEnabled];

    if (v3)
    {
      return *(v0 + OBJC_IVAR___APSMultiClientIdentityProvider_baaEnabled);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000D50B0()
{
  v1 = [v0 isReadyToFetchIdentity];
  if ((v0[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState + 8] & 1) != 0 || *&v0[OBJC_IVAR___APSMultiClientIdentityProvider_currentIdentityState])
  {
    v2 = 0xEE0072656469766FLL;
    v3 = 0x7250747265626C41;
  }

  else
  {
    v2 = 0xEB00000000726564;
    v3 = 0x69766F7250414142;
  }

  sub_100006B18();

  oslog = static OS_os_log.default.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    v7 = sub_100007B6C(v3, v2, &v9);

    *(v5 + 4) = v7;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v4, "MultiClientIdentityProvider, currentIdentityProvider: %s, shouldIdentityBeAvailable:%{BOOL}d", v5, 0x12u);
    sub_100006CCC(v6);
  }

  else
  {
  }
}