@interface HDJournalChapterEnumerator
+ (id)_journalChaptersForURL:(int)l sorted:(void *)sorted error:;
+ (id)_lightweightDirectoryEnumeratorForURL:(uint64_t)l;
+ (id)journalChaptersForURL:(id)l error:(id *)error;
+ (id)nextJournalChapterNameForURL:(id)l;
+ (int64_t)journalChapterCountForURL:(id)l;
- (BOOL)hasJournalChapters;
- (BOOL)hasMoreJournalChapters;
- (BOOL)loadSortedJournalChaptersWithError:(id *)error;
- (HDJournalChapterEnumerator)init;
- (HDJournalChapterEnumerator)initWithPath:(id)path;
- (HDJournalChapterEnumerator)initWithURL:(id)l;
- (HDJournalChapterEnumeratorTestsDelegate)unitTestDelegate;
- (id)_openJournalChapters:(id)chapters error:(id *)error;
- (id)nextOpenJournalChapterError:(id *)error;
- (int64_t)maxAllowedOpenJournalChapterCount;
- (void)closeJournalChapters;
- (void)dealloc;
@end

@implementation HDJournalChapterEnumerator

- (HDJournalChapterEnumerator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDJournalChapterEnumerator)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = HDJournalChapterEnumerator;
  v5 = [(HDJournalChapterEnumerator *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(lCopy);
    URL = v5->_URL;
    v5->_URL = v6;

    v5->_currentIndex = 0;
  }

  return v5;
}

- (HDJournalChapterEnumerator)initWithPath:(id)path
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  v5 = [(HDJournalChapterEnumerator *)self initWithURL:v4];

  return v5;
}

- (void)dealloc
{
  [(HDJournalChapterEnumerator *)self closeJournalChapters];
  v3.receiver = self;
  v3.super_class = HDJournalChapterEnumerator;
  [(HDJournalChapterEnumerator *)&v3 dealloc];
}

- (BOOL)hasJournalChapters
{
  if (self->_hasLoadedPersistedJournalNames)
  {
    return self->_totalJournalChapterCount > 0;
  }

  v3 = [HDJournalChapterEnumerator _lightweightDirectoryEnumeratorForURL:?];
  nextObject = [v3 nextObject];
  v2 = nextObject != 0;

  return v2;
}

+ (id)_lightweightDirectoryEnumeratorForURL:(uint64_t)l
{
  v2 = a2;
  objc_opt_self();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager enumeratorAtURL:v2 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:21 errorHandler:&__block_literal_global_96];

  return v4;
}

- (void)closeJournalChapters
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v3, OS_LOG_TYPE_DEBUG, "%@ closing all open journal chapters", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_openJournalChapters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) close];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  openJournalChapters = self->_openJournalChapters;
  self->_openJournalChapters = 0;

  remainingJournalChapters = self->_remainingJournalChapters;
  self->_remainingJournalChapters = 0;

  self->_hasLoadedPersistedJournalNames = 0;
  self->_totalJournalChapterCount = 0;
}

- (BOOL)loadSortedJournalChaptersWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [HDJournalChapterEnumerator _journalChaptersForURL:1 sorted:error error:?];
  if (v4)
  {
    objc_storeStrong(&self->_remainingJournalChapters, v4);
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    openJournalChapters = self->_openJournalChapters;
    self->_openJournalChapters = v5;

    self->_hasLoadedPersistedJournalNames = 1;
    self->_totalJournalChapterCount = [v4 count];
    self->_currentIndex = 0;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    URL = self->_URL;
    v10 = v7;
    path = [(NSURL *)URL path];
    v12 = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = path;
    v16 = 2048;
    v17 = [v4 count];
    v18 = 1024;
    v19 = v4 != 0;
    _os_log_debug_impl(&dword_228986000, v10, OS_LOG_TYPE_DEBUG, "%@ for path:%@ loaded (%lu) journal chapter names with success:%{BOOL}d", &v12, 0x26u);
  }

  return v4 != 0;
}

