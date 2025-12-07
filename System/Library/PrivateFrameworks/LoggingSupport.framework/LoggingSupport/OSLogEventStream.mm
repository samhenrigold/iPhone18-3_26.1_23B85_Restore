@interface OSLogEventStream
- (id)_initWithSource:(id)source flags:(unint64_t)flags;
- (void)_activateStreamFromDate:(id)date toDate:(id)toDate useMemEffic:(BOOL)effic catalogCacheSize:(unsigned int)size dataCacheSize:(unsigned int)cacheSize;
- (void)_activateStreamFromTimeIntervalSinceLastBoot:(double)boot;
- (void)_activateStreamInRange:(os_timesync_range_s *)range useMemEffic:(BOOL)effic catalogCacheSize:(unsigned int)size dataCacheSize:(unsigned int)cacheSize;
- (void)activateStreamFromDate:(id)date;
- (void)activateStreamFromDate:(id)date catalogCacheSize:(unsigned int)size dataCacheSize:(unsigned int)cacheSize;
- (void)activateStreamFromPosition:(id)position;
- (void)dealloc;
- (void)setFilterPredicate:(id)predicate;
@end

@implementation OSLogEventStream

- (void)activateStreamFromPosition:(id)position
{
  positionCopy = position;
  queue = [(OSLogEventStreamBase *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__OSLogEventStream_activateStreamFromPosition___block_invoke;
  v7[3] = &unk_2787AE560;
  v7[4] = self;
  v8 = positionCopy;
  v6 = positionCopy;
  dispatch_async(queue, v7);
}

void __47__OSLogEventStream_activateStreamFromPosition___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 96) && *(v1 + 80))
  {
    v9 = 0;
    v10 = 0;
    v3 = [*(v1 + 88) uniqueIdentifier];
    [v3 getUUIDBytes:&v9];

    v4 = [*(a1 + 40) sourceUUID];
    if (v9 == *v4 && v10 == v4[1])
    {
      _timesync_range_create_impl(*(*(a1 + 32) + 96), 0, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    _invalidate(*(a1 + 32), 3, *(a1 + 40));
  }

  else
  {
    v9 = 0;
    v10 = 0;
    memset(uu, 0, sizeof(uu));
    v5 = v1;
    uuid_clear(uu);
    v6 = [v5[11] uniqueIdentifier];
    [v6 getUUIDBytes:&v9];

    v7 = [[OSLogEventStreamPosition alloc] initWithSource:&v9 bootUUID:uu time:0];
    _invalidate(v5, 9, v7);
  }
}

- (void)_activateStreamFromTimeIntervalSinceLastBoot:(double)boot
{
  queue = [(OSLogEventStreamBase *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__OSLogEventStream__activateStreamFromTimeIntervalSinceLastBoot___block_invoke;
  v6[3] = &unk_2787AE538;
  v6[4] = self;
  *&v6[5] = boot;
  dispatch_async(queue, v6);
}

void __65__OSLogEventStream__activateStreamFromTimeIntervalSinceLastBoot___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[12];
  if (v3 && v2[10])
  {
    v4 = *(a1 + 40);
    if (v4 <= 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = (v4 * 1000000000.0);
    }

    _timesync_range_create_since_last_boot(v3, v5);
  }

  v10[0] = 0;
  v10[1] = 0;
  memset(uu, 0, sizeof(uu));
  v6 = v2;
  uuid_clear(uu);
  v7 = [v6[11] uniqueIdentifier];
  [v7 getUUIDBytes:v10];

  v8 = [[OSLogEventStreamPosition alloc] initWithSource:v10 bootUUID:uu time:0];
  _invalidate(v6, 9, v8);
}

- (void)activateStreamFromDate:(id)date
{
  source = self->_source;
  dateCopy = date;
  newestDate = [(OSLogEventSource *)source newestDate];
  [(OSLogEventStream *)self _activateStreamFromDate:dateCopy toDate:newestDate useMemEffic:0 catalogCacheSize:0 dataCacheSize:0];
}

- (void)activateStreamFromDate:(id)date catalogCacheSize:(unsigned int)size dataCacheSize:(unsigned int)cacheSize
{
  v5 = *&cacheSize;
  v6 = *&size;
  source = self->_source;
  dateCopy = date;
  newestDate = [(OSLogEventSource *)source newestDate];
  [(OSLogEventStream *)self _activateStreamFromDate:dateCopy toDate:newestDate useMemEffic:1 catalogCacheSize:v6 dataCacheSize:v5];
}

- (void)_activateStreamFromDate:(id)date toDate:(id)toDate useMemEffic:(BOOL)effic catalogCacheSize:(unsigned int)size dataCacheSize:(unsigned int)cacheSize
{
  dateCopy = date;
  toDateCopy = toDate;
  queue = [(OSLogEventStreamBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__OSLogEventStream__activateStreamFromDate_toDate_useMemEffic_catalogCacheSize_dataCacheSize___block_invoke;
  block[3] = &unk_2787AE510;
  block[4] = self;
  v18 = dateCopy;
  v19 = toDateCopy;
  efficCopy = effic;
  sizeCopy = size;
  cacheSizeCopy = cacheSize;
  v15 = toDateCopy;
  v16 = dateCopy;
  dispatch_async(queue, block);
}

void __94__OSLogEventStream__activateStreamFromDate_toDate_useMemEffic_catalogCacheSize_dataCacheSize___block_invoke(id *a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if (v1[12] && v1[10])
  {
    [a1[5] timeIntervalSince1970];
    if (v3 <= 0.0)
    {
      v5 = 0;
    }

    else
    {
      [a1[5] timeIntervalSince1970];
      v5 = (v4 * 1000000000.0);
    }

    if (([a1[4] flags] & 8) != 0)
    {
      v13 = *(a1[4] + 12);
      v14 = 0;
      v12 = v5;
    }

    else
    {
      [a1[6] timeIntervalSince1970];
      v10 = v9;
      v11 = 0.0;
      if (v10 > 0.0)
      {
        [a1[6] timeIntervalSince1970];
      }

      if (v11 == 0.0)
      {
        v12 = -1;
      }

      else
      {
        v12 = (v11 * 1000000000.0);
      }

      v13 = *(a1[4] + 12);
      v14 = v5;
    }

    _timesync_range_create_impl(v13, v14, v12, 1);
  }

  v16[0] = 0;
  v16[1] = 0;
  memset(uu, 0, sizeof(uu));
  v6 = v1;
  uuid_clear(uu);
  v7 = [v6[11] uniqueIdentifier];
  [v7 getUUIDBytes:v16];

  v8 = [[OSLogEventStreamPosition alloc] initWithSource:v16 bootUUID:uu time:0];
  _invalidate(v6, 9, v8);
}

- (void)_activateStreamInRange:(os_timesync_range_s *)range useMemEffic:(BOOL)effic catalogCacheSize:(unsigned int)size dataCacheSize:(unsigned int)cacheSize
{
  efficCopy = effic;
  v55[2] = *MEMORY[0x277D85DE8];
  streamHandler = [(OSLogEventStreamBase *)self streamHandler];

  if (!streamHandler)
  {
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: OSLogEventStream activated without stream handler";
    __break(1u);
  }

  flags = [(OSLogEventStreamBase *)self flags];
  flags2 = [(OSLogEventStreamBase *)self flags];
  flags3 = [(OSLogEventStreamBase *)self flags];
  flags4 = [(OSLogEventStreamBase *)self flags];
  flags5 = [(OSLogEventStreamBase *)self flags];
  flags6 = [(OSLogEventStreamBase *)self flags];
  flags7 = [(OSLogEventStreamBase *)self flags];
  flags8 = [(OSLogEventStreamBase *)self flags];
  flags9 = [(OSLogEventStreamBase *)self flags];
  flags10 = [(OSLogEventStreamBase *)self flags];
  flags11 = [(OSLogEventStreamBase *)self flags];
  compiledPredicate = [(OSLogEventStreamBase *)self compiledPredicate];
  sizeCopy = size;
  cacheSizeCopy = cacheSize;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  index = self->_index;
  catalogFilter = [(OSLogEventStream *)self catalogFilter];
  v19 = flags2 & 0x40 | flags & 0x20 | (4 * (flags3 & 1)) | flags4 & 2;
  if ((flags5 & 4) == 0)
  {
    ++v19;
  }

  v20 = v19 | flags6 & 8 | flags7 & 0x10 | flags8 & 0x80 | flags9 & 0x100 | flags10 & 0x200 | (2 * flags11) & 0x800;
  if (efficCopy)
  {
    v21 = v20 | 0x400;
  }

  else
  {
    v21 = v20;
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __86__OSLogEventStream__activateStreamInRange_useMemEffic_catalogCacheSize_dataCacheSize___block_invoke;
  v37[3] = &unk_2787AE4E8;
  v22 = compiledPredicate;
  v38 = v22;
  selfCopy = self;
  v40 = &v43;
  v41 = &v51;
  v42 = &v47;
  [(_OSLogIndex *)index enumerateEntriesInRange:range options:v21 usingCatalogFilter:catalogFilter catalogCacheSize:sizeCopy dataCacheSize:cacheSizeCopy usingBlock:v37];

  v55[0] = 0;
  v55[1] = 0;
  v23 = v52[3];
  uniqueIdentifier = [(OSLogEventSource *)self->_source uniqueIdentifier];
  [uniqueIdentifier getUUIDBytes:v55];

  v25 = [OSLogEventStreamPosition alloc];
  v26 = [(OSLogEventStreamPosition *)v25 initWithSource:v55 bootUUID:range->var3[v23] time:v48[3]];
  v27 = v44[3];
  if (!v27)
  {
    if ([(OSLogEventStreamBase *)self invalidated])
    {
      v27 = 4;
    }

    else
    {
      v27 = 5;
    }

    v44[3] = v27;
  }

  _invalidate(self, v27, v26);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
}

BOOL __86__OSLogEventStream__activateStreamInRange_useMemEffic_catalogCacheSize_dataCacheSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4 || [v4 evaluateWithObject:v3])
  {
    *(*(*(a1 + 56) + 8) + 24) = [v3 _timesyncRangeUUIDIndex];
    *(*(*(a1 + 64) + 8) + 24) = [v3 machContinuousTimestamp];
    v5 = [*(a1 + 40) streamHandler];
    (v5)[2](v5, v3);
  }

  v6 = [*(a1 + 40) invalidated] == 0;

  return v6;
}

- (void)setFilterPredicate:(id)predicate
{
  v9.receiver = self;
  v9.super_class = OSLogEventStream;
  [(OSLogEventStreamBase *)&v9 setFilterPredicate:predicate];
  v4 = [_OSLogCatalogFilter alloc];
  filterPredicate = [(OSLogEventStreamBase *)self filterPredicate];
  v6 = [(OSLogEventSource *)self->_source lcr];
  v7 = [(_OSLogCatalogFilter *)v4 initWithPredicate:filterPredicate collection:v6];
  catalogFilter = self->_catalogFilter;
  self->_catalogFilter = v7;
}

- (void)dealloc
{
  tsdb = self->_tsdb;
  if (tsdb)
  {
    _timesync_db_close(tsdb);
  }

  v4.receiver = self;
  v4.super_class = OSLogEventStream;
  [(OSLogEventStream *)&v4 dealloc];
}

- (id)_initWithSource:(id)source flags:(unint64_t)flags
{
  flagsCopy = flags;
  v19 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v8 = [(OSLogEventStreamBase *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_source, source);
    v10 = _timesync_db_openat(*[sourceCopy tsdb], ".");
    v9->_tsdb = v10;
    if (v10)
    {
      v11 = [sourceCopy lcr];
      lesm = [sourceCopy lesm];
      v13 = [[_OSLogIndex alloc] initWithCollection:v11 timesync:v9->_tsdb metadata:lesm];
      index = v9->_index;
      v9->_index = v13;

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __42__OSLogEventStream__initWithSource_flags___block_invoke;
      v16[3] = &unk_2787AE4C0;
      v18 = flagsCopy & 1;
      v17 = v9;
      [sourceCopy _enumerateIndexFiles:v16];
    }
  }

  return v9;
}

uint64_t __42__OSLogEventStream__initWithSource_flags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (*(a1 + 40) != 1 || (v4 = [v3 path]) == 0 || (v5 = v4, (v6 = strchr(v4, 47)) == 0) || (v7 = strncmp(v5, "Signpost/", v6 - v5), v8 = v10, !v7))
  {
    v7 = [*(*(a1 + 32) + 80) insertIndexFile:v10];
    v8 = v10;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

@end