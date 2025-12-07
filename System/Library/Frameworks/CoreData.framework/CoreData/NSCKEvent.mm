@interface NSCKEvent
+ (NSString)entityPath;
+ (uint64_t)beginEventForRequest:(uint64_t)request withMonitor:(void *)monitor error:;
+ (uint64_t)finishEventForResult:(uint64_t)result withMonitor:(void *)monitor error:;
@end

@implementation NSCKEvent

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v3, v5);
}

+ (uint64_t)beginEventForRequest:(uint64_t)request withMonitor:(void *)monitor error:
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__NSCKEvent_beginEventForRequest_withMonitor_error___block_invoke;
  v12[3] = &unk_1E6EC1A00;
  v12[4] = request;
  v12[5] = a2;
  v12[6] = &v19;
  v12[7] = &v13;
  [(PFCloudKitStoreMonitor *)request performBlock:v12];
  if (!v20[5])
  {
    v9 = v14[5];
    if (v9)
    {
      if (monitor)
      {
        *monitor = v9;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKEvent.m";
        v27 = 1024;
        v28 = 92;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKEvent.m";
        v27 = 1024;
        v28 = 92;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v14[5] = 0;
  v7 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v7;
}

void __52__NSCKEvent_beginEventForRequest_withMonitor_error___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.event"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__NSCKEvent_beginEventForRequest_withMonitor_error___block_invoke_2;
    v7[3] = &unk_1E6EC1900;
    v4 = *(a1 + 40);
    v7[4] = v3;
    v7[5] = v4;
    v7[6] = v2;
    v8 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v9 = *MEMORY[0x1E696A588];
    v10[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 40) requestIdentifier]);
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
  }
}

NSPersistentCloudKitContainerEvent *__52__NSCKEvent_beginEventForRequest_withMonitor_error___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKEvent entityPath], *(a1 + 32));
  -[NSManagedObject setEventIdentifier:](v2, "setEventIdentifier:", [*(a1 + 40) requestIdentifier]);
  v3 = *(a1 + 40);
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v4 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create persistent event for request: %@\n", buf, 0xCu);
      }

      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v11 = v3;
        _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Cannot create persistent event for request: %@", buf, 0xCu);
      }

      goto LABEL_2;
    }

    v4 = 2;
  }

LABEL_7:
  [(NSManagedObject *)v2 setCloudKitEventType:v4];
  -[NSManagedObject setStartedAt:](v2, "setStartedAt:", [MEMORY[0x1E695DF00] date]);
  [*(a1 + 32) assignObject:v2 toPersistentStore:*(a1 + 48)];
  if ([*(a1 + 32) save:&v9])
  {
    result = [[NSPersistentCloudKitContainerEvent alloc] initWithCKEvent:v2];
    v6 = 56;
  }

  else
  {
    result = v9;
    v6 = 64;
  }

  *(*(*(a1 + v6) + 8) + 40) = result;
  return result;
}

+ (uint64_t)finishEventForResult:(uint64_t)result withMonitor:(void *)monitor error:
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__NSCKEvent_finishEventForResult_withMonitor_error___block_invoke;
  v12[3] = &unk_1E6EC1A00;
  v12[4] = result;
  v12[5] = a2;
  v12[6] = &v19;
  v12[7] = &v13;
  [(PFCloudKitStoreMonitor *)result performBlock:v12];
  if (!v20[5])
  {
    v9 = v14[5];
    if (v9)
    {
      if (monitor)
      {
        *monitor = v9;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKEvent.m";
        v27 = 1024;
        v28 = 149;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKEvent.m";
        v27 = 1024;
        v28 = 149;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v14[5] = 0;
  v7 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v7;
}

void __52__NSCKEvent_finishEventForResult_withMonitor_error___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.event"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__NSCKEvent_finishEventForResult_withMonitor_error___block_invoke_2;
    v6[3] = &unk_1E6EC1900;
    v6[4] = *(a1 + 40);
    v6[5] = v2;
    v6[6] = v3;
    v7 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v6];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = *MEMORY[0x1E696A250];
    v8 = *MEMORY[0x1E696A588];
    v9[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [objc_msgSend(*(a1 + 40) "request")]);
    *(*(*(a1 + 56) + 8) + 40) = [v4 initWithDomain:v5 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  }
}

void __52__NSCKEvent_finishEventForResult_withMonitor_error___block_invoke_2(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v2 = [objc_msgSend(*(a1 + 32) "request")];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  objc_opt_self();
  v5 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKEvent entityPath]);
  -[NSFetchRequest setPredicate:](v5, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"eventIdentifier = %@", v2]);
  v24[0] = v4;
  -[NSFetchRequest setAffectedStores:](v5, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1]);
  v6 = [v3 executeFetchRequest:v5 error:v19];
  v7 = v6;
  if (v6)
  {
    if ([v6 count] >= 2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found multiple NSPersistentCloudKitContainerEvents for the identifier '%@'\n", buf, 0xCu);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v21 = v2;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Found multiple NSPersistentCloudKitContainerEvents for the identifier '%@'", buf, 0xCu);
      }
    }

    v10 = [v7 lastObject];
    if (v10)
    {
      [v10 setEndedAt:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
      [v10 setSucceeded:{objc_msgSend(*(a1 + 32), "success")}];
      [v10 setErrorDomain:{objc_msgSend(objc_msgSend(*(a1 + 32), "error"), "domain")}];
      [v10 setErrorCode:{objc_msgSend(objc_msgSend(*(a1 + 32), "error"), "code")}];
      if ([*(a1 + 48) save:v19])
      {
        v11 = [[NSPersistentCloudKitContainerEvent alloc] initWithCKEvent:v10];
        v12 = *(a1 + 56);
LABEL_16:
        *(*(v12 + 8) + 40) = v11;
        return;
      }

LABEL_15:
      v11 = v19[0];
      v12 = *(a1 + 64);
      goto LABEL_16;
    }
  }

  if (v19[0])
  {
    goto LABEL_15;
  }

  v13 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_msgSend(*(a1 + 32) "request")];
    v18 = *(a1 + 32);
    *buf = 138412546;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: No event was found for the identifier '%@' in this result: %@\n", buf, 0x16u);
  }

  v14 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v15 = [objc_msgSend(*(a1 + 32) "request")];
    v16 = *(a1 + 32);
    *buf = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: No event was found for the identifier '%@' in this result: %@", buf, 0x16u);
  }
}

@end