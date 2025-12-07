@interface MBSQLiteFileHandle
+ (BOOL)compactSQLiteDatabaseAtPath:(id)path toPath:(id)toPath error:(id *)error;
+ (BOOL)copySQLiteFileAtPath:(id)path toPath:(id)toPath timeout:(double)timeout error:(id *)error;
+ (BOOL)isSQLiteFileAtPath:(id)path result:(BOOL *)result error:(id *)error;
+ (BOOL)isSQLiteFileHandle:(id)handle result:(BOOL *)result error:(id *)error;
+ (BOOL)lastModifiedForSQLiteFileAtPath:(id)path time:(int64_t *)time error:(id *)error;
+ (BOOL)removeJournalsForSQLiteFileAtPath:(id)path error:(id *)error;
+ (BOOL)removeSQLiteFileAtPath:(id)path error:(id *)error;
+ (BOOL)setAttributes:(id)attributes ofSQLiteFileAtPath:(id)path error:(id *)error;
+ (id)SQLiteFileHandleWithOriginalFileHandle:(id)handle copiedFileHandle:(id)fileHandle;
+ (id)executePragma:(id)pragma withDatabase:(sqlite3 *)database;
+ (void)removeAllSQLiteFilesAtPath:(id)path;
- (BOOL)closeWithError:(id *)error;
- (BOOL)statWithBuffer:(stat *)buffer error:(id *)error;
- (MBSQLiteFileHandle)initWithOriginalFileHandle:(id)handle copiedFileHandle:(id)fileHandle;
@end

@implementation MBSQLiteFileHandle

+ (BOOL)isSQLiteFileAtPath:(id)path result:(BOOL *)result error:(id *)error
{
  pathCopy = path;
  v8 = [pathCopy length];
  v9 = [@"/private" length];
  if (v8 > 1024 - ([@"-journal" length] + v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = pathCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "File path too long to handle as a SQLite file: %@", buf, 0xCu);
      _MBLog(@"I ", "File path too long to handle as a SQLite file: %@", pathCopy);
    }

    if (!result)
    {
      goto LABEL_6;
    }

LABEL_5:
    *result = 0;
LABEL_6:
    v11 = 1;
    goto LABEL_14;
  }

  if (sub_100079E0C(pathCopy))
  {
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = [MBBasicFileHandle basicFileHandleWithPath:pathCopy flags:256 mode:0 error:error];
  if (v12)
  {
    v11 = [MBSQLiteFileHandle isSQLiteFileHandle:v12 result:result error:error];
    [v12 closeWithError:0];
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  return v11;
}

+ (BOOL)isSQLiteFileHandle:(id)handle result:(BOOL *)result error:(id *)error
{
  handleCopy = handle;
  *result = 0;
  v31 = xmmword_1000B7458;
  v32 = 0;
  v30 = 0;
  v8 = [handleCopy fd];
  if (fgetattrlist(v8, &v31, &v30, 8uLL, 0))
  {
    path = [handleCopy path];
    v10 = [MBError posixErrorWithPath:path format:@"fgetattrlist failed"];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path2 = [handleCopy path];
      *buf = 138412546;
      v36 = path2;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "fgetattrlist failed at %@: %@", buf, 0x16u);

      path3 = [handleCopy path];
      _MBLog(@"E ", "fgetattrlist failed at %@: %@", path3, v10);
    }

    if (error)
    {
      v14 = v10;
      *error = v10;
    }

    v15 = 0;
  }

  else if (HIDWORD(v30) == 1)
  {
    __buf = 0;
    v34 = 0;
    v16 = pread(v8, &__buf, 0x10uLL, 0);
    v15 = v16 >= 0;
    if (v16 < 0)
    {
      v23 = *__error();
      path4 = [handleCopy path];
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = path4;
        v37 = 1024;
        LODWORD(v38) = v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "pread failed at %@: %{errno}d", buf, 0x12u);
        _MBLog(@"E ", "pread failed at %@: %{errno}d", path4, v23);
      }

      v26 = [MBError errorWithErrno:v23 path:path4 format:@"pread error"];
      v27 = v26;
      if (error)
      {
        v28 = v26;
        *error = v27;
      }

      if ((v23 - 34) <= 0x3A && ((1 << (v23 - 34)) & 0x400000000000801) != 0 || v23 == 22)
      {
        sub_10000D2DC(path4, v23, "pread");
      }
    }

    else if (v16 == 16 && __buf == 0x66206574694C5153 && v34 == 0x332074616D726FLL)
    {
      *result = 1;
    }
  }

  else
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HIDWORD(v30);
      path5 = [handleCopy path];
      *buf = 134218242;
      v36 = v19;
      v37 = 2112;
      v38 = path5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Not a regular file (%ld) at %@", buf, 0x16u);

      v21 = HIDWORD(v30);
      path6 = [handleCopy path];
      _MBLog(@"Db", "Not a regular file (%ld) at %@", v21, path6);
    }

    v15 = 1;
  }

  return v15;
}

