@interface EDPersistenceDatabaseJournalManager
+ (OS_os_log)log;
- (EDPersistenceDatabaseJournal)oldestJournal;
- (EDPersistenceDatabaseJournalManager)initWithBasePath:(id)path;
- (NSArray)allJournals;
- (id)_getJournalWithBlock:(id)block;
- (id)_journalForIndex:(unint64_t)index;
- (id)currentJournalCreateIfNeeded:(BOOL)needed;
- (void)_deleteJournalNumber:(unint64_t)number;
- (void)_journalNoLongerReferenced:(id)referenced;
- (void)mergedJournal:(id)journal;
- (void)test_tearDown;
- (void)waitForDeletes;
@end

@implementation EDPersistenceDatabaseJournalManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EDPersistenceDatabaseJournalManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_76 != -1)
  {
    dispatch_once(&log_onceToken_76, block);
  }

  v2 = log_log_76;

  return v2;
}

void __42__EDPersistenceDatabaseJournalManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_76;
  log_log_76 = v1;
}

- (EDPersistenceDatabaseJournalManager)initWithBasePath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = EDPersistenceDatabaseJournalManager;
  v5 = [(EDPersistenceDatabaseJournalManager *)&v20 init];
  if (v5)
  {
    v6 = [pathCopy stringByAppendingPathComponent:@"Protected Index Journals"];
    v7 = *(v5 + 7);
    *(v5 + 7) = v6;

    *(v5 + 2) = 0;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.email.persistenceDatabaseJournalManager.checkExistingQueue", v9);
    v11 = *(v5 + 8);
    *(v5 + 8) = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_BACKGROUND, 0);
    v14 = dispatch_queue_create("com.apple.email.persistenceDatabaseJournalManager.deleteQueue", v13);
    v15 = *(v5 + 9);
    *(v5 + 9) = v14;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__EDPersistenceDatabaseJournalManager_initWithBasePath___block_invoke;
    block[3] = &unk_1E8250260;
    v19 = v5;
    v16 = dispatch_block_create_with_qos_class(0, QOS_CLASS_UTILITY, 0, block);
    dispatch_async(*(v5 + 8), v16);
  }

  return v5;
}

void __56__EDPersistenceDatabaseJournalManager_initWithBasePath___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = +[EDPersistenceDatabaseJournalManager log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Checking for existing journals", buf, 2u);
  }

  v31 = [MEMORY[0x1E696AC08] defaultManager];
  v28 = [*(a1 + 32) journalDirectoryPath];
  if ([v31 fileExistsAtPath:?])
  {
    v29 = 0;
  }

  else
  {
    v37 = 0;
    v3 = [v31 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:&v37];
    v29 = v37;
    if (v3)
    {
      v4 = +[EDPersistenceDatabaseJournalManager log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Created journal directory", buf, 2u);
      }
    }

    else
    {
      v4 = +[EDPersistenceDatabaseJournalManager log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [v29 ef_publicDescription];
        __56__EDPersistenceDatabaseJournalManager_initWithBasePath___block_invoke_cold_1(v5, buf, v4);
      }
    }
  }

  if (v28)
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
    v41 = *MEMORY[0x1E695DAF0];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v36 = v29;
    v30 = [v31 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:v7 options:0 error:&v36];
    v8 = v36;

    v29 = v8;
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  v27 = *(a1 + 32);
  os_unfair_lock_lock(v27 + 2);
  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = *(a1 + 32);
  v11 = *(v10 + 32);
  *(v10 + 32) = v9;

  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13 = *(a1 + 32);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v16 = *(a1 + 32);
  v17 = *(v16 + 48);
  *(v16 + 48) = v15;

  if ([v30 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v30;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [*(*(&v32 + 1) + 8 * i) lastPathComponent];
          if (([v22 hasSuffix:@"-wal"] & 1) == 0 && (objc_msgSend(v22, "hasSuffix:", @"-shm") & 1) == 0)
          {
            v23 = [v22 integerValue];
            if (v23 >= 1)
            {
              [*(*(a1 + 32) + 32) addIndex:v23];
            }

            EFVerifyFileProtectionType();
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v19);
    }

    v24 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(a1 + 32) + 32);
      *v38 = 138543362;
      v39 = v25;
      _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Found journal numbers: %{public}@", v38, 0xCu);
    }
  }

  else
  {
    v24 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v29 ef_publicDescription];
      *v38 = 138543362;
      v39 = v26;
      _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Unable to iterate journal directory: %{public}@", v38, 0xCu);
    }
  }

  os_unfair_lock_unlock(v27 + 2);
}

