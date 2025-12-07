@interface NSCoreDataCoreSpotlightDelegate
+ (void)initialize;
- (CSSearchableItemAttributeSet)attributeSetForObject:(NSManagedObject *)object;
- (NSCoreDataCoreSpotlightDelegate)init;
- (NSCoreDataCoreSpotlightDelegate)initForStoreWithDescription:(NSPersistentStoreDescription *)description coordinator:(NSPersistentStoreCoordinator *)psc;
- (NSString)domainIdentifier;
- (id)_importObjectsUpdatedSinceTransaction:(void *)transaction;
- (id)indexedPropertyNamesByEntityNameUsingModel:(id)model;
- (uint64_t)_clientStateForSpotlightIndex:(uint64_t)index;
- (uint64_t)_context;
- (unsigned)_asyncContextBlock:(unsigned __int8 *)result;
- (void)_catchUpToCurrentTransaction;
- (void)_doFullReimport;
- (void)_initializePersistentStore;
- (void)_resetSpotlightIndexWithCompletionHandler:(void *)handler;
- (void)_searchableItemForObject:(void *)result;
- (void)_updateSpotlightIndexClientState:(uint64_t)state historyToken:(int)token updatedSpotlight:;
- (void)_updateSpotlightIndexFromBatchResult:(uint64_t)result;
- (void)_updateSpotlightIndexFromSaveRequest:(uint64_t)request;
- (void)createClientSearchableIndex;
- (void)dealloc;
- (void)deleteSpotlightIndexWithCompletionHandler:(void *)completionHandler;
- (void)indexSearchableItemsToCurrentHistoryToken;
- (void)searchableIndex:(CSSearchableIndex *)searchableIndex reindexAllSearchableItemsWithAcknowledgementHandler:(void *)acknowledgementHandler;
- (void)searchableIndex:(CSSearchableIndex *)searchableIndex reindexSearchableItemsWithIdentifiers:(NSArray *)identifiers acknowledgementHandler:(void *)acknowledgementHandler;
- (void)setIndexURL:(id)l;
- (void)startSpotlightIndexing;
- (void)stopSpotlightIndexing;
@end

@implementation NSCoreDataCoreSpotlightDelegate

+ (void)initialize
{
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_class() == self)
  {
    _CoreData_SpotlightDebug = [_PFRoutines integerValueForOverride:?];
  }
}

- (uint64_t)_context
{
  if (result)
  {
    v1 = result;
    if (![*(result + 32) persistentStoreCoordinator])
    {
      v2 = *(v1 + 32);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __43__NSCoreDataCoreSpotlightDelegate__context__block_invoke;
      v3[3] = &unk_1E6EC16F0;
      v3[4] = v1;
      [v2 performBlockAndWait:v3];
    }

    return *(v1 + 32);
  }

  return result;
}

- (void)startSpotlightIndexing
{
  [(NSCoreDataCoreSpotlightDelegate *)self _context];
  _context = [(NSCoreDataCoreSpotlightDelegate *)self _context];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__NSCoreDataCoreSpotlightDelegate_startSpotlightIndexing__block_invoke;
  v4[3] = &unk_1E6EC16F0;
  v4[4] = self;
  [_context performBlock:v4];
}

void __43__NSCoreDataCoreSpotlightDelegate__context__block_invoke(uint64_t a1)
{
  v96[2] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) persistentStoreForURL:{objc_msgSend(*(*(a1 + 32) + 16), "URL")}];
  if (!v2)
  {
    if (_CoreData_SpotlightDebug >= 1)
    {
      v5 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v7 = *(a1 + 32);
            *buf = 134218498;
            *&buf[4] = v7;
            *&buf[12] = 2080;
            *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke";
            *&buf[22] = 1024;
            LODWORD(v79) = 80;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Store was nil on initialization\n", buf, 0x1Cu);
          }
        }

        else
        {
          v46 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(a1 + 32);
            *buf = 134218498;
            *&buf[4] = v47;
            *&buf[12] = 2080;
            *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke";
            *&buf[22] = 1024;
            LODWORD(v79) = 80;
            _os_log_impl(&dword_18565F000, v46, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Store was nil on initialization\n", buf, 0x1Cu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v48 = 1;
      }

      else
      {
        v48 = 4;
      }

      _NSCoreDataLog_console(v48, "CoreData+CoreSpotlight <%p>: %s(%d): Store was nil on initialization", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke", 80);
      objc_autoreleasePoolPop(v5);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&v79 = __Block_byref_object_copy__10;
    *(&v79 + 1) = __Block_byref_object_dispose__10;
    v80 = 0;
    v49 = *(a1 + 32);
    v50 = *(v49 + 8);
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __43__NSCoreDataCoreSpotlightDelegate__context__block_invoke_2;
    v76[3] = &unk_1E6EC1860;
    v76[4] = v49;
    v76[5] = buf;
    [v50 performBlockAndWait:v76];
    v51 = *(*&buf[8] + 40);
    if (v51 && _CoreData_SpotlightDebug >= 1)
    {
      v52 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v53 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = *(a1 + 32);
            *v91 = 134218754;
            v92 = v54;
            v93 = 2080;
            v94 = "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke_2";
            v95 = 1024;
            LODWORD(v96[0]) = 89;
            WORD2(v96[0]) = 2112;
            *(v96 + 6) = v51;
            _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Error during initialization %@\n", v91, 0x26u);
          }
        }

        else
        {
          v55 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = *(a1 + 32);
            *v91 = 134218754;
            v92 = v56;
            v93 = 2080;
            v94 = "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke";
            v95 = 1024;
            LODWORD(v96[0]) = 89;
            WORD2(v96[0]) = 2112;
            *(v96 + 6) = v51;
            _os_log_impl(&dword_18565F000, v55, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Error during initialization %@\n", v91, 0x26u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v57 = 1;
      }

      else
      {
        v57 = 4;
      }

      _NSCoreDataLog_console(v57, "CoreData+CoreSpotlight <%p>: %s(%d): Error during initialization %@", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke", 89, v51);
      objc_autoreleasePoolPop(v52);
    }

    v58 = [*(*(a1 + 32) + 16) URL];
    if ([v51 code] == 134081)
    {
      v59 = [v51 domain];
      if ([v59 isEqualToString:*MEMORY[0x1E696A250]])
      {
        v60 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v61 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_86;
            }
          }

          else
          {
            v61 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
LABEL_86:
              v71 = [v58 path];
              *v91 = 138412290;
              v92 = v71;
              _os_log_error_impl(&dword_18565F000, v61, OS_LOG_TYPE_ERROR, "CoreData: error: NSCoreDataCoreSpotlightDelegate tried to load a store at %@ twice\n", v91, 0xCu);
            }
          }
        }

        _NSCoreDataLog_console(1, "NSCoreDataCoreSpotlightDelegate tried to load a store at %@ twice", [v58 path]);
        goto LABEL_82;
      }
    }

    if (v51)
    {
      v62 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v68 = [v58 path];
        v69 = [v51 userInfo];
        *v91 = 138412802;
        v92 = v68;
        v93 = 2112;
        v94 = v51;
        v95 = 2112;
        v96[0] = v69;
        _os_log_error_impl(&dword_18565F000, v62, OS_LOG_TYPE_ERROR, "CoreData: fault: CDCS - NSCoreDataCoreSpotlightDelegate failed to load a store at %@ due to %@ with %@\n", v91, 0x20u);
      }

      v63 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
        v64 = [v58 path];
        v65 = [v51 userInfo];
        *v91 = 138412802;
        v92 = v64;
        v93 = 2112;
        v94 = v51;
        v95 = 2112;
        v96[0] = v65;
        _os_log_fault_impl(&dword_18565F000, v63, OS_LOG_TYPE_FAULT, "CoreData: CDCS - NSCoreDataCoreSpotlightDelegate failed to load a store at %@ due to %@ with %@", v91, 0x20u);
      }

      goto LABEL_83;
    }

    v60 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v66 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_85;
        }
      }

      else
      {
        v66 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
LABEL_85:
          v70 = [v58 path];
          *v91 = 138412290;
          v92 = v70;
          _os_log_error_impl(&dword_18565F000, v66, OS_LOG_TYPE_ERROR, "CoreData: error: NSCoreDataCoreSpotlightDelegate failed to find its store at %@.  Possibly it was removed from the coordinator.\n", v91, 0xCu);
        }
      }
    }

    _NSCoreDataLog_console(1, "NSCoreDataCoreSpotlightDelegate failed to find its store at %@.  Possibly it was removed from the coordinator.", [v58 path]);
LABEL_82:
    objc_autoreleasePoolPop(v60);
LABEL_83:
    [*(*(a1 + 32) + 32) setPersistentStoreCoordinator:*(*(a1 + 32) + 8)];
    _Block_object_dispose(buf, 8);
    return;
  }

  v3 = v2;
  *(*(a1 + 32) + 24) = [-[atomic_ullong identifier](v2 "identifier")];
  [*(*(a1 + 32) + 32) setPersistentStoreCoordinator:*(*(a1 + 32) + 8)];
  *(*(a1 + 32) + 40) = [objc_msgSend(*(a1 + 32) "domainIdentifier")];
  if ([objc_msgSend(*(a1 + 32) "indexName")])
  {
    v4 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] objc_msgSend(*(a1 + 32)];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    if (v9 || (v9 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")], v8 = *(a1 + 32), v9))
    {
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, *(v8 + 24));
    }

    else
    {
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(v8 + 24));
    }

    v4 = v10;
  }

  *(*(a1 + 32) + 48) = v4;
  *(*(a1 + 32) + 56) = [objc_msgSend(*(a1 + 32) "bundleIdentifier")];
  *(*(a1 + 32) + 64) = [objc_msgSend(*(a1 + 32) "protectionClass")];
  *(*(a1 + 32) + 73) = [*(a1 + 32) usePrivateIndex];
  *(*(a1 + 32) + 96) = [*(a1 + 32) indexedPropertyNamesByEntityNameUsingModel:{objc_msgSend(*(*(a1 + 32) + 8), "managedObjectModel")}];
  if (_CoreData_SpotlightDebug >= 1)
  {
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v12 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 32);
          v14 = *(v13 + 24);
          v16 = *(v13 + 40);
          v15 = *(v13 + 48);
          v17 = *(v13 + 56);
          v18 = *(v13 + 64);
          v19 = *(v13 + 73);
          v20 = *(v13 + 96);
          *buf = 134220290;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke";
          *&buf[22] = 1024;
          LODWORD(v79) = 123;
          WORD2(v79) = 2112;
          *(&v79 + 6) = v14;
          HIWORD(v79) = 2112;
          v80 = v15;
          v81 = 2112;
          v82 = v16;
          v83 = 2112;
          v84 = v17;
          v85 = 2112;
          v86 = v18;
          v87 = 1024;
          v88 = v19;
          v89 = 2112;
          v90 = v20;
          _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Initializing with store identifier %@, index name %@, domain identifier %@, bundle ID %@, protection class %@, uses private index %d, indexed property names %@\n", buf, 0x5Eu);
        }
      }

      else
      {
        v21 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          v23 = *(v22 + 24);
          v25 = *(v22 + 40);
          v24 = *(v22 + 48);
          v26 = *(v22 + 56);
          v27 = *(v22 + 64);
          v28 = *(v22 + 73);
          v29 = *(v22 + 96);
          *buf = 134220290;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke";
          *&buf[22] = 1024;
          LODWORD(v79) = 123;
          WORD2(v79) = 2112;
          *(&v79 + 6) = v23;
          HIWORD(v79) = 2112;
          v80 = v24;
          v81 = 2112;
          v82 = v25;
          v83 = 2112;
          v84 = v26;
          v85 = 2112;
          v86 = v27;
          v87 = 1024;
          v88 = v28;
          v89 = 2112;
          v90 = v29;
          _os_log_impl(&dword_18565F000, v21, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Initializing with store identifier %@, index name %@, domain identifier %@, bundle ID %@, protection class %@, uses private index %d, indexed property names %@\n", buf, 0x5Eu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v31 = 1;
    }

    else
    {
      v31 = 4;
    }

    v30 = *(a1 + 32);
    _NSCoreDataLog_console(v31, "CoreData+CoreSpotlight <%p>: %s(%d): Initializing with store identifier %@, index name %@, domain identifier %@, bundle ID %@, protection class %@, uses private index %d, indexed property names %@", v30, "[NSCoreDataCoreSpotlightDelegate _context]_block_invoke", 123, *(v30 + 24), *(v30 + 48), *(v30 + 40), *(v30 + 56), *(v30 + 64), *(v30 + 73), *(v30 + 96));
    objc_autoreleasePoolPop(v11);
  }

  v32 = [objc_msgSend(*(*(a1 + 32) + 8) "managedObjectModel")];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v33 = [*(*(a1 + 32) + 96) allKeys];
  v34 = [v33 countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v34)
  {
    v35 = *v73;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v73 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = [v32 objectForKey:*(*(&v72 + 1) + 8 * i)];
        [v37 coreSpotlightDisplayNameExpression];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [objc_msgSend(v37 "coreSpotlightDisplayNameExpression")];
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v34);
  }

  v38 = [(atomic_ullong *)v3 coreSpotlightExporter];
  v39 = *(a1 + 32);
  if (v38 != v39)
  {
    if (v38)
    {
      v40 = [v39[2] URL];
      v41 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v67 = [v40 path];
        *buf = 138412290;
        *&buf[4] = v67;
        _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: fault: CDCS - Attempt to illegally register multiple NSCoreDataCoreSpotlightDelegate for a single store at %@\n", buf, 0xCu);
      }

      v42 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        v43 = [v40 path];
        *buf = 138412290;
        *&buf[4] = v43;
        _os_log_fault_impl(&dword_18565F000, v42, OS_LOG_TYPE_FAULT, "CoreData: CDCS - Attempt to illegally register multiple NSCoreDataCoreSpotlightDelegate for a single store at %@", buf, 0xCu);
      }
    }

    else
    {
      v44 = v39;
      v45 = 0;
      atomic_compare_exchange_strong(v3 + 9, &v45, v39);
      if (v45)
      {
      }
    }
  }
}

- (void)_initializePersistentStore
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (_CoreData_SpotlightDebug >= 1)
    {
      v2 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v4 = *(self + 24);
            *buf = 134218754;
            selfCopy2 = self;
            v12 = 2080;
            v13 = "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]";
            v14 = 1024;
            v15 = 1308;
            v16 = 2112;
            v17 = v4;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate initializing support for store with identifier %@\n", buf, 0x26u);
          }
        }

        else
        {
          v5 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *(self + 24);
            *buf = 134218754;
            selfCopy2 = self;
            v12 = 2080;
            v13 = "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]";
            v14 = 1024;
            v15 = 1308;
            v16 = 2112;
            v17 = v6;
            _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate initializing support for store with identifier %@\n", buf, 0x26u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v7 = 1;
      }

      else
      {
        v7 = 4;
      }

      _NSCoreDataLog_console(v7, "CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate initializing support for store with identifier %@", self, "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]", 1308, *(self + 24));
      objc_autoreleasePoolPop(v2);
    }

    global_queue = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__NSCoreDataCoreSpotlightDelegate__initializePersistentStore__block_invoke;
    block[3] = &unk_1E6EC16F0;
    block[4] = self;
    dispatch_async(global_queue, block);
  }
}

unsigned __int8 *__61__NSCoreDataCoreSpotlightDelegate__initializePersistentStore__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__NSCoreDataCoreSpotlightDelegate__initializePersistentStore__block_invoke_2;
  v3[3] = &unk_1E6EC16F0;
  v3[4] = v1;
  return [(NSCoreDataCoreSpotlightDelegate *)v1 _asyncContextBlock:v3];
}