+ (BOOL)compactSQLiteDatabaseAtPath:(id)path toPath:(id)toPath error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  if (!error)
  {
    sub_1000A04DC();
  }

  v9 = toPathCopy;
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [v9 fileSystemRepresentation];
  ppDb = 0;
  memset(&v64, 0, sizeof(v64));
  if (stat(fileSystemRepresentation, &v64))
  {
    v12 = *__error();
    v13 = [MBError posixErrorWithPath:pathCopy format:@"stat error"];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v67 = pathCopy;
      *&v67[8] = 1024;
      *&v67[10] = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "stat failed at %@: %{errno}d", pathCopy, v12);
    }

    goto LABEL_5;
  }

  st_size = v64.st_size;
  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *v67 = pathCopy;
    *&v67[8] = 2112;
    *&v67[10] = v9;
    *&v67[18] = 2048;
    *&v67[20] = st_size;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Compacting SQLite database at %@ to %@ (%lld bytes)", buf, 0x20u);
    _MBLog(@"I ", "Compacting SQLite database at %@ to %@ (%lld bytes)", pathCopy, v9, st_size);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v30 = v29;
  v31 = sqlite3_open_v2(fileSystemRepresentation, &ppDb, 1, 0);
  if (v31)
  {
    v32 = v31;
    v33 = ppDb;
    if (ppDb)
    {
      v33 = sqlite3_errmsg(ppDb);
    }

    v57 = v33;
    v58 = v32;
    v34 = @"Error opening SQLite file: %s (%d)";
LABEL_27:
    v35 = 16;
LABEL_28:
    v36 = [MBError errorWithCode:v35 path:pathCopy format:v34, v57, v58];
LABEL_29:
    v13 = v36;
    if (v36)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v40 = v39;
  [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v9];
  v41 = _sqlite3_db_copy_compact();
  if (v41)
  {
    v42 = v41;
    while (1)
    {
      v43 = sqlite3_extended_errcode(ppDb);
      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *v67 = pathCopy;
        *&v67[8] = 1024;
        *&v67[10] = v42;
        *&v67[14] = 1024;
        *&v67[16] = v43;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "_sqlite3_db_copy_compact failed at %@: %d/0x%x", buf, 0x18u);
        _MBLog(@"E ", "_sqlite3_db_copy_compact failed at %@: %d/0x%x", pathCopy, v42, v43);
      }

      if (v42 != 5)
      {
        break;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      if (v45 - v40 >= 1.0)
      {
        v34 = @"SQLite file is locked";
        v35 = 13;
        goto LABEL_28;
      }

      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v67 = pathCopy;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Waiting for busy SQLite database at %@", buf, 0xCu);
        _MBLog(@"I ", "Waiting for busy SQLite database at %@", pathCopy);
      }

      [NSThread sleepForTimeInterval:0.1];
      [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:v9];
      v42 = _sqlite3_db_copy_compact();
      if (!v42)
      {
        goto LABEL_44;
      }
    }

    if (v42 == 14)
    {
      v34 = @"Can't open SQLite file";
      v35 = 100;
      goto LABEL_28;
    }

    v57 = v42;
    v34 = @"Can't compact SQLite file (%d)";
    goto LABEL_27;
  }