- (id)currentJournalCreateIfNeeded:(BOOL)needed
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__EDPersistenceDatabaseJournalManager_currentJournalCreateIfNeeded___block_invoke;
  v5[3] = &unk_1E8255C58;
  v5[4] = self;
  v5[5] = a2;
  neededCopy = needed;
  v3 = [(EDPersistenceDatabaseJournalManager *)self _getJournalWithBlock:v5];

  return v3;
}

id __68__EDPersistenceDatabaseJournalManager_currentJournalCreateIfNeeded___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    if (![v2 referenceCount])
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      [v3 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"EDPersistenceDatabaseJournal.m" lineNumber:166 description:{@"_currentJournal exists, but has no reference count"}];
    }
  }

  else if (*(a1 + 48) == 1)
  {
    v4 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Creating a new journal", &v20, 2u);
    }

    v5 = (a1 + 32);
    v6 = [*(*(a1 + 32) + 32) lastIndex];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = [*(*v5 + 40) lastIndex];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v7 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = [[EDPersistenceDatabaseJournal alloc] initWithJournalManager:*v5 number:v10 + 1];
    v12 = *(*v5 + 16);
    *(*v5 + 16) = v11;

    [*(*v5 + 32) addIndex:v10 + 1];
    v13 = *(*v5 + 48);
    v14 = *(*v5 + 16);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10 + 1];
    [v13 setObject:v14 forKey:v15];
  }

  v16 = +[EDPersistenceDatabaseJournalManager log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 16);
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Returning current journal %@", &v20, 0xCu);
  }

  v18 = *(*(a1 + 32) + 16);

  return v18;
}

- (void)_journalNoLongerReferenced:(id)referenced
{
  v15 = *MEMORY[0x1E69E9840];
  referencedCopy = referenced;
  os_unfair_lock_lock(&self->_journalLock);
  currentJournal = self->_currentJournal;
  if (currentJournal == referencedCopy)
  {
    if (self->_shouldDeleteCurrentJournal)
    {
      number = [(EDPersistenceDatabaseJournal *)currentJournal number];
      [(NSMutableIndexSet *)self->_journalNumbers removeIndex:number];
      [(NSMutableIndexSet *)self->_pendingDeleteJournalNumbers addIndex:number];
      journalsByIndexes = self->_journalsByIndexes;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:number];
      [(NSMapTable *)journalsByIndexes removeObjectForKey:v8];

      self->_shouldDeleteCurrentJournal = 0;
      currentJournal = self->_currentJournal;
    }

    else
    {
      number = 0;
    }

    self->_currentJournal = 0;

    v9 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"YES";
      if (!number)
      {
        v10 = @"NO";
      }

      v11 = 138412546;
      v12 = referencedCopy;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Unsetting current journal %@ - should delete: %{public}@", &v11, 0x16u);
    }

    os_unfair_lock_unlock(&self->_journalLock);
    if (number)
    {
      [(EDPersistenceDatabaseJournalManager *)self _deleteJournalNumber:number];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_journalLock);
  }
}

- (NSArray)allJournals
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__EDPersistenceDatabaseJournalManager_allJournals__block_invoke;
  v9[3] = &unk_1E8255CA8;
  v9[4] = self;
  v4 = v3;
  v10 = v4;
  v5 = [(EDPersistenceDatabaseJournalManager *)self _getJournalWithBlock:v9];
  v6 = v10;
  v7 = v4;

  return v4;
}

