@interface NNMKSQLJournal
- (BOOL)appendSQLStatement:(id)statement;
- (NNMKSQLJournal)initWithPath:(id)path;
- (id)_journalFilesEnumerator;
- (id)_nextFilePath;
- (id)_sortedJournalFiles;
- (unint64_t)_currentFilesCount;
- (void)_flush;
- (void)deleteJournalFiles;
- (void)flushIfNeeded;
- (void)mergeUsingBlock:(id)block;
@end

@implementation NNMKSQLJournal

- (NNMKSQLJournal)initWithPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = NNMKSQLJournal;
  v6 = [(NNMKSQLJournal *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directoryPath, path);
    v8 = dispatch_queue_create("com.apple.NanoMailKit.SQLJournal", 0);
    journalQueue = v7->_journalQueue;
    v7->_journalQueue = v8;

    v7->_filesCount = [(NNMKSQLJournal *)v7 _currentFilesCount];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtPath:v7->_directoryPath withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:0];
  }

  return v7;
}

- (BOOL)appendSQLStatement:(id)statement
{
  statementCopy = statement;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  journalQueue = self->_journalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NNMKSQLJournal_appendSQLStatement___block_invoke;
  block[3] = &unk_279936570;
  v9 = statementCopy;
  v10 = &v11;
  block[4] = self;
  v6 = statementCopy;
  dispatch_sync(journalQueue, block);
  LOBYTE(journalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return journalQueue;
}

void __37__NNMKSQLJournal_appendSQLStatement___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isJournalOverflow])
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __37__NNMKSQLJournal_appendSQLStatement___block_invoke_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (!*(*(a1 + 32) + 16))
    {
      v2 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v3 = *(a1 + 32);
      v4 = *(v3 + 16);
      *(v3 + 16) = v2;
    }

    v5 = [*(a1 + 40) dataUsingEncoding:4];
    v6 = [v5 length];
    [*(*(a1 + 32) + 16) appendBytes:&v6 length:8];
    [*(*(a1 + 32) + 16) appendData:v5];
    if ([*(*(a1 + 32) + 16) length] >= 0xA00000)
    {
      [*(a1 + 32) _flush];
    }
  }
}

- (void)flushIfNeeded
{
  journalQueue = self->_journalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__NNMKSQLJournal_flushIfNeeded__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_sync(journalQueue, block);
}

void *__31__NNMKSQLJournal_flushIfNeeded__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2])
  {
    return [result _flush];
  }

  return result;
}

- (void)mergeUsingBlock:(id)block
{
  blockCopy = block;
  [(NNMKSQLJournal *)self flushIfNeeded];
  journalQueue = self->_journalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__NNMKSQLJournal_mergeUsingBlock___block_invoke;
  v7[3] = &unk_279936598;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(journalQueue, v7);
}

void __34__NNMKSQLJournal_mergeUsingBlock___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(a1 + 32) isJournalOverflow])
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __34__NNMKSQLJournal_mergeUsingBlock___block_invoke_cold_1();
    }
  }

  else
  {
    [*v2 _sortedJournalFiles];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v33 = 0u;
    v27 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v27)
    {
      v24 = 0;
      v26 = *v31;
      *&v3 = 138543874;
      v23 = v3;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v30 + 1) + 8 * i);
          v6 = [*(*v2 + 1) stringByAppendingPathComponent:{v5, v23}];
          v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
          v8 = v7;
          if (v7)
          {
            v29 = 0;
            if ([v7 length])
            {
              v9 = 0;
              while (1)
              {
                v10 = v9 + 8;
                if (v9 + 8 > [v8 length])
                {
                  break;
                }

                [v8 getBytes:&v29 range:{v9, 8}];
                v11 = v29 + v10;
                if (v11 > [v8 length])
                {
                  v18 = qword_28144D620;
                  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v35 = v5;
                    _os_log_error_impl(&dword_25B19F000, v18, OS_LOG_TYPE_ERROR, "Error reading journal file - invalid length. (Path: %{public}@).", buf, 0xCu);
                  }

                  goto LABEL_22;
                }

                v12 = [v8 subdataWithRange:{v9 + 8, v29}];
                v9 = v29 + v10;
                v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
                (*(*(a1 + 40) + 16))();

                if (v9 >= [v8 length])
                {
                  goto LABEL_22;
                }
              }

              v15 = __logCategories;
              if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_ERROR))
              {
                v16 = v15;
                v17 = [v8 length];
                *buf = v23;
                v35 = v5;
                v36 = 2048;
                v37 = v9;
                v38 = 2048;
                v39 = v17;
                _os_log_error_impl(&dword_25B19F000, v16, OS_LOG_TYPE_ERROR, "Error journal file has data at the end of it that is smaller than NSUInteger of new data. (Path: %{public}@) cursor: %lu data length: %lu.", buf, 0x20u);
              }
            }

