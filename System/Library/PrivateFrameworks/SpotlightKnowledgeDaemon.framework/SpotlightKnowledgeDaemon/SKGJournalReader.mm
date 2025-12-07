@interface SKGJournalReader
+ (BOOL)processJournalRecordWithFd:(int)fd atOffset:(unint64_t)offset withSize:(unint64_t)size addBlock:(id)block delBlock:(id)delBlock;
- (BOOL)enumerateItemsOfJournalAtPath:(id)path itemAdds:(id)adds itemUpdates:(id)updates itemDeletes:(id)deletes cancelBlock:(id)block;
- (BOOL)removeJournalPath:(id)path error:(id *)error;
- (SKGJournalReader)initWithResourceDirectoryPath:(id)path;
- (id)eventJournalPaths;
- (id)journalPaths;
@end

@implementation SKGJournalReader

- (SKGJournalReader)initWithResourceDirectoryPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = SKGJournalReader;
  v6 = [(SKGJournalReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourcePath, path);
  }

  return v7;
}

- (id)journalPaths
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  journalReaderResourcePath = [(SKGJournalReader *)self journalReaderResourcePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager isReadableFileAtPath:journalReaderResourcePath];

  if (v3)
  {
    v18 = [MEMORY[0x277CBEBC0] URLWithString:journalReaderResourcePath];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = *MEMORY[0x277CBE7C0];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE7C0], 0}];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __32__SKGJournalReader_journalPaths__block_invoke;
    v25[3] = &unk_27893D8D8;
    v25[4] = &v26;
    v17 = [defaultManager2 enumeratorAtURL:v18 includingPropertiesForKeys:v6 options:4 errorHandler:v25];

    if (*(v27 + 24) == 1)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v17;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v9)
      {
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            lastPathComponent = [v12 lastPathComponent];
            v14 = [lastPathComponent hasPrefix:@"skg_"];

            if (v14)
            {
              v20 = 0;
              [v12 getResourceValue:&v20 forKey:v5 error:0];
              v15 = v20;
              [v7 setObject:v15 forKey:v12];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v21 objects:v30 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v7;
}

BOOL __32__SKGJournalReader_journalPaths__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a3 != 0;
}

- (id)eventJournalPaths
{
  v31[1] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  journalReaderResourcePath = [(SKGJournalReader *)self journalReaderResourcePath];
  v19 = [MEMORY[0x277CBEBC0] URLWithString:journalReaderResourcePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager isReadableFileAtPath:journalReaderResourcePath];
  v18 = journalReaderResourcePath;

  if (v4)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v31[0] = *MEMORY[0x277CBE8E8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __37__SKGJournalReader_eventJournalPaths__block_invoke;
    v25[3] = &unk_27893D8D8;
    v25[4] = &v26;
    v7 = [defaultManager2 enumeratorAtURL:v19 includingPropertiesForKeys:v6 options:4 errorHandler:v25];

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          path = [v12 path];
          lastPathComponent = [path lastPathComponent];
          if ([lastPathComponent hasPrefix:@"evt_"])
          {
            v15 = [path hasSuffix:@".journal"];

            if (v15)
            {
              [v20 addObject:v12];
            }
          }

          else
          {
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v9);
    }

    if (*(v27 + 24) == 1)
    {
      v16 = [v20 copy];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v16;
}

- (BOOL)enumerateItemsOfJournalAtPath:(id)path itemAdds:(id)adds itemUpdates:(id)updates itemDeletes:(id)deletes cancelBlock:(id)block
{
  v59 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  addsCopy = adds;
  updatesCopy = updates;
  deletesCopy = deletes;
  blockCopy = block;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  makeThreadId();
  path = [pathCopy path];
  uTF8String = [path UTF8String];

  v18 = open(uTF8String, 0);
  v19 = addsCopy;
  v20 = updatesCopy;
  if (v18 == -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v31 = SKGLogJournalInit();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = __error();
        [SKGJournalReader enumerateItemsOfJournalAtPath:v32 itemAdds:uTF8String itemUpdates:&v58 itemDeletes:v31 cancelBlock:?];
      }
    }

    v33 = 0;
  }

  else
  {
    v21 = v18;
    memset(&v58, 0, sizeof(v58));
    if (fstat(v18, &v58) == -1)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v34 = SKGLogJournalInit();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = __error();
          [SKGJournalReader enumerateItemsOfJournalAtPath:v35 itemAdds:buf itemUpdates:v34 itemDeletes:? cancelBlock:?];
        }

        goto LABEL_28;
      }

LABEL_29:
      v38 = 0;