uint64_t __50__EDPersistenceDatabaseJournalManager_allJournals__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__EDPersistenceDatabaseJournalManager_allJournals__block_invoke_2;
  v11 = &unk_1E8255C80;
  v12 = v3;
  v13 = v2;
  [v4 enumerateIndexesUsingBlock:&v8];
  v5 = [EDPersistenceDatabaseJournalManager log:v8];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) count];
    *buf = 134217984;
    v15 = v6;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Getting %lu journals", buf, 0xCu);
  }

  return 0;
}

void __50__EDPersistenceDatabaseJournalManager_allJournals__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _journalForIndex:a2];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __50__EDPersistenceDatabaseJournalManager_allJournals__block_invoke_2_cold_1(a2, v5);
    }
  }
}

- (EDPersistenceDatabaseJournal)oldestJournal
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__EDPersistenceDatabaseJournalManager_oldestJournal__block_invoke;
  v4[3] = &unk_1E8255CD0;
  v4[4] = self;
  v2 = [(EDPersistenceDatabaseJournalManager *)self _getJournalWithBlock:v4];

  return v2;
}

id __52__EDPersistenceDatabaseJournalManager_oldestJournal__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) firstIndex];
  v3 = [*(a1 + 32) _journalForIndex:v2];
  if (v3)
  {
    v4 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Getting oldest journal %lu", &v6, 0xCu);
    }
  }

  return v3;
}

- (id)_journalForIndex:(unint64_t)index
{
  v14 = *MEMORY[0x1E69E9840];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    journalsByIndexes = self->_journalsByIndexes;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v3 = [(NSMapTable *)journalsByIndexes objectForKey:v7];

    if (!v3)
    {
      v8 = +[EDPersistenceDatabaseJournalManager log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        indexCopy = index;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Journal %lu does not already exist. Creating...", &v12, 0xCu);
      }

      v3 = [[EDPersistenceDatabaseJournal alloc] initWithJournalManager:self number:index];
      v9 = self->_journalsByIndexes;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
      [(NSMapTable *)v9 setObject:v3 forKey:v10];
    }
  }

  return v3;
}

- (void)mergedJournal:(id)journal
{
  v15 = *MEMORY[0x1E69E9840];
  journalCopy = journal;
  number = [(EDPersistenceDatabaseJournal *)journalCopy number];
  os_unfair_lock_lock(&self->_journalLock);
  currentJournal = self->_currentJournal;
  if (currentJournal == journalCopy)
  {
    self->_shouldDeleteCurrentJournal = 1;
  }

  else
  {
    [(NSMutableIndexSet *)self->_journalNumbers removeIndex:number];
    [(NSMutableIndexSet *)self->_pendingDeleteJournalNumbers addIndex:number];
    journalsByIndexes = self->_journalsByIndexes;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:number];
    [(NSMapTable *)journalsByIndexes removeObjectForKey:v8];
  }

  os_unfair_lock_unlock(&self->_journalLock);
  v9 = +[EDPersistenceDatabaseJournalManager log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"YES";
    if (currentJournal == journalCopy)
    {
      v10 = @"NO";
    }

    v11 = 134218242;
    v12 = number;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Merged journal %lu - should delete: %{public}@", &v11, 0x16u);
  }

  if (currentJournal != journalCopy)
  {
    [(EDPersistenceDatabaseJournalManager *)self _deleteJournalNumber:number];
  }
}