+ (id)_journalChaptersForURL:(int)l sorted:(void *)sorted error:
{
  v41[3] = *MEMORY[0x277D85DE8];
  v26 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *MEMORY[0x277CBE868];
  v7 = *MEMORY[0x277CBE838];
  v41[0] = *MEMORY[0x277CBE868];
  v41[1] = v7;
  v41[2] = *MEMORY[0x277CBE7B0];
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__89;
  v38 = __Block_byref_object_dispose__89;
  v39 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __66__HDJournalChapterEnumerator__journalChaptersForURL_sorted_error___block_invoke;
  v33[3] = &unk_278620680;
  v33[4] = &v34;
  v9 = [defaultManager enumeratorAtURL:v26 includingPropertiesForKeys:v27 options:5 errorHandler:v33];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v11)
  {
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v28 = 0;
        v15 = [v14 getResourceValue:&v28 forKey:v6 error:sorted];
        v16 = v28;
        v17 = v16;
        if ((v15 & 1) == 0)
        {

          v22 = 0;
          goto LABEL_23;
        }

        if ([v16 BOOLValue])
        {
          v18 = [[HDDatabaseJournalDatabase alloc] initWithURL:v14];
        }

        else
        {
          v18 = [[HDDatabaseLegacyJournalFile alloc] initWithURL:v14];
        }

        [v5 addObject:v18];
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (l)
  {
    [v5 sortUsingComparator:&__block_literal_global_324_3];
  }

  v19 = v35[5];
  v20 = v19;
  if (v19)
  {
    if (sorted)
    {
      v21 = v19;
      *sorted = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (v35[5])
  {
    v23 = 0;
  }

  else
  {
    v23 = v5;
  }

  v22 = v23;
LABEL_23:

  _Block_object_dispose(&v34, 8);

  return v22;
}

- (id)nextOpenJournalChapterError:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  if (!self->_hasLoadedPersistedJournalNames)
  {
    v5 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "_hasLoadedPersistedJournalNames", buf, 2u);
    }

    goto LABEL_7;
  }

  if (self->_currentIndex == self->_totalJournalChapterCount || ![(NSMutableArray *)self->_remainingJournalChapters count]&& ![(NSMutableArray *)self->_openJournalChapters count])
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "Finished processing journal chapters", buf, 2u);
    }

LABEL_7:
    firstObject3 = 0;
    goto LABEL_36;
  }

  if ([(NSMutableArray *)self->_openJournalChapters count])
  {
    firstObject = [(NSMutableArray *)self->_openJournalChapters firstObject];
    [(NSMutableArray *)self->_openJournalChapters removeObjectAtIndex:0];
    [firstObject close];
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      openJournalChapters = self->_openJournalChapters;
      v29 = v9;
      *buf = 138412546;
      selfCopy2 = self;
      v33 = 2048;
      v34 = [(NSMutableArray *)openJournalChapters count];
      _os_log_debug_impl(&dword_228986000, v29, OS_LOG_TYPE_DEBUG, "%@ Closing journal chapter at index 0. Current open count is %ld", buf, 0x16u);
    }
  }

  if (!self->_cachedError)
  {
    v30 = 0;
    if ([(NSMutableArray *)self->_remainingJournalChapters count]&& (v10 = [(HDJournalChapterEnumerator *)self maxAllowedOpenJournalChapterCount], v11 = v10 - [(NSMutableArray *)self->_openJournalChapters count], v11 >= 1))
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
      v13 = v11 + 1;
      do
      {
        if (![(NSMutableArray *)self->_remainingJournalChapters count])
        {
          break;
        }

        firstObject2 = [(NSMutableArray *)self->_remainingJournalChapters firstObject];
        [v12 addObject:firstObject2];

        [(NSMutableArray *)self->_remainingJournalChapters removeObjectAtIndex:0];
        --v13;
      }

      while (v13 > 1);
      unitTestDelegate = [(HDJournalChapterEnumerator *)self unitTestDelegate];

      if (unitTestDelegate)
      {
        unitTestDelegate2 = [(HDJournalChapterEnumerator *)self unitTestDelegate];
        v17 = [unitTestDelegate2 _unitTest_openJournalChapters:v12 error:&v30];
      }

      else
      {
        v17 = [(HDJournalChapterEnumerator *)self _openJournalChapters:v12 error:&v30];
      }

      v19 = [v17 count];
      v20 = [v12 count];
      [(NSMutableArray *)self->_openJournalChapters addObjectsFromArray:v17];

      v21 = v30;
      v18 = v21;
      if (v19 != v20)
      {
        v22 = objc_msgSend_copy(v21);
        cachedError = self->_cachedError;
        self->_cachedError = v22;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  firstObject3 = [(NSMutableArray *)self->_openJournalChapters firstObject];
  if (firstObject3)
  {
    ++self->_currentIndex;
  }

  else
  {
    v24 = self->_cachedError;
    if (v24)
    {
      if (error)
      {
        v25 = v24;
        *error = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [(HDJournalChapterEnumerator *)self closeJournalChapters];
  }

  _HKInitializeLogging();
  v26 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v33 = 2112;
    v34 = firstObject3;
    _os_log_debug_impl(&dword_228986000, v26, OS_LOG_TYPE_DEBUG, "%@ next journal chapter is %@", buf, 0x16u);
  }

LABEL_36:

  return firstObject3;
}

- (BOOL)hasMoreJournalChapters
{
  if (self->_hasLoadedPersistedJournalNames)
  {
    LOBYTE(self) = self->_currentIndex < self->_totalJournalChapterCount;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v4 = *MEMORY[0x277CCC2A0];
    LODWORD(self) = os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT);
    if (self)
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_228986000, v4, OS_LOG_TYPE_FAULT, "_hasLoadedPersistedJournalNames", v6, 2u);
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (id)_openJournalChapters:(id)chapters error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  chaptersCopy = chapters;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC2A0];
  v8 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    v19 = v8;
    *buf = 138412546;
    selfCopy2 = self;
    v29 = 2048;
    v30 = [chaptersCopy count];
    _os_log_debug_impl(&dword_228986000, v19, OS_LOG_TYPE_DEBUG, "%@: Will open %ld journal chapters", buf, 0x16u);
  }

  if ([chaptersCopy count])
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(chaptersCopy, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = chaptersCopy;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if (![v15 openForReadingWithError:{error, v22}])
          {

            v17 = 0;
            goto LABEL_16;
          }

          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    v16 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
    {
      v20 = v16;
      v21 = [v9 count];
      *buf = 138412546;
      selfCopy2 = self;
      v29 = 2048;
      v30 = v21;
      _os_log_debug_impl(&dword_228986000, v20, OS_LOG_TYPE_DEBUG, "%@: Did open %ld journal chapters", buf, 0x16u);
    }

    v17 = v9;
LABEL_16:
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Trying to open journal chapters without providing any to open"];
    v17 = 0;
  }

  return v17;
}

