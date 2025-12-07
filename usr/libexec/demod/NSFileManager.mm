@interface NSFileManager
+ (BOOL)copySQLiteFile:(id)file toPath:(id)path timeout:(double)timeout error:(id *)error;
+ (BOOL)isSQLiteFile:(id)file error:(id *)error;
+ (int)_getProtectionClassForFile:(id)file error:(id *)error;
+ (void)removeJournalsForSQLiteFileAtPaths:(id)paths;
- (BOOL)cloneFile:(id)file to:(id)to expectingHash:(id)hash correctOwnership:(BOOL)ownership;
@end

@implementation NSFileManager

- (BOOL)cloneFile:(id)file to:(id)to expectingHash:(id)hash correctOwnership:(BOOL)ownership
{
  ownershipCopy = ownership;
  fileCopy = file;
  toCopy = to;
  hashCopy = hash;
  v13 = +[NSMutableArray array];
  v14 = copyfile_state_alloc();
  copyfile_state_set(v14, 6u, sub_100015D64);
  copyfile_state_set(v14, 7u, v13);
  v15 = copyfile([fileCopy UTF8String], objc_msgSend(toCopy, "UTF8String"), v14, 0x1008000u);
  v16 = copyfile_state_free(v14);
  if (v15)
  {
    v20 = sub_100063A54(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000C831C();
    }

    v22 = 0;
    fileHash = 0;
    goto LABEL_18;
  }

  [NSFileManager removeJournalsForSQLiteFileAtPaths:v13];
  if (!hashCopy)
  {
    fileHash = 0;
    if (ownershipCopy)
    {
      goto LABEL_5;
    }

LABEL_9:
    v22 = 0;
    v23 = 1;
    goto LABEL_10;
  }

  v17 = [NSURL fileURLWithString:toCopy];
  fileHash = [v17 fileHash];

  v19 = [fileHash isEqualToData:hashCopy];
  if ((v19 & 1) == 0)
  {
    v20 = sub_100063A54(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v33 = fileCopy;
      v34 = 2114;
      v35 = fileHash;
      v36 = 2114;
      v37 = hashCopy;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "File has been changed after device manifest generation: %{public}@ - Current hash:  %{public}@ - Expected hash:  %{public}@", buf, 0x20u);
    }

    v22 = 0;
    goto LABEL_18;
  }

  if (!ownershipCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  v30[0] = NSFileOwnerAccountName;
  v30[1] = NSFileGroupOwnerAccountName;
  v31[0] = @"mobile";
  v31[1] = @"mobile";
  v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  v29 = 0;
  v21 = [(NSFileManager *)self setAttributes:v20 ofItemAtPath:toCopy error:&v29];
  v22 = v29;
  if ((v21 & 1) == 0)
  {
    sub_1000C83CC(fileCopy);
LABEL_18:

    if (![(NSFileManager *)self fileExistsAtPath:toCopy])
    {
      v23 = 0;
      goto LABEL_10;
    }

    v28 = v22;
    v25 = [(NSFileManager *)self removeItemAtPath:toCopy error:&v28];
    v26 = v28;

    if (v25)
    {
      v23 = 0;
      v22 = v26;
      goto LABEL_10;
    }

    v20 = sub_100063A54(v27);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000C846C(toCopy, v26);
    }

    v23 = 0;
    v22 = v26;
    goto LABEL_7;
  }

  v23 = 1;
LABEL_7:

LABEL_10:
  return v23;
}