void __61__NSCoreDataCoreSpotlightDelegate__initializePersistentStore__block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) persistentStoreForIdentifier:*(*(a1 + 32) + 24)];
  v3 = atomic_load((*(a1 + 32) + 72));
  if ((v3 & 1) == 0 || (v4 = v2) == 0)
  {
    if (_CoreData_SpotlightDebug < 1)
    {
      return;
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 32);
          v10 = *(v9 + 24);
          *buf = 134218754;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]_block_invoke";
          *&buf[22] = 1024;
          LODWORD(v33) = 1332;
          WORD2(v33) = 2112;
          *(&v33 + 6) = v10;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate initialization cancelled for persistent store for %@\n", buf, 0x26u);
        }
      }

      else
      {
        v20 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          v22 = *(v21 + 24);
          *buf = 134218754;
          *&buf[4] = v21;
          *&buf[12] = 2080;
          *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]_block_invoke";
          *&buf[22] = 1024;
          LODWORD(v33) = 1332;
          WORD2(v33) = 2112;
          *(&v33 + 6) = v22;
          _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate initialization cancelled for persistent store for %@\n", buf, 0x26u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v23 = 1;
    }

    else
    {
      v23 = 4;
    }

    _NSCoreDataLog_console(v23, "CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate initialization cancelled for persistent store for %@", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]_block_invoke", 1332, *(*(a1 + 32) + 24));
    goto LABEL_37;
  }

  v5 = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) createClientSearchableIndex];
  if (*(a1 + 32))
  {
    v11 = [objc_msgSend(v4 "metadata")];
    PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
    if (v11)
    {
      v13 = [v11 isEqual:PFBundleVersion];
      v6 = *(a1 + 32);
      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = *(a1 + 32);
    }

LABEL_18:
    [(NSCoreDataCoreSpotlightDelegate *)v6 _doFullReimport];
    goto LABEL_19;
  }

  v6 = 0;
LABEL_13:
  v14 = [(NSCoreDataCoreSpotlightDelegate *)v6 _clientStateForSpotlightIndex:v5];
  v6 = *(a1 + 32);
  if (!v14)
  {
    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_18;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v15 = [(NSCoreDataCoreSpotlightDelegate *)v6 _context];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __58__NSCoreDataCoreSpotlightDelegate__initialImportCompleted__block_invoke;
  *&v33 = &unk_1E6EC1330;
  *(&v33 + 1) = v6;
  v34 = &v28;
  [v15 performBlockAndWait:buf];
  v16 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  v6 = *(a1 + 32);
  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }

  [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _catchUpToCurrentTransaction];
LABEL_19:

  if (_CoreData_SpotlightDebug < 1)
  {
    return;
  }

  v7 = objc_autoreleasePoolPush();
  _pflogInitialize(4);
  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v17 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        v19 = *(v18 + 24);
        *buf = 134218754;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]_block_invoke_2";
        *&buf[22] = 1024;
        LODWORD(v33) = 1325;
        WORD2(v33) = 2112;
        *(&v33 + 6) = v19;
        _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate finished initialization for persistent store for %@\n", buf, 0x26u);
      }
    }

    else
    {
      v24 = _PFLogGetLogStream(4);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        v26 = *(v25 + 24);
        *buf = 134218754;
        *&buf[4] = v25;
        *&buf[12] = 2080;
        *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]_block_invoke";
        *&buf[22] = 1024;
        LODWORD(v33) = 1325;
        WORD2(v33) = 2112;
        *(&v33 + 6) = v26;
        _os_log_impl(&dword_18565F000, v24, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate finished initialization for persistent store for %@\n", buf, 0x26u);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v27 = 1;
  }

  else
  {
    v27 = 4;
  }

  _NSCoreDataLog_console(v27, "CoreData+CoreSpotlight <%p>: %s(%d): NSCoreDataCoreSpotlightDelegate finished initialization for persistent store for %@", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate _initializePersistentStore]_block_invoke", 1325, *(*(a1 + 32) + 24));
LABEL_37:
  objc_autoreleasePoolPop(v7);
}

- (void)createClientSearchableIndex
{
  if (!self)
  {
    return 0;
  }

  [(NSCoreDataCoreSpotlightDelegate *)self _context];
  v2 = *(self + 80);
  if (v2)
  {
    v3 = [*(self + 112) createPrivateSearchableIndexWithPath:{objc_msgSend(v2, "path")}];
  }

  else
  {
    v4 = *(self + 112);
    v6 = *(self + 56);
    v5 = *(self + 64);
    v7 = *(self + 48);
    if (*(self + 73) == 1)
    {
      v3 = [v4 createPrivateSearchableIndexWithName:v7 protectionClass:v5 bundleIdentifier:v6];
    }

    else
    {
      v3 = [v4 createSearchableIndexWithName:v7 protectionClass:v5 bundleIdentifier:v6];
    }
  }

  v8 = v3;
  [v3 setIndexDelegate:self];
  return v8;
}

void *__58__NSCoreDataCoreSpotlightDelegate__initialImportCompleted__block_invoke(uint64_t a1)
{
  result = [objc_msgSend_valueForKey_(objc_msgSend(objc_msgSend(*(*(a1 + 32) + 8) persistentStoreForIdentifier:{*(*(a1 + 32) + 24)), "metadata")), "BOOLValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_catchUpToCurrentTransaction
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__10;
    v14 = __Block_byref_object_dispose__10;
    v15 = 0;
    _context = [(NSCoreDataCoreSpotlightDelegate *)self _context];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__NSCoreDataCoreSpotlightDelegate__catchUpToCurrentTransaction__block_invoke;
    v9[3] = &unk_1E6EC1330;
    v9[4] = self;
    v9[5] = &v10;
    [_context performBlockAndWait:v9];
    if (_CoreData_SpotlightDebug >= 1)
    {
      v3 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v5 = v11[5];
            *buf = 134218754;
            selfCopy2 = self;
            v18 = 2080;
            v19 = "[NSCoreDataCoreSpotlightDelegate _catchUpToCurrentTransaction]";
            v20 = 1024;
            v21 = 1232;
            v22 = 2112;
            v23 = v5;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Catching up Spotlight index since transaction, %@\n", buf, 0x26u);
          }
        }

        else
        {
          v6 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = v11[5];
            *buf = 134218754;
            selfCopy2 = self;
            v18 = 2080;
            v19 = "[NSCoreDataCoreSpotlightDelegate _catchUpToCurrentTransaction]";
            v20 = 1024;
            v21 = 1232;
            v22 = 2112;
            v23 = v7;
            _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Catching up Spotlight index since transaction, %@\n", buf, 0x26u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v8 = 1;
      }

      else
      {
        v8 = 4;
      }

      _NSCoreDataLog_console(v8, "CoreData+CoreSpotlight <%p>: %s(%d): Catching up Spotlight index since transaction, %@", self, "[NSCoreDataCoreSpotlightDelegate _catchUpToCurrentTransaction]", 1232, v11[5]);
      objc_autoreleasePoolPop(v3);
    }

    [(NSCoreDataCoreSpotlightDelegate *)self _importObjectsUpdatedSinceTransaction:?];

    _Block_object_dispose(&v10, 8);
  }
}

void __63__NSCoreDataCoreSpotlightDelegate__catchUpToCurrentTransaction__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) persistentStoreForIdentifier:*(*(a1 + 32) + 24)];
  v3 = atomic_load((*(a1 + 32) + 72));
  if ((v3 & 1) != 0 && v2)
  {
    v4 = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) createClientSearchableIndex];
    *(*(*(a1 + 40) + 8) + 40) = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _clientStateForSpotlightIndex:v4];
  }
}

id *__43__NSCoreDataCoreSpotlightDelegate__context__block_invoke_2(uint64_t a1)
{
  result = [(NSPersistentStoreCoordinator *)*(*(a1 + 32) + 8) _lastOpenError];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (unsigned)_asyncContextBlock:(unsigned __int8 *)result
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = atomic_load(result + 72);
    if (v3)
    {
      if (_CoreData_SpotlightDebug >= 1)
      {
        v5 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              add_explicit = atomic_fetch_add_explicit(v2 + 26, 1u, memory_order_relaxed);
              *buf = 134218754;
              v16 = v2;
              v17 = 2080;
              v18 = "[NSCoreDataCoreSpotlightDelegate _asyncContextBlock:]";
              v19 = 1024;
              v20 = 152;
              v21 = 1024;
              v22 = add_explicit + 1;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): retval: %d\n", buf, 0x22u);
            }
          }

          else
          {
            v8 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = atomic_fetch_add_explicit(v2 + 26, 1u, memory_order_relaxed);
              *buf = 134218754;
              v16 = v2;
              v17 = 2080;
              v18 = "[NSCoreDataCoreSpotlightDelegate _asyncContextBlock:]";
              v19 = 1024;
              v20 = 152;
              v21 = 1024;
              v22 = v9 + 1;
              _os_log_impl(&dword_18565F000, v8, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): retval: %d\n", buf, 0x22u);
            }
          }
        }

        v10 = _pflogging_catastrophic_mode;
        v11 = atomic_fetch_add_explicit(v2 + 26, 1u, memory_order_relaxed) + 1;
        if (v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = 4;
        }

        _NSCoreDataLog_console(v12, "CoreData+CoreSpotlight <%p>: %s(%d): retval: %d", v2, "[NSCoreDataCoreSpotlightDelegate _asyncContextBlock:]", 152, v11);
        objc_autoreleasePoolPop(v5);
      }

      v13 = *(v2 + 4);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __54__NSCoreDataCoreSpotlightDelegate__asyncContextBlock___block_invoke;
      v14[3] = &unk_1E6EC1D30;
      v14[4] = v2;
      v14[5] = a2;
      return [v13 performBlock:v14];
    }
  }

  return result;
}

void __54__NSCoreDataCoreSpotlightDelegate__asyncContextBlock___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Spotlight Indexing"];
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _context];
  (*(*(a1 + 40) + 16))();
  [*(*(a1 + 32) + 32) reset];
  [v3 drain];
  v4 = 0;
  [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v2];
  if (_CoreData_SpotlightDebug >= 1)
  {
    v5 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v7 = *(a1 + 32);
          add_explicit = atomic_fetch_add_explicit((v7 + 104), 0xFFFFFFFF, memory_order_relaxed);
          *buf = 134218754;
          v17 = v7;
          v18 = 2080;
          v19 = "[NSCoreDataCoreSpotlightDelegate _asyncContextBlock:]_block_invoke";
          v20 = 1024;
          v21 = 169;
          v22 = 1024;
          v23 = add_explicit - 1;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): retval: %d\n", buf, 0x22u);
        }
      }

      else
      {
        v9 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = atomic_fetch_add_explicit((v10 + 104), 0xFFFFFFFF, memory_order_relaxed);
          *buf = 134218754;
          v17 = v10;
          v18 = 2080;
          v19 = "[NSCoreDataCoreSpotlightDelegate _asyncContextBlock:]_block_invoke";
          v20 = 1024;
          v21 = 169;
          v22 = 1024;
          v23 = v11 - 1;
          _os_log_impl(&dword_18565F000, v9, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): retval: %d\n", buf, 0x22u);
        }
      }
    }

    v12 = _pflogging_catastrophic_mode;
    v13 = *(a1 + 32);
    v14 = atomic_fetch_add_explicit(v13 + 26, 0xFFFFFFFF, memory_order_relaxed) - 1;
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    _NSCoreDataLog_console(v15, "CoreData+CoreSpotlight <%p>: %s(%d): retval: %d", v13, "[NSCoreDataCoreSpotlightDelegate _asyncContextBlock:]_block_invoke", 169, v14);
    objc_autoreleasePoolPop(v5);
  }
}

- (NSString)domainIdentifier
{
  v2 = self->_storeIdentifier;

  return v2;
}

- (NSCoreDataCoreSpotlightDelegate)init
{
  if (dword_1ED4BEEC8 == 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = NSStringFromSelector(sel_initForStoreWithDescription_coordinator_);
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(v5 userInfo:{v6), 0}];
    objc_exception_throw(v7);
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: -init results in undefined behavior for NSCoreDataCoreSpotlightDelegate\n", buf, 2u);
  }

  v3 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v8 = 0;
    _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: -init results in undefined behavior for NSCoreDataCoreSpotlightDelegate", v8, 2u);
  }

  return 0;
}

- (NSCoreDataCoreSpotlightDelegate)initForStoreWithDescription:(NSPersistentStoreDescription *)description coordinator:(NSPersistentStoreCoordinator *)psc
{
  if (self && dword_1ED4BEEC8 == 1)
  {
    v7 = [(NSDictionary *)[(NSPersistentStoreDescription *)description options] objectForKey:@"NSPersistentHistoryTrackingKey"];
    if ([(NSString *)[(NSPersistentStoreDescription *)description type] isEqualToString:@"SQLite"])
    {
      if ([v7 isNSDictionary] & 1) != 0 || objc_msgSend(v7, "isNSNumber") && (objc_msgSend(v7, "BOOLValue"))
      {
        goto LABEL_10;
      }

      v8 = @"NSCoreDataCoreSpotlightDelegate requires NSPersistentHistoryTrackingKey to be enabled in NSPersistentStoreDescription options.";
    }

    else
    {
      v8 = @"NSCoreDataCoreSpotlightDelegate requires the store type to be NSSQLiteStoreType.";
    }

    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v8 userInfo:0];
    if (v9)
    {
      v12 = v9;

      objc_exception_throw(v12);
    }
  }

LABEL_10:
  v13.receiver = self;
  v13.super_class = NSCoreDataCoreSpotlightDelegate;
  v10 = [(NSCoreDataCoreSpotlightDelegate *)&v13 init];
  if (v10)
  {
    v10->_coordinator = psc;
    v10->_indexProvider = objc_alloc_init(PFCSSearchableIndexProvider);
    v10->_description = [(NSPersistentStoreDescription *)description copy];
    v10->_context__ = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    atomic_store(0, &v10->_enabled);
  }

  return v10;
}

- (void)dealloc
{
  self->_domainIdentifier = 0;

  self->_indexName = 0;
  self->_coordinator = 0;

  self->_description = 0;
  self->_storeIdentifier = 0;

  self->_context__ = 0;
  self->_bundleIdentifier = 0;

  self->_protectionClass = 0;
  self->_indexURL = 0;

  self->_indexedPropertyNamesByEntity = 0;
  self->_indexProvider = 0;
  v3.receiver = self;
  v3.super_class = NSCoreDataCoreSpotlightDelegate;
  [(NSCoreDataCoreSpotlightDelegate *)&v3 dealloc];
}

- (CSSearchableItemAttributeSet)attributeSetForObject:(NSManagedObject *)object
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  _context = [(NSCoreDataCoreSpotlightDelegate *)self _context];
  v7 = [objc_alloc(getCoreSpotlightCSSearchableItemAttributeSetClass(_context)) initWithItemContentType:@"public.item"];
  entity = [(NSManagedObject *)object entity];
  coreSpotlightDisplayNameExpression = [(NSEntityDescription *)entity coreSpotlightDisplayNameExpression];
  if (coreSpotlightDisplayNameExpression)
  {
    v22 = v5;
    [v7 setDisplayName:{-[NSExpression expressionValueWithObject:context:](coreSpotlightDisplayNameExpression, "expressionValueWithObject:context:", object, objc_msgSend(MEMORY[0x1E695DF90], "dictionary"))}];
    if (entity)
    {
      propertyRanges = entity->_propertyRanges;
    }

    else
    {
      propertyRanges = 0;
    }

    values = [(NSDictionary *)[(NSEntityDescription *)entity propertiesByName] values];
    v13 = _kvcPropertysPublicGetters(entity);
    location = propertyRanges[3].location;
    length = propertyRanges[3].length;
    if (location < length + location)
    {
      v16 = v13;
      do
      {
        v17 = *(values + 8 * location);
        if ([v17 isIndexedBySpotlight])
        {
          Property = _PF_Handler_Public_GetProperty(object, location, 0, *(v16 + 8 * location));
          if (Property)
          {
            v19 = [objc_alloc(getCoreSpotlightCSCustomAttributeKeyClass()) initWithKeyName:objc_msgSend(v17 searchable:"name") searchableByDefault:1 unique:1 multiValued:{0, 0}];
            [v7 setValue:Property forCustomKey:v19];
          }
        }

        ++location;
        --length;
      }

      while (length);
    }

    v11 = 1;
    v5 = v22;
  }

  else
  {
    v11 = 0;
  }

  [(NSManagedObjectContext *)[(NSManagedObject *)object managedObjectContext] refreshObject:object mergeChanges:0];
  [v5 drain];
  v20 = 0;
  if (!v11)
  {
    return 0;
  }

  return v7;
}

