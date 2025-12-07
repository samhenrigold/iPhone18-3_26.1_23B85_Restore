@interface OSLogPersistence
- (BOOL)allowSensitive;
- (BOOL)streamChunks:(id)chunks andEntries:(id)entries flags:(unsigned int)flags;
- (NSDictionary)statistics;
- (OSLogPersistence)init;
- (OSLogPersistenceDelegate)delegate;
- (int64_t)archiveState;
- (int64_t)archiveVersion;
- (void)_openFiles;
- (void)_openLocalPersistenceDir;
- (void)_openPath:(id)path;
- (void)dealloc;
- (void)enumerateFromLastBootWithBlock:(id)block;
- (void)enumerateFromStartDate:(id)date toEndDate:(id)endDate withBlock:(id)block;
- (void)fetchFromStartDate:(id)date toEndDate:(id)endDate;
- (void)setLogArchive:(id)archive;
- (void)setLogFile:(id)file;
- (void)setPredicate:(id)predicate;
@end

@implementation OSLogPersistence

- (OSLogPersistenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDictionary)statistics
{
  v42[8] = *MEMORY[0x277D85DE8];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x6010000000;
  v32 = &unk_22E08C481;
  memset(&v33, 0, sizeof(v33));
  rb_tree_init(&v33, &statistics_ops);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __30__OSLogPersistence_statistics__block_invoke;
  v28[3] = &unk_2787AE1B0;
  v28[4] = v36;
  v28[5] = v34;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __30__OSLogPersistence_statistics__block_invoke_2;
  v27[3] = &unk_2787AE1D8;
  v27[4] = &v29;
  v27[5] = v34;
  v27[6] = v36;
  [(OSLogPersistence *)self streamChunks:v28 andEntries:v27 flags:0];
  if (rb_tree_count((v30 + 4)))
  {
    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:rb_tree_count((v30 + 4))];
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:rb_tree_count((v30 + 4))];
    for (i = rb_tree_iterate((v30 + 4), 0, 1u); i; i = rb_tree_iterate((v30 + 4), i, 1u))
    {
      if (*(i + 133))
      {
        v41[0] = @"uuid";
        v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:i + 24];
        v42[0] = v4;
        v41[1] = @"path";
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:i + 40];
        v42[1] = v5;
        v41[2] = @"activityCreationCount";
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:**(i + 133)];
        v42[2] = v6;
        v41[3] = @"userActionCount";
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 24)];
        v42[3] = v7;
        v41[4] = @"logMessageCount";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 16)];
        v42[4] = v8;
        v41[5] = @"traceMessageCount";
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 8)];
        v42[5] = v9;
        v41[6] = @"totalProcessPublicSize";
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 56)];
        v42[6] = v10;
        v41[7] = @"totalProcessPrivateSize";
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 64)];
        v42[7] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:8];
        [v24 addObject:v12];
      }

      v39[0] = @"uuid";
      v26 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:i + 24];
      v40[0] = v26;
      v39[1] = @"path";
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:i + 40];
      v40[1] = v13;
      v39[2] = @"activityCreationCount";
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 134)];
      v40[2] = v14;
      v39[3] = @"userActionCount";
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 137)];
      v40[3] = v15;
      v39[4] = @"logMessageCount";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 136)];
      v40[4] = v16;
      v39[5] = @"traceMessageCount";
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 135)];
      v40[5] = v17;
      v39[6] = @"tracePublicSize";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 138)];
      v40[6] = v18;
      v39[7] = @"logPublicSize";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 139)];
      v40[7] = v19;
      v39[8] = @"logPrivateSize";
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 140)];
      v40[8] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:9];
      [v25 addObject:v21];
    }

    v37[0] = @"perProcessStatistics";
    v37[1] = @"perSenderStatistics";
    v38[0] = v24;
    v38[1] = v25;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  return v22;
}

