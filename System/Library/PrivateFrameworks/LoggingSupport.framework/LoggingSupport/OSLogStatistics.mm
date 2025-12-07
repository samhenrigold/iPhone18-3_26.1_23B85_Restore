@interface OSLogStatistics
- (OSLogStatistics)initWithLogArchivePath:(id)path forRelativePaths:(id)paths errorOut:(id *)out;
- (id)_initializeEventSourceWithPaths:(id)paths;
- (id)aggregationForStartDate_impl:(id)date_impl endDate:(id)date predicate:(id)predicate withOptions:(unint64_t)options catalogCacheSize:(unsigned int)size dataCacheSize:(unsigned int)cacheSize useMemEffic:(BOOL)effic errorOut:(id *)self0;
@end

@implementation OSLogStatistics

- (id)aggregationForStartDate_impl:(id)date_impl endDate:(id)date predicate:(id)predicate withOptions:(unint64_t)options catalogCacheSize:(unsigned int)size dataCacheSize:(unsigned int)cacheSize useMemEffic:(BOOL)effic errorOut:(id *)self0
{
  v10 = *&size;
  v51 = *MEMORY[0x277D85DE8];
  date_implCopy = date_impl;
  dateCopy = date;
  predicateCopy = predicate;
  v18 = [[OSLogEventStream alloc] initWithSource:self->_eventSource];
  [(OSLogEventStreamBase *)v18 setFlags:20];
  v19 = _logHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = date_implCopy;
    *&buf[12] = 2112;
    *&buf[14] = dateCopy;
    *&buf[22] = 2112;
    v48 = predicateCopy;
    v49 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_22E01A000, v19, OS_LOG_TYPE_DEFAULT, "Starting aggregation with start date : %@, end date : %@, predicate: %@, and flags %lu", buf, 0x2Au);
  }

  if (options)
  {
    [(OSLogEventStreamBase *)v18 setFlags:[(OSLogEventStreamBase *)v18 flags]| 1];
  }

  if ((options & 2) != 0)
  {
    [(OSLogEventStreamBase *)v18 setFlags:[(OSLogEventStreamBase *)v18 flags]^ 2];
  }

  if ((options & 4) != 0)
  {
    [(OSLogEventStreamBase *)v18 setFlags:[(OSLogEventStreamBase *)v18 flags]| 0x20];
  }

  if ((options & 8) != 0)
  {
    [(OSLogEventStreamBase *)v18 setFlags:[(OSLogEventStreamBase *)v18 flags]| 0x200];
  }

  [(OSLogEventStream *)v18 setFilterPredicate:predicateCopy];
  if (dateCopy)
  {
    [dateCopy timeIntervalSince1970];
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = [[OSLogStatisticsAggregation alloc] initWithLabel:@"All" tier:1];
  objc_initWeak(&location, v18);
  v23 = dispatch_semaphore_create(0);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __130__OSLogStatistics_aggregationForStartDate_impl_endDate_predicate_withOptions_catalogCacheSize_dataCacheSize_useMemEffic_errorOut___block_invoke;
  v39[3] = &unk_2787AE720;
  v24 = dateCopy;
  v43[1] = v21;
  v40 = v24;
  selfCopy = self;
  v25 = v22;
  v42 = v25;
  objc_copyWeak(v43, &location);
  [(OSLogEventStreamBase *)v18 setEventHandler:v39];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v48) = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __130__OSLogStatistics_aggregationForStartDate_impl_endDate_predicate_withOptions_catalogCacheSize_dataCacheSize_useMemEffic_errorOut___block_invoke_2;
  v36[3] = &unk_2787AE748;
  v38 = buf;
  v26 = v23;
  v37 = v26;
  [(OSLogEventStreamBase *)v18 setInvalidationHandler:v36];
  if (effic)
  {
    distantPast = date_implCopy;
    if (!date_implCopy)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    [(OSLogEventStream *)v18 activateStreamFromDate:distantPast catalogCacheSize:v10 dataCacheSize:cacheSize];
  }

  else
  {
    distantPast = date_implCopy;
    if (!date_implCopy)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    [(OSLogEventStream *)v18 activateStreamFromDate:distantPast];
  }

  if (!date_implCopy)
  {
  }

  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  v28 = _logHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *v45 = 0;
    _os_log_impl(&dword_22E01A000, v28, OS_LOG_TYPE_DEFAULT, "Finished enumerating all events.", v45, 2u);
  }

  processingError = [(OSLogStatistics *)self processingError];

  if (processingError)
  {
    v30 = _logHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      processingError2 = [(OSLogStatistics *)self processingError];
      *v45 = 138412290;
      v46 = processingError2;
      _os_log_error_impl(&dword_22E01A000, v30, OS_LOG_TYPE_ERROR, "Encountered error during enumeration of tracepoints: %@", v45, 0xCu);
    }

    if (out)
    {
      *out = [(OSLogStatistics *)self processingError];
    }
  }

  v31 = v37;
  v32 = v25;

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(v43);

  objc_destroyWeak(&location);

  return v32;
}