- (void)_searchableItemForObject:(void *)result
{
  if (result)
  {
    v3 = result;
    [(NSCoreDataCoreSpotlightDelegate *)result _context];
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_msgSend(objc_msgSend(a2 "objectID")];
    v6 = [v3 attributeSetForObject:a2];
    if (v6)
    {
      v7 = [objc_alloc(getCoreSpotlightCSSearchableItemClass()) initWithUniqueIdentifier:v5 domainIdentifier:v3[5] attributeSet:v6];
    }

    else
    {
      v7 = 0;
    }

    objc_autoreleasePoolPop(v4);

    return v7;
  }

  return result;
}

void __91__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexForObjectsWithIDs_updatedSpotlight___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          *buf = 138412290;
          v20 = a2;
LABEL_21:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error indexing (insert/update): %@\n", buf, 0xCu);
        }
      }

      else if (v7)
      {
        *buf = 138412290;
        v20 = a2;
        goto LABEL_21;
      }
    }

    _NSCoreDataLog_console(1, "Error indexing (insert/update): %@", a2);
    objc_autoreleasePoolPop(v4);
  }

  if (_CoreData_SpotlightDebug >= 1)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v9 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          v11 = [*(a1 + 40) count];
          *buf = 134218754;
          v20 = v10;
          v21 = 2080;
          v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]_block_invoke";
          v23 = 1024;
          v24 = 433;
          v25 = 1024;
          v26 = v11;
          _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Indexed %d searchable items\n", buf, 0x22u);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          v14 = [*(a1 + 40) count];
          *buf = 134218754;
          v20 = v13;
          v21 = 2080;
          v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]_block_invoke";
          v23 = 1024;
          v24 = 433;
          v25 = 1024;
          v26 = v14;
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Indexed %d searchable items\n", buf, 0x22u);
        }
      }
    }

    v15 = _pflogging_catastrophic_mode;
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) count];
    v18 = 4;
    if (v15)
    {
      v18 = 1;
    }

    _NSCoreDataLog_console(v18, "CoreData+CoreSpotlight <%p>: %s(%d): Indexed %d searchable items", v16, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]_block_invoke", 433, v17);
    objc_autoreleasePoolPop(v8);
  }
}

void __91__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexForObjectsWithIDs_updatedSpotlight___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          *buf = 138412290;
          v20 = a2;
LABEL_21:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error indexing (delete): %@\n", buf, 0xCu);
        }
      }

      else if (v7)
      {
        *buf = 138412290;
        v20 = a2;
        goto LABEL_21;
      }
    }

    _NSCoreDataLog_console(1, "Error indexing (delete): %@", a2);
    objc_autoreleasePoolPop(v4);
  }

  if (_CoreData_SpotlightDebug >= 1)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v9 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          v11 = [*(a1 + 40) count];
          *buf = 134218754;
          v20 = v10;
          v21 = 2080;
          v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]_block_invoke";
          v23 = 1024;
          v24 = 445;
          v25 = 2048;
          v26 = v11;
          _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Deleted %lu identifiers\n", buf, 0x26u);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          v14 = [*(a1 + 40) count];
          *buf = 134218754;
          v20 = v13;
          v21 = 2080;
          v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]_block_invoke";
          v23 = 1024;
          v24 = 445;
          v25 = 2048;
          v26 = v14;
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Deleted %lu identifiers\n", buf, 0x26u);
        }
      }
    }

    v15 = _pflogging_catastrophic_mode;
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) count];
    v18 = 4;
    if (v15)
    {
      v18 = 1;
    }

    _NSCoreDataLog_console(v18, "CoreData+CoreSpotlight <%p>: %s(%d): Deleted %lu identifiers", v16, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]_block_invoke", 445, v17);
    objc_autoreleasePoolPop(v8);
  }
}

- (void)_updateSpotlightIndexFromSaveRequest:(uint64_t)request
{
  v27 = *MEMORY[0x1E69E9840];
  if (request)
  {
    v3 = atomic_load((request + 72));
    if (v3)
    {
      if (atomic_fetch_add_explicit((request + 88), 1u, memory_order_relaxed))
      {
        if (_CoreData_SpotlightDebug >= 1)
        {
          v4 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218754;
                requestCopy4 = request;
                v21 = 2080;
                v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]";
                v23 = 1024;
                v24 = 486;
                v25 = 1024;
                _indexerThrottle = [request _indexerThrottle];
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Dropping duplicate indexing request (%d).\n", buf, 0x22u);
              }
            }

            else
            {
              v9 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218754;
                requestCopy4 = request;
                v21 = 2080;
                v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]";
                v23 = 1024;
                v24 = 486;
                v25 = 1024;
                _indexerThrottle = [request _indexerThrottle];
                _os_log_impl(&dword_18565F000, v9, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Dropping duplicate indexing request (%d).\n", buf, 0x22u);
              }
            }
          }

          v10 = _pflogging_catastrophic_mode;
          _indexerThrottle2 = [request _indexerThrottle];
          v12 = 4;
          if (v10)
          {
            v12 = 1;
          }

          _NSCoreDataLog_console(v12, "CoreData+CoreSpotlight <%p>: %s(%d): Dropping duplicate indexing request (%d).", request, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]", 486, _indexerThrottle2);
          objc_autoreleasePoolPop(v4);
        }
      }

      else
      {
        if (_CoreData_SpotlightDebug >= 1)
        {
          v7 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v8 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218754;
                requestCopy4 = request;
                v21 = 2080;
                v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]";
                v23 = 1024;
                v24 = 462;
                v25 = 1024;
                _indexerThrottle = [request _indexerThrottle];
                _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Allowing indexing request (%d).\n", buf, 0x22u);
              }
            }

            else
            {
              v13 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218754;
                requestCopy4 = request;
                v21 = 2080;
                v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]";
                v23 = 1024;
                v24 = 462;
                v25 = 1024;
                _indexerThrottle = [request _indexerThrottle];
                _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Allowing indexing request (%d).\n", buf, 0x22u);
              }
            }
          }

          v14 = _pflogging_catastrophic_mode;
          _indexerThrottle3 = [request _indexerThrottle];
          v16 = 4;
          if (v14)
          {
            v16 = 1;
          }

          _NSCoreDataLog_console(v16, "CoreData+CoreSpotlight <%p>: %s(%d): Allowing indexing request (%d).", request, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]", 462, _indexerThrottle3);
          objc_autoreleasePoolPop(v7);
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __72__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexFromSaveRequest___block_invoke;
        v17[3] = &unk_1E6EC1D80;
        v18 = 1;
        v17[4] = request;
        v17[5] = a2;
        [(NSCoreDataCoreSpotlightDelegate *)request _asyncContextBlock:v17];
      }
    }
  }
}

void __72__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexFromSaveRequest___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(a1 + 32) + 72));
  v2 = *(a1 + 32);
  if (v1)
  {
    if ([*(v2 + 8) persistentStoreForIdentifier:*(v2 + 24)])
    {
      [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _catchUpToCurrentTransaction];
    }

    v4 = *(a1 + 48);
    if ((atomic_fetch_add_explicit((*(a1 + 32) + 88), -v4, memory_order_relaxed) - v4) < 1)
    {
      if (_CoreData_SpotlightDebug >= 1)
      {
        v8 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v10 = *(a1 + 32);
              *buf = 134218754;
              v24 = v10;
              v25 = 2080;
              v26 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]_block_invoke";
              v27 = 1024;
              v28 = 478;
              v29 = 1024;
              v30 = [v10 _indexerThrottle];
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Do *not* need additional indexing operation (%d).\n", buf, 0x22u);
            }
          }

          else
          {
            v17 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(a1 + 32);
              *buf = 134218754;
              v24 = v18;
              v25 = 2080;
              v26 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]_block_invoke";
              v27 = 1024;
              v28 = 478;
              v29 = 1024;
              v30 = [v18 _indexerThrottle];
              _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Do *not* need additional indexing operation (%d).\n", buf, 0x22u);
            }
          }
        }

        v19 = _pflogging_catastrophic_mode;
        v20 = *(a1 + 32);
        v21 = [v20 _indexerThrottle];
        v22 = 4;
        if (v19)
        {
          v22 = 1;
        }

        _NSCoreDataLog_console(v22, "CoreData+CoreSpotlight <%p>: %s(%d): Do *not* need additional indexing operation (%d).", v20, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]_block_invoke", 478, v21);
        objc_autoreleasePoolPop(v8);
      }
    }

    else
    {
      if (_CoreData_SpotlightDebug >= 1)
      {
        v5 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v6 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              v7 = *(a1 + 32);
              *buf = 134218754;
              v24 = v7;
              v25 = 2080;
              v26 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]_block_invoke";
              v27 = 1024;
              v28 = 474;
              v29 = 1024;
              v30 = [v7 _indexerThrottle];
              _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Need additional indexing operation (%d)\n", buf, 0x22u);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 32);
              *buf = 134218754;
              v24 = v12;
              v25 = 2080;
              v26 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]_block_invoke";
              v27 = 1024;
              v28 = 474;
              v29 = 1024;
              v30 = [v12 _indexerThrottle];
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Need additional indexing operation (%d)\n", buf, 0x22u);
            }
          }
        }

        v13 = _pflogging_catastrophic_mode;
        v14 = *(a1 + 32);
        v15 = [v14 _indexerThrottle];
        v16 = 4;
        if (v13)
        {
          v16 = 1;
        }

        _NSCoreDataLog_console(v16, "CoreData+CoreSpotlight <%p>: %s(%d): Need additional indexing operation (%d)", v14, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]_block_invoke", 474, v15);
        objc_autoreleasePoolPop(v5);
      }

      atomic_fetch_add_explicit((*(a1 + 32) + 88), -*(*(a1 + 32) + 88), memory_order_relaxed);
      [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _updateSpotlightIndexFromSaveRequest:?];
    }
  }

  else
  {
    atomic_fetch_add_explicit((v2 + 88), 0xFFFFFFFF, memory_order_relaxed);
  }
}

- (void)_updateSpotlightIndexFromBatchResult:(uint64_t)result
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = atomic_load((result + 72));
    if (v3)
    {
      if (atomic_fetch_add_explicit((result + 88), 1u, memory_order_relaxed))
      {
        if (_CoreData_SpotlightDebug >= 1)
        {
          v4 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218754;
                resultCopy4 = result;
                v21 = 2080;
                v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]";
                v23 = 1024;
                v24 = 521;
                v25 = 1024;
                _indexerThrottle = [result _indexerThrottle];
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Dropping duplicate indexing request (%d).\n", buf, 0x22u);
              }
            }

            else
            {
              v10 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218754;
                resultCopy4 = result;
                v21 = 2080;
                v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]";
                v23 = 1024;
                v24 = 521;
                v25 = 1024;
                _indexerThrottle = [result _indexerThrottle];
                _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Dropping duplicate indexing request (%d).\n", buf, 0x22u);
              }
            }
          }

          v11 = _pflogging_catastrophic_mode;
          _indexerThrottle2 = [result _indexerThrottle];
          v13 = 4;
          if (v11)
          {
            v13 = 1;
          }

          _NSCoreDataLog_console(v13, "CoreData+CoreSpotlight <%p>: %s(%d): Dropping duplicate indexing request (%d).", result, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]", 521, _indexerThrottle2);
          objc_autoreleasePoolPop(v4);
        }
      }

      else
      {
        if (_CoreData_SpotlightDebug >= 1)
        {
          v7 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v8 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                v9 = *(result + 88);
                *buf = 134218754;
                resultCopy4 = result;
                v21 = 2080;
                v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]";
                v23 = 1024;
                v24 = 497;
                v25 = 1024;
                _indexerThrottle = v9;
                _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Allowing indexing request (%d).\n", buf, 0x22u);
              }
            }

            else
            {
              v14 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = *(result + 88);
                *buf = 134218754;
                resultCopy4 = result;
                v21 = 2080;
                v22 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]";
                v23 = 1024;
                v24 = 497;
                v25 = 1024;
                _indexerThrottle = v15;
                _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Allowing indexing request (%d).\n", buf, 0x22u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v16 = 1;
          }

          else
          {
            v16 = 4;
          }

          _NSCoreDataLog_console(v16, "CoreData+CoreSpotlight <%p>: %s(%d): Allowing indexing request (%d).", result, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]", 497, *(result + 88));
          objc_autoreleasePoolPop(v7);
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __72__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexFromBatchResult___block_invoke;
        v17[3] = &unk_1E6EC1D80;
        v18 = 1;
        v17[4] = result;
        v17[5] = a2;
        [(NSCoreDataCoreSpotlightDelegate *)result _asyncContextBlock:v17];
      }
    }
  }
}

void __72__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexFromBatchResult___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(a1 + 32) + 72));
  v2 = *(a1 + 32);
  if (v1)
  {
    if ([*(v2 + 8) persistentStoreForIdentifier:*(v2 + 24)])
    {
      [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _catchUpToCurrentTransaction];
    }

    v4 = *(a1 + 48);
    if ((atomic_fetch_add_explicit((*(a1 + 32) + 88), -v4, memory_order_relaxed) - v4) < 1)
    {
      if (_CoreData_SpotlightDebug >= 1)
      {
        v8 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v10 = *(a1 + 32);
              *buf = 134218754;
              v24 = v10;
              v25 = 2080;
              v26 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]_block_invoke";
              v27 = 1024;
              v28 = 513;
              v29 = 1024;
              v30 = [v10 _indexerThrottle];
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Do *not* need additional indexing operation (%d).\n", buf, 0x22u);
            }
          }

          else
          {
            v17 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(a1 + 32);
              *buf = 134218754;
              v24 = v18;
              v25 = 2080;
              v26 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]_block_invoke";
              v27 = 1024;
              v28 = 513;
              v29 = 1024;
              v30 = [v18 _indexerThrottle];
              _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Do *not* need additional indexing operation (%d).\n", buf, 0x22u);
            }
          }
        }

        v19 = _pflogging_catastrophic_mode;
        v20 = *(a1 + 32);
        v21 = [v20 _indexerThrottle];
        v22 = 4;
        if (v19)
        {
          v22 = 1;
        }

        _NSCoreDataLog_console(v22, "CoreData+CoreSpotlight <%p>: %s(%d): Do *not* need additional indexing operation (%d).", v20, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]_block_invoke", 513, v21);
        objc_autoreleasePoolPop(v8);
      }
    }

    else
    {
      if (_CoreData_SpotlightDebug >= 1)
      {
        v5 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v6 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              v7 = *(a1 + 32);
              *buf = 134218754;
              v24 = v7;
              v25 = 2080;
              v26 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]_block_invoke";
              v27 = 1024;
              v28 = 509;
              v29 = 1024;
              v30 = [v7 _indexerThrottle];
              _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Need additional indexing operation (%d).\n", buf, 0x22u);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 32);
              *buf = 134218754;
              v24 = v12;
              v25 = 2080;
              v26 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]_block_invoke";
              v27 = 1024;
              v28 = 509;
              v29 = 1024;
              v30 = [v12 _indexerThrottle];
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Need additional indexing operation (%d).\n", buf, 0x22u);
            }
          }
        }

        v13 = _pflogging_catastrophic_mode;
        v14 = *(a1 + 32);
        v15 = [v14 _indexerThrottle];
        v16 = 4;
        if (v13)
        {
          v16 = 1;
        }

        _NSCoreDataLog_console(v16, "CoreData+CoreSpotlight <%p>: %s(%d): Need additional indexing operation (%d).", v14, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]_block_invoke", 509, v15);
        objc_autoreleasePoolPop(v5);
      }

      atomic_fetch_add_explicit((*(a1 + 32) + 88), -*(*(a1 + 32) + 88), memory_order_relaxed);
      [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _updateSpotlightIndexFromBatchResult:?];
    }
  }

  else
  {
    atomic_fetch_add_explicit((v2 + 88), 0xFFFFFFFF, memory_order_relaxed);
  }
}