uint64_t __30__OSLogPersistence_statistics__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t __30__OSLogPersistence_statistics__block_invoke_2(void *a1, uint64_t a2)
{
  node = rb_tree_find_node((*(a1[4] + 8) + 32), *(a2 + 20));
  if (node)
  {
    v5 = node;
    v6 = node[133];
  }

  else
  {
    v5 = _os_trace_calloc_typed();
    if (*(a2 + 28))
    {
      __strlcpy_chk();
    }

    else
    {
      uuid_unparse_upper(*(a2 + 20), (v5 + 40));
    }

    uuid_copy((v5 + 24), *(a2 + 20));
    rb_tree_insert_node((*(a1[4] + 8) + 32), v5);
    v6 = _os_trace_calloc_typed();
    *(v5 + 1064) = v6;
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v7 = v6[8];
    v6[7] += **(*(*(a1[6] + 8) + 24) + 64);
    v6[8] = v7 + *(*(*(a1[6] + 8) + 24) + 80);
    *(*(a1[5] + 8) + 24) = 0;
  }

  v8 = *(a2 + 76);
  if (v8)
  {
    if (uuid_compare(v8, *(a2 + 20)))
    {
      v5 = rb_tree_find_node((*(a1[4] + 8) + 32), *(a2 + 76));
      if (!v5)
      {
        v5 = _os_trace_calloc_typed();
        __strlcpy_chk();
        if (!*(v5 + 40))
        {
          uuid_unparse_upper(*(a2 + 76), (v5 + 40));
        }

        uuid_copy((v5 + 24), *(a2 + 76));
        rb_tree_insert_node((*(a1[4] + 8) + 32), v5);
      }
    }
  }

  v9 = *a2;
  if (*a2 > 767)
  {
    if (v9 == 768)
    {
      ++*(v5 + 1080);
      *(v5 + 1104) += *(a2 + 156);
      ++v6[1];
      v11 = *(a2 + 156);
      v6 += 4;
      goto LABEL_25;
    }

    if (v9 == 1024)
    {
      *(v5 + 1112) += *(a2 + 156);
      *(v5 + 1120) += *(a2 + 172);
      ++*(v5 + 1088);
      v10 = v6[6];
      v6[5] += *(a2 + 156);
      v6[6] = v10 + *(a2 + 172);
      v6 += 2;
      goto LABEL_23;
    }
  }

  else
  {
    if (v9 == 513)
    {
      ++*(v5 + 1072);
      goto LABEL_23;
    }

    if (v9 == 515)
    {
      ++*(v5 + 1096);
      v6 += 3;
LABEL_23:
      v11 = 1;
LABEL_25:
      *v6 += v11;
    }
  }

  return 1;
}

- (void)fetchFromStartDate:(id)date toEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__958;
    v17 = __Block_byref_object_dispose__959;
    v18 = objc_opt_new();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__OSLogPersistence_fetchFromStartDate_toEndDate___block_invoke;
    v10[3] = &unk_2787AE120;
    v12 = &v13;
    v10[4] = self;
    v9 = WeakRetained;
    v11 = v9;
    [(OSLogPersistence *)self enumerateFromStartDate:dateCopy toEndDate:endDateCopy withBlock:v10];
    if ([v14[5] count])
    {
      [v9 persistence:self results:v14[5] error:0];
    }

    [v9 persistenceDidFinishReadingForStartDate:dateCopy endDate:endDateCopy];

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __49__OSLogPersistence_fetchFromStartDate_toEndDate___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 48) + 8) + 40) addObject:a2];
  if ([*(*(*(a1 + 48) + 8) + 40) count] >= *(*(a1 + 32) + 72))
  {
    result = [*(a1 + 40) persistence:? results:? error:?];
    if (!result)
    {
      return result;
    }

    [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
  }

  return 1;
}

- (void)enumerateFromLastBootWithBlock:(id)block
{
  blockCopy = block;
  if (!self->_index)
  {
    [(OSLogPersistence *)self _openFiles];
  }

  allowSensitive = [(OSLogPersistence *)self allowSensitive];
  options = self->_options;
  index = self->_index;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__OSLogPersistence_enumerateFromLastBootWithBlock___block_invoke;
  v11[3] = &unk_2787AE0F8;
  if ((options & 3) != 0)
  {
    v8 = !allowSensitive & 0xFFFFFFFD | (2 * (options & 1)) | 4;
  }

  else
  {
    v8 = !allowSensitive & 0xFFFFFFFD | (2 * (options & 1));
  }

  v9 = v8 & 0xFFFFFFBF | (((options >> 5) & 1) << 6);
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [(_OSLogIndex *)index enumerateEntriesFromLastBootWithOptions:v9 usingBlock:v11];
}

uint64_t __51__OSLogPersistence_enumerateFromLastBootWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [OSActivityEvent activityEventFromStreamEntry:a2];
  v4 = *(*(a1 + 32) + 64);
  if (v4 && ([v4 evaluateWithObject:v3] & 1) == 0)
  {
    ++*(*(a1 + 32) + 128);
    v5 = 1;
  }

  else
  {
    v5 = (*(*(a1 + 40) + 16))();
  }

  return v5;
}

