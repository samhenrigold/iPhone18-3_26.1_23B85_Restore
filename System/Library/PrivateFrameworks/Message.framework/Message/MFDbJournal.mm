@interface MFDbJournal
+ (id)_journalForMailbox:(id)mailbox;
+ (id)legacyJournal;
+ (int64_t)mergeAllJournalsUsingConnection:(id)connection;
+ (void)initialize;
- (BOOL)_markMailboxForReconciliation:(BOOL)reconciliation connection:(id)connection;
- (MFDbJournal)initWithMailbox:(id)mailbox;
- (int)_processJournalFile:(id)file connection:(id)connection;
- (int64_t)mergeUsingConnection:(id)connection;
- (void)dealloc;
@end

@implementation MFDbJournal

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = _journals;
    _journals = v2;
  }
}

- (MFDbJournal)initWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v13.receiver = self;
  v13.super_class = MFDbJournal;
  v6 = [(MFDbJournal *)&v13 init];
  v7 = v6;
  if (v6)
  {
    pthread_mutex_init(&v6->_lock, 0);
    v7->_fd = -1;
    objc_storeStrong(&v7->_mailbox, mailbox);
    fullPath = [mailboxCopy fullPath];
    v9 = fullPath;
    if (fullPath)
    {
      [fullPath stringByAppendingPathComponent:@"Journal"];
    }

    else
    {
      NSTemporaryDirectory();
    }
    v10 = ;
    path = v7->_path;
    v7->_path = v10;
  }

  return v7;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
  }

  v4.receiver = self;
  v4.super_class = MFDbJournal;
  [(MFDbJournal *)&v4 dealloc];
}

+ (id)_journalForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = _journals;
  objc_sync_enter(v4);
  v5 = [_journals objectForKey:mailboxCopy];
  if (!v5)
  {
    v5 = [[MFDbJournal alloc] initWithMailbox:mailboxCopy];
    [_journals setObject:v5 forKey:mailboxCopy];
  }

  objc_sync_exit(v4);

  return v5;
}

+ (id)legacyJournal
{
  v2 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
  v3 = [v2 stringByAppendingPathComponent:@"Mail"];

  v4 = [v3 stringByAppendingPathComponent:@"Vault"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4 isDirectory:0];

  if (v6)
  {
    v7 = [[MFDbJournal alloc] initWithMailbox:0];
    objc_storeStrong(&v7->_path, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_processJournalFile:(id)file connection:(id)connection
{
  v39 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  connectionCopy = connection;
  v33 = -1431655766;
  v34 = -1431655766;
  v7 = NSPageSize();
  v8 = EDLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138412290;
    *v36 = fileCopy;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "processing journal file %@", &v35, 0xCu);
  }

  v9 = malloc_type_malloc(v7, 0xA5A8FB7DuLL);
  if (!v9)
  {
    __assert_rtn("[MFDbJournal _processJournalFile:connection:]", "MFDbJournal.m", 140, "buf && failed to allocate buffer during journal merge");
  }

  v10 = fileCopy;
  v11 = open([fileCopy fileSystemRepresentation], 0);
  v12 = v11;
  if (v11 == -1)
  {
    v21 = fileCopy;
    v22 = EDLibraryLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v30 = *__error();
      v31 = __error();
      v32 = strerror(*v31);
      v35 = 67109890;
      *v36 = v30;
      *&v36[4] = 2112;
      *&v36[6] = @"opening journal file";
      *&v36[14] = 2112;
      *&v36[16] = v21;
      v37 = 2080;
      v38 = v32;
      _os_log_error_impl(&dword_1B0389000, v22, OS_LOG_TYPE_ERROR, "Error %d %@ at path %@: %s", &v35, 0x26u);
    }

    goto LABEL_22;
  }

  v13 = read(v11, &v33, 4uLL);
  if (v13 != 4)
  {
    v21 = EDLibraryLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134218240;
      *v36 = 4;
      *&v36[8] = 2048;
      *&v36[10] = v13;
      v23 = "read wrong number of version bytes from journal, expected: %lu actual: %zd";
      v24 = v21;
      v25 = 22;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v33 == 1)
  {
    while (1)
    {
      if (read(v12, &v34, 4uLL) < 1)
      {
        v26 = 0;
        goto LABEL_23;
      }

      v14 = v34;
      v15 = v34 + 4;
      if (v15 > v7)
      {
        v16 = malloc_type_realloc(v9, v34 + 4, 0xE82589C2uLL);
        if (!v16)
        {
          v21 = EDLibraryLog();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          LOWORD(v35) = 0;
          v23 = "realloc failed when merging journal with database";
          v24 = v21;
          v25 = 2;
LABEL_21:
          _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, v23, &v35, v25);
          goto LABEL_22;
        }

        v14 = v34;
        v9 = v16;
        v7 = v15;
      }

      v17 = read(v12, v9, v14);
      v18 = v17;
      if (v17 != v34)
      {
        v21 = EDLibraryLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 134218240;
          *v36 = v34;
          *&v36[8] = 2048;
          *&v36[10] = v18;
          _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "read wrong number of bytes from journal, expected: %lu actual: %zd", &v35, 0x16u);
        }

        goto LABEL_22;
      }

      *(v9 + v17) = 0;
      v19 = sqlite3_exec([connectionCopy sqlDB], v9, 0, 0, 0);
      if (v19)
      {
        sqlDB = [connectionCopy sqlDB];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"executing SQL statement from journal (%s)", v9];
        MFLogSQLiteError(sqlDB, v19, v21);
        goto LABEL_22;
      }
    }
  }

  v21 = EDLibraryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 67109376;
    *v36 = 1;
    *&v36[4] = 2048;
    *&v36[6] = v33;
    v23 = "found journal file of wrong version, expected: %d actual: %lu";
    v24 = v21;
    v25 = 18;
    goto LABEL_21;
  }