LABEL_44:
  v47 = MBGetDefaultLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v67 = pathCopy;
    *&v67[8] = 2112;
    *&v67[10] = v9;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Created compacted SQLite file from %@ to %@", buf, 0x16u);
    _MBLog(@"Db", "Created compacted SQLite file from %@ to %@", pathCopy, v9);
  }

  memset(&v63, 0, sizeof(v63));
  if (!lstat(fileSystemRepresentation2, &v63) && ((v63.st_mode & 0xF000) != 0x8000 || v63.st_nlink >= 2u))
  {
    v36 = [MBError errorWithCode:1 format:@"not a regular file"];
    goto LABEL_29;
  }

  if (lchown(fileSystemRepresentation2, v64.st_uid, v64.st_gid))
  {
    v48 = @"chown error";
LABEL_55:
    v36 = [MBError posixErrorWithPath:v9 format:v48];
    goto LABEL_29;
  }

  if (lchmod(fileSystemRepresentation2, v64.st_mode))
  {
    v48 = @"chmod error";
    goto LABEL_55;
  }

  v62 = 0;
  v49 = [MBProtectionClassUtils getWithPathFSR:fileSystemRepresentation error:&v62];
  v13 = v62;
  if ((v49 + 1) <= 1u)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v67 = pathCopy;
      *&v67[8] = 2112;
      *&v67[10] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to fetch the protection class for %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to fetch the protection class for %@: %@", pathCopy, v13);
    }

LABEL_5:

    if (v13)
    {
LABEL_6:
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v67 = pathCopy;
        *&v67[8] = 2112;
        *&v67[10] = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to compact SQLite database at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to compact SQLite database at %@: %@", pathCopy, v13);
      }

      v16 = v13;
      v17 = 0;
      *error = v13;
      v18 = v13;
      goto LABEL_9;
    }

LABEL_30:
    sub_1000A04B0();
  }

  v61 = v13;
  v50 = [MBProtectionClassUtils setWithPathFSR:fileSystemRepresentation2 value:v49 error:&v61];
  v18 = v61;

  if ((v50 & 1) == 0)
  {
    v51 = MBGetDefaultLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v67 = v49;
      *&v67[4] = 2112;
      *&v67[6] = v9;
      *&v67[14] = 2112;
      *&v67[16] = v18;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to set the protection class (%d) for %@: %@", buf, 0x1Cu);
      _MBLog(@"E ", "Failed to set the protection class (%d) for %@: %@", v49, v9, v18);
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v53 = v52;
  v54 = v63.st_size;
  v55 = MBGetDefaultLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = v53 - v30;
    *buf = 138412802;
    *v67 = pathCopy;
    *&v67[8] = 2048;
    *&v67[10] = v56;
    *&v67[18] = 2048;
    *&v67[20] = v54;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Finished compacting SQLite database at %@ in %0.3fs (%lld bytes)", buf, 0x20u);
    _MBLog(@"I ", "Finished compacting SQLite database at %@ in %0.3fs (%lld bytes)", pathCopy, *&v56, v54);
  }

  v17 = 1;
LABEL_9:
  if (ppDb)
  {
    v19 = sqlite3_close(ppDb);
    if (v19)
    {
      v20 = v19;
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v67 = pathCopy;
        *&v67[8] = 1024;
        *&v67[10] = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to close SQLite database at %@: %d", buf, 0x12u);
        _MBLog(@"E ", "Failed to close SQLite database at %@: %d", pathCopy, v20);
      }
    }
  }

  v60 = v18;
  v22 = [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:v9 error:&v60];
  v23 = v60;

  if ((v22 & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v67 = v9;
      *&v67[8] = 2112;
      *&v67[10] = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove SQLite files for %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to remove SQLite files for %@: %@", v9, v23);
    }

    v23 = 0;
  }

  if (!v17)
  {
    v59 = v23;
    v25 = [MBSQLiteFileHandle removeSQLiteFileAtPath:v9 error:&v59];
    v26 = v59;

    if (v25)
    {
      v23 = v26;
    }

    else
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v67 = v9;
        *&v67[8] = 2112;
        *&v67[10] = v26;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to remove SQLite database at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to remove SQLite database at %@: %@", v9, v26);
      }

      v23 = 0;
    }
  }

  return v17;
}