- (void)enumerateFromStartDate:(id)date toEndDate:(id)endDate withBlock:(id)block
{
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  [dateCopy timeIntervalSince1970];
  if (v11 <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    [dateCopy timeIntervalSince1970];
    v13 = (v12 * 1000000000.0);
  }

  [endDateCopy timeIntervalSince1970];
  if (v14 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    [endDateCopy timeIntervalSince1970];
    v16 = (v15 * 1000000000.0);
  }

  if (!self->_index)
  {
    [(OSLogPersistence *)self _openFiles];
  }

  if (v16 < v13 || v16 == 0)
  {
    v16 = -1;
  }

  allowSensitive = [(OSLogPersistence *)self allowSensitive];
  options = self->_options;
  v20 = !allowSensitive & 0xFFFFFFFD | (2 * (options & 1));
  index = self->_index;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__OSLogPersistence_enumerateFromStartDate_toEndDate_withBlock___block_invoke;
  v24[3] = &unk_2787AE0F8;
  if ((options & 3) != 0)
  {
    v22 = v20 | 4;
  }

  else
  {
    v22 = v20;
  }

  v24[4] = self;
  v25 = blockCopy;
  v23 = blockCopy;
  [(_OSLogIndex *)index enumerateEntriesFrom:v13 to:v16 options:v22 usingBlock:v24];
}

uint64_t __63__OSLogPersistence_enumerateFromStartDate_toEndDate_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [OSActivityEvent activityEventFromStreamEntry:a2];
  v4 = v3 != 0;
  if (*(*(a1 + 32) + 64))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v4 = [*(*(a1 + 32) + 64) evaluateWithObject:v3];
  }

  if (v4)
  {
    v6 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    ++*(*(a1 + 32) + 128);
    v6 = 1;
  }

  return v6;
}

- (BOOL)streamChunks:(id)chunks andEntries:(id)entries flags:(unsigned int)flags
{
  chunksCopy = chunks;
  entriesCopy = entries;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  *__error() = 3;
  _chunk_support_context_init(v17);
  *&v18 = entriesCopy;
  *(&v18 + 1) = chunksCopy;
  LODWORD(v17[0]) = flags;
  index = self->_index;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__OSLogPersistence_streamChunks_andEntries_flags___block_invoke;
  v12[3] = &unk_2787AE0D0;
  v12[4] = &v13;
  v12[5] = v17;
  [(_OSLogIndex *)index enumerateFilesUsingBlock:v12];
  _chunk_support_context_clear(v17);
  LOBYTE(flags) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return flags;
}

uint64_t __50__OSLogPersistence_streamChunks_andEntries_flags___block_invoke(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v7 = 0;
  v8 = *(a1 + 40);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 1;
  *(v8 + 4) = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v13 = ___os_activity_stream_mapped_file_block_invoke;
  v14 = &unk_2787AEA48;
  v15 = &v18;
  v16 = a3;
  v17 = v8;
  do
  {
    if (a4 - v7 < 0x10)
    {
      break;
    }

    v9 = *(a3 + v7 + 8);
    if (a4 - v7 - 16 < v9)
    {
      break;
    }

    if (!v13(v12))
    {
      break;
    }

    v7 = (v7 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v7 - 1 < a4);
  *(v8 + 4) = -1;
  v10 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  *(*(*(a1 + 32) + 8) + 24) = v10;
  return *(*(*(a1 + 32) + 8) + 24);
}

- (int64_t)archiveState
{
  result = self->_version;
  if (result)
  {
    state = [result state];
    if (state > 3)
    {
      return 2;
    }

    else
    {
      return qword_22E0818E0[state];
    }
  }

  return result;
}

- (int64_t)archiveVersion
{
  version = self->_version;
  if (version)
  {
    return [(_OSLogVersioning *)version version];
  }

  else
  {
    return -1;
  }
}

- (BOOL)allowSensitive
{
  if ((self->_options & 0x40000000) != 0)
  {
    return 0;
  }

  if (geteuid() && !self->_logArchive)
  {
    return self->_logFile != 0;
  }

  return 1;
}

- (void)setPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v4 = [[_OSLogPredicateMapper alloc] initWithPredicate:predicateCopy andValidate:0];
    v5 = [_OSLogLegacyPredicateMapper alloc];
    mappedPredicate = [(_OSLogPredicateMapper *)v4 mappedPredicate];
    v7 = [(_OSLogPredicateMapper *)v5 initWithPredicate:mappedPredicate];

    mappedPredicate2 = [(_OSLogPredicateMapper *)v7 mappedPredicate];

    if (!mappedPredicate2)
    {
      v11 = MEMORY[0x277CBEAD8];
      validationErrors = [(_OSLogPredicateMapper *)v7 validationErrors];
      v13 = [validationErrors componentsJoinedByString:@"\n"];
      v14 = [v11 exceptionWithName:@"OSLogInvalidPredicateException" reason:v13 userInfo:0];

      objc_exception_throw(v14);
    }

    mappedPredicate3 = [(_OSLogPredicateMapper *)v7 mappedPredicate];
    predicate = self->_predicate;
    self->_predicate = mappedPredicate3;

    if (([(_OSLogPredicateMapper *)v4 flags]& 2) != 0)
    {
      self->_options |= 1uLL;
    }

    if (([(_OSLogPredicateMapper *)v4 flags]& 1) != 0)
    {
      self->_options |= 3uLL;
    }
  }

  else
  {
    v4 = self->_predicate;
    self->_predicate = 0;
  }
}