+ (id)journalChaptersForURL:(id)l error:(id *)error
{
  v4 = [(HDJournalChapterEnumerator *)self _journalChaptersForURL:l sorted:0 error:error];
  v5 = objc_msgSend_copy(v4);

  return v5;
}

+ (id)nextJournalChapterNameForURL:(id)l
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [(HDJournalChapterEnumerator *)self _lightweightDirectoryEnumeratorForURL:lCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (!v6)
  {
    v17 = 0;
LABEL_25:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%05ld.log", v17];
    goto LABEL_26;
  }

  v7 = v6;
  v8 = *v22;
  v9 = 0xFFFFFFFF80000000;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      uRLByDeletingPathExtension = [*(*(&v21 + 1) + 8 * i) URLByDeletingPathExtension];
      lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

      if ([lastPathComponent length])
      {
        v13 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:lastPathComponent];
        *buf = 0;
        if ([v13 scanInteger:buf])
        {
          if (*buf <= v9)
          {
            v14 = v9;
          }

          else
          {
            v14 = *buf;
          }

          if (v9 == 0xFFFFFFFF80000000)
          {
            v9 = *buf;
          }

          else
          {
            v9 = v14;
          }
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
  }

  while (v7);
  if (v9 < 99999)
  {
    if (v9 >= 0)
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_25;
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
  {
    v19 = v15;
    path = [lCopy path];
    *buf = 134218242;
    *&buf[4] = v9;
    v26 = 2114;
    v27 = path;
    _os_log_fault_impl(&dword_228986000, v19, OS_LOG_TYPE_FAULT, "Encountered journal index %ld in %{public}@; dropping changes", buf, 0x16u);
  }

  v16 = 0;
LABEL_26:

  return v16;
}

+ (int64_t)journalChapterCountForURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HDJournalChapterEnumerator *)self _lightweightDirectoryEnumeratorForURL:l];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      v8 = v5;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        --v8;
      }

      while (v8);
      v6 += v5;
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __68__HDJournalChapterEnumerator__lightweightDirectoryEnumeratorForURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Error enumerating journal chapter /'%@/': %@", &v8, 0x16u);
  }

  return 0;
}

uint64_t __66__HDJournalChapterEnumerator__journalChaptersForURL_sorted_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"Error enumerating journal chapter /'%@/'", a2];
  v8 = [MEMORY[0x277CCA9B8] hk_error:102 description:v7 underlyingError:v6];

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 0;
}

uint64_t __66__HDJournalChapterEnumerator__journalChaptersForURL_sorted_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (int64_t)maxAllowedOpenJournalChapterCount
{
  if (self->_maxAllowedOpenJournalChapterCount)
  {
    return self->_maxAllowedOpenJournalChapterCount;
  }

  else
  {
    return 50;
  }
}

- (HDJournalChapterEnumeratorTestsDelegate)unitTestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDelegate);

  return WeakRetained;
}

@end