+ (BOOL)copySQLiteFileAtPath:(id)path toPath:(id)toPath timeout:(double)timeout error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [toPathCopy fileSystemRepresentation];
  v82 = 0;
  ppDb = 0;
  memset(&v81, 0, sizeof(v81));
  if (stat(fileSystemRepresentation, &v81))
  {
    if (error)
    {
      *error = [MBError posixErrorWithPath:pathCopy format:@"stat error"];
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 138412546;
      v85 = pathCopy;
      v86 = 1024;
      *v87 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
      v15 = __error();
      _MBLog(@"E ", "stat failed at %@: %{errno}d", pathCopy, *v15);
    }

    goto LABEL_7;
  }

  st_size = v81.st_size;
  v30 = MBGetDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v85 = pathCopy;
    v86 = 2112;
    *v87 = toPathCopy;
    *&v87[8] = 2048;
    v88 = st_size;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Copying SQLite database at %@ to %@ (%lld bytes)", buf, 0x20u);
    _MBLog(@"I ", "Copying SQLite database at %@ to %@ (%lld bytes)", pathCopy, toPathCopy, st_size);
  }

  v31 = [MBProtectionClassUtils getWithPath:pathCopy error:error];
  if ((v31 + 1) < 2u)
  {
    v24 = 0;
LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  v35 = v31;
  +[NSDate timeIntervalSinceReferenceDate];
  v37 = v36;
  v38 = sqlite3_open_v2(fileSystemRepresentation, &ppDb, 1, 0);
  if (v38)
  {
    if (error)
    {
      v39 = v38;
      v40 = ppDb;
      if (ppDb)
      {
        v40 = sqlite3_errmsg(ppDb);
      }

      v76 = v40;
      v77 = v39;
      v41 = @"Error opening SQLite file: %s (%d)";
LABEL_43:
      v42 = 16;
LABEL_44:
      v43 = pathCopy;
      goto LABEL_52;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v44 = MBGetDefaultLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v85 = pathCopy;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Opened SQLite database at %@", buf, 0xCu);
    _MBLog(@"Db", "Opened SQLite database at %@", pathCopy);
  }

  v45 = [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:v35]| 6;
  v46 = sqlite3_open_v2(fileSystemRepresentation2, &v82, v45, 0);
  if (v46)
  {
    if (error)
    {
      v47 = v46;
      v48 = v82;
      if (v82)
      {
        v48 = sqlite3_errmsg(v82);
      }

      v76 = v48;
      v77 = v47;
      v41 = @"Error opening SQLite file: %s (%d)";
      v42 = 16;
      v43 = toPathCopy;
LABEL_52:
      v49 = [MBError errorWithCode:v42 path:v43 format:v41, v76, v77];
LABEL_53:
      v16 = 0;
      *error = v49;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v50 = MBGetDefaultLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = toPathCopy;
    v86 = 1024;
    *v87 = v45;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Opened SQLite file for copying at %@ with flags 0x%x", buf, 0x12u);
    _MBLog(@"Db", "Opened SQLite file for copying at %@ with flags 0x%x", toPathCopy, v45);
  }

  memset(&v80, 0, sizeof(v80));
  if (!lstat(fileSystemRepresentation2, &v80) && ((v80.st_mode & 0xF000) != 0x8000 || v80.st_nlink >= 2u))
  {
    if (error)
    {
      v49 = [MBError errorWithCode:1 format:@"not a regular file"];
      goto LABEL_53;
    }

    goto LABEL_7;
  }

  if (lchown(fileSystemRepresentation2, v81.st_uid, v81.st_gid))
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v51 = @"chown error";
LABEL_65:
    v49 = [MBError posixErrorWithPath:toPathCopy format:v51];
    goto LABEL_53;
  }

  if (lchmod(fileSystemRepresentation2, v81.st_mode))
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v51 = @"chmod error";
    goto LABEL_65;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v53 = v52;
  v54 = sqlite3_file_control(v82, 0, 102, ppDb);
  if (v54)
  {
    v55 = v54;
    while (1)
    {
      v56 = sqlite3_extended_errcode(v82);
      v57 = MBGetDefaultLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v85 = pathCopy;
        v86 = 1024;
        *v87 = v55;
        *&v87[4] = 1024;
        *&v87[6] = v56;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "sqlite3_file_control(SQLITE_REPLACE_DATABASE) failed at %@: %d/0x%x", buf, 0x18u);
        _MBLog(@"E ", "sqlite3_file_control(SQLITE_REPLACE_DATABASE) failed at %@: %d/0x%x", pathCopy, v55, v56);
      }

      if (v55 != 5)
      {
        break;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      if (v58 - v53 >= timeout)
      {
        if (!error)
        {
          goto LABEL_7;
        }

        v41 = @"SQLite file is locked";
        v42 = 13;
        goto LABEL_44;
      }

      v59 = MBGetDefaultLog();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v85 = pathCopy;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Waiting for busy SQLite database at %@", buf, 0xCu);
        _MBLog(@"Db", "Waiting for busy SQLite database at %@", pathCopy);
      }

      [NSThread sleepForTimeInterval:0.1];
      v55 = sqlite3_file_control(v82, 0, 102, ppDb);
      if (!v55)
      {
        goto LABEL_77;
      }
    }

    if (v55 == 14)
    {
      if (!error)
      {
        goto LABEL_7;
      }

      v41 = @"Can't open SQLite file";
      v42 = 100;
      goto LABEL_44;
    }

    if (!error)
    {
      goto LABEL_7;
    }

    v41 = @"Can't copy SQLite file";
    goto LABEL_43;
  }