- (void)setLogArchive:(id)archive
{
  archiveCopy = archive;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  if ([archiveCopy isFileURL])
  {
    path = [archiveCopy path];
    pathExtension = [path pathExtension];
    v9 = [pathExtension isEqualToString:@"logarchive"];

    if (v9)
    {
      if ([defaultManager fileExistsAtPath:path isDirectory:&v15])
      {
        if (v15)
        {
          objc_storeStrong(&self->_logArchive, archive);
          [(OSLogPersistence *)self _openFiles];

          goto LABEL_6;
        }

        v10 = MEMORY[0x277CBEAD8];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log archive named '%@' is not a package.", path];
        v12 = @"Log archive is not a package.";
      }

      else
      {
        v10 = MEMORY[0x277CBEAD8];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log archive named '%@' not found.", path];
        v12 = @"File not Found";
      }
    }

    else
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"File name does not end with .logarchive (%@)", path];
      v12 = @"Invalid archive provided";
    }

    v13 = [v10 exceptionWithName:v12 reason:v11 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

LABEL_6:
}

- (void)setLogFile:(id)file
{
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  if (([fileCopy isFileURL] & 1) == 0)
  {
    [(OSLogPersistence *)self _openFiles];
    goto LABEL_7;
  }

  path = [fileCopy path];
  pathExtension = [path pathExtension];
  v9 = [pathExtension isEqualToString:@"tracev3"];

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"File name does not end with .tracev3 (%@)", path];
    v12 = @"Invalid file provided";
    goto LABEL_11;
  }

  if (([defaultManager fileExistsAtPath:path isDirectory:&v15] & 1) == 0)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log file named '%@' not found.", path];
    v12 = @"File not Found";
    goto LABEL_11;
  }

  if (v15 == 1)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log file named '%@' is not a regular file.", path];
    v12 = @"File is not a regular file.";
LABEL_11:
    v13 = [v10 exceptionWithName:v12 reason:v11 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  objc_storeStrong(&self->_logFile, file);
  [(OSLogPersistence *)self _openFiles];

LABEL_7:
}

- (void)dealloc
{
  [(_OSLogCollectionReference *)self->_oslcr close];
  v3.receiver = self;
  v3.super_class = OSLogPersistence;
  [(OSLogPersistence *)&v3 dealloc];
}

- (OSLogPersistence)init
{
  v3.receiver = self;
  v3.super_class = OSLogPersistence;
  result = [(OSLogPersistence *)&v3 init];
  if (result)
  {
    result->_batchSize = 1000;
    result->_verbose = 0;
  }

  return result;
}

- (void)_openFiles
{
  v3 = MEMORY[0x277CCACA8];
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  v12 = [v3 stringWithUTF8String:_os_trace_persist_path];
  logFile = self->_logFile;
  if (logFile || self->_logArchive)
  {
    path = [(NSURL *)logFile path];
    if ([path isEqualToString:v12])
    {
    }

    else
    {
      path2 = [(NSURL *)self->_logArchive path];
      v7 = [path2 isEqualToString:v12];

      if (!v7)
      {
        path3 = [(NSURL *)self->_logArchive path];
        v9 = path3;
        if (path3)
        {
          path4 = path3;
        }

        else
        {
          path4 = [(NSURL *)self->_logFile path];
        }

        v11 = path4;

        [(OSLogPersistence *)self _openPath:v11];
        goto LABEL_13;
      }
    }
  }

  [(OSLogPersistence *)self _openLocalPersistenceDir];
LABEL_13:
}