- (uint64_t)_clientStateForSpotlightIndex:(uint64_t)index
{
  v30 = *MEMORY[0x1E69E9840];
  if (!index)
  {
    return 0;
  }

  v4 = [*(index + 8) persistentStoreForIdentifier:*(index + 24)];
  v5 = 0;
  v6 = atomic_load((index + 72));
  if (a2)
  {
    if ((v6 & 1) != 0 && v4 != 0)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x3052000000;
      v23 = __Block_byref_object_copy__10;
      v24 = __Block_byref_object_dispose__10;
      v25 = 0;
      objc_sync_enter(index);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      *&v28 = __Block_byref_object_copy__10;
      *(&v28 + 1) = __Block_byref_object_dispose__10;
      v29 = 0;
      v29 = dispatch_semaphore_create(0);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __65__NSCoreDataCoreSpotlightDelegate__clientStateForSpotlightIndex___block_invoke;
      v19[3] = &unk_1E6EC1E68;
      v19[4] = &v20;
      v19[5] = buf;
      [a2 fetchLastClientStateWithCompletionHandler:v19];
      dispatch_semaphore_wait(*(*&buf[8] + 40), 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(*(*&buf[8] + 40));
      _Block_object_dispose(buf, 8);
      objc_sync_exit(index);
      if ([v21[5] length])
      {
        v26 = 0;
        v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v21[5] error:&v26];
        if (!v5 && _CoreData_SpotlightDebug >= 1)
        {
          v8 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 134219010;
                *&buf[4] = index;
                *&buf[12] = 2080;
                *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _clientStateForSpotlightIndex:]";
                *&buf[22] = 1024;
                LODWORD(v28) = 1199;
                WORD2(v28) = 2112;
                *(&v28 + 6) = a2;
                HIWORD(v28) = 2112;
                v29 = v26;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Unable to decode CoreSpotlight token for %@, doing full reimport (error: %@)\n", buf, 0x30u);
              }
            }

            else
            {
              v10 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134219010;
                *&buf[4] = index;
                *&buf[12] = 2080;
                *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _clientStateForSpotlightIndex:]";
                *&buf[22] = 1024;
                LODWORD(v28) = 1199;
                WORD2(v28) = 2112;
                *(&v28 + 6) = a2;
                HIWORD(v28) = 2112;
                v29 = v26;
                _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Unable to decode CoreSpotlight token for %@, doing full reimport (error: %@)\n", buf, 0x30u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v11 = 1;
          }

          else
          {
            v11 = 4;
          }

          _NSCoreDataLog_console(v11, "CoreData+CoreSpotlight <%p>: %s(%d): Unable to decode CoreSpotlight token for %@, doing full reimport (error: %@)", index, "[NSCoreDataCoreSpotlightDelegate _clientStateForSpotlightIndex:]", 1199, a2, v26);
          objc_autoreleasePoolPop(v8);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_27;
        }

        v12 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = v5;
          _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: fault: CDCS - Unexpected class for CoreSpotlight token for %@, doing full reimport (token: %@)\n", buf, 0x16u);
        }

        v13 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = v5;
          _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: CDCS - Unexpected class for CoreSpotlight token for %@, doing full reimport (token: %@)", buf, 0x16u);
        }
      }

      v5 = 0;
LABEL_27:

      v21[5] = 0;
      if (_CoreData_SpotlightDebug >= 1)
      {
        v14 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v15 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 134219010;
              *&buf[4] = index;
              *&buf[12] = 2080;
              *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _clientStateForSpotlightIndex:]";
              *&buf[22] = 1024;
              LODWORD(v28) = 1214;
              WORD2(v28) = 2112;
              *(&v28 + 6) = v5;
              HIWORD(v28) = 2112;
              v29 = a2;
              _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Fetched client state, %@, for index, %@\n", buf, 0x30u);
            }
          }

          else
          {
            v16 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134219010;
              *&buf[4] = index;
              *&buf[12] = 2080;
              *&buf[14] = "[NSCoreDataCoreSpotlightDelegate _clientStateForSpotlightIndex:]";
              *&buf[22] = 1024;
              LODWORD(v28) = 1214;
              WORD2(v28) = 2112;
              *(&v28 + 6) = v5;
              HIWORD(v28) = 2112;
              v29 = a2;
              _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Fetched client state, %@, for index, %@\n", buf, 0x30u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v17 = 1;
        }

        else
        {
          v17 = 4;
        }

        _NSCoreDataLog_console(v17, "CoreData+CoreSpotlight <%p>: %s(%d): Fetched client state, %@, for index, %@", index, "[NSCoreDataCoreSpotlightDelegate _clientStateForSpotlightIndex:]", 1214, v5, a2);
        objc_autoreleasePoolPop(v14);
      }

      _Block_object_dispose(&v20, 8);
    }
  }

  return v5;
}

void __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else if (v7)
      {
LABEL_11:
        v9 = [*(a1 + 32) name];
        *buf = 138412546;
        v11 = v9;
        v12 = 2112;
        v13 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Full re-import failed for entity %@ (re-index), %@.\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Full re-import failed for entity %@ (re-index), %@.", [*(a1 + 32) name], a2);
    objc_autoreleasePoolPop(v4);
    return;
  }

  v8 = *(a1 + 40);

  [v8 removeAllObjects];
}

void __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_75(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else if (v7)
      {
LABEL_11:
        v9 = [*(a1 + 32) name];
        *buf = 138412546;
        v11 = v9;
        v12 = 2112;
        v13 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Full re-import failed for entity %@ (delete), %@.\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Full re-import failed for entity %@ (delete), %@.", [*(a1 + 32) name], a2);
    objc_autoreleasePoolPop(v4);
    return;
  }

  v8 = *(a1 + 40);

  [v8 removeAllObjects];
}

void __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_77(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else if (v7)
      {
LABEL_9:
        v8 = [*(a1 + 32) name];
        *buf = 138412546;
        v10 = v8;
        v11 = 2112;
        v12 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Full re-import failed for entity %@ (batch), %@.\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Full re-import failed for entity %@ (batch), %@.", [*(a1 + 32) name], a2);
    objc_autoreleasePoolPop(v4);
  }
}

void __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_79(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else if (v7)
      {
LABEL_11:
        v9 = [*(a1 + 32) name];
        *buf = 138412546;
        v11 = v9;
        v12 = 2112;
        v13 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Full re-import failed for entity %@ (re-index), %@.\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Full re-import failed for entity %@ (re-index), %@.", [*(a1 + 32) name], a2);
    objc_autoreleasePoolPop(v4);
    return;
  }

  v8 = *(a1 + 40);

  [v8 removeAllObjects];
}

void __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_80(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else if (v7)
      {
LABEL_11:
        v9 = [*(a1 + 32) name];
        *buf = 138412546;
        v11 = v9;
        v12 = 2112;
        v13 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Full re-import failed for entity %@ (delete), %@.\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Full re-import failed for entity %@ (delete), %@.", [*(a1 + 32) name], a2);
    objc_autoreleasePoolPop(v4);
    return;
  }

  v8 = *(a1 + 40);

  [v8 removeAllObjects];
}

void __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_81(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else if (v7)
      {
LABEL_9:
        v8 = [*(a1 + 32) name];
        *buf = 138412546;
        v10 = v8;
        v11 = 2112;
        v12 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Full re-import failed for entity %@ (batch), %@.\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Full re-import failed for entity %@ (batch), %@.", [*(a1 + 32) name], a2);
    objc_autoreleasePoolPop(v4);
  }
}

void __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_83(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v4 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v6)
        {
          *buf = 138412290;
          v8 = a2;
LABEL_10:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Full re-import failed, %@.\n", buf, 0xCu);
        }
      }

      else if (v6)
      {
        *buf = 138412290;
        v8 = a2;
        goto LABEL_10;
      }
    }

    _NSCoreDataLog_console(1, "Full re-import failed, %@.", a2);
    objc_autoreleasePoolPop(v3);
  }
}

- (void)_updateSpotlightIndexClientState:(uint64_t)state historyToken:(int)token updatedSpotlight:
{
  v46 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = result;
    objc_sync_enter(result);
    v8 = [*(v7 + 1) persistentStoreForIdentifier:*(v7 + 3)];
    v9 = atomic_load(v7 + 72);
    if (!a2)
    {
      return objc_sync_exit(v7);
    }

    if ((v9 & 1) == 0 || v8 == 0)
    {
      return objc_sync_exit(v7);
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = __Block_byref_object_copy__10;
    v34 = __Block_byref_object_dispose__10;
    v35 = 0;
    if (state)
    {
      data = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:state requiringSecureCoding:1 error:&v35];
    }

    else
    {
      data = [MEMORY[0x1E695DEF0] data];
    }

    v12 = data;
    if (!v31[5])
    {
      if (_CoreData_SpotlightDebug >= 1)
      {
        v16 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218754;
              v39 = v7;
              v40 = 2080;
              v41 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexClientState:historyToken:updatedSpotlight:]";
              v42 = 1024;
              v43 = 1125;
              v44 = 2112;
              stateCopy4 = state;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Persisting token to index client state, %@\n", buf, 0x26u);
            }
          }

          else
          {
            v18 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218754;
              v39 = v7;
              v40 = 2080;
              v41 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexClientState:historyToken:updatedSpotlight:]";
              v42 = 1024;
              v43 = 1125;
              v44 = 2112;
              stateCopy4 = state;
              _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Persisting token to index client state, %@\n", buf, 0x26u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v19 = 1;
        }

        else
        {
          v19 = 4;
        }

        _NSCoreDataLog_console(v19, "CoreData+CoreSpotlight <%p>: %s(%d): Persisting token to index client state, %@", v7, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexClientState:historyToken:updatedSpotlight:]", 1125, state);
        objc_autoreleasePoolPop(v16);
      }

      v20 = dispatch_semaphore_create(0);
      [a2 beginIndexBatch];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __98__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexClientState_historyToken_updatedSpotlight___block_invoke;
      v29[3] = &unk_1E6EC1E40;
      v29[4] = v20;
      v29[5] = &v30;
      [a2 endIndexBatchWithClientState:v12 completionHandler:v29];
      dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v20);
      if (_CoreData_SpotlightDebug >= 1)
      {
        v21 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v22 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218754;
              v39 = v7;
              v40 = 2080;
              v41 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexClientState:historyToken:updatedSpotlight:]";
              v42 = 1024;
              v43 = 1147;
              v44 = 2112;
              stateCopy4 = state;
              _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Persisted token to index client state, %@\n", buf, 0x26u);
            }
          }

          else
          {
            v23 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218754;
              v39 = v7;
              v40 = 2080;
              v41 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexClientState:historyToken:updatedSpotlight:]";
              v42 = 1024;
              v43 = 1147;
              v44 = 2112;
              stateCopy4 = state;
              _os_log_impl(&dword_18565F000, v23, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Persisted token to index client state, %@\n", buf, 0x26u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v24 = 1;
        }

        else
        {
          v24 = 4;
        }

        _NSCoreDataLog_console(v24, "CoreData+CoreSpotlight <%p>: %s(%d): Persisted token to index client state, %@", v7, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexClientState:historyToken:updatedSpotlight:]", 1147, state);
        objc_autoreleasePoolPop(v21);
      }

      v25 = v31;
      if (state && !v31[5])
      {
        if (token)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v27 = *(v7 + 3);
          v36[0] = @"NSStoreUUID";
          v36[1] = @"historyToken";
          v37[0] = v27;
          v37[1] = state;
          [defaultCenter postNotificationName:@"NSCoreDataCoreSpotlightDelegateIndexDidUpdateNotification" object:v7 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v37, v36, 2)}];
          v25 = v31;
        }
      }

      v31[5] = 0;
      goto LABEL_46;
    }

    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v14 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = v31[5];
          *buf = 138412290;
          v39 = v15;
LABEL_50:
          _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: error: Error while archiving data to store in client state index, %@\n", buf, 0xCu);
        }
      }

      else
      {
        v14 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v28 = v31[5];
          *buf = 138412290;
          v39 = v28;
          goto LABEL_50;
        }
      }
    }

    _NSCoreDataLog_console(1, "Error while archiving data to store in client state index, %@", v31[5]);
    objc_autoreleasePoolPop(v13);
LABEL_46:
    _Block_object_dispose(&v30, 8);
    return objc_sync_exit(v7);
  }

  return result;
}

void __83__NSCoreDataCoreSpotlightDelegate__processTransactionsStartingAt_updatedSpotlight___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__NSCoreDataCoreSpotlightDelegate__processTransactionsStartingAt_updatedSpotlight___block_invoke_89;
    v8[3] = &unk_1E6EC16F0;
    v8[4] = v7;
    [(NSCoreDataCoreSpotlightDelegate *)v7 _asyncContextBlock:v8];
    return;
  }

  v3 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v4 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v6)
      {
        *buf = 138412290;
        v10 = a2;
LABEL_11:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error resetting spotlight index while recovering from expired history token: %@\n", buf, 0xCu);
      }
    }

    else if (v6)
    {
      *buf = 138412290;
      v10 = a2;
      goto LABEL_11;
    }
  }

  _NSCoreDataLog_console(1, "Error resetting spotlight index while recovering from expired history token: %@", a2);
  objc_autoreleasePoolPop(v3);
}

- (void)_doFullReimport
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (_CoreData_SpotlightDebug >= 1)
    {
      v2 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            v9 = v1;
            v10 = 2080;
            v11 = "[NSCoreDataCoreSpotlightDelegate _doFullReimport]";
            v12 = 1024;
            v13 = 943;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Performing full Spotlight re-import\n", buf, 0x1Cu);
          }
        }

        else
        {
          v4 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v9 = v1;
            v10 = 2080;
            v11 = "[NSCoreDataCoreSpotlightDelegate _doFullReimport]";
            v12 = 1024;
            v13 = 943;
            _os_log_impl(&dword_18565F000, v4, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Performing full Spotlight re-import\n", buf, 0x1Cu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v5 = 1;
      }

      else
      {
        v5 = 4;
      }

      _NSCoreDataLog_console(v5, "CoreData+CoreSpotlight <%p>: %s(%d): Performing full Spotlight re-import", v1, "[NSCoreDataCoreSpotlightDelegate _doFullReimport]", 943);
      objc_autoreleasePoolPop(v2);
    }

    [(NSCoreDataCoreSpotlightDelegate *)v1 _context];
    _context = [(NSCoreDataCoreSpotlightDelegate *)v1 _context];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__NSCoreDataCoreSpotlightDelegate__doFullReimport__block_invoke;
    v7[3] = &unk_1E6EC16F0;
    v7[4] = v1;
    return [_context performBlockAndWait:v7];
  }

  return result;
}

- (void)_resetSpotlightIndexWithCompletionHandler:(void *)handler
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (handler)
  {
    createClientSearchableIndex = [(NSCoreDataCoreSpotlightDelegate *)handler createClientSearchableIndex];
    if (createClientSearchableIndex)
    {
      v5 = createClientSearchableIndex;
      [(NSCoreDataCoreSpotlightDelegate *)handler _updateSpotlightIndexClientState:createClientSearchableIndex historyToken:0 updatedSpotlight:0];
      v7[0] = handler[5];
      [v5 deleteSearchableItemsWithDomainIdentifiers:objc_msgSend(MEMORY[0x1E695DEC8] completionHandler:{"arrayWithObjects:count:", v7, 1), a2}];
    }

    else if (a2)
    {
      v6 = *(a2 + 16);

      v6(a2, 0);
    }
  }
}