void __130__OSLogStatistics_aggregationForStartDate_impl_endDate_predicate_withOptions_catalogCacheSize_dataCacheSize_useMemEffic_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v11 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 unixDate];
    v4 = v11;
    if (*(v5 + 8) / 1000000.0 + *v5 > *(a1 + 64))
    {
LABEL_8:
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained invalidate];

      goto LABEL_9;
    }
  }

  if ([v4 type] == 1536 || objc_msgSend(v11, "type") == 1024)
  {
    v6 = [*(a1 + 40) handler];

    v7 = v11;
    if (!v6 || ([*(a1 + 40) handler], v8 = objc_claimAutoreleasedReturnValue(), v9 = (v8)[2](v8, v11), v8, v7 = v11, v9))
    {
      [*(a1 + 48) _addTraceEvent:v7];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __130__OSLogStatistics_aggregationForStartDate_impl_endDate_predicate_withOptions_catalogCacheSize_dataCacheSize_useMemEffic_errorOut___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v6 = _logHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Invalid position.";
        v8 = buf;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (a2 == 7)
    {
      v6 = _logHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v7 = "Client has insufficient permissions to access the archive.";
        v8 = &v9;
        goto LABEL_15;
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v6 = _logHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v7 = "Stream disconnected.";
        v8 = &v12;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (a2 == 2)
    {
      v6 = _logHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v7 = "Stream backlogged, too many events.";
        v8 = &v11;
LABEL_15:
        _os_log_impl(&dword_22E01A000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_17:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_initializeEventSourceWithPaths:(id)paths
{
  v29[1] = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  archivePath = [(OSLogStatistics *)self archivePath];

  if (!archivePath || (v6 = MEMORY[0x277CBEBC0], -[OSLogStatistics archivePath](self, "archivePath"), v7 = objc_claimAutoreleasedReturnValue(), [v6 fileURLWithPath:v7 isDirectory:0], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    if (pathsCopy)
    {
      [OSLogEventStore localStoreWithRelativePaths:pathsCopy];
    }

    else
    {
      +[OSLogEventStore localStore];
    }
    v9 = ;
    v8 = 0;
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_9:
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__2699;
    v26 = __Block_byref_object_dispose__2700;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__2699;
    v20 = __Block_byref_object_dispose__2700;
    v21 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__OSLogStatistics__initializeEventSourceWithPaths___block_invoke;
    v15[3] = &unk_2787AE6F8;
    v15[4] = &v16;
    v15[5] = &v22;
    [v9 prepareWithCompletionHandler:v15];
    v10 = v17[5];
    if (v10)
    {
      objc_storeStrong(&self->_eventSource, v10);
      v11 = 0;
    }

    else
    {
      v11 = v23[5];
    }

    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
    goto LABEL_16;
  }

  if (pathsCopy)
  {
    [OSLogEventStore storeWithArchiveURL:v8 relativePaths:pathsCopy];
  }

  else
  {
    [OSLogEventStore storeWithArchiveURL:v8];
  }
  v9 = ;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_15:
  v12 = MEMORY[0x277CCA9B8];
  v28 = *MEMORY[0x277CCA450];
  v29[0] = @"Failed to initialize event store";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v11 = [v12 errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:v13];

LABEL_16:

  return v11;
}

void __51__OSLogStatistics__initializeEventSourceWithPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 32;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (OSLogStatistics)initWithLogArchivePath:(id)path forRelativePaths:(id)paths errorOut:(id *)out
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  pathsCopy = paths;
  v19.receiver = self;
  v19.super_class = OSLogStatistics;
  v11 = [(OSLogStatistics *)&v19 init];
  v12 = v11;
  if (v11 && (objc_storeStrong(&v11->_archivePath, path), [(OSLogStatistics *)v12 _initializeEventSourceWithPaths:pathsCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = _logHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_error_impl(&dword_22E01A000, v15, OS_LOG_TYPE_ERROR, "Encountered error during initialisation of OSLogStatistics: %@", buf, 0xCu);
    }

    if (out)
    {
      v16 = v14;
      *out = v14;
    }

    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  return v17;
}

@end