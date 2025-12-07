@interface NSCKHistoryAnalyzerState
+ (NSString)entityPath;
+ (uint64_t)countAnalyzerStatesInStore:(unint64_t)store withManagedObjectContext:(id *)context error:;
+ (uint64_t)purgeAnalyzedHistoryFromStore:(void *)store withManagedObjectContext:(void *)context error:;
- (NSDictionary)tombstone;
- (NSManagedObjectID)analyzedObjectID;
- (int64_t)finalChangeType;
- (int64_t)originalChangeType;
- (void)mergeWithState:(id)state;
- (void)updateWithChange:(id)change;
@end

@implementation NSCKHistoryAnalyzerState

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v3, v5);
}

- (NSManagedObjectID)analyzedObjectID
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [-[NSCKHistoryAnalyzerState entityId](self "entityId")];
  v4 = [-[NSCKHistoryAnalyzerState entityPK](self "entityPK")];
  if (!v3)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      selfCopy4 = self;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create objectID: called before the record has the necessary properties: %@\n", &v12, 0xCu);
    }

    v9 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v12 = 138412290;
    selfCopy4 = self;
    goto LABEL_15;
  }

  v5 = v4;
  persistentStore = [(NSManagedObjectID *)[(NSManagedObject *)self objectID] persistentStore];
  v7 = _sqlCoreLookupSQLEntityForEntityID(persistentStore, v3);
  if (v7)
  {
    if (v5 >= 1)
    {
      v7 = [(NSPersistentStore *)persistentStore newObjectIDForEntity:v7 pk:v5];
      return v7;
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      selfCopy4 = self;
      _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create objectID: called before the record has the necessary properties: %@\n", &v12, 0xCu);
    }

    v9 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
LABEL_12:
      v7 = 0;
      return v7;
    }

    v12 = 138412290;
    selfCopy4 = self;
LABEL_15:
    _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Cannot create objectID: called before the record has the necessary properties: %@", &v12, 0xCu);
    goto LABEL_12;
  }

  return v7;
}

- (void)mergeWithState:(id)state
{
  v11 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(state "originalTransactionNumber")] == -1 || objc_msgSend(objc_msgSend(state, "originalTransactionNumber"), "compare:", -[NSCKHistoryAnalyzerState finalTransactionNumber](self, "finalTransactionNumber")) == -1 || objc_msgSend(objc_msgSend(state, "originalTransactionNumber"), "compare:", -[NSCKHistoryAnalyzerState finalTransactionNumber](self, "finalTransactionNumber")) == -1 || objc_msgSend(objc_msgSend(state, "finalTransactionNumber"), "compare:", -[NSCKHistoryAnalyzerState finalTransactionNumber](self, "finalTransactionNumber")) == -1)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      stateCopy2 = state;
      v9 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: History analysis corruption detected. State is behind (or overlaps) this copy but is attempting to be merged. %@ / %@\n", &v7, 0x16u);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 138412546;
      stateCopy2 = state;
      v9 = 2112;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: History analysis corruption detected. State is behind (or overlaps) this copy but is attempting to be merged. %@ / %@", &v7, 0x16u);
    }
  }

  -[NSManagedObject setValue:forKey:](self, "setValue:forKey:", [state finalTransactionNumber], @"finalTransactionNumber");
  -[NSManagedObject setValue:forKey:](self, "setValue:forKey:", [state finalChangeAuthor], @"finalChangeAuthor");
  -[NSCKHistoryAnalyzerState setFinalChangeTypeNum:](self, "setFinalChangeTypeNum:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(state, "finalChangeType")}]);
}

- (void)updateWithChange:(id)change
{
  -[NSManagedObject setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objc_msgSend(change, "transaction"), "transactionNumber")}], @"finalTransactionNumber");
  -[NSManagedObject setValue:forKey:](self, "setValue:forKey:", [objc_msgSend(change "transaction")], @"finalChangeAuthor");
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(change, "changeType")}];

  [(NSCKHistoryAnalyzerState *)self setFinalChangeTypeNum:v5];
}

- (NSDictionary)tombstone
{
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Tombstones aren't supported yet for CloudKit history analysis\n", buf, 2u);
  }

  v3 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: Tombstones aren't supported yet for CloudKit history analysis", v5, 2u);
  }

  return 0;
}

- (int64_t)originalChangeType
{
  originalChangeTypeNum = [(NSCKHistoryAnalyzerState *)self originalChangeTypeNum];

  return [originalChangeTypeNum integerValue];
}

- (int64_t)finalChangeType
{
  finalChangeTypeNum = [(NSCKHistoryAnalyzerState *)self finalChangeTypeNum];

  return [finalChangeTypeNum integerValue];
}

+ (uint64_t)purgeAnalyzedHistoryFromStore:(void *)store withManagedObjectContext:(void *)context error:
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v12 = 0;
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath])];
  [(NSBatchDeleteRequest *)v7 setResultType:0];
  v17[0] = a2;
  -[NSPersistentStoreRequest setAffectedStores:](v7, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1]);
  v8 = [objc_msgSend(objc_msgSend(store executeRequest:v7 error:{&v12), "result"), "BOOLValue"}];

  if ((v8 & 1) == 0)
  {
    if (v12)
    {
      if (context)
      {
        *context = v12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKHistoryAnalyzerState.m";
        v15 = 1024;
        v16 = 161;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKHistoryAnalyzerState.m";
        v15 = 1024;
        v16 = 161;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  return v8;
}

+ (uint64_t)countAnalyzerStatesInStore:(unint64_t)store withManagedObjectContext:(id *)context error:
{
  v10[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  objc_opt_self();
  v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
  v10[0] = a2;
  -[NSFetchRequest setAffectedStores:](v7, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1]);
  [(NSFetchRequest *)v7 setPredicate:0];
  [(NSFetchRequest *)v7 setResultType:4];
  if (store)
  {
    v8 = [(NSManagedObjectContext *)store _countForFetchRequest_:v7 error:context];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
}

@end