- (id)_importObjectsUpdatedSinceTransaction:(void *)transaction
{
  transactionCopy = transaction;
  v18 = *MEMORY[0x1E69E9840];
  if (transaction)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__10;
    v16 = __Block_byref_object_dispose__10;
    v17 = a2;
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__10;
    v10 = __Block_byref_object_dispose__10;
    v11 = 0;
    _context = [(NSCoreDataCoreSpotlightDelegate *)transactionCopy _context];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __73__NSCoreDataCoreSpotlightDelegate__importObjectsUpdatedSinceTransaction___block_invoke;
    v5[3] = &unk_1E6EC1EB8;
    v5[4] = transactionCopy;
    v5[5] = &v12;
    v5[6] = &v6;
    [_context performBlockAndWait:v5];

    transactionCopy = v7[5];
    _Block_object_dispose(&v6, 8);
    _Block_object_dispose(&v12, 8);
  }

  return transactionCopy;
}

void __73__NSCoreDataCoreSpotlightDelegate__importObjectsUpdatedSinceTransaction___block_invoke(uint64_t *a1)
{
  v202 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 8) persistentStoreForIdentifier:*(a1[4] + 24)];
  v128 = a1;
  v3 = atomic_load((a1[4] + 72));
  if ((v3 & 1) == 0 || !v2)
  {
    return;
  }

  if (_CoreData_SpotlightDebug >= 1)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v6 = v128[4];
          v7 = *(*(v128[5] + 8) + 40);
          *buf = 134218754;
          v195 = v6;
          v196 = 2080;
          v197 = "[NSCoreDataCoreSpotlightDelegate _importObjectsUpdatedSinceTransaction:]_block_invoke";
          v198 = 1024;
          v199 = 906;
          v200 = 2112;
          v201 = v7;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Importing objects since transaction %@\n", buf, 0x26u);
        }
      }

      else
      {
        v8 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v128[4];
          v10 = *(*(v128[5] + 8) + 40);
          *buf = 134218754;
          v195 = v9;
          v196 = 2080;
          v197 = "[NSCoreDataCoreSpotlightDelegate _importObjectsUpdatedSinceTransaction:]_block_invoke";
          v198 = 1024;
          v199 = 906;
          v200 = 2112;
          v201 = v10;
          _os_log_impl(&dword_18565F000, v8, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Importing objects since transaction %@\n", buf, 0x26u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 4;
    }

    _NSCoreDataLog_console(v11, "CoreData+CoreSpotlight <%p>: %s(%d): Importing objects since transaction %@", v128[4], "[NSCoreDataCoreSpotlightDelegate _importObjectsUpdatedSinceTransaction:]_block_invoke", 906, *(*(v128[5] + 8) + 40));
    objc_autoreleasePoolPop(v4);
  }

  v140 = v128[4];
  if (!v140)
  {
    goto LABEL_237;
  }

  v122 = *(*(v128[5] + 8) + 40);
  v124 = [*(v140 + 8) persistentStoreForIdentifier:*(v140 + 24)];
  v12 = atomic_load((v140 + 72));
  if ((v12 & 1) == 0 || !v124)
  {
    goto LABEL_237;
  }

  context = v122;
  v119 = 0;
  v121 = 0;
  v127 = *MEMORY[0x1E696A250];
  v117 = v157;
  v118 = v159;
  v13 = 1;
  do
  {
    if (!v13)
    {
      goto LABEL_217;
    }

    v130 = objc_autoreleasePoolPush();
    v14 = atomic_load((v140 + 72));
    if ((v14 & 1) == 0)
    {
LABEL_21:

      context = 0;
      v13 = 1;
      v15 = 1;
      goto LABEL_187;
    }

    v16 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:context];
    [(NSPersistentHistoryChangeRequest *)v16 setResultType:5];
    v183 = v124;
    -[NSPersistentStoreRequest setAffectedStores:](v16, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v183 count:1]);
    [(NSPersistentHistoryChangeRequest *)v16 setFetchBatchSize:100];
    [(NSPersistentHistoryChangeRequest *)v16 setFetchLimit:1000];
    v155 = 0;
    v17 = [-[NSCoreDataCoreSpotlightDelegate _context](v140) executeRequest:v16 error:&v155];
    v18 = v17;
    if (!v17 || ![objc_msgSend(v17 "result")])
    {
      if (!v155)
      {
        v22 = context;
LABEL_183:
        context = v22;
        if (v22 == v122)
        {

          context = 0;
        }

        v15 = 4;
        goto LABEL_186;
      }

      v20 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v21 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_189;
          }
        }

        else
        {
          v21 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
LABEL_189:
            *buf = 138412290;
            v195 = v155;
            _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: Core Data Spotlight Error during processing of history: %@\n", buf, 0xCu);
          }
        }
      }

      _NSCoreDataLog_console(1, "Core Data Spotlight Error during processing of history: %@", v155);
      objc_autoreleasePoolPop(v20);
      if (![objc_msgSend(v155 "domain")] || objc_msgSend(v155, "code") != 134301)
      {
LABEL_182:

        v22 = 0;
        goto LABEL_183;
      }

      v55 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v56 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v57 = v56;
            v58 = "CoreData: error: Discovered an expired history token, attempting recovery.\n";
LABEL_215:
            _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, v58, buf, 2u);
          }
        }

        else
        {
          v89 = _PFLogGetLogStream(2);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v57 = v89;
            v58 = "CoreData: warning: Discovered an expired history token, attempting recovery.\n";
            goto LABEL_215;
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v90 = 1;
      }

      else
      {
        v90 = 2;
      }

      _NSCoreDataLog_console(v90, "Discovered an expired history token, attempting recovery.");
      objc_autoreleasePoolPop(v55);
      v91 = [(NSCoreDataCoreSpotlightDelegate *)v140 createClientSearchableIndex];
      [(NSCoreDataCoreSpotlightDelegate *)v140 _updateSpotlightIndexClientState:v91 historyToken:0 updatedSpotlight:0];

      v154[0] = MEMORY[0x1E69E9820];
      v154[1] = 3221225472;
      v154[2] = __83__NSCoreDataCoreSpotlightDelegate__processTransactionsStartingAt_updatedSpotlight___block_invoke;
      v154[3] = &unk_1E6EC1DA8;
      v154[4] = v140;
      [(NSCoreDataCoreSpotlightDelegate *)v140 _resetSpotlightIndexWithCompletionHandler:v154];
      goto LABEL_182;
    }

    v19 = atomic_load((v140 + 72));
    if ((v19 & 1) == 0)
    {
      goto LABEL_21;
    }

    obj = [v18 result];
    v133 = [MEMORY[0x1E695DFA8] set];
    v132 = [MEMORY[0x1E695DFA8] set];
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v23 = [obj countByEnumeratingWithState:&v150 objects:v175 count:16];
    if (!v23)
    {
LABEL_116:
      if (v121)
      {
        v15 = 4;
        v13 = 1;
        v121 = 1;
      }

      else
      {
        if ([v133 count] || objc_msgSend(v132, "count"))
        {
          [v133 minusSet:v132];
          v172[0] = v133;
          v172[1] = MEMORY[0x1E695E0F0];
          v172[2] = v132;
          v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:3];
          v60 = atomic_load((v140 + 72));
          if (v60)
          {
            v61 = v59;
            if ([*(v140 + 8) persistentStoreForIdentifier:*(v140 + 24)])
            {
              v62 = [MEMORY[0x1E695DF70] array];
              v63 = [MEMORY[0x1E695DF70] array];
              v136 = objc_autoreleasePoolPush();
              v170 = 0u;
              v171 = 0u;
              v168 = 0u;
              v169 = 0u;
              v64 = [v61 firstObject];
              v65 = [v64 countByEnumeratingWithState:&v168 objects:buf count:16];
              if (v65)
              {
                v66 = *v169;
                do
                {
                  for (i = 0; i != v65; ++i)
                  {
                    if (*v169 != v66)
                    {
                      objc_enumerationMutation(v64);
                    }

                    v68 = *(*(&v168 + 1) + 8 * i);
                    v69 = objc_autoreleasePoolPush();
                    if (-[NSEntityDescription _hasPropertiesIndexedBySpotlight]([v68 entity]))
                    {
                      v193[0] = 0;
                      v70 = [-[NSCoreDataCoreSpotlightDelegate _context](v140) existingObjectWithID:v68 error:v193];
                      if (v70)
                      {
                        v71 = [(NSCoreDataCoreSpotlightDelegate *)v140 _searchableItemForObject:v70];
                        if (v71)
                        {
                          [v62 addObject:v71];
                        }

                        else
                        {
                          [v63 addObject:{objc_msgSend(objc_msgSend(v68, "URIRepresentation"), "description")}];
                        }

                        [-[NSCoreDataCoreSpotlightDelegate _context](v140) refreshObject:v70 mergeChanges:1];
                      }

                      else if ([v193[0] code] == 133000 && objc_msgSend(objc_msgSend(v193[0], "domain"), "isEqualToString:", v127))
                      {
                        [v63 addObject:{objc_msgSend(objc_msgSend(v68, "URIRepresentation"), "description")}];
                      }
                    }

                    objc_autoreleasePoolPop(v69);
                  }

                  v65 = [v64 countByEnumeratingWithState:&v168 objects:buf count:16];
                }

                while (v65);
              }

              objc_autoreleasePoolPop(v136);
              v137 = objc_autoreleasePoolPush();
              v166 = 0u;
              v167 = 0u;
              v164 = 0u;
              v165 = 0u;
              v72 = [v61 objectAtIndex:1];
              v73 = [v72 countByEnumeratingWithState:&v164 objects:v193 count:16];
              if (v73)
              {
                v74 = *v165;
                do
                {
                  for (j = 0; j != v73; ++j)
                  {
                    if (*v165 != v74)
                    {
                      objc_enumerationMutation(v72);
                    }

                    v76 = *(*(&v164 + 1) + 8 * j);
                    v77 = objc_autoreleasePoolPush();
                    if (-[NSEntityDescription _hasPropertiesIndexedBySpotlight]([v76 entity]))
                    {
                      v192[0] = 0;
                      v78 = [-[NSCoreDataCoreSpotlightDelegate _context](v140) existingObjectWithID:v76 error:v192];
                      if (v78)
                      {
                        v79 = [(NSCoreDataCoreSpotlightDelegate *)v140 _searchableItemForObject:v78];
                        if (v79)
                        {
                          [v62 addObject:v79];
                        }

                        else
                        {
                          [v63 addObject:{objc_msgSend(objc_msgSend(v76, "URIRepresentation"), "description")}];
                        }

                        [-[NSCoreDataCoreSpotlightDelegate _context](v140) refreshObject:v78 mergeChanges:1];
                      }

                      else if ([v192[0] code] == 133000 && objc_msgSend(objc_msgSend(v192[0], "domain"), "isEqualToString:", v127))
                      {
                        [v63 addObject:{objc_msgSend(objc_msgSend(v76, "URIRepresentation"), "description")}];
                      }
                    }

                    objc_autoreleasePoolPop(v77);
                  }

                  v73 = [v72 countByEnumeratingWithState:&v164 objects:v193 count:16];
                }

                while (v73);
              }

              objc_autoreleasePoolPop(v137);
              v80 = objc_autoreleasePoolPush();
              v162 = 0u;
              v163 = 0u;
              v160 = 0u;
              v161 = 0u;
              v81 = [v61 lastObject];
              v82 = [v81 countByEnumeratingWithState:&v160 objects:v192 count:16];
              if (v82)
              {
                v83 = *v161;
                do
                {
                  for (k = 0; k != v82; ++k)
                  {
                    if (*v161 != v83)
                    {
                      objc_enumerationMutation(v81);
                    }

                    v85 = *(*(&v160 + 1) + 8 * k);
                    v86 = objc_autoreleasePoolPush();
                    if (-[NSEntityDescription _hasPropertiesIndexedBySpotlight]([v85 entity]))
                    {
                      [v63 addObject:{objc_msgSend(objc_msgSend(v85, "URIRepresentation"), "description")}];
                    }

                    objc_autoreleasePoolPop(v86);
                  }

                  v82 = [v81 countByEnumeratingWithState:&v160 objects:v192 count:16];
                }

                while (v82);
              }

              objc_autoreleasePoolPop(v80);
              if (_CoreData_SpotlightDebug >= 1)
              {
                v87 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v88 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                    {
                      *v184 = 134218754;
                      v185 = v140;
                      v186 = 2080;
                      v187 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]";
                      v188 = 1024;
                      v189 = 420;
                      v190 = 2112;
                      v191 = v62;
                      _os_log_error_impl(&dword_18565F000, v88, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Searchable items %@\n", v184, 0x26u);
                    }
                  }

                  else
                  {
                    v92 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                    {
                      *v184 = 134218754;
                      v185 = v140;
                      v186 = 2080;
                      v187 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]";
                      v188 = 1024;
                      v189 = 420;
                      v190 = 2112;
                      v191 = v62;
                      _os_log_impl(&dword_18565F000, v92, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Searchable items %@\n", v184, 0x26u);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v93 = 1;
                }

                else
                {
                  v93 = 4;
                }

                _NSCoreDataLog_console(v93, "CoreData+CoreSpotlight <%p>: %s(%d): Searchable items %@", v140, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]", 420, v62);
                objc_autoreleasePoolPop(v87);
                if (_CoreData_SpotlightDebug >= 1)
                {
                  v94 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v95 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                      {
                        *v184 = 134218754;
                        v185 = v140;
                        v186 = 2080;
                        v187 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]";
                        v188 = 1024;
                        v189 = 421;
                        v190 = 2112;
                        v191 = v63;
                        _os_log_error_impl(&dword_18565F000, v95, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Identifiers to delete %@\n", v184, 0x26u);
                      }
                    }

                    else
                    {
                      v96 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                      {
                        *v184 = 134218754;
                        v185 = v140;
                        v186 = 2080;
                        v187 = "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]";
                        v188 = 1024;
                        v189 = 421;
                        v190 = 2112;
                        v191 = v63;
                        _os_log_impl(&dword_18565F000, v96, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Identifiers to delete %@\n", v184, 0x26u);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v97 = 1;
                  }

                  else
                  {
                    v97 = 4;
                  }

                  _NSCoreDataLog_console(v97, "CoreData+CoreSpotlight <%p>: %s(%d): Identifiers to delete %@", v140, "[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexForObjectsWithIDs:updatedSpotlight:]", 421, v63);
                  objc_autoreleasePoolPop(v94);
                }
              }

              v98 = [v62 count];
              if (v98 + [v63 count])
              {
                v99 = [(NSCoreDataCoreSpotlightDelegate *)v140 createClientSearchableIndex];
                if ([v62 count])
                {
                  v158[0] = MEMORY[0x1E69E9820];
                  v158[1] = 3221225472;
                  v159[0] = __91__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexForObjectsWithIDs_updatedSpotlight___block_invoke;
                  v159[1] = &unk_1E6EC1D58;
                  v159[2] = v140;
                  v159[3] = v62;
                  [v99 indexSearchableItems:v62 completionHandler:v158];
                  v119 = 1;
                }

                if ([v63 count])
                {
                  v156[0] = MEMORY[0x1E69E9820];
                  v156[1] = 3221225472;
                  v157[0] = __91__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexForObjectsWithIDs_updatedSpotlight___block_invoke_2;
                  v157[1] = &unk_1E6EC1D58;
                  v157[2] = v140;
                  v157[3] = v63;
                  [v99 deleteSearchableItemsWithIdentifiers:v63 completionHandler:v156];
                  v119 = 1;
                }
              }
            }
          }
        }

        v121 = 0;
        v15 = 0;
        v13 = [obj count] == 1000;
      }

      goto LABEL_187;
    }

    v126 = *v151;
