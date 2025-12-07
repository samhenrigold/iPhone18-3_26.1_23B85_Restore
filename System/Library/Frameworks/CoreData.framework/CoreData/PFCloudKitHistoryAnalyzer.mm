@interface PFCloudKitHistoryAnalyzer
+ (BOOL)isPrivateContextName:(id)name;
+ (BOOL)isPrivateTransaction:(id)transaction;
+ (BOOL)isPrivateTransactionAuthor:(id)author;
- (BOOL)processTransaction:(id)transaction withContext:(id)context error:(id *)error;
- (PFCloudKitHistoryAnalyzer)initWithOptions:(id)options managedObjectContext:(id)context;
- (id)instantiateNewAnalyzerContextForChangesInStore:(id)store;
- (void)dealloc;
@end

@implementation PFCloudKitHistoryAnalyzer

- (PFCloudKitHistoryAnalyzer)initWithOptions:(id)options managedObjectContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = objc_opt_class();
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempt to init PFCloudKitHistoryAnalyzer with the wrong options class: %@\n", buf, 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = objc_opt_class();
      *buf = 138412290;
      v14 = v11;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Attempt to init PFCloudKitHistoryAnalyzer with the wrong options class: %@", buf, 0xCu);
    }
  }

  v12.receiver = self;
  v12.super_class = PFCloudKitHistoryAnalyzer;
  v9 = [(PFHistoryAnalyzer *)&v12 initWithOptions:options];
  if (v9)
  {
    v9->_managedObjectContext = context;
  }

  return v9;
}

- (void)dealloc
{
  self->_lastProcessedToken = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitHistoryAnalyzer;
  [(PFHistoryAnalyzer *)&v3 dealloc];
}

- (id)instantiateNewAnalyzerContextForChangesInStore:(id)store
{
  v5 = [PFCloudKitHistoryAnalyzerContext alloc];
  if (self)
  {
    options = self->super._options;
  }

  else
  {
    options = 0;
  }

  managedObjectContext = self->_managedObjectContext;

  return [(PFCloudKitHistoryAnalyzerContext *)v5 initWithOptions:options managedObjectContext:managedObjectContext store:store];
}

- (BOOL)processTransaction:(id)transaction withContext:(id)context error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (+[PFCloudKitHistoryAnalyzer isPrivateTransaction:](PFCloudKitHistoryAnalyzer, "isPrivateTransaction:") && ([objc_msgSend(transaction "author")] & 1) == 0 && (objc_msgSend(objc_msgSend(transaction, "contextName"), "isEqualToString:", @"NSCloudKitMirroringDelegate.import") & 1) == 0 && !objc_msgSend(objc_msgSend(transaction, "author"), "isEqualToString:", @"NSCloudKitMirroringDelegate.reset"))
  {
    goto LABEL_14;
  }

  if (!self || (options = self->super._options) == 0 || (v10 = *&options[1]._automaticallyPruneTransientRecords) == 0 || ([*(v10 + 64) shouldDefer] & 1) == 0 && *(v10 + 40) != 1)
  {
    v20.receiver = self;
    v20.super_class = PFCloudKitHistoryAnalyzer;
    if (![(PFHistoryAnalyzer *)&v20 processTransaction:transaction withContext:context error:&v21])
    {
      v12 = v21;
      if (v21)
      {
LABEL_11:
        if (error)
        {
          LOBYTE(v13) = 0;
          *error = v12;
          return v13;
        }

LABEL_21:
        LOBYTE(v13) = 0;
        return v13;
      }

      goto LABEL_17;
    }

LABEL_14:
    lastProcessedToken = self->_lastProcessedToken;
    if (lastProcessedToken == [transaction token])
    {
      if ([transaction token])
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          transactionCopy2 = transaction;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Transaction appears to have been processed twice: %@\n", buf, 0xCu);
        }

        v18 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          transactionCopy2 = transaction;
          _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Transaction appears to have been processed twice: %@", buf, 0xCu);
        }
      }
    }

    else
    {

      self->_lastProcessedToken = [transaction token];
    }

    LOBYTE(v13) = 1;
    return v13;
  }

  v11 = *MEMORY[0x1E696A250];
  v26 = *MEMORY[0x1E696A588];
  v27[0] = @"History analysis was aborted because the activity was deferred by the system.";
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v11 code:134419 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v27, &v26, 1)}];
  v21 = v12;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_17:
  v15 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    transactionCopy2 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzer.m";
    v24 = 1024;
    v25 = 101;
    _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v16 = _PFLogGetLogStream(17);
  v13 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (v13)
  {
    *buf = 136315394;
    transactionCopy2 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzer.m";
    v24 = 1024;
    v25 = 101;
    _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_21;
  }

  return v13;
}

+ (BOOL)isPrivateTransaction:(id)transaction
{
  if (+[PFCloudKitHistoryAnalyzer isPrivateTransactionAuthor:](PFCloudKitHistoryAnalyzer, "isPrivateTransactionAuthor:", [transaction author]))
  {
    return 1;
  }

  contextName = [transaction contextName];

  return [PFCloudKitHistoryAnalyzer isPrivateContextName:contextName];
}

+ (BOOL)isPrivateTransactionAuthor:(id)author
{
  if ([author isEqualToString:@"NSCloudKitMirroringDelegate.export"] & 1) != 0 || (objc_msgSend(author, "isEqualToString:", @"NSCloudKitMirroringDelegate.import") & 1) != 0 || (objc_msgSend(author, "isEqualToString:", @"NSCloudKitMirroringDelegate.reset") & 1) != 0 || (objc_msgSend(author, "isEqualToString:", @"NSCloudKitMirroringDelegate.migration") & 1) != 0 || (objc_msgSend(author, "isEqualToString:", @"NSCloudKitMirroringDelegate.setup"))
  {
    return 1;
  }

  return [author isEqualToString:@"NSCloudKitMirroringDelegate.event"];
}

+ (BOOL)isPrivateContextName:(id)name
{
  if ([name isEqualToString:@"NSCloudKitMirroringDelegate.export"])
  {
    return 1;
  }

  return [name isEqualToString:@"NSCloudKitMirroringDelegate.import"];
}

@end