+ (BOOL)isSQLiteFile:(id)file error:(id *)error
{
  fileCopy = file;
  v6 = [NSURL fileURLWithPath:fileCopy];
  v26[0] = 0;
  v7 = [NSFileHandle fileHandleForReadingFromURL:v6 error:v26];
  v8 = v26[0];
  v9 = v8;
  if (v7)
  {
    fileDescriptor = [v7 fileDescriptor];
    v24 = 0;
    v23 = 0;
    [v6 getResourceValue:&v24 forKey:NSURLIsRegularFileKey error:&v23];
    v11 = v24;
    v12 = v23;

    if ([v11 BOOLValue])
    {
      __buf = 0;
      v28 = 0;
      v13 = pread(fileDescriptor, &__buf, 0x10uLL, 0);

      if (v13 < 0)
      {
        v18 = sub_100063A54(v14);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000C872C();
        }

        v22 = v12;
        fileCopy = [NSString stringWithFormat:@"pread() error errno: %d - file: %@", *__error(), fileCopy];
        sub_1000C1390(&v22, 0, fileCopy);
        v17 = v22;

        v7 = 0;
        if (!error)
        {
          v16 = 0;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (v13 == 16)
      {
        v7 = 0;
        if (__buf == 0x66206574694C5153 && v28 == 0x332074616D726FLL)
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    sub_1000C87C4(v8, &v25);
    v11 = 0;
    v12 = v26[1];
  }

  if (error)
  {
    v17 = v12;
LABEL_15:
    v20 = v17;
    v16 = 0;
    *error = v17;
    goto LABEL_17;
  }

  v16 = 0;
LABEL_11:
  v17 = v12;
LABEL_17:

  return v16;
}

+ (BOOL)copySQLiteFile:(id)file toPath:(id)path timeout:(double)timeout error:(id *)error
{
  fileCopy = file;
  pathCopy = path;
  fileSystemRepresentation = [fileCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [pathCopy fileSystemRepresentation];
  db = 0;
  ppDb = 0;
  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = [MSDFileMetadata fileMetadatatWithPath:fileCopy];
  v15 = sub_100063A54(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    *&buf[4] = fileCopy;
    v60 = 2114;
    v61 = pathCopy;
    v62 = 2048;
    v63 = COERCE_DOUBLE([v14 getFileSize]);
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Copying SQLite database at %{public}@ to %{public}@ (%lld bytes)", buf, 0x20u);
  }

  v56 = 0;
  v16 = [NSFileManager _getProtectionClassForFile:fileCopy error:&v56];
  v17 = v56;
  v18 = sqlite3_open_v2(fileSystemRepresentation, &ppDb, 65537, 0);
  if (v18)
  {
    v45 = v18;
    v55 = v17;
    v46 = ppDb;
    if (ppDb)
    {
      v46 = sqlite3_errmsg(ppDb);
    }

    v29 = [NSString stringWithFormat:@"Error opening SQLite file: %s (%d)", v46, v45];
    sub_1000C1390(&v55, 0, v29);
    v47 = v55;
    goto LABEL_51;
  }

  v19 = sub_100063A54(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C8828();
  }

  v20 = sqlite3_open_v2(fileSystemRepresentation2, &db, v16 | 0x10006, 0);
  if (v20)
  {
    v48 = v20;
    v54 = v17;
    v49 = db;
    if (db)
    {
      v49 = sqlite3_errmsg(db);
    }

    v29 = [NSString stringWithFormat:@"Error opening SQLite file: %s (%d)", v49, v48];
    sub_1000C1390(&v54, 0, v29);
    v47 = v54;
    goto LABEL_51;
  }

  v21 = sub_100063A54(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C889C();
  }

  v22 = sqlite3_backup_init(db, "main", ppDb, "main");
  if (!v22)
  {
    v53 = v17;
    v50 = sqlite3_errcode(db);
    v29 = [NSString stringWithFormat:@"Error initializing backup connection. code: %d, msg: %s", v50, sqlite3_errmsg(db)];
    sub_1000C1390(&v53, 0, v29);
    v47 = v53;
LABEL_51:
    v51 = v47;

    v26 = 0;
    v17 = v51;
LABEL_18:

    goto LABEL_19;
  }

  v23 = v22;
  v24 = sqlite3_backup_step(v22, -1);
  if (v24 == 101)
  {
    v25 = sub_100063A54(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C8978(v25);
    }

    if ([v14 restoreAttribuesToPath:pathCopy])
    {
      v26 = 1;
    }

    else
    {
      sub_1000C89BC();
      v26 = 0;
    }
  }

  else
  {
    sub_1000C8914(v17, &v52);
    v26 = 0;
    v17 = *buf;
  }

  v27 = sqlite3_backup_finish(v23);
  if (v27)
  {
    v28 = v27;
    v29 = sub_100063A54(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000C89EC(v28, v29);
    }

    goto LABEL_18;
  }

LABEL_19:
  if (ppDb)
  {
    v30 = sqlite3_close(ppDb);
    if (v30)
    {
      v31 = sub_100063A54(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000C8A64();
      }
    }

    ppDb = 0;
  }

  if (db)
  {
    v32 = sqlite3_close(db);
    if (v32)
    {
      v33 = sub_100063A54(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000C8A64();
      }
    }

    db = 0;
  }

  v34 = +[NSDate timeIntervalSinceReferenceDate];
  v36 = v35;
  v37 = sub_100063A54(v34);
  v38 = v37;
  if (v26)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      getFileSize = [v14 getFileSize];
      *buf = 138544130;
      *&buf[4] = fileCopy;
      v60 = 2114;
      v61 = pathCopy;
      v62 = 2048;
      v63 = v36 - v13;
      v64 = 2048;
      v65 = getFileSize;
      _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Finished copying SQLite database from %{public}@ to %{public}@ in %0.3fs (%lld bytes)", buf, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000C8AD4();
    }

    v38 = +[NSFileManager defaultManager];
    if ([v38 fileExistsAtPath:pathCopy])
    {
      v40 = +[NSFileManager defaultManager];
      v41 = [v40 removeItemAtPath:pathCopy error:0];

      if (v41)
      {
        goto LABEL_41;
      }

      v38 = sub_100063A54(v42);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000C8B50();
      }
    }
  }

LABEL_41:
  if (error)
  {
    v43 = v17;
    *error = v17;
  }

  return v26;
}

+ (void)removeJournalsForSQLiteFileAtPaths:(id)paths
{
  pathsCopy = paths;
  v4 = +[NSFileManager defaultManager];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = pathsCopy;
  v20 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  v5 = 0;
  if (v20)
  {
    v19 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v6;
        v7 = *(*(&v27 + 1) + 8 * v6);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = [&off_10017BBE0 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            v11 = 0;
            do
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(&off_10017BBE0);
              }

              v12 = [v7 stringByAppendingString:*(*(&v23 + 1) + 8 * v11)];
              if ([v4 fileExistsAtPath:v12])
              {
                v22 = v5;
                v13 = [v4 removeItemAtPath:v12 error:&v22];
                v14 = v22;

                v16 = sub_100063A54(v15);
                v17 = v16;
                if (v13)
                {
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v32 = v12;
                    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Removed copied SQLite file journal at %{public}@", buf, 0xCu);
                  }
                }

                else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v32 = v12;
                  _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error removing copied SQLite file journal %{public}@", buf, 0xCu);
                }

                v5 = v14;
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [&off_10017BBE0 countByEnumeratingWithState:&v23 objects:v33 count:16];
          }

          while (v9);
        }

        v6 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v20);
  }
}

+ (int)_getProtectionClassForFile:(id)file error:(id *)error
{
  fileCopy = file;
  v6 = +[NSFileManager defaultManager];
  v16 = 0;
  v7 = [v6 attributesOfItemAtPath:fileCopy error:&v16];
  v8 = v16;

  v9 = [v7 objectForKey:NSFileProtectionKey];
  v10 = v9;
  if (v9)
  {
    if ([v9 isEqualToString:NSFileProtectionComplete])
    {
      v11 = 0x100000;
      if (!error)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ([v10 isEqualToString:NSFileProtectionCompleteUnlessOpen])
    {
      v11 = 0x200000;
      if (!error)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ([v10 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
    {
      v11 = 3145728;
      if (!error)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v12 = [v10 isEqualToString:NSFileProtectionNone];
    if ((v12 & 1) == 0)
    {
      v13 = sub_100063A54(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = fileCopy;
        v19 = 2114;
        v20 = v10;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid file protection level for file %{public}@ - %{public}@. Defaulting to 'None'", buf, 0x16u);
      }
    }
  }

  v11 = 0x400000;
  if (error)
  {
LABEL_16:
    v14 = v8;
    *error = v8;
  }

LABEL_17:

  return v11;
}

@end