LABEL_22:

  v26 = 1;
LABEL_23:
  free(v9);
  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
  }

  if (v26)
  {
    v27 = *__error();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = -1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (int64_t)mergeAllJournalsUsingConnection:(id)connection
{
  v48 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  array = [MEMORY[0x1E695DF70] array];
  v5 = +[MFDbJournal legacyJournal];
  v28 = v5;
  if (v5)
  {
    [array addObject:v5];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v6 = [connectionCopy preparedStatementForQueryString:@"SELECT url FROM mailboxes WHERE reconcile = '1'"];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __47__MFDbJournal_mergeAllJournalsUsingConnection___block_invoke;
  v42[3] = &unk_1E7AA3610;
  v7 = array2;
  v43 = v7;
  v41 = 0;
  v29 = v6;
  v8 = [v6 executeUsingBlock:v42 error:&v41];
  v9 = v41;
  v30 = v9;
  if ((v8 & 1) == 0)
  {
    [connectionCopy handleError:v9 message:@"getting mailboxes to be reconciled"];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v11)
  {
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = [MailAccount mailboxUidFromActiveAccountsForURL:v14];
        if (v15)
        {
          v16 = [self _journalForMailbox:v15];
          if ([v15 mailboxType] == 7)
          {
            [array insertObject:v16 atIndex:0];
          }

          else
          {
            [array addObject:v16];
          }
        }

        else
        {
          v16 = EDLibraryLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v14;
            _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Could not find mailbox for %@", buf, 0xCu);
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v11);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = array;
  v17 = 0;
  v18 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v18)
  {
    v19 = *v34;
LABEL_20:
    v20 = 0;
    while (1)
    {
      if (*v34 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v33 + 1) + 8 * v20);
      v22 = [v21 mergeUsingConnection:connectionCopy];
      v23 = _journals;
      objc_sync_enter(v23);
      if (v21[2])
      {
        [_journals removeObjectForKey:?];
      }

      objc_sync_exit(v23);

      v17 |= v22;
      if (v17)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
        if (v18)
        {
          goto LABEL_20;
        }

        break;
      }
    }
  }

  v24 = EDLibraryLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = MFDBJournalMergeResultString(v17);
    *buf = 138412290;
    v46 = v25;
    _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "MFProtectedDatabaseMergeResult %@", buf, 0xCu);
  }

  return v17;
}

void __47__MFDbJournal_mergeAllJournalsUsingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (int64_t)mergeUsingConnection:(id)connection
{
  v61 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  pthread_mutex_lock(&self->_lock);
  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
    self->_fd = -1;
  }

  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  selfCopy2 = self;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtPath:selfCopy->_path error:0];

  [v8 sortedArrayUsingFunction:_sortFilenamesAlphabetically context:0];
  v59 = 0u;
  v60 = 0u;
  v9 = memset(v58, 0, sizeof(v58));
  v10 = [v9 countByEnumeratingWithState:v58 objects:&buf count:16];
  if (v10)
  {
    v11 = **&v58[16];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (**&v58[16] != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(NSString *)selfCopy->_path stringByAppendingPathComponent:*(*&v58[8] + 8 * i)];
        [array addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:v58 objects:&buf count:16];
    }

    while (v10);
  }

  if (![array count])
  {
    v14 = EDLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "No journal files found", &buf, 2u);
    }

    goto LABEL_40;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v15)
  {
LABEL_40:

    v38 = 0;
    goto LABEL_44;
  }

  obj = v14;
  v45 = *v51;
  v17 = *MEMORY[0x1E696A3B8];
  *&v16 = 138412546;
  v41 = v16;
