@interface APDatabaseMigration
- (APDatabaseMigration)initWithDatabasePath:(id)path;
- (id)_buildSortedURLs;
- (id)_getQueriesForFileAtURL:(id)l;
- (id)getMigrationQueriesFromVersion:(int)version;
- (int64_t)_getVersionFromFileAtURL:(id)l;
- (int64_t)lastVersion;
@end

@implementation APDatabaseMigration

- (APDatabaseMigration)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = APDatabaseMigration;
  v6 = [(APDatabaseMigration *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databasePath, path);
    v11 = objc_msgSend__buildSortedURLs(v7, v8, v9, v10);
    sortedScriptsURLs = v7->_sortedScriptsURLs;
    v7->_sortedScriptsURLs = v11;
  }

  return v7;
}

- (int64_t)lastVersion
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_sortedScriptsURLs(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_sortedScriptsURLs(self, v10, v11, v12);
    v17 = objc_msgSend_lastObject(v13, v14, v15, v16);

    VersionFromFileAtURL = objc_msgSend__getVersionFromFileAtURL_(self, v18, v17, v19);
    return VersionFromFileAtURL;
  }

  else
  {
    v22 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 138477827;
      v25 = objc_opt_class();
      v23 = v25;
      _os_log_impl(&dword_1BADC1000, v22, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: No migration files found.", &v24, 0xCu);
    }

    return 0;
  }
}

- (id)getMigrationQueriesFromVersion:(int)version
{
  v45 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_lastVersion(self, a2, *&version, v3) == version)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = objc_msgSend_sortedScriptsURLs(self, v11, v12, v13, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v36, v44, 16);
    if (v16)
    {
      v19 = v16;
      versionCopy = version;
      v21 = *v37;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v36 + 1) + 8 * i);
          if (objc_msgSend__getVersionFromFileAtURL_(self, v17, v23, v18) > versionCopy)
          {
            v24 = objc_msgSend__getQueriesForFileAtURL_(self, v17, v23, v18);
            if (!v24)
            {
              v28 = APLogForCategory(0xCuLL);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = objc_opt_class();
                v30 = v29;
                v34 = objc_msgSend_absoluteString(v23, v31, v32, v33);
                *buf = 138478083;
                v41 = v29;
                v42 = 2113;
                v43 = v34;
                _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: No migration queries found at path: %{private}@.", buf, 0x16u);
              }

              v9 = 0;
              goto LABEL_17;
            }

            v27 = v24;
            objc_msgSend_addObjectsFromArray_(v10, v25, v24, v26);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v36, v44, 16);
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v9 = v10;
LABEL_17:
  }

  return v9;
}

- (id)_getQueriesForFileAtURL:(id)l
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v4, lCopy, v5);
  if (v7)
  {
    v27 = 0;
    v8 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v6, v7, 0, 0, &v27);
    v11 = v27;
    if (v11)
    {
      v12 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v18 = objc_msgSend_localizedDescription(v11, v15, v16, v17);
        *buf = 138478083;
        v29 = v13;
        v30 = 2114;
        v31 = v18;
        _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: Could not create dictionary from data: %{public}@.", buf, 0x16u);
      }

      v19 = 0;
    }

    else
    {
      v19 = objc_msgSend_objectForKey_(v8, v9, @"Queries", v10);
    }
  }

  else
  {
    v11 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v25 = objc_msgSend_absoluteString(lCopy, v22, v23, v24);
      *buf = 138478083;
      v29 = v20;
      v30 = 2113;
      v31 = v25;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: No data found at path: %{private}@.", buf, 0x16u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)_buildSortedURLs
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_databasePath(self, a2, v2, v3);
  v8 = objc_msgSend_migrationScriptsPath(v4, v5, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v9, v8, v10);
    v15 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v12, v13, v14);
    v37[0] = *MEMORY[0x1E695DC30];
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v37, 1);
    v32 = 0;
    v19 = objc_msgSend_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_(v15, v18, v11, v17, 4, &v32);
    v20 = v32;

    if (v20)
    {
      v23 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = v24;
        v29 = objc_msgSend_localizedDescription(v20, v26, v27, v28);
        *buf = 138478083;
        v34 = v24;
        v35 = 2114;
        v36 = v29;
        _os_log_impl(&dword_1BADC1000, v23, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: Could not get contents of directory: %{public}@.", buf, 0x16u);
      }

      v30 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v30 = objc_msgSend_sortedArrayUsingComparator_(v19, v21, &unk_1F38F47E0, v22);
    }
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  return v30;
}

- (int64_t)_getVersionFromFileAtURL:(id)l
{
  v4 = objc_msgSend_lastPathComponent(l, a2, l, v3);
  v8 = objc_msgSend_stringByDeletingPathExtension(v4, v5, v6, v7);
  v12 = objc_msgSend_integerValue(v8, v9, v10, v11);

  return v12;
}

@end