LABEL_77:
  v60 = MBGetDefaultLog();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = pathCopy;
    v86 = 2112;
    *v87 = toPathCopy;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "Copied SQLite file from %@ to %@", buf, 0x16u);
    _MBLog(@"Db", "Copied SQLite file from %@ to %@", pathCopy, toPathCopy);
  }

  v61 = sqlite3_wal_checkpoint_v2(v82, 0, 2, 0, 0);
  if (v61)
  {
    v62 = v61;
    v63 = sqlite3_extended_errcode(v82);
    v64 = MBGetDefaultLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v85 = pathCopy;
      v86 = 1024;
      *v87 = v62;
      *&v87[4] = 1024;
      *&v87[6] = v63;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Failed to checkpoint copied SQLite database at %@ (%d/0x%x)", buf, 0x18u);
      _MBLog(@"E ", "Failed to checkpoint copied SQLite database at %@ (%d/0x%x)", pathCopy, v62, v63);
    }

    if (!error)
    {
      goto LABEL_7;
    }

    v41 = @"Can't checkpoint copied SQLite file";
    goto LABEL_43;
  }

  v65 = MBGetDefaultLog();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v85 = pathCopy;
    v86 = 2112;
    *v87 = toPathCopy;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "Checkpointed copied SQLite file from %@ to %@", buf, 0x16u);
    _MBLog(@"Db", "Checkpointed copied SQLite file from %@ to %@", pathCopy, toPathCopy);
  }

  v66 = sqlite3_close(v82);
  v82 = 0;
  if (v66)
  {
    v67 = v66;
    v68 = MBGetDefaultLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = toPathCopy;
      v86 = 1024;
      *v87 = v67;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to close copied SQLite database at %@: %d", buf, 0x12u);
      _MBLog(@"E ", "Failed to close copied SQLite database at %@: %d", toPathCopy, v67);
    }

    if (!error)
    {
      goto LABEL_7;
    }

    v41 = @"Can't close copied SQLite file";
    goto LABEL_43;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v70 = v69;
  v71 = lstat(fileSystemRepresentation2, &v80);
  v72 = v80.st_size;
  v73 = MBGetDefaultLog();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
  {
    if (v71)
    {
      v74 = -1;
    }

    else
    {
      v74 = v72;
    }

    *buf = 138412802;
    v75 = v70 - v37;
    v85 = pathCopy;
    v86 = 2048;
    *v87 = v75;
    *&v87[8] = 2048;
    v88 = v74;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Finished copying SQLite database at %@ in %0.3fs (%lld bytes)", buf, 0x20u);
    _MBLog(@"I ", "Finished copying SQLite database at %@ in %0.3fs (%lld bytes)", pathCopy, *&v75, v74);
  }

  v16 = 1;