- (void)_openPath:(id)path
{
  pathCopy = path;
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v5 = [pathCopy hasSuffix:@".logarchive"];
  [(_OSLogCollectionReference *)self->_oslcr close];
  v6 = [_OSLogCollectionReference referenceWithURL:v4 error:0];
  oslcr = self->_oslcr;
  self->_oslcr = v6;

  v8 = [[_OSLogVersioning alloc] initWithCollection:self->_oslcr error:0];
  version = self->_version;
  self->_version = v8;

  if ([(_OSLogVersioning *)self->_version state]== 3)
  {
    [(_OSLogVersioning *)self->_version performDestructiveUpdates:0];
  }

  if ([(_OSLogVersioning *)self->_version state]== 1)
  {
    timesyncReference = [(_OSLogCollectionReference *)self->_oslcr timesyncReference];

    if (!timesyncReference)
    {
      [(_OSLogCollectionReference *)self->_oslcr close];
      v11 = [_OSLogCollectionReference referenceWithURL:v4 error:0];
      v12 = self->_oslcr;
      self->_oslcr = v11;
    }

    v13 = [[_OSLogIndex alloc] initWithCollection:self->_oslcr buildLocalIndex:v5];
    index = self->_index;
    self->_index = v13;

    if ((v5 & 1) == 0)
    {
      v15 = open([pathCopy fileSystemRepresentation], 0);
      v16 = [[_OSLogChunkFile alloc] initWithFileDescriptor:v15 error:0];
      if (v16)
      {
        [(_OSLogIndex *)self->_index insertChunkStore:v16];
      }

      if (close(v15) == -1)
      {
        v25 = *__error();
        v26 = *__error();
        if (v25 == 9)
        {
          qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
          qword_27DA527A8 = v26;
          __break(1u);
          return;
        }

        _os_assumes_log();
      }
    }

    persistStartWalltime = [(_OSLogIndex *)self->_index persistStartWalltime];
    specialStartWalltime = [(_OSLogIndex *)self->_index specialStartWalltime];
    if (persistStartWalltime >= specialStartWalltime)
    {
      v19 = specialStartWalltime;
    }

    else
    {
      v19 = persistStartWalltime;
    }

    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v19 / 0x3B9ACA00)];
    startDate = self->_startDate;
    self->_startDate = v20;

    objc_storeStrong(&self->_sparseDataStart, self->_startDate);
    endWalltime = [(_OSLogIndex *)self->_index endWalltime];
    v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(endWalltime / 0x3B9ACA00)];
    endDate = self->_endDate;
    self->_endDate = v23;
  }
}

- (void)_openLocalPersistenceDir
{
  options = self->_options;
  if ((~LODWORD(self->_options) & 0xCLL) != 0)
  {
    v4 = [_OSLogCollectionReference localDBRefWithError:0];
    oslcr = self->_oslcr;
    self->_oslcr = v4;

    v6 = [[_OSLogVersioning alloc] initWithCollection:self->_oslcr error:0];
    version = self->_version;
    self->_version = v6;

    v8 = tmpfile();
    if (v8)
    {
      v9 = v8;
      v10 = 2;
      if ((options & 8) == 0)
      {
        v10 = 3;
      }

      if ((options & 4) != 0)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v12 = fileno(v8);
      if (!OSLogCaptureInflightBuffersToFile(v12, v11, 0) || (v13 = lseek(v12, 0, 2), v14 = mmap(0, v13, 1, 2, v12, 0), v14 == -1))
      {
        v21 = 0;
      }

      else
      {
        v21 = [[_OSLogChunkMemory alloc] initWithBytes:v14 size:v13 deallocator:&__block_literal_global_1004];
      }

      fclose(v9);
      v15 = [[_OSLogIndex alloc] initWithCollection:self->_oslcr buildLocalIndex:(options & 4) == 0];
      index = self->_index;
      self->_index = v15;

      if (v21)
      {
        [(_OSLogIndex *)self->_index insertChunkStore:v21];
      }

      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      startDate = self->_startDate;
      self->_startDate = distantPast;

      objc_storeStrong(&self->_sparseDataStart, self->_startDate);
      date = [MEMORY[0x277CBEAA8] date];
      endDate = self->_endDate;
      self->_endDate = date;
    }
  }
}

@end