LABEL_22:
            v19 = [MEMORY[0x277CCAA00] defaultManager];
            v28 = 0;
            v20 = [v19 removeItemAtPath:v6 error:&v28];
            v21 = v28;

            if ((v20 & 1) == 0)
            {
              v24 = [v5 longLongValue];
              v22 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v35 = v5;
                v36 = 2114;
                v37 = v21;
                _os_log_error_impl(&dword_25B19F000, v22, OS_LOG_TYPE_ERROR, "Error deleting journal file after applying. (Path: %{public}@, Error: %{public}@).", buf, 0x16u);
              }
            }
          }

          else
          {
            v14 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v35 = v5;
              _os_log_error_impl(&dword_25B19F000, v14, OS_LOG_TYPE_ERROR, "Error reading journal file from file system. (Path: %{public}@).", buf, 0xCu);
            }
          }
        }

        v27 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v27);
    }

    else
    {
      v24 = 0;
    }

    *(*v2 + 4) = v24;
  }
}

- (void)deleteJournalFiles
{
  [(NNMKSQLJournal *)self flushIfNeeded];
  journalQueue = self->_journalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NNMKSQLJournal_deleteJournalFiles__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_sync(journalQueue, block);
}

void __36__NNMKSQLJournal_deleteJournalFiles__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    __36__NNMKSQLJournal_deleteJournalFiles__block_invoke_cold_1();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = a1;
  v2 = [*(a1 + 32) _journalFilesEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CCAA00] defaultManager];
        v15 = 0;
        v9 = [v8 removeItemAtURL:v7 error:&v15];
        v10 = v15;

        if ((v9 & 1) == 0)
        {
          v11 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
          {
            v12 = v11;
            v13 = [v7 lastPathComponent];
            *buf = 138543618;
            v21 = v13;
            v22 = 2114;
            v23 = v10;
            _os_log_error_impl(&dword_25B19F000, v12, OS_LOG_TYPE_ERROR, "Error deleting journal file. (Path: %{public}@, Error: %{public}@).", buf, 0x16u);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  *(*(v14 + 32) + 32) = 0;
}

- (unint64_t)_currentFilesCount
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _journalFilesEnumerator = [(NNMKSQLJournal *)self _journalFilesEnumerator];
  v3 = [_journalFilesEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(_journalFilesEnumerator);
        }

        lastPathComponent = [*(*(&v10 + 1) + 8 * i) lastPathComponent];
        if ([lastPathComponent compare:v4] == 1)
        {
          v8 = lastPathComponent;

          v4 = v8;
        }
      }

      v3 = [_journalFilesEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);

    if (!v4)
    {
      return 0;
    }

    v3 = [v4 longLongValue] + 1;
    _journalFilesEnumerator = v4;
  }

  return v3;
}

- (id)_journalFilesEnumerator
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:self->_directoryPath];
  if (v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7[0] = *MEMORY[0x277CBE8E8];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v5 = [defaultManager enumeratorAtURL:v2 includingPropertiesForKeys:v4 options:5 errorHandler:&__block_literal_global_8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __41__NNMKSQLJournal__journalFilesEnumerator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    __41__NNMKSQLJournal__journalFilesEnumerator__block_invoke_cold_1();
  }

  return 1;
}

- (void)_flush
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "Error flushing journal file. (Path: %{public}@ - Error: %{public}@).", &v3, 0x16u);
}

- (id)_nextFilePath
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.15lu", self->_filesCount];
  v4 = [(NSString *)self->_directoryPath stringByAppendingPathComponent:v3];

  return v4;
}

- (id)_sortedJournalFiles
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:self->_directoryPath error:0];

  v5 = [v4 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  return v5;
}

@end