LABEL_8:
  if (ppDb)
  {
    v17 = sqlite3_close(ppDb);
    if (v17)
    {
      v18 = v17;
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = pathCopy;
        v86 = 1024;
        *v87 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to close the SQLite database at %@: %d", buf, 0x12u);
        _MBLog(@"E ", "Failed to close the SQLite database at %@: %d", pathCopy, v18);
      }
    }
  }

  if (v82)
  {
    v20 = sqlite3_close(v82);
    if (v20)
    {
      v21 = v20;
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = toPathCopy;
        v86 = 1024;
        *v87 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to close the SQLite database at %@: %d", buf, 0x12u);
        _MBLog(@"E ", "Failed to close the SQLite database at %@: %d", toPathCopy, v21);
      }
    }
  }

  v79 = 0;
  v23 = [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:toPathCopy error:&v79];
  v24 = v79;
  if ((v23 & 1) == 0)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = toPathCopy;
      v86 = 2112;
      *v87 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to remove the journals for the database at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to remove the journals for the database at %@: %@", toPathCopy, v24);
    }

    v24 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v78 = v24;
    v27 = [MBSQLiteFileHandle removeSQLiteFileAtPath:toPathCopy error:&v78];
    v28 = v78;

    if (v27)
    {
      v24 = v28;
    }

    else
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v85 = toPathCopy;
        v86 = 2112;
        *v87 = v28;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to remove the SQLite database at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to remove the SQLite database at %@: %@", toPathCopy, v28);
      }

      v24 = 0;
    }

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v85 = pathCopy;
      v86 = 2112;
      *v87 = v24;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to copy SQLite database at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to copy SQLite database at %@: %@", pathCopy, v24);
    }

    goto LABEL_36;
  }

  v26 = 1;
LABEL_37:

  return v26;
}

+ (BOOL)lastModifiedForSQLiteFileAtPath:(id)path time:(int64_t *)time error:(id *)error
{
  pathCopy = path;
  v8 = [pathCopy stringByAppendingString:@"-wal"];
  memset(&v20, 0, sizeof(v20));
  if (stat([v8 fileSystemRepresentation], &v20))
  {
    lastPathComponent = [v8 lastPathComponent];
    v10 = strlen([lastPathComponent fileSystemRepresentation]);

    if (*__error() == 63 && v10 >= 0x100)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "WAL file name too long: %@", buf, 0xCu);
        _MBLog(@"E ", "WAL file name too long: %@", v8);
      }
    }

    else if (*__error() != 2)
    {
      v15 = [MBError posixErrorWithPath:v8 format:@"stat failed"];
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "stat failed at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "stat failed at %@: %@", v8, v15, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec);
      }

      goto LABEL_20;
    }
  }

  else if ((v20.st_mode & 0xF000) == 0x8000)
  {
    tv_sec = v20.st_mtimespec.tv_sec;
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v22 = tv_sec;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Using last modified time (%lu) of WAL at %@", buf, 0x16u);
      _MBLog(@"I ", "Using last modified time (%lu) of WAL at %@", tv_sec, v8, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec);
    }

    goto LABEL_17;
  }

  if (!stat([pathCopy fileSystemRepresentation], &v20))
  {
    tv_sec = v20.st_mtimespec.tv_sec;
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v22 = tv_sec;
      v23 = 2112;
      v24 = pathCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Using last modified time (%lu) of db at %@", buf, 0x16u);
      _MBLog(@"I ", "Using last modified time (%lu) of db at %@", tv_sec, pathCopy, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec);
    }