LABEL_40:
      close(v21);
      v33 = v38;
      goto LABEL_41;
    }

    st_size = v58.st_size;
    if (v58.st_size)
    {
      v23 = mmap(0, v58.st_size, 1, 1, v21, 0);
      if (v23 != -1)
      {
        v24 = v23;
        v51 = 0;
        atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
        v25 = *(MEMORY[0x277D29500] + 16);
        *buf = *MEMORY[0x277D29500];
        v55 = v25;
        v26 = *(MEMORY[0x277D29500] + 48);
        v56 = *(MEMORY[0x277D29500] + 32);
        v57 = v26;
        v27 = setThreadIdAndInfo();
        v50 = v27;
        v28 = *(MEMORY[0x277D29508] + 72 * v27 + 8) + 320 * HIDWORD(v27);
        v49 = HIDWORD(v27);
        *(v28 + 216) = 0;
        v45 = *(v28 + 312);
        v29 = *(v28 + 224);
        if (v29)
        {
          v29(*(v28 + 288));
        }

        *buf = v50;
        if (_setjmp(v28))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [SKGJournalReader enumerateItemsOfJournalAtPath:itemAdds:itemUpdates:itemDeletes:cancelBlock:];
          }

          *(v28 + 312) = v45;
          CIOnThreadCleanUpReset();
          dropThreadId();
          CICleanUpReset();
          v30 = 1;
        }

        else
        {
          v48 = v19;
          v47 = v20;
          v46 = deletesCopy;
          v39 = MDJournalReaderProcessWithBytes() != 0;
          v51 = 1;
          v40 = *(MEMORY[0x277D29508] + 72 * *buf + 8) + 320 * v49;
          *(v40 + 312) = v45;
          v41 = *(v40 + 232);
          if (v41)
          {
            v41(*(v40 + 288));
          }

          dropThreadId();

          v30 = v39;
        }

        v38 = v30;
        if ((v51 & 1) == 0)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v42 = SKGLogJournalInit();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = __error();
              [SKGJournalReader enumerateItemsOfJournalAtPath:v43 itemAdds:buf itemUpdates:v42 itemDeletes:? cancelBlock:?];
            }
          }

          v38 = 0;
        }

        munmap(v24, st_size);
        goto LABEL_40;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v34 = SKGLogJournalInit();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v37 = __error();
          [SKGJournalReader enumerateItemsOfJournalAtPath:v37 itemAdds:buf itemUpdates:v34 itemDeletes:? cancelBlock:?];
        }

LABEL_28:

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v36 = SKGLogJournalInit();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231B25000, v36, OS_LOG_TYPE_DEFAULT, "zero-length journal file", buf, 2u);
      }
    }

    close(v21);
    v33 = 1;
  }

LABEL_41:
  _Block_object_dispose(v52, 8);

  return v33;
}

uint64_t __95__SKGJournalReader_enumerateItemsOfJournalAtPath_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __95__SKGJournalReader_enumerateItemsOfJournalAtPath_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __95__SKGJournalReader_enumerateItemsOfJournalAtPath_itemAdds_itemUpdates_itemDeletes_cancelBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (BOOL)removeJournalPath:(id)path error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v5 defaultManager];
  v11 = 0;
  [defaultManager removeItemAtURL:pathCopy error:&v11];

  v8 = v11;
  if (error && v8)
  {
    v9 = v8;
    *error = v8;
  }

  return v8 == 0;
}

+ (BOOL)processJournalRecordWithFd:(int)fd atOffset:(unint64_t)offset withSize:(unint64_t)size addBlock:(id)block delBlock:(id)delBlock
{
  blockCopy = block;
  delBlockCopy = delBlock;
  v13 = -*MEMORY[0x277D85FA0];
  v14 = ((offset + size + *MEMORY[0x277D85FA0] - 1) & v13) + (v13 & offset);
  v30 = 0;
  v15 = mmap(0, v14, 1, 1, fd, v13 & offset);
  if (v15 != -1)
  {
    v27 = blockCopy;
    v16 = v15;
    makeThreadId();
    v26 = v14;
    atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
    v17 = setThreadIdAndInfo();
    v28 = HIDWORD(v17);
    v29 = v17;
    v18 = MEMORY[0x277D29508];
    v19 = *(MEMORY[0x277D29508] + 72 * v17 + 8) + 320 * HIDWORD(v17);
    *(v19 + 216) = 0;
    v20 = *(v19 + 312);
    v21 = *(v19 + 224);
    v22 = v19;
    if (v21)
    {
      v21(*(v19 + 288));
    }

    if (_setjmp(v22))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGJournalReader enumerateItemsOfJournalAtPath:itemAdds:itemUpdates:itemDeletes:cancelBlock:];
      }

      v22[78] = v20;
      CIOnThreadCleanUpReset();
      dropThreadId();
      CICleanUpReset();
    }

    else
    {
      v30 = MDJournalReaderProcessRecordBatchWithBytes() != 0;
      v23 = *(v18 + 72 * v29 + 8) + 320 * v28;
      *(v23 + 312) = v20;
      v24 = *(v23 + 232);
      if (v24)
      {
        v24(*(v23 + 288));
      }

      dropThreadId();
    }

    blockCopy = v27;
    munmap(v16, v26);
  }

  return v30;
}

- (void)enumerateItemsOfJournalAtPath:(NSObject *)a3 itemAdds:itemUpdates:itemDeletes:cancelBlock:.cold.2(int *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a1;
  *a2 = 67109120;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_0_11(&dword_231B25000, a2, a3, "parsing error error %d\n", a2);
}

- (void)enumerateItemsOfJournalAtPath:(NSObject *)a3 itemAdds:itemUpdates:itemDeletes:cancelBlock:.cold.3(int *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a1;
  *a2 = 67109120;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_0_11(&dword_231B25000, a2, a3, "map error %d\n", a2);
}

- (void)enumerateItemsOfJournalAtPath:(NSObject *)a3 itemAdds:itemUpdates:itemDeletes:cancelBlock:.cold.4(int *a1, uint64_t a2, NSObject *a3)
{
  v3 = *a1;
  *a2 = 67109120;
  *(a2 + 4) = v3;
  OUTLINED_FUNCTION_0_11(&dword_231B25000, a2, a3, "fstat error %d\n", a2);
}

- (void)enumerateItemsOfJournalAtPath:(uint8_t *)buf itemAdds:(os_log_t)log itemUpdates:itemDeletes:cancelBlock:.cold.5(int *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v4 = *a1;
  *buf = 67109378;
  *(buf + 1) = v4;
  *(buf + 4) = 2080;
  *(buf + 10) = a2;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "error %d opening %s\n", buf, 0x12u);
}

@end