- (void)_deleteJournalNumber:(unint64_t)number
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = +[EDPersistenceDatabaseJournalManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    numberCopy = number;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Start to delete journalNumber %lu", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke;
  aBlock[3] = &unk_1E8250A90;
  aBlock[4] = self;
  aBlock[5] = number;
  v6 = _Block_copy(aBlock);
  journalDirectoryPath = [(EDPersistenceDatabaseJournalManager *)self journalDirectoryPath];
  v8 = journalDirectoryPath;
  if (journalDirectoryPath)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke_2;
    block[3] = &unk_1E8255CF8;
    numberCopy2 = number;
    v12 = journalDirectoryPath;
    v13 = v6;
    v9 = dispatch_block_create_with_qos_class(0, QOS_CLASS_BACKGROUND, 0, block);
    deleteQueue = [(EDPersistenceDatabaseJournalManager *)self deleteQueue];
    dispatch_async(deleteQueue, v9);
  }

  else
  {
    v6[2](v6);
  }
}

void __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 2);
  [*(*(a1 + 32) + 40) removeIndex:*(a1 + 40)];

  os_unfair_lock_unlock(v2 + 2);
}

void __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v3 = [v2 stringValue];

  v4 = [v3 stringByAppendingString:@"-wal"];
  v19 = v4;
  v20 = [v3 stringByAppendingString:@"-shm"];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [*(a1 + 32) stringByAppendingPathComponent:v3];
  v18 = v23 = 0;
  v6 = [v5 removeItemAtPath:? error:?];
  v7 = v23;
  if ((v6 & 1) == 0)
  {
    v8 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke_2_cold_1();
    }

    v4 = v19;
  }

  v9 = [*(a1 + 32) stringByAppendingPathComponent:v4];
  v22 = v7;
  v10 = [v5 removeItemAtPath:v9 error:&v22];
  v11 = v22;

  if ((v10 & 1) == 0)
  {
    v12 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v11 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke_2_cold_2();
    }
  }

  v13 = [*(a1 + 32) stringByAppendingPathComponent:v20];
  v21 = v11;
  v14 = [v5 removeItemAtPath:v13 error:&v21];
  v15 = v21;

  if ((v14 & 1) == 0)
  {
    v16 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [v15 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke_2_cold_3();
    }

    goto LABEL_15;
  }

  if ((v6 & v10) == 1)
  {
    v16 = +[EDPersistenceDatabaseJournalManager log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 48);
      *buf = 134217984;
      v25 = v17;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Deleted journal %lu", buf, 0xCu);
    }

LABEL_15:
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_getJournalWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_journalLock);
  if (!self->_journalNumbers)
  {
    os_unfair_lock_unlock(&self->_journalLock);
    checkExistingQueue = [(EDPersistenceDatabaseJournalManager *)self checkExistingQueue];
    dispatch_sync(checkExistingQueue, &__block_literal_global_63);

    os_unfair_lock_lock(&self->_journalLock);
  }

  v6 = blockCopy[2](blockCopy);
  os_unfair_lock_unlock(&self->_journalLock);

  return v6;
}

- (void)waitForDeletes
{
  deleteQueue = [(EDPersistenceDatabaseJournalManager *)self deleteQueue];
  dispatch_barrier_sync(deleteQueue, &__block_literal_global_73_1);
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseJournal.m" lineNumber:347 description:{@"%s can only be called from unit tests", "-[EDPersistenceDatabaseJournalManager test_tearDown]"}];
  }

  [(EDPersistenceDatabaseJournalManager *)self waitForDeletes];
  checkExistingQueue = [(EDPersistenceDatabaseJournalManager *)self checkExistingQueue];
  dispatch_barrier_sync(checkExistingQueue, &__block_literal_global_78);
}

void __56__EDPersistenceDatabaseJournalManager_initWithBasePath___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Unable to create journal directory: %{public}@", buf, 0xCu);
}

void __50__EDPersistenceDatabaseJournalManager_allJournals__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_FAULT, "Unable to get journal %lu", &v2, 0xCu);
}

void __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to delete journal %lu: %{public}@", v4, v5);
}

void __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to delete wal for journal %lu: %{public}@", v4, v5);
}

void __60__EDPersistenceDatabaseJournalManager__deleteJournalNumber___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to delete shm for journal %lu: %{public}@", v4, v5);
}

@end