LABEL_17:

    *time = tv_sec;
    v17 = 1;
    goto LABEL_24;
  }

  v14 = *__error();
  v15 = [MBError posixErrorWithPath:pathCopy format:@"stat failed"];
  if (v14 != 2)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = pathCopy;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "stat failed at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "stat failed at %@: %@", pathCopy, v15, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec);
    }

LABEL_20:
  }

  if (error)
  {
    v18 = v15;
    *error = v15;
  }

  v17 = 0;
LABEL_24:

  return v17;
}

+ (id)executePragma:(id)pragma withDatabase:(sqlite3 *)database
{
  ppStmt = 0;
  do
  {
    pragma = [NSString stringWithFormat:@"PRAGMA %@", pragma];
    v7 = sqlite3_prepare(database, [pragma UTF8String], -1, &ppStmt, 0);
  }

  while (v7 == 5);
  if (v7)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "sqlite3_prepare returned %d!", buf, 8u);
      _MBLog(@"E ", "sqlite3_prepare returned %d!", v7);
    }

    v9 = 0;
  }

  else
  {
    do
    {
      v8 = sqlite3_step(ppStmt);
    }

    while (v8 == 5);
    if (v8 == 100)
    {
      v9 = [NSString stringWithFormat:@"%s", sqlite3_column_text(ppStmt, 0)];
        ;
      }
    }

    else
    {
      v9 = 0;
    }

    sqlite3_finalize(ppStmt);
    ppStmt = 0;
  }

  return v9;
}

+ (BOOL)setAttributes:(id)attributes ofSQLiteFileAtPath:(id)path error:(id *)error
{
  attributesCopy = attributes;
  pathCopy = path;
  v24 = +[NSFileManager defaultManager];
  v9 = [attributesCopy mutableCopy];
  v10 = [v9 objectForKeyedSubscript:NSFileOwnerAccountID];
  v11 = [v9 objectForKeyedSubscript:NSFileGroupOwnerAccountID];
  [v9 removeObjectForKey:NSFileOwnerAccountID];
  v23 = v9;
  [v9 removeObjectForKey:NSFileGroupOwnerAccountID];
  v25 = v11;
  v26 = v10;
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412546;
      *&buf.st_mode = v10;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No uid or gid: %@, %@", &buf, 0x16u);
      _MBLog(@"E ", "No uid or gid: %@, %@", v10, v11);
    }

    goto LABEL_9;
  }

  memset(&buf, 0, sizeof(buf));
  if (lstat([pathCopy fileSystemRepresentation], &buf) || (buf.st_mode & 0xF000) == 0x8000 && buf.st_nlink < 2u)
  {
    if (lchown([pathCopy fileSystemRepresentation], objc_msgSend(v10, "integerValue"), objc_msgSend(v11, "integerValue")))
    {
      if (error)
      {
        [MBError errorWithCode:1 format:@"chown error on %@", pathCopy];
LABEL_38:
        *error = LOBYTE(v14) = 0;
        goto LABEL_41;
      }

      goto LABEL_9;
    }

    if (([v24 setAttributes:v9 ofItemAtPath:pathCopy error:error] & 1) == 0)
    {
      goto LABEL_9;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = MBSQLiteJournalSuffixes();
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v16)
    {
      LOBYTE(v14) = 1;
      goto LABEL_40;
    }

    v17 = v16;
    v18 = *v29;
    v14 = 1;
LABEL_19:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = [pathCopy stringByAppendingString:*(*(&v28 + 1) + 8 * v19)];
      memset(&v27, 0, sizeof(v27));
      if (!lstat([v20 fileSystemRepresentation], &v27) && ((v27.st_mode & 0xF000) != 0x8000 || v27.st_nlink >= 2u))
      {
        break;
      }

      if (lchown([v20 fileSystemRepresentation], objc_msgSend(v26, "integerValue"), objc_msgSend(v25, "integerValue")))
      {
        if (!error)
        {
          goto LABEL_32;
        }

        [MBError errorWithCode:1 format:@"chown error: %@", v20];
LABEL_31:
        *error = v14 = 0;
        goto LABEL_33;
      }

      v14 &= [v24 setAttributes:v23 ofItemAtPath:v20 error:error];
LABEL_33:

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (!v17)
        {
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_19;
      }
    }

    if (!error)
    {
LABEL_32:
      v14 = 0;
      goto LABEL_33;
    }

    [MBError errorWithCode:1 format:@"not a regular file", v22];
    goto LABEL_31;
  }

  if (error)
  {
    [MBError errorWithCode:1 format:@"not a regular file", v22];
    goto LABEL_38;
  }