LABEL_34:
    v131 = 0;
    v125 = v23;
    while (1)
    {
      if (*v151 != v126)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v150 + 1) + 8 * v131);
      v129 = objc_autoreleasePoolPush();
      v25 = atomic_load((v140 + 72));
      if ((v25 & 1) == 0)
      {

        context = 0;
        v15 = 1;
        goto LABEL_111;
      }

      if (![objc_msgSend(v24 "author")])
      {
        v120 = [v24 token];

        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v28 = [v24 changes];
        v29 = [v28 countByEnumeratingWithState:&v146 objects:v174 count:16];
        if (!v29)
        {
          goto LABEL_103;
        }

        v134 = v28;
        v135 = *v147;
        while (1)
        {
          v30 = 0;
          do
          {
            if (*v147 != v135)
            {
              objc_enumerationMutation(v134);
            }

            v31 = *(*(&v146 + 1) + 8 * v30);
            contexta = objc_autoreleasePoolPush();
            v32 = [v31 changedObjectID];
            if (-[NSEntityDescription _hasPropertiesIndexedBySpotlight]([v32 entity]))
            {
              v33 = v29;
              if ([v31 changeType] == 1)
              {
                v144 = 0u;
                v145 = 0u;
                v142 = 0u;
                v143 = 0u;
                v34 = [v31 updatedProperties];
                v35 = [v34 countByEnumeratingWithState:&v142 objects:v173 count:16];
                if (!v35)
                {
                  goto LABEL_99;
                }

                v36 = *v143;
LABEL_55:
                v37 = 0;
                while (1)
                {
                  if (*v143 != v36)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v38 = *(*(&v142 + 1) + 8 * v37);
                  objc_opt_class();
                  v39 = (objc_opt_isKindOfClass() & 1) != 0 ? [v38 _qualifiedName] : objc_msgSend(v38, "name");
                  if ([objc_msgSend(*(v140 + 96) objectForKey:{objc_msgSend(objc_msgSend(v32, "entity"), "name")), "containsObject:", v39}])
                  {
                    break;
                  }

                  if (v35 == ++v37)
                  {
                    v35 = [v34 countByEnumeratingWithState:&v142 objects:v173 count:16];
                    v29 = v33;
                    if (v35)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_99;
                  }
                }
              }

              v40 = [v31 changeType];
              v29 = v33;
              if (v40 >= 2)
              {
                if (v40 != 2)
                {
                  v46 = objc_autoreleasePoolPush();
                  _pflogInitialize(1);
                  if (_pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v47 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                      {
LABEL_101:
                        *buf = 138412290;
                        v195 = v31;
                        _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error: Core Data Spotlight Error - unknown change type - %@\n", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v47 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_101;
                      }
                    }
                  }

                  _NSCoreDataLog_console(1, "Core Data Spotlight Error - unknown change type - %@", v31);
                  objc_autoreleasePoolPop(v46);
                  goto LABEL_99;
                }

                v41 = v132;
                if (_CoreData_SpotlightDebug >= 1)
                {
                  v44 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v45 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218754;
                        v195 = v140;
                        v196 = 2080;
                        v197 = "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]";
                        v198 = 1024;
                        v199 = 854;
                        v200 = 2112;
                        v201 = v32;
                        _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Deleted object ID %@\n", buf, 0x26u);
                      }
                    }

                    else
                    {
                      v50 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218754;
                        v195 = v140;
                        v196 = 2080;
                        v197 = "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]";
                        v198 = 1024;
                        v199 = 854;
                        v200 = 2112;
                        v201 = v32;
                        _os_log_impl(&dword_18565F000, v50, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Deleted object ID %@\n", buf, 0x26u);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v51 = 1;
                  }

                  else
                  {
                    v51 = 4;
                  }

                  _NSCoreDataLog_console(v51, "CoreData+CoreSpotlight <%p>: %s(%d): Deleted object ID %@", v140, "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]", 854, v32);
                  objc_autoreleasePoolPop(v44);
                  v41 = v132;
                }
              }

              else
              {
                v41 = v133;
                if (_CoreData_SpotlightDebug >= 1)
                {
                  v42 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v43 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218754;
                        v195 = v140;
                        v196 = 2080;
                        v197 = "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]";
                        v198 = 1024;
                        v199 = 849;
                        v200 = 2112;
                        v201 = v32;
                        _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Inserted or updated item %@\n", buf, 0x26u);
                      }
                    }

                    else
                    {
                      v48 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 134218754;
                        v195 = v140;
                        v196 = 2080;
                        v197 = "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]";
                        v198 = 1024;
                        v199 = 849;
                        v200 = 2112;
                        v201 = v32;
                        _os_log_impl(&dword_18565F000, v48, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Inserted or updated item %@\n", buf, 0x26u);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v49 = 1;
                  }

                  else
                  {
                    v49 = 4;
                  }

                  _NSCoreDataLog_console(v49, "CoreData+CoreSpotlight <%p>: %s(%d): Inserted or updated item %@", v140, "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]", 849, v32, v117, v118);
                  objc_autoreleasePoolPop(v42);
                  v41 = v133;
                }
              }

              [v41 addObject:v32];
            }

LABEL_99:
            objc_autoreleasePoolPop(contexta);
            ++v30;
          }

          while (v30 != v29);
          v52 = [v134 countByEnumeratingWithState:&v146 objects:v174 count:16];
          v29 = v52;
          if (!v52)
          {
LABEL_103:
            v15 = 0;
            context = v120;
            goto LABEL_111;
          }
        }
      }

      if (_CoreData_SpotlightDebug >= 1)
      {
        v26 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v27 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218498;
              v195 = v140;
              v196 = 2080;
              v197 = "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]";
              v198 = 1024;
              v199 = 811;
              _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Discovered migration author, performing full re-import\n", buf, 0x1Cu);
            }
          }

          else
          {
            v53 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v195 = v140;
              v196 = 2080;
              v197 = "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]";
              v198 = 1024;
              v199 = 811;
              _os_log_impl(&dword_18565F000, v53, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Discovered migration author, performing full re-import\n", buf, 0x1Cu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v54 = 1;
        }

        else
        {
          v54 = 4;
        }

        _NSCoreDataLog_console(v54, "CoreData+CoreSpotlight <%p>: %s(%d): Discovered migration author, performing full re-import", v140, "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]", 811);
        objc_autoreleasePoolPop(v26);
      }

      v15 = 5;
      v121 = 1;
LABEL_111:
      objc_autoreleasePoolPop(v129);
      if (v15)
      {
        break;
      }

      if (++v131 == v125)
      {
        v23 = [obj countByEnumeratingWithState:&v150 objects:v175 count:16];
        if (!v23)
        {
          goto LABEL_116;
        }

        goto LABEL_34;
      }
    }

    if (v15 == 5)
    {
      goto LABEL_116;
    }

LABEL_186:
    v13 = 1;
LABEL_187:
    objc_autoreleasePoolPop(v130);
  }

  while (!v15);
  if (v15 == 4)
  {
LABEL_217:
    if (v121)
    {
      if (_CoreData_SpotlightDebug >= 1)
      {
        v100 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v101 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218498;
              v195 = v140;
              v196 = 2080;
              v197 = "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]";
              v198 = 1024;
              v199 = 880;
              _os_log_error_impl(&dword_18565F000, v101, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Discovered migration author while processing transactions\n", buf, 0x1Cu);
            }
          }

          else
          {
            v104 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v195 = v140;
              v196 = 2080;
              v197 = "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]";
              v198 = 1024;
              v199 = 880;
              _os_log_impl(&dword_18565F000, v104, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Discovered migration author while processing transactions\n", buf, 0x1Cu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v105 = 1;
        }

        else
        {
          v105 = 4;
        }

        _NSCoreDataLog_console(v105, "CoreData+CoreSpotlight <%p>: %s(%d): Discovered migration author while processing transactions", v140, "[NSCoreDataCoreSpotlightDelegate _processTransactionsStartingAt:updatedSpotlight:]", 880);
        objc_autoreleasePoolPop(v100);
      }

      v141[0] = MEMORY[0x1E69E9820];
      v141[1] = 3221225472;
      v141[2] = __83__NSCoreDataCoreSpotlightDelegate__processTransactionsStartingAt_updatedSpotlight___block_invoke_100;
      v141[3] = &unk_1E6EC16F0;
      v141[4] = v140;
      [(NSCoreDataCoreSpotlightDelegate *)v140 _asyncContextBlock:v141];
    }

    v102 = context;
    v103 = context;
    if (context)
    {
LABEL_234:
      v106 = v102;
    }
  }

  else
  {
    v102 = context;
    v103 = 0;
    if (context)
    {
      goto LABEL_234;
    }
  }

  if (v103)
  {
    *(*(v128[6] + 8) + 40) = v103;
    v107 = [(NSCoreDataCoreSpotlightDelegate *)v128[4] createClientSearchableIndex];
    [(NSCoreDataCoreSpotlightDelegate *)v128[4] _updateSpotlightIndexClientState:v107 historyToken:v103 updatedSpotlight:v119 & 1];

    return;
  }

LABEL_237:
  *(*(v128[6] + 8) + 40) = *(*(v128[5] + 8) + 40);
  if (_CoreData_SpotlightDebug >= 1)
  {
    v108 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v109 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          v110 = v128[4];
          v111 = *(*(v128[5] + 8) + 40);
          if (!v111)
          {
            v111 = @"null token";
          }

          *v175 = 134218754;
          v176 = v110;
          v177 = 2080;
          v178 = "[NSCoreDataCoreSpotlightDelegate _importObjectsUpdatedSinceTransaction:]_block_invoke";
          v179 = 1024;
          v180 = 919;
          v181 = 2112;
          v182 = v111;
          _os_log_error_impl(&dword_18565F000, v109, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Didn't receive a new token back after processing transactions starting at, %@\n", v175, 0x26u);
        }
      }

      else
      {
        v112 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          v113 = v128[4];
          v114 = *(*(v128[5] + 8) + 40);
          if (!v114)
          {
            v114 = @"null token";
          }

          *v175 = 134218754;
          v176 = v113;
          v177 = 2080;
          v178 = "[NSCoreDataCoreSpotlightDelegate _importObjectsUpdatedSinceTransaction:]_block_invoke";
          v179 = 1024;
          v180 = 919;
          v181 = 2112;
          v182 = v114;
          _os_log_impl(&dword_18565F000, v112, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Didn't receive a new token back after processing transactions starting at, %@\n", v175, 0x26u);
        }
      }
    }

    v115 = *(*(v128[5] + 8) + 40);
    if (!v115)
    {
      v115 = @"null token";
    }

    if (_pflogging_catastrophic_mode)
    {
      v116 = 1;
    }

    else
    {
      v116 = 4;
    }

    _NSCoreDataLog_console(v116, "CoreData+CoreSpotlight <%p>: %s(%d): Didn't receive a new token back after processing transactions starting at, %@", v128[4], "[NSCoreDataCoreSpotlightDelegate _importObjectsUpdatedSinceTransaction:]_block_invoke", 919, v115, v117, v118);
    objc_autoreleasePoolPop(v108);
  }
}

void __50__NSCoreDataCoreSpotlightDelegate__doFullReimport__block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v2 = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) createClientSearchableIndex];
  [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _updateSpotlightIndexClientState:v2 historyToken:0 updatedSpotlight:0];

  v3 = [*(*(a1 + 32) + 8) persistentStoreForIdentifier:*(*(a1 + 32) + 24)];
  v4 = atomic_load((*(a1 + 32) + 72));
  if ((v4 & 1) == 0 || (v5 = v3) == 0)
  {
    if (_CoreData_SpotlightDebug >= 1)
    {
      v9 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 32);
            *buf = 134218498;
            v52 = v11;
            v53 = 2080;
            v54 = "[NSCoreDataCoreSpotlightDelegate _doFullReimport]_block_invoke";
            v55 = 1024;
            v56 = 958;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Not performing full re-import because Spotlight was disabled or store was nil.\n", buf, 0x1Cu);
          }
        }

        else
        {
          v14 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            *buf = 134218498;
            v52 = v15;
            v53 = 2080;
            v54 = "[NSCoreDataCoreSpotlightDelegate _doFullReimport]_block_invoke";
            v55 = 1024;
            v56 = 958;
            _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Not performing full re-import because Spotlight was disabled or store was nil.\n", buf, 0x1Cu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v16 = 1;
      }

      else
      {
        v16 = 4;
      }

      _NSCoreDataLog_console(v16, "CoreData+CoreSpotlight <%p>: %s(%d): Not performing full re-import because Spotlight was disabled or store was nil.", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate _doFullReimport]_block_invoke", 958);
      objc_autoreleasePoolPop(v9);
    }

    *(v48 + 24) = 1;
    goto LABEL_62;
  }

  v6 = [v3 currentChangeToken];
  v7 = atomic_load((*(a1 + 32) + 72));
  if (v7)
  {
    v8 = [objc_msgSend(v5 "metadata")];
    [v8 setValue:0 forKey:@"coreSpotlightImportProgress"];
    [v8 setValue:0 forKey:@"_NSCoreDataCoreSpotlightFullReindexFrameworkVersion"];
    [v5 setMetadata:v8];

    v46 = 0;
    if ([objc_msgSend(*(*(a1 + 32) + 8) "persistentStores")] && objc_msgSend(*(*(a1 + 32) + 8), "persistentStoreForIdentifier:", *(*(a1 + 32) + 24)))
    {
      [-[NSCoreDataCoreSpotlightDelegate _context](*(a1 + 32)) save:&v46];
    }

    else
    {
      *(v48 + 24) = 1;
    }

    if (v46)
    {
      v12 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v13 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v52 = v46;
LABEL_71:
            _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to save store metadata changes to Spotlight import tracking, %@\n", buf, 0xCu);
          }
        }

        else
        {
          v13 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v52 = v46;
            goto LABEL_71;
          }
        }
      }

      _NSCoreDataLog_console(1, "Failed to save store metadata changes to Spotlight import tracking, %@", v46);
      objc_autoreleasePoolPop(v12);
      *(v48 + 24) = 1;
    }
  }

  if (*(v48 + 24) == 1)
  {

    goto LABEL_62;
  }

  v17 = [objc_msgSend(-[NSCoreDataCoreSpotlightDelegate _context](*(a1 + 32)) "persistentStoreCoordinator")];
  v18 = [MEMORY[0x1E695DFA8] set];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = [v17 countByEnumeratingWithState:&v42 objects:v61 count:16];
  if (v19)
  {
    v20 = *v43;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v42 + 1) + 8 * i);
        if ([(NSEntityDescription *)v22 _hasPropertiesIndexedBySpotlight])
        {
          [v18 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v61 count:16];
    }

    while (v19);
  }

  v23 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  [(NSManagedObjectContext *)v23 setPersistentStoreCoordinator:*(*(a1 + 32) + 8)];
  [(NSManagedObjectContext *)v23 setName:@"Spotlight_reindex"];
  v24 = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) createClientSearchableIndex];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __50__NSCoreDataCoreSpotlightDelegate__doFullReimport__block_invoke_127;
  v41[3] = &unk_1E6EC1E18;
  v41[4] = *(a1 + 32);
  v41[5] = v24;
  v41[7] = v23;
  v41[8] = &v47;
  v41[6] = v18;
  [(NSManagedObjectContext *)v23 performBlockAndWait:v41];

  if (*(v48 + 24) == 1)
  {
    goto LABEL_61;
  }

  v46 = 0;
  v25 = [*(*(a1 + 32) + 8) persistentStoreForIdentifier:*(*(a1 + 32) + 24)];
  v26 = atomic_load((*(a1 + 32) + 72));
  if ((v26 & 1) != 0 && (v27 = v25) != 0 && (v28 = [objc_msgSend(v25 "metadata")], objc_msgSend(v28, "setValue:forKey:", MEMORY[0x1E695E118], @"coreSpotlightImportProgress"), objc_msgSend(v28, "setValue:forKey:", +[_PFRoutines _getPFBundleVersionNumber](_PFRoutines), @"_NSCoreDataCoreSpotlightFullReindexFrameworkVersion"), objc_msgSend(v27, "setMetadata:", v28), v28, objc_msgSend(objc_msgSend(*(*(a1 + 32) + 8), "persistentStores"), "count")) && objc_msgSend(*(*(a1 + 32) + 8), "persistentStoreForIdentifier:", *(*(a1 + 32) + 24)))
  {
    [-[NSCoreDataCoreSpotlightDelegate _context](*(a1 + 32)) save:&v46];
  }

  else
  {
    *(v48 + 24) = 1;
  }

  if (v46)
  {
    v29 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v30 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v52 = v46;
LABEL_73:
          _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to save store metadata changes to Spotlight import tracking, %@\n", buf, 0xCu);
        }
      }

      else
      {
        v30 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v52 = v46;
          goto LABEL_73;
        }
      }
    }

    _NSCoreDataLog_console(1, "Failed to save store metadata changes to Spotlight import tracking, %@", v46);
    objc_autoreleasePoolPop(v29);
    *(v48 + 24) = 1;
    goto LABEL_61;
  }

  if (v48[3])
  {
LABEL_61:

    goto LABEL_62;
  }

  if (v6)
  {
    v31 = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) createClientSearchableIndex];
    [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _updateSpotlightIndexClientState:v31 historyToken:v6 updatedSpotlight:0];

    v32 = *(*(a1 + 32) + 24);
    v59[0] = @"NSStoreUUID";
    v59[1] = @"historyToken";
    v60[0] = v32;
    v60[1] = v6;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (_CoreData_SpotlightDebug >= 1)
  {
    v34 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(4))
    {
      if (_pflogging_catastrophic_mode)
      {
        v35 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = *(a1 + 32);
          *buf = 134218754;
          v52 = v36;
          v53 = 2080;
          v54 = "[NSCoreDataCoreSpotlightDelegate _doFullReimport]_block_invoke";
          v55 = 1024;
          v56 = 1095;
          v57 = 2112;
          v58 = v6;
          _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Performing extended import with token, %@\n", buf, 0x26u);
        }
      }

      else
      {
        v37 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 32);
          *buf = 134218754;
          v52 = v38;
          v53 = 2080;
          v54 = "[NSCoreDataCoreSpotlightDelegate _doFullReimport]_block_invoke";
          v55 = 1024;
          v56 = 1095;
          v57 = 2112;
          v58 = v6;
          _os_log_impl(&dword_18565F000, v37, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Performing extended import with token, %@\n", buf, 0x26u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v39 = 1;
    }

    else
    {
      v39 = 4;
    }

    _NSCoreDataLog_console(v39, "CoreData+CoreSpotlight <%p>: %s(%d): Performing extended import with token, %@", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate _doFullReimport]_block_invoke", 1095, v6);
    objc_autoreleasePoolPop(v34);
  }

  v40 = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _importObjectsUpdatedSinceTransaction:v6];

