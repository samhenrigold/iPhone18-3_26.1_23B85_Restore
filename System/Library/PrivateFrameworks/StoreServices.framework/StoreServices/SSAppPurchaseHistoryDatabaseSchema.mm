@interface SSAppPurchaseHistoryDatabaseSchema
+ (BOOL)createSchemaInDatabase:(id)database;
+ (id)databasePath;
@end

@implementation SSAppPurchaseHistoryDatabaseSchema

+ (BOOL)createSchemaInDatabase:(id)database
{
  v81 = *MEMORY[0x1E69E9840];
  userVersion = [database userVersion];
  if (userVersion == 11201)
  {
LABEL_84:
    LOBYTE(v47) = 1;
    return v47;
  }

  userVersion3 = userVersion;
  v6 = 0;
  LOBYTE(v7) = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v8;
    if (userVersion3 <= 8001)
    {
      break;
    }

    if (userVersion3 > 10199)
    {
      switch(userVersion3)
      {
        case 10200:
          if (([database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_32_bit_only INTEGER DEFAULT 0;"] & 1) == 0)
          {
            goto LABEL_50;
          }

          userVersion3 = 11000;
          goto LABEL_46;
        case 11000:
          if (([database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_preorder INTEGER DEFAULT 0;"] & 1) == 0)
          {
            goto LABEL_50;
          }

          userVersion3 = 11200;
          goto LABEL_46;
        case 11200:
          if (![database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN required_capabilities TEXT;"])
          {
            goto LABEL_50;
          }

LABEL_9:
          userVersion3 = 11201;
LABEL_46:
          objc_autoreleasePoolPop(v9);
LABEL_48:
          v7 = 1;
          goto LABEL_77;
      }

LABEL_47:
      objc_autoreleasePoolPop(v8);
      if ((v7 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    if (userVersion3 != 8002)
    {
      if (userVersion3 == 10000)
      {
        if (![database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_hidden_from_springboard INTEGER DEFAULT 0;"] || !objc_msgSend(database, "executeSQL:", @"ALTER TABLE app_purchase_history ADD COLUMN oval_icon_token TEXT;") || (objc_msgSend(database, "executeSQL:", @"ALTER TABLE app_purchase_history ADD COLUMN oval_icon_url TEXT;") & 1) == 0)
        {
          goto LABEL_50;
        }

        userVersion3 = 10200;
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v15 = [database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN has_messages_extension INTEGER DEFAULT 0;"];
    objc_autoreleasePoolPop(v9);
    if ((v15 & 1) == 0)
    {
      userVersion3 = 10000;
      goto LABEL_51;
    }

    v7 = 1;
    userVersion3 = 10000;
LABEL_77:
    if (userVersion3 == 11201)
    {
      if (v7)
      {
        [database setUserVersion:11201];
      }

      goto LABEL_84;
    }
  }

  if (userVersion3 > 7999)
  {
    if (userVersion3 == 8000)
    {
      if (![database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_family_shareable INTEGER DEFAULT 0;"] || (objc_msgSend(database, "executeSQL:", @"ALTER TABLE app_purchase_history ADD COLUMN vpp_is_licensed INTEGER DEFAULT 0;") & 1) == 0)
      {
        goto LABEL_50;
      }

      userVersion3 = 8001;
      goto LABEL_46;
    }

    v14 = [database executeSQL:@"ALTER TABLE app_purchase_history ADD COLUMN is_first_party INTEGER DEFAULT 0;"];
    objc_autoreleasePoolPop(v9);
    if ((v14 & 1) == 0)
    {
      userVersion3 = 8002;
      goto LABEL_51;
    }

    v7 = 1;
    userVersion3 = 8002;
    goto LABEL_77;
  }

  if (!userVersion3)
  {
    if (![database executeSQL:@"PRAGMA legacy_file_format = 0;"] || !objc_msgSend(database, "executeSQL:", @"CREATE TABLE IF NOT EXISTS app_purchase_history (pid INTEGER, account_unique_identifier INTEGER,category TEXT, company_title TEXT, content_rating_flags INTEGER, bundle_id TEXT, date_updated INTEGER, date_purchased INTEGER, download_size INTEGER, flavors TEXT, has_messages_extension INTEGER DEFAULT 0, is_hidden_from_springboard INTEGER DEFAULT 0, icon_title TEXT, icon_token TEXT, icon_url TEXT, oval_icon_token TEXT, oval_icon_url TEXT, is_family_shareable INTEGER DEFAULT 0, is_first_party INTEGER DEFAULT 0, is_newsstand INTEGER DEFAULT 0, is_hidden INTEGER DEFAULT 0, long_title TEXT, minimum_os INTEGER, purchased_token INTEGER,store_id INTEGER, supports_ipad INTEGER DEFAULT 0, supports_iphone INTEGER DEFAULT 0, redownload_params TEXT, version_human_readable TEXT, version_itunes INTEGER, vpp_is_licensed INTEGER DEFAULT 0, is_32_bit_only INTEGER DEFAULT 0, is_preorder INTEGER DEFAULT 0, required_capabilities TEXT, PRIMARY KEY (pid));") || !objc_msgSend(database, "executeSQL:", @"CREATE TABLE IF NOT EXISTS db_properties (key TEXT PRIMARY KEY, value TEXT)") || !objc_msgSend(database, "executeSQL:", @"CREATE TABLE IF NOT EXISTS app_purchase_history_accounts (account_unique_identifier INTEGER, local_revision INTEGER, PRIMARY KEY (account_unique_identifier));") || !objc_msgSend(database, "executeSQL:", @"CREATE INDEX IF NOT EXISTS app_purchase_history_store_id ON app_purchase_history (store_id);") || !objc_msgSend(database, "executeSQL:", @"CREATE INDEX IF NOT EXISTS app_purchase_history_category ON app_purchase_history (category);") || !objc_msgSend(database, "executeSQL:", @"CREATE INDEX IF NOT EXISTS app_purchase_history_bundle_id ON app_purchase_history (bundle_id);") || (objc_msgSend(database, "executeSQL:", @"CREATE INDEX IF NOT EXISTS app_purchase_history_account_unique_identifier ON app_purchase_history (account_unique_identifier);") & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_9;
  }

  if (userVersion3 != 7000)
  {
    goto LABEL_47;
  }

  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v10 = [database executeSQL:{@"CREATE TABLE IF NOT EXISTS app_purchase_history_accounts (account_unique_identifier INTEGER, local_revision INTEGER, PRIMARY KEY (account_unique_identifier));"}];
  *(v74 + 24) = v10;
  if ((v10 & 1) == 0)
  {
    _Block_object_dispose(&v73, 8);
    userVersion3 = 7000;
LABEL_50:
    objc_autoreleasePoolPop(v9);
    goto LABEL_51;
  }

  *v79 = 0;
  *&v79[8] = v79;
  *&v79[16] = 0x3052000000;
  *&v79[24] = __Block_byref_object_copy__70;
  *&v79[32] = __Block_byref_object_dispose__70;
  v80 = 0;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __updateAppPurchaseHistoryFrom7000to8000_block_invoke;
  v72[3] = &unk_1E84B1E90;
  v72[4] = database;
  v72[5] = v79;
  [database prepareStatementForSQL:@"SELECT value FROM db_properties WHERE key=app_purchase_history.localRevision;" cache:0 usingBlock:v72];
  v66 = 0;
  v67 = &v66;
  v68 = 0x3052000000;
  v69 = __Block_byref_object_copy__70;
  v70 = __Block_byref_object_dispose__70;
  v71 = 0;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __updateAppPurchaseHistoryFrom7000to8000_block_invoke_2;
  v65[3] = &unk_1E84B1E90;
  v65[4] = database;
  v65[5] = &v66;
  [database prepareStatementForSQL:@"SELECT value FROM db_properties WHERE key=app_purchase_history.account_unique_identifier;" cache:0 usingBlock:v65];
  v11 = v67[5];
  if (v11)
  {
    v12 = *(*&v79[8] + 40);
    if (v12)
    {
      v77[0] = @"account_unique_identifier";
      v77[1] = @"local_revision";
      v78[0] = v11;
      v78[1] = v12;

      v11 = v67[5];
    }
  }

  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __updateAppPurchaseHistoryFrom7000to8000_block_invoke_3;
  v64[3] = &unk_1E84B3018;
  v64[4] = database;
  v64[5] = &v73;
  [database prepareStatementForSQL:@"DELETE FROM db_properties WHERE key=app_purchase_history.localRevision;" cache:0 usingBlock:v64];
  v13 = *(v74 + 24);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(v79, 8);
  _Block_object_dispose(&v73, 8);
  objc_autoreleasePoolPop(v9);
  if (v13)
  {
    v7 = 1;
    userVersion3 = 8000;
    goto LABEL_77;
  }

  userVersion3 = 8000;
LABEL_51:
  userVersion2 = [database userVersion];
  v17 = userVersion2;
  if (userVersion2 != userVersion3)
  {
    v32 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v34 = shouldLog | 2;
    }

    else
    {
      v34 = shouldLog;
    }

    oSLogObject = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v36 = v34;
    }

    else
    {
      v36 = v34 & 2;
    }

    if (v36)
    {
      v37 = objc_opt_class();
      *v79 = 138413058;
      *&v79[4] = v37;
      *&v79[12] = 1024;
      *&v79[14] = userVersion3;
      *&v79[18] = 1024;
      *&v79[20] = 11201;
      *&v79[24] = 1024;
      *&v79[26] = v17;
      LODWORD(v63) = 30;
      v38 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%@] Although database migration function failed from %d => %d -- The schema did change. Perhaps another process is updating the database: [Currently at: %d]", v79, v63);
      if (v38)
      {
        v39 = v38;
        v40 = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:4];
        free(v39);
        SSFileLog(v32, @"%@", v41, v42, v43, v44, v45, v46, v40);
      }
    }

    v6 = 0;
    goto LABEL_76;
  }

  v18 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v19) = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    LODWORD(v19) = v19 | 2;
  }

  oSLogObject2 = [v18 OSLogObject];
  v21 = v6 + 1;
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v19 = v19;
  }

  else
  {
    v19 &= 2u;
  }

  if (v19)
  {
    v22 = objc_opt_class();
    *v79 = 138413058;
    *&v79[4] = v22;
    *&v79[12] = 2048;
    *&v79[14] = userVersion3;
    *&v79[22] = 2048;
    *&v79[24] = 11201;
    *&v79[32] = 1024;
    *&v79[34] = v6 + 1;
    LODWORD(v63) = 38;
    v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "[%@] Unsuccessful database migration function from %ld => %ld [Failure Count: %d]", v79, v63);
    if (v23)
    {
      v24 = v23;
      v25 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
      free(v24);
      SSFileLog(v18, @"%@", v26, v27, v28, v29, v30, v31, v25);
    }
  }

  if (v6 < 5)
  {
    ++v6;
LABEL_76:
    userVersion3 = [database userVersion];
    v7 = 0;
    goto LABEL_77;
  }

  v48 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v48)
  {
    v48 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v48 shouldLog];
  if ([v48 shouldLogToDisk])
  {
    v50 = shouldLog2 | 2;
  }

  else
  {
    v50 = shouldLog2;
  }

  oSLogObject3 = [v48 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v52 = v50;
  }

  else
  {
    v52 = v50 & 2;
  }

  if (v52)
  {
    v53 = objc_opt_class();
    *v79 = 138413058;
    *&v79[4] = v53;
    *&v79[12] = 1024;
    *&v79[14] = v21;
    *&v79[18] = 2048;
    *&v79[20] = userVersion3;
    *&v79[28] = 2048;
    *&v79[30] = 11201;
    LODWORD(v63) = 38;
    v47 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 16, "[%@] Failed to migrate the DB %d times. [%ld vs %ld] Giving up, but nothing will work from this point forward. exit(1) crosses my mind, but probably not the right thing to do.", v79, v63);
    if (!v47)
    {
      return v47;
    }

    v54 = v47;
    v55 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:4];
    free(v54);
    SSFileLog(v48, @"%@", v56, v57, v58, v59, v60, v61, v55);
  }

  LOBYTE(v47) = 0;
  return v47;
}

+ (id)databasePath
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Caches", @"com.apple.storeservices", @"AppPurchaseHistory.6.sqlitedb", 0}];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];

  return v3;
}

@end