LABEL_9:
  LOBYTE(v14) = 0;
LABEL_41:

  return v14;
}

+ (BOOL)removeSQLiteFileAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = +[NSFileManager defaultManager];
  v10 = 0;
  v7 = [v6 removeItemAtPath:pathCopy error:&v10];
  v8 = v10;

  if (error && (v7 & 1) == 0)
  {
    *error = [MBError errorForNSError:v8 path:pathCopy format:@"Error removing copied SQLite file"];
  }

  return v7;
}

+ (BOOL)removeJournalsForSQLiteFileAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = +[NSFileManager defaultManager];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = MBSQLiteJournalSuffixes();
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = 0;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [pathCopy stringByAppendingString:*(*(&v21 + 1) + 8 * i)];
        if ([v6 fileExistsAtPath:v13])
        {
          v20 = v10;
          v14 = [v6 removeItemAtPath:v13 error:&v20];
          v15 = v20;

          if (!v14)
          {
            if (errorCopy)
            {
              *errorCopy = [MBError errorForNSError:v15 path:v13 format:@"Error removing copied SQLite file journal"];
            }

            v17 = 0;
            goto LABEL_18;
          }

          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Removed copied SQLite file journal at %@", buf, 0xCu);
            _MBLog(@"Db", "Removed copied SQLite file journal at %@", v13);
          }

          v10 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v17 = 1;
    v15 = v10;
  }

  else
  {
    v15 = 0;
    v17 = 1;
  }

LABEL_18:

  return v17;
}

+ (void)removeAllSQLiteFilesAtPath:(id)path
{
  pathCopy = path;
  [MBSQLiteFileHandle removeJournalsForSQLiteFileAtPath:pathCopy error:0];
  [MBSQLiteFileHandle removeSQLiteFileAtPath:pathCopy error:0];
}

+ (id)SQLiteFileHandleWithOriginalFileHandle:(id)handle copiedFileHandle:(id)fileHandle
{
  fileHandleCopy = fileHandle;
  handleCopy = handle;
  v7 = [[MBSQLiteFileHandle alloc] initWithOriginalFileHandle:handleCopy copiedFileHandle:fileHandleCopy];

  return v7;
}

- (MBSQLiteFileHandle)initWithOriginalFileHandle:(id)handle copiedFileHandle:(id)fileHandle
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = MBSQLiteFileHandle;
  v8 = [(MBFileHandleProxy *)&v11 initWithFileHandle:fileHandle];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_originalFileHandle, handle);
  }

  return v9;
}

- (BOOL)statWithBuffer:(stat *)buffer error:(id *)error
{
  if ([MBFileHandle statWithBuffer:"statWithBuffer:error:" error:?])
  {
    v10 = 0;
    path = [(MBFileHandle *)self->_originalFileHandle path];
    v8 = [MBSQLiteFileHandle lastModifiedForSQLiteFileAtPath:path time:&v10 error:error];

    if (v8)
    {
      buffer->st_mtimespec.tv_sec = v10;
      buffer->st_mtimespec.tv_nsec = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)closeWithError:(id *)error
{
  v5 = [(MBFileHandle *)self->_originalFileHandle closeWithError:?];
  v10.receiver = self;
  v10.super_class = MBSQLiteFileHandle;
  v6 = [(MBFileHandleProxy *)&v10 closeWithError:error];
  fileHandle = [(MBFileHandleProxy *)self fileHandle];
  path = [fileHandle path];
  LODWORD(error) = [MBSQLiteFileHandle removeSQLiteFileAtPath:path error:error]& v6;

  return error & v5;
}

@end