@interface IMAbstractDatabaseArchiver
- (BOOL)copyDatabase:(id)database;
- (BOOL)deleteFailedArchiveAtPath:(id)path error:(id *)error;
- (IMAbstractDatabaseArchiver)initWithSourceDatabasePath:(id)path destinationDatabasePath:(id)databasePath;
- (void)dealloc;
@end

@implementation IMAbstractDatabaseArchiver

- (IMAbstractDatabaseArchiver)initWithSourceDatabasePath:(id)path destinationDatabasePath:(id)databasePath
{
  if (path)
  {
LABEL_6:
    if (databasePath)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v62 = xmmword_1E7CB8740;
  v63 = *off_1E7CB8750;
  v64 = 23;
  v7 = MEMORY[0x1E696AEC0];
  v8 = IMFileLocationTrimFileName();
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F2FA9728, v10);
  v14 = objc_msgSend_stringWithFormat_(v7, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", v13, @"sourcePath", "[IMAbstractDatabaseArchiver initWithSourceDatabasePath:destinationDatabasePath:]", v8, 23, v11);
  v15 = IMGetAssertionFailureHandler();
  if (!v15)
  {
    v19 = objc_msgSend_warning(MEMORY[0x1E69A6138], v16, v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFAB0(v14, v19, v20, v21, v22, v23, v24, v25);
      if (databasePath)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v15(v14);
  if (databasePath)
  {
    goto LABEL_11;
  }

LABEL_7:
  v62 = xmmword_1E7CB8768;
  v63 = *off_1E7CB8778;
  v64 = 24;
  v26 = MEMORY[0x1E696AEC0];
  v27 = IMFileLocationTrimFileName();
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, &stru_1F2FA9728, v29);
  v33 = objc_msgSend_stringWithFormat_(v26, v31, @"Unexpected nil '%@' in %s at %s:%d. %@", v32, @"destinationPath", "[IMAbstractDatabaseArchiver initWithSourceDatabasePath:destinationDatabasePath:]", v27, 24, v30);
  v34 = IMGetAssertionFailureHandler();
  if (v34)
  {
    v34(v33);
  }

  else
  {
    v38 = objc_msgSend_warning(MEMORY[0x1E69A6138], v35, v36, v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFAB0(v33, v38, v39, v40, v41, v42, v43, v44);
    }
  }

LABEL_11:
  v61.receiver = self;
  v61.super_class = IMAbstractDatabaseArchiver;
  v48 = [(IMAbstractDatabaseArchiver *)&v61 init];
  if (v48)
  {
    v49 = objc_msgSend_stringByExpandingTildeInPath(path, v45, v46, v47);
    v48->_sourcePath = objc_msgSend_copy(v49, v50, v51, v52);
    v56 = objc_msgSend_stringByExpandingTildeInPath(databasePath, v53, v54, v55);
    v48->_destinationPath = objc_msgSend_copy(v56, v57, v58, v59);
  }

  return v48;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMAbstractDatabaseArchiver;
  [(IMAbstractDatabaseArchiver *)&v3 dealloc];
}

- (BOOL)copyDatabase:(id)database
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMFileLocationTrimFileName();
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"required override", v7);
  v11 = objc_msgSend_stringWithFormat_(v4, v9, @"Failure in %s at %s:%d. %@", v10, "[IMAbstractDatabaseArchiver copyDatabase:]", v5, 41, v8, 0x1B7D20164, 0, "[IMAbstractDatabaseArchiver copyDatabase:]", "[IMAbstractDatabaseArchiver copyDatabase:]");
  v12 = IMGetAssertionFailureHandler();
  if (v12)
  {
    v12(v11);
    if (!database)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v16 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEFAB0(v11, v16, v17, v18, v19, v20, v21, v22);
    if (!database)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (database)
  {
LABEL_6:
    (*(database + 2))(database, 0, 0);
  }

  return 0;
}

- (BOOL)deleteFailedArchiveAtPath:(id)path error:(id *)error
{
  NSLog(&cfstr_AttemptingToDe.isa, a2, path, error);
  v13 = 0;
  IMDDatabaseDelete(path, &v13, v5, v6);
  v10 = v13;
  if (v13)
  {
    v11 = objc_msgSend_localizedDescription(v13, v7, v8, v9);
    NSLog(&cfstr_UnableToDelete.isa, v11, path);
  }

  return v10 == 0;
}

@end