LABEL_62:
  _Block_object_dispose(&v47, 8);
}

uint64_t __50__NSCoreDataCoreSpotlightDelegate__doFullReimport__block_invoke_127(uint64_t a1)
{
  v126[1] = *MEMORY[0x1E69E9840];
  [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _updateSpotlightIndexClientState:0 historyToken:0 updatedSpotlight:?];
  v1 = *(a1 + 32);
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __50__NSCoreDataCoreSpotlightDelegate__doFullReimport__block_invoke_2;
  v88[3] = &unk_1E6EC1DF0;
  v88[4] = *(a1 + 64);
  [(NSCoreDataCoreSpotlightDelegate *)v1 _resetSpotlightIndexWithCompletionHandler:v88];
  v85 = *(a1 + 32);
  if (!v85)
  {
    return [*(a1 + 56) reset];
  }

  obj = *(a1 + 48);
  v86 = *(a1 + 56);
  v87 = *(a1 + 40);
  v2 = atomic_load((v85 + 72));
  if ((v2 & 1) == 0)
  {
    if (_CoreData_SpotlightDebug < 1)
    {
      return [*(a1 + 56) reset];
    }

    v9 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v11 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
          *buf = 134218754;
          v117 = v85;
          v118 = 2080;
          v119 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v120 = 1024;
          v121 = 531;
          v122 = 2112;
          v123 = v11;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, Spotlight not enabled.\n", buf, 0x26u);
        }
      }

      else
      {
        v19 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
          *buf = 134218754;
          v117 = v85;
          v118 = 2080;
          v119 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v120 = 1024;
          v121 = 531;
          v122 = 2112;
          v123 = v20;
          _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, Spotlight not enabled.\n", buf, 0x26u);
        }
      }
    }

    v21 = _pflogging_catastrophic_mode;
    v22 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
    v23 = 4;
    if (v21)
    {
      v23 = 1;
    }

    _NSCoreDataLog_console(v23, "CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, Spotlight not enabled.", v85, "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]", 531, v22);
LABEL_125:
    objc_autoreleasePoolPop(v9);
    return [*(a1 + 56) reset];
  }

  v3 = [*(v85 + 8) persistentStoreForIdentifier:*(v85 + 24)];
  if (!v3)
  {
    if (_CoreData_SpotlightDebug < 1)
    {
      return [*(a1 + 56) reset];
    }

    v9 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v12 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
          v14 = *(v85 + 24);
          *buf = 134219010;
          v117 = v85;
          v118 = 2080;
          v119 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v120 = 1024;
          v121 = 537;
          v122 = 2112;
          v123 = v13;
          v124 = 2112;
          v125 = v14;
          _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, store for identifier %@ is nil.\n", buf, 0x30u);
        }
      }

      else
      {
        v58 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
          v60 = *(v85 + 24);
          *buf = 134219010;
          v117 = v85;
          v118 = 2080;
          v119 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v120 = 1024;
          v121 = 537;
          v122 = 2112;
          v123 = v59;
          v124 = 2112;
          v125 = v60;
          _os_log_impl(&dword_18565F000, v58, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, store for identifier %@ is nil.\n", buf, 0x30u);
        }
      }
    }

    v61 = _pflogging_catastrophic_mode;
    v62 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
    v63 = 4;
    if (v61)
    {
      v63 = 1;
    }

    _NSCoreDataLog_console(v63, "CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, store for identifier %@ is nil.", v85, "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]", 537, v62, *(v85 + 24));
    goto LABEL_125;
  }

  if (!v87)
  {
    if (_CoreData_SpotlightDebug < 1)
    {
      return [*(a1 + 56) reset];
    }

    v9 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v15 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
          *buf = 134218754;
          v117 = v85;
          v118 = 2080;
          v119 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v120 = 1024;
          v121 = 542;
          v122 = 2112;
          v123 = v16;
          _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, searchable index is nil.\n", buf, 0x26u);
        }
      }

      else
      {
        v66 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
          *buf = 134218754;
          v117 = v85;
          v118 = 2080;
          v119 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v120 = 1024;
          v121 = 542;
          v122 = 2112;
          v123 = v67;
          _os_log_impl(&dword_18565F000, v66, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, searchable index is nil.\n", buf, 0x26u);
        }
      }
    }

    v68 = _pflogging_catastrophic_mode;
    v69 = NSStringFromSelector(sel__reindexInstancesOf_inIndex_usingContext_);
    v70 = 4;
    if (v68)
    {
      v70 = 1;
    }

    _NSCoreDataLog_console(v70, "CoreData+CoreSpotlight <%p>: %s(%d): Returning from %@, searchable index is nil.", v85, "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]", 542, v69);
    goto LABEL_125;
  }

  v74 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v4 = v3;
  v5 = *(v85 + 8);
  v76 = v4;
  v126[0] = v4;
  v6 = [v5 currentPersistentHistoryTokenFromStores:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v126, 1)}];
  v7 = [(NSCoreDataCoreSpotlightDelegate *)v85 _clientStateForSpotlightIndex:v87];
  v104 = 0;
  if (v6)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v104];
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] data];
  }

  v73 = v8;
  if (v7)
  {
    v82 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v104];
  }

  else
  {
    v82 = [MEMORY[0x1E695DEF0] data];
  }

  if (_CoreData_SpotlightDebug >= 1)
  {
    v17 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v18 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218754;
          v117 = v85;
          v118 = 2080;
          v119 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v120 = 1024;
          v121 = 560;
          v122 = 2112;
          v123 = v7;
          _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Starting re-indexing with history token %@.\n", buf, 0x26u);
        }
      }

      else
      {
        v24 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218754;
          v117 = v85;
          v118 = 2080;
          v119 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v120 = 1024;
          v121 = 560;
          v122 = 2112;
          v123 = v7;
          _os_log_impl(&dword_18565F000, v24, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Starting re-indexing with history token %@.\n", buf, 0x26u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v25 = 1;
    }

    else
    {
      v25 = 4;
    }

    _NSCoreDataLog_console(v25, "CoreData+CoreSpotlight <%p>: %s(%d): Starting re-indexing with history token %@.", v85, "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]", 560, v7);
    objc_autoreleasePoolPop(v17);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v79 = [obj countByEnumeratingWithState:&v100 objects:buf count:16];
  if (!v79)
  {
    v83 = 0;
    v84 = 0;
    goto LABEL_102;
  }

  v83 = 0;
  v84 = 0;
  v78 = *v101;
  do
  {
    v81 = 0;
    do
    {
      if (*v101 != v78)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v100 + 1) + 8 * v81);
      context = objc_autoreleasePoolPush();
      if (([(NSEntityDescription *)v26 _hasPropertiesIndexedBySpotlight]& 1) == 0)
      {
        v40 = objc_autoreleasePoolPush();
        _pflogInitialize(2);
        if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v41 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = [v26 name];
              *v105 = 138412290;
              v106 = v42;
              v43 = v41;
              v44 = "CoreData: error: Entity %@ has no indexed properties, skipping.\n";
              goto LABEL_97;
            }
          }

          else
          {
            v47 = _PFLogGetLogStream(2);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v53 = [v26 name];
              *v105 = 138412290;
              v106 = v53;
              v43 = v47;
              v44 = "CoreData: warning: Entity %@ has no indexed properties, skipping.\n";
LABEL_97:
              _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, v44, v105, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v48 = [v26 name];
          v49 = 1;
        }

        else
        {
          v48 = [v26 name];
          v49 = 2;
        }

        _NSCoreDataLog_console(v49, "Entity %@ has no indexed properties, skipping.", v48);
        objc_autoreleasePoolPop(v40);
        goto LABEL_94;
      }

      v27 = -[NSFetchRequest initWithEntityName:]([NSFetchRequest alloc], "initWithEntityName:", [v26 name]);
      [(NSFetchRequest *)v27 setIncludesSubentities:0];
      [(NSFetchRequest *)v27 setFetchBatchSize:100];
      v115 = v76;
      -[NSFetchRequest setAffectedStores:](v27, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1]);
      v114 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"SELF" ascending:1];
      -[NSFetchRequest setSortDescriptors:](v27, "setSortDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1]);
      v99 = 0;
      v28 = [v86 executeFetchRequest:v27 error:&v99];

      if (!v28 || v99)
      {
        v45 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v46 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
LABEL_98:
              v54 = [v26 name];
              *v105 = 138412546;
              v106 = v54;
              v107 = 2112;
              v108 = v99;
              _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: Full re-import failed for: %@ due to %@.\n", v105, 0x16u);
            }
          }

          else
          {
            v46 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_98;
            }
          }
        }

        v52 = [v26 name];
        _NSCoreDataLog_console(1, "Full re-import failed for: %@ due to %@.", v52, v99);
        objc_autoreleasePoolPop(v45);
        goto LABEL_94;
      }

      v29 = [MEMORY[0x1E695DF70] array];
      v30 = [MEMORY[0x1E695DF70] array];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v31 = [v28 countByEnumeratingWithState:&v95 objects:v113 count:16];
      if (v31)
      {
        v32 = 0;
        v33 = *v96;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v96 != v33)
            {
              objc_enumerationMutation(v28);
            }

            v35 = *(*(&v95 + 1) + 8 * i);
            v36 = objc_autoreleasePoolPush();
            [v35 willAccessValueForKey:0];
            v37 = [(NSCoreDataCoreSpotlightDelegate *)v85 _searchableItemForObject:v35];
            if (v37)
            {
              [v29 addObject:v37];
            }

            else
            {
              [v30 addObject:{objc_msgSend(objc_msgSend(objc_msgSend(v35, "objectID"), "URIRepresentation"), "description")}];
            }

            [v86 refreshObject:v35 mergeChanges:1];
            if (++v32 == 100)
            {
              [v87 beginIndexBatch];
              if ([v29 count])
              {
                v38 = [v29 count];
                v94[0] = MEMORY[0x1E69E9820];
                v94[1] = 3221225472;
                v94[2] = __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke;
                v94[3] = &unk_1E6EC1D58;
                v94[4] = v26;
                v94[5] = v29;
                [v87 indexSearchableItems:v29 completionHandler:v94];
                v84 += v38;
              }

              if ([v30 count])
              {
                v93[0] = MEMORY[0x1E69E9820];
                v93[1] = 3221225472;
                v93[2] = __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_75;
                v93[3] = &unk_1E6EC1D58;
                v93[4] = v26;
                v93[5] = v30;
                [v87 deleteSearchableItemsWithIdentifiers:v30 completionHandler:v93];
                v83 *= 2;
              }

              v92[0] = MEMORY[0x1E69E9820];
              v92[1] = 3221225472;
              v92[2] = __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_77;
              v92[3] = &unk_1E6EC1DA8;
              v92[4] = v26;
              [v87 endIndexBatchWithClientState:v82 completionHandler:v92];
              v32 = 0;
            }

            objc_autoreleasePoolPop(v36);
          }

          v31 = [v28 countByEnumeratingWithState:&v95 objects:v113 count:16];
        }

        while (v31);
        v39 = v32 == 0;
      }

      else
      {
        v39 = 1;
      }

      [v86 reset];
      if (!v39)
      {
        [v87 beginIndexBatch];
        if ([v29 count])
        {
          v50 = [v29 count];
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_79;
          v91[3] = &unk_1E6EC1D58;
          v91[4] = v26;
          v91[5] = v29;
          [v87 indexSearchableItems:v29 completionHandler:v91];
          v84 += v50;
        }

        if ([v30 count])
        {
          v51 = [v30 count];
          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 3221225472;
          v90[2] = __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_80;
          v90[3] = &unk_1E6EC1D58;
          v90[4] = v26;
          v90[5] = v30;
          [v87 deleteSearchableItemsWithIdentifiers:v30 completionHandler:v90];
          v83 += v51;
        }

        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __76__NSCoreDataCoreSpotlightDelegate__reindexInstancesOf_inIndex_usingContext___block_invoke_81;
        v89[3] = &unk_1E6EC1DA8;
        v89[4] = v26;
        [v87 endIndexBatchWithClientState:v82 completionHandler:v89];
      }

LABEL_94:
      objc_autoreleasePoolPop(context);
      ++v81;
    }

    while (v81 != v79);
    v55 = [obj countByEnumeratingWithState:&v100 objects:buf count:16];
    v79 = v55;
  }

  while (v55);