LABEL_13:
  v18 = 0;
  while (1)
  {
    if (*v51 != v45)
    {
      objc_enumerationMutation(obj);
    }

    v19 = *(*(&v50 + 1) + 8 * v18);
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = [defaultManager2 attributesOfItemAtPath:v19 error:0];

    v22 = [v21 objectForKeyedSubscript:v17];
    v23 = [v22 integerValue] > 0;

    if (!v23)
    {
      v29 = EDLibraryLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1B0389000, v29, OS_LOG_TYPE_DEFAULT, "Skipping empty journal file %@", &buf, 0xCu);
      }

      goto LABEL_35;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v56 = 0x2020000000;
    v57 = -1431655766;
    v48[6] = &buf;
    v49 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __36__MFDbJournal_mergeUsingConnection___block_invoke;
    v48[3] = &unk_1E7AA3FC8;
    v48[4] = selfCopy;
    v48[5] = v19;
    v24 = [connectionCopy performWithOptions:3 transactionError:&v49 block:v48];
    v25 = v49;
    v26 = v25;
    if (*(*(&buf + 1) + 24))
    {
      v27 = EDLibraryLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v36 = *(*(&buf + 1) + 24);
        v37 = strerror(v36);
        *v58 = 138412802;
        *&v58[4] = v19;
        *&v58[12] = 1024;
        *&v58[14] = v36;
        *&v58[18] = 2080;
        *&v58[20] = v37;
        _os_log_error_impl(&dword_1B0389000, v27, OS_LOG_TYPE_ERROR, "An error occurred while processing %@ (error %d: %s)", v58, 0x1Cu);
      }

      v28 = *(*(&buf + 1) + 24) == 1;
LABEL_31:
      if (v28)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      goto LABEL_34;
    }

    if ((v24 & 1) == 0)
    {
      code = [v25 code];
      v35 = EDLibraryLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *v58 = v41;
        *&v58[4] = v19;
        *&v58[12] = 1024;
        *&v58[14] = code;
        _os_log_error_impl(&dword_1B0389000, v35, OS_LOG_TYPE_ERROR, "An error occurred while committing transaction for %@ (sqlite error %d)", v58, 0x12u);
      }

      v28 = code == 778;
      goto LABEL_31;
    }

    v30 = EDLibraryLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 138412290;
      *&v58[4] = v19;
      _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "Successfully reconciled journal file %@", v58, 0xCu);
    }

    v31 = MFRemoveItemAtPath();
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager3 createFileAtPath:v19 contents:0 attributes:0];

    v33 = 0;
LABEL_34:

    _Block_object_dispose(&buf, 8);
    if (v33)
    {
      break;
    }

LABEL_35:
    if (v15 == ++v18)
    {
      v15 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v15)
      {
        goto LABEL_13;
      }

      v14 = obj;
      goto LABEL_40;
    }
  }

  if (v33 == 1)
  {
    v38 = 1;
    goto LABEL_46;
  }

  v38 = 2;
LABEL_44:
  v39 = MFRemoveItemAtPath();
  if (selfCopy->_mailbox)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __36__MFDbJournal_mergeUsingConnection___block_invoke_55;
    v46[3] = &unk_1E7AA3D10;
    v46[4] = selfCopy;
    v47 = connectionCopy;
    [v47 performWithOptions:3 transactionError:0 block:v46];
  }

LABEL_46:
  pthread_mutex_unlock(&selfCopy2->_lock);

  return v38;
}

BOOL __36__MFDbJournal_mergeUsingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _processJournalFile:*(a1 + 40) connection:v3];
  v4 = *(*(*(a1 + 48) + 8) + 24) == 0;

  return v4;
}

- (BOOL)_markMailboxForReconciliation:(BOOL)reconciliation connection:(id)connection
{
  reconciliationCopy = reconciliation;
  v6 = [connection preparedStatementForQueryString:@"UPDATE mailboxes SET reconcile = ? WHERE url = ?"];
  compiled = [v6 compiled];
  v8 = compiled;
  if (compiled)
  {
    if (reconciliationCopy)
    {
      v9 = "1";
    }

    else
    {
      v9 = "0";
    }

    sqlite3_bind_text(compiled, 1, v9, 1, 0);
    uRLString = [(MFMailboxUid *)self->_mailbox URLString];
    sqlite3_bind_text(v8, 2, [uRLString UTF8String], -1, 0);

    v11 = sqlite3_step(v8) == 101;
  }

  else
  {
    v11 = 0;
  }

  sqlite3_reset(v8);

  return v11;
}

@end