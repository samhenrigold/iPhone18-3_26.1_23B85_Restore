@interface IMDReplayStorageController
- (BOOL)storeDictionary:(id)dictionary error:(id *)error;
- (IMDReplayStorageController)initWithFilePath:(id)path;
- (id)copyNextBatchWithSize:(unint64_t)size iterationContext:(id *)context;
- (void)dealloc;
- (void)deleteReplayDB;
@end

@implementation IMDReplayStorageController

- (IMDReplayStorageController)initWithFilePath:(id)path
{
  if (path)
  {
    v7.receiver = self;
    v7.super_class = IMDReplayStorageController;
    v4 = [(IMDReplayStorageController *)&v7 init];
    if (v4)
    {
      v4->_filePath = path;
      v4->_store = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:path storeName:@"IMDReplayStorageController" dataProtectionClass:2];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "passing in nil filePath to initWithFilePath", buf, 2u);
      }
    }

    return 0;
  }

  return v4;
}

- (BOOL)storeDictionary:(id)dictionary error:(id *)error
{
  objc_sync_enter(self);
  if (dictionary)
  {
    goto LABEL_2;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "IMDReplayStorageController was asked to store nil dictionary", v10, 2u);
    }
  }

  if (!error)
  {
LABEL_2:
    [(IDSKVStore *)self->_store persistData:JWEncodeDictionary() forKey:0 error:0];
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMDReplayMessageStorageControllerErrorDomain" code:0 userInfo:0];
  }

  objc_sync_exit(self);
  return v7;
}

- (id)copyNextBatchWithSize:(unint64_t)size iterationContext:(id *)context
{
  v21 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (context && *context)
  {
    -[IDSKVStore deleteBatchWithContext:error:](self->_store, "deleteBatchWithContext:error:", [*context deleteContext], 0);
    *context = 0;
  }

  v19 = 0;
  v7 = [(IDSKVStore *)self->_store datasUpToLimit:size deleteContext:&v19 error:0];
  if (v7)
  {
    if (context)
    {
      v8 = objc_alloc_init(IMDReplayStorageIterationContext);
      *context = v8;
      [(IMDReplayStorageIterationContext *)v8 setDeleteContext:v19];
    }

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = objc_autoreleasePoolPush();
          [v9 addObject:JWDecodeDictionary()];
          objc_autoreleasePoolPop(v13);
        }

        v10 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(self);
  return v9;
}

- (void)deleteReplayDB
{
  v7 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      filePath = self->_filePath;
      v5 = 138412290;
      v6 = filePath;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Deleting replay db with path %@", &v5, 0xCu);
    }
  }

  [(IDSKVStore *)self->_store deleteDatabase];
  objc_sync_exit(self);
}

- (void)dealloc
{
  objc_sync_enter(self);

  objc_sync_exit(self);
  v3.receiver = self;
  v3.super_class = IMDReplayStorageController;
  [(IMDReplayStorageController *)&v3 dealloc];
}

@end