LABEL_102:
  if (_CoreData_SpotlightDebug >= 1)
  {
    v56 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v57 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *v105 = 134219010;
          v106 = v85;
          v107 = 2080;
          v108 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v109 = 1024;
          *v110 = 704;
          *&v110[4] = 2048;
          *&v110[6] = v84;
          v111 = 2048;
          v112 = v83;
          _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Total items indexed, %lu, total items deleted, %lu\n", v105, 0x30u);
        }
      }

      else
      {
        v64 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *v105 = 134219010;
          v106 = v85;
          v107 = 2080;
          v108 = "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]";
          v109 = 1024;
          *v110 = 704;
          *&v110[4] = 2048;
          *&v110[6] = v84;
          v111 = 2048;
          v112 = v83;
          _os_log_impl(&dword_18565F000, v64, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Total items indexed, %lu, total items deleted, %lu\n", v105, 0x30u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v65 = 1;
    }

    else
    {
      v65 = 4;
    }

    _NSCoreDataLog_console(v65, "CoreData+CoreSpotlight <%p>: %s(%d): Total items indexed, %lu, total items deleted, %lu", v85, "[NSCoreDataCoreSpotlightDelegate _reindexInstancesOf:inIndex:usingContext:]", 704, v84, v83);
    objc_autoreleasePoolPop(v56);
  }

  [v87 beginIndexBatch];
  [v87 endIndexBatchWithClientState:v73 completionHandler:&__block_literal_global_5];
  [v86 reset];
  [v74 drain];
  v71 = 0;
  return [*(a1 + 56) reset];
}

void __50__NSCoreDataCoreSpotlightDelegate__doFullReimport__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v4 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v6)
        {
          *buf = 138412290;
          v8 = a2;
LABEL_10:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error while resetting the client spotlight index before re-index, %@.\n", buf, 0xCu);
        }
      }

      else if (v6)
      {
        *buf = 138412290;
        v8 = a2;
        goto LABEL_10;
      }
    }

    _NSCoreDataLog_console(1, "Error while resetting the client spotlight index before re-index, %@.", a2);
    objc_autoreleasePoolPop(v3);
  }
}

intptr_t __98__NSCoreDataCoreSpotlightDelegate__updateSpotlightIndexClientState_historyToken_updatedSpotlight___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else if (v7)
      {
LABEL_9:
        *buf = 138412290;
        v10 = [a2 localizedDescription];
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error while batch updating the client state index: %@\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, "Error while batch updating the client state index: %@", [a2 localizedDescription]);
    objc_autoreleasePoolPop(v4);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t __65__NSCoreDataCoreSpotlightDelegate__clientStateForSpotlightIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v7 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          goto LABEL_9;
        }
      }

      else if (v9)
      {
LABEL_9:
        *buf = 138412546;
        v12 = [a3 localizedDescription];
        v13 = 2112;
        v14 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error while fetching client state: %@, state, %@\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Error while fetching client state: %@, state, %@", [a3 localizedDescription], a2);
    objc_autoreleasePoolPop(v6);
  }

  *(*(*(a1 + 32) + 8) + 40) = a2;
  return dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (void)searchableIndex:(CSSearchableIndex *)searchableIndex reindexAllSearchableItemsWithAcknowledgementHandler:(void *)acknowledgementHandler
{
  v5 = atomic_load(&self->_enabled);
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __103__NSCoreDataCoreSpotlightDelegate_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke;
    v7[3] = &unk_1E6EC1D30;
    v7[4] = self;
    v7[5] = acknowledgementHandler;
    [(NSCoreDataCoreSpotlightDelegate *)self _asyncContextBlock:v7];
  }

  else if (acknowledgementHandler)
  {
    v6 = *(acknowledgementHandler + 2);

    v6(acknowledgementHandler);
  }
}

uint64_t __103__NSCoreDataCoreSpotlightDelegate_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_CoreData_SpotlightDebug >= 1)
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v4 = *(a1 + 32);
          *buf = 134218498;
          v10 = v4;
          v11 = 2080;
          v12 = "[NSCoreDataCoreSpotlightDelegate searchableIndex:reindexAllSearchableItemsWithAcknowledgementHandler:]_block_invoke";
          v13 = 1024;
          v14 = 1240;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Re-indexing all searchable items\n", buf, 0x1Cu);
        }
      }

      else
      {
        v5 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          *buf = 134218498;
          v10 = v6;
          v11 = 2080;
          v12 = "[NSCoreDataCoreSpotlightDelegate searchableIndex:reindexAllSearchableItemsWithAcknowledgementHandler:]_block_invoke";
          v13 = 1024;
          v14 = 1240;
          _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Re-indexing all searchable items\n", buf, 0x1Cu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    _NSCoreDataLog_console(v7, "CoreData+CoreSpotlight <%p>: %s(%d): Re-indexing all searchable items", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate searchableIndex:reindexAllSearchableItemsWithAcknowledgementHandler:]_block_invoke", 1240);
    objc_autoreleasePoolPop(v2);
  }

  [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _doFullReimport];
  return (*(*(a1 + 40) + 16))();
}

- (void)searchableIndex:(CSSearchableIndex *)searchableIndex reindexSearchableItemsWithIdentifiers:(NSArray *)identifiers acknowledgementHandler:(void *)acknowledgementHandler
{
  v6 = atomic_load(&self->_enabled);
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __112__NSCoreDataCoreSpotlightDelegate_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke;
    v8[3] = &unk_1E6EC1E90;
    v8[4] = self;
    v8[5] = identifiers;
    v8[6] = searchableIndex;
    v8[7] = acknowledgementHandler;
    [(NSCoreDataCoreSpotlightDelegate *)self _asyncContextBlock:v8];
  }

  else if (acknowledgementHandler)
  {
    v7 = *(acknowledgementHandler + 2);

    v7(acknowledgementHandler);
  }
}

uint64_t __112__NSCoreDataCoreSpotlightDelegate_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if (_CoreData_SpotlightDebug >= 1)
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v4 = *(a1 + 32);
          v5 = *(a1 + 40);
          *buf = 134218754;
          v47 = v4;
          v48 = 2080;
          v49 = "[NSCoreDataCoreSpotlightDelegate searchableIndex:reindexSearchableItemsWithIdentifiers:acknowledgementHandler:]_block_invoke";
          v50 = 1024;
          v51 = 1253;
          v52 = 2112;
          v53 = v5;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Re-indexing searchable items with identifiers, %@\n", buf, 0x26u);
        }
      }

      else
      {
        v6 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          *buf = 134218754;
          v47 = v7;
          v48 = 2080;
          v49 = "[NSCoreDataCoreSpotlightDelegate searchableIndex:reindexSearchableItemsWithIdentifiers:acknowledgementHandler:]_block_invoke";
          v50 = 1024;
          v51 = 1253;
          v52 = 2112;
          v53 = v8;
          _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Re-indexing searchable items with identifiers, %@\n", buf, 0x26u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v9 = 1;
    }

    else
    {
      v9 = 4;
    }

    _NSCoreDataLog_console(v9, "CoreData+CoreSpotlight <%p>: %s(%d): Re-indexing searchable items with identifiers, %@", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate searchableIndex:reindexSearchableItemsWithIdentifiers:acknowledgementHandler:]_block_invoke", 1253, *(a1 + 40));
    objc_autoreleasePoolPop(v2);
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 UTF8String];
        v19 = [*(*(a1 + 32) + 8) managedObjectIDFromUTF8String:v18 length:strlen(v18)];
        if (v19)
        {
          v20 = v19;
          if (-[NSEntityDescription _hasPropertiesIndexedBySpotlight]([v19 entity]))
          {
            [v10 addObject:v20];
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v21 = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _context];
    v22 = [_PFRoutines fetchHeterogeneousCollectionByObjectIDs:v10 intoContext:v21];
    if (v22)
    {
      v23 = v22;
      v24 = [MEMORY[0x1E695DF70] array];
      v25 = [MEMORY[0x1E695DF70] array];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v23);
            }

            v30 = *(*(&v36 + 1) + 8 * j);
            v31 = objc_autoreleasePoolPush();
            v32 = [(NSCoreDataCoreSpotlightDelegate *)*(a1 + 32) _searchableItemForObject:v30];
            if (v32)
            {
              v33 = v32;
              v34 = v24;
            }

            else
            {
              v33 = [objc_msgSend(objc_msgSend(v30 "objectID")];
              v34 = v25;
            }

            [v34 addObject:v33];
            objc_autoreleasePoolPop(v31);
          }

          v27 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v27);
      }

      if ([v24 count])
      {
        [*(a1 + 48) indexSearchableItems:v24 completionHandler:&__block_literal_global_150_0];
      }

      if ([v25 count])
      {
        [*(a1 + 48) deleteSearchableItemsWithIdentifiers:v25 completionHandler:&__block_literal_global_154];
      }
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void __112__NSCoreDataCoreSpotlightDelegate_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v4 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v6)
        {
          *buf = 138412290;
          v8 = a2;
LABEL_10:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error indexing (insert/update 2): %@\n", buf, 0xCu);
        }
      }

      else if (v6)
      {
        *buf = 138412290;
        v8 = a2;
        goto LABEL_10;
      }
    }

    _NSCoreDataLog_console(1, "Error indexing (insert/update 2): %@", a2);
    objc_autoreleasePoolPop(v3);
  }
}

void __112__NSCoreDataCoreSpotlightDelegate_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_152(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v4 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v6)
        {
          *buf = 138412290;
          v8 = a2;
LABEL_10:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error indexing (delete 2): %@\n", buf, 0xCu);
        }
      }

      else if (v6)
      {
        *buf = 138412290;
        v8 = a2;
        goto LABEL_10;
      }
    }

    _NSCoreDataLog_console(1, "Error indexing (delete 2): %@", a2);
    objc_autoreleasePoolPop(v3);
  }
}

- (id)indexedPropertyNamesByEntityNameUsingModel:(id)model
{
  v48 = *MEMORY[0x1E69E9840];
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(objc_msgSend(model, "entities"), "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [model entities];
  v4 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    v27 = *v42;
    do
    {
      v7 = 0;
      v29 = v5;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * v7);
        if ([(NSEntityDescription *)v8 _hasPropertiesIndexedBySpotlight])
        {
          v32 = v7;
          v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v31 = v8;
          properties = [v8 properties];
          v11 = [properties countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (!v11)
          {
            goto LABEL_31;
          }

          v12 = v11;
          v13 = *v38;
          while (1)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(properties);
              }

              v15 = *(*(&v37 + 1) + 8 * i);
              if ([v15 _propertyType] == 7)
              {
                _flattenedElements = [v15 _flattenedElements];
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v17 = [_flattenedElements countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v34;
                  do
                  {
                    for (j = 0; j != v18; ++j)
                    {
                      if (*v34 != v19)
                      {
                        objc_enumerationMutation(_flattenedElements);
                      }

                      v21 = *(*(&v33 + 1) + 8 * j);
                      if ([v21 isIndexedBySpotlight])
                      {
                        [v9 addObject:{objc_msgSend(v21, "_qualifiedName")}];
                      }
                    }

                    v18 = [_flattenedElements countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v18);
                }
              }

              else
              {
                _propertyType = [v15 _propertyType];
                isIndexedBySpotlight = [v15 isIndexedBySpotlight];
                if (_propertyType == 2)
                {
                  if (!isIndexedBySpotlight)
                  {
                    continue;
                  }

                  _qualifiedName = [v15 _qualifiedName];
                }

                else
                {
                  if (!isIndexedBySpotlight)
                  {
                    continue;
                  }

                  _qualifiedName = [v15 name];
                }

                [v9 addObject:_qualifiedName];
              }
            }

            v12 = [properties countByEnumeratingWithState:&v37 objects:v46 count:16];
            if (!v12)
            {
LABEL_31:
              [v28 setObject:v9 forKey:{objc_msgSend(v31, "name", v27)}];

              v6 = v27;
              v5 = v29;
              v7 = v32;
              break;
            }
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v5);
  }

  v25 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v28];

  return v25;
}

- (void)stopSpotlightIndexing
{
  [(NSCoreDataCoreSpotlightDelegate *)self _context];
  _context = [(NSCoreDataCoreSpotlightDelegate *)self _context];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NSCoreDataCoreSpotlightDelegate_stopSpotlightIndexing__block_invoke;
  v4[3] = &unk_1E6EC16F0;
  v4[4] = self;
  [_context performBlock:v4];
}

uint64_t __56__NSCoreDataCoreSpotlightDelegate_stopSpotlightIndexing__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  atomic_store(0, (*(a1 + 32) + 72));
  if (_CoreData_SpotlightDebug >= 1)
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v4 = *(a1 + 32);
          *buf = 134218498;
          v10 = v4;
          v11 = 2080;
          v12 = "[NSCoreDataCoreSpotlightDelegate stopSpotlightIndexing]_block_invoke";
          v13 = 1024;
          v14 = 1443;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Stopping spotlight indexing\n", buf, 0x1Cu);
        }
      }

      else
      {
        v5 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          *buf = 134218498;
          v10 = v6;
          v11 = 2080;
          v12 = "[NSCoreDataCoreSpotlightDelegate stopSpotlightIndexing]_block_invoke";
          v13 = 1024;
          v14 = 1443;
          _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Stopping spotlight indexing\n", buf, 0x1Cu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    _NSCoreDataLog_console(v7, "CoreData+CoreSpotlight <%p>: %s(%d): Stopping spotlight indexing", *(a1 + 32), "[NSCoreDataCoreSpotlightDelegate stopSpotlightIndexing]_block_invoke", 1443);
    objc_autoreleasePoolPop(v2);
  }

  return [*(*(a1 + 32) + 32) reset];
}

- (void)deleteSpotlightIndexWithCompletionHandler:(void *)completionHandler
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_enabled);
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__NSCoreDataCoreSpotlightDelegate_deleteSpotlightIndexWithCompletionHandler___block_invoke;
    v5[3] = &unk_1E6EC1D30;
    v5[4] = self;
    v5[5] = completionHandler;
    [(NSCoreDataCoreSpotlightDelegate *)self _asyncContextBlock:v5];
  }

  else if (completionHandler)
  {
    v4 = *MEMORY[0x1E696A250];
    v6 = *MEMORY[0x1E696A578];
    v7[0] = @"Spotlight index not deleted because indexing was not started.";
    (*(completionHandler + 2))(completionHandler, [MEMORY[0x1E696ABC0] errorWithDomain:v4 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}]);
  }
}

- (void)indexSearchableItemsToCurrentHistoryToken
{
  v2 = atomic_load(&self->_enabled);
  if (v2)
  {
    [(NSCoreDataCoreSpotlightDelegate *)self _updateSpotlightIndexFromSaveRequest:?];
  }
}

- (void)setIndexURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  if (_CoreData_SpotlightDebug >= 1)
  {
    v5 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218754;
          selfCopy2 = self;
          v13 = 2080;
          v14 = "[NSCoreDataCoreSpotlightDelegate(CoreDataSPI) setIndexURL:]";
          v15 = 1024;
          v16 = 1530;
          v17 = 2112;
          lCopy2 = l;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData+CoreSpotlight <%p>: %s(%d): Setting alternative index URL %@\n", buf, 0x26u);
        }
      }

      else
      {
        v7 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218754;
          selfCopy2 = self;
          v13 = 2080;
          v14 = "[NSCoreDataCoreSpotlightDelegate(CoreDataSPI) setIndexURL:]";
          v15 = 1024;
          v16 = 1530;
          v17 = 2112;
          lCopy2 = l;
          _os_log_impl(&dword_18565F000, v7, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: CoreData+CoreSpotlight <%p>: %s(%d): Setting alternative index URL %@\n", buf, 0x26u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v8 = 1;
    }

    else
    {
      v8 = 4;
    }

    _NSCoreDataLog_console(v8, "CoreData+CoreSpotlight <%p>: %s(%d): Setting alternative index URL %@", self, "[NSCoreDataCoreSpotlightDelegate(CoreDataSPI) setIndexURL:]", 1530, l);
    objc_autoreleasePoolPop(v5);
  }

  standardizedURL = [l standardizedURL];
  if (self->_indexURL != standardizedURL)
  {
    v10 = standardizedURL;
    if ([objc_msgSend(l "absoluteString")])
    {

      self->_indexURL = [(NSURL *)v10 copy];
    }
  }
}

@end