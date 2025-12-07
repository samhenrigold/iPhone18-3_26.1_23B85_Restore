@interface BLSHFlipbookHistory
- (BLSHFlipbookHistory)initWithFrameLimit:(unint64_t)limit memoryLimit:(unint64_t)memoryLimit;
- (NSArray)allFrames;
- (id)frameWithUUID:(id)d;
- (unint64_t)memoryUsage;
- (void)addRenderedFrameToHistory:(id)history;
@end

@implementation BLSHFlipbookHistory

- (BLSHFlipbookHistory)initWithFrameLimit:(unint64_t)limit memoryLimit:(unint64_t)memoryLimit
{
  v13.receiver = self;
  v13.super_class = BLSHFlipbookHistory;
  v6 = [(BLSHFlipbookHistory *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_frameLimit = limit;
    v6->_memoryLimit = memoryLimit;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:limit];
    lock_frames = v7->_lock_frames;
    v7->_lock_frames = v8;

    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:limit];
    lock_framesDict = v7->_lock_framesDict;
    v7->_lock_framesDict = v10;
  }

  return v7;
}

- (unint64_t)memoryUsage
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_lock_frames;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) retainedMemoryUsage];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)addRenderedFrameToHistory:(id)history
{
  historyCopy = history;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BLSDiagnosticFlipbookFrame *)BLSHFlipbookHistoryFrame createWithFrame:historyCopy];
  [(NSMutableArray *)self->_lock_frames addObject:v5];
  lock_framesDict = self->_lock_framesDict;
  uuid = [v5 uuid];
  [(NSMutableDictionary *)lock_framesDict setObject:v5 forKey:uuid];

  if ([(NSMutableArray *)self->_lock_frames count]> self->_frameLimit)
  {
    v8 = [(NSMutableArray *)self->_lock_frames objectAtIndex:0];
    uuid2 = [v8 uuid];

    [(NSMutableArray *)self->_lock_frames removeObjectAtIndex:0];
    [(NSMutableDictionary *)self->_lock_framesDict removeObjectForKey:uuid2];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  lock_frames = self->_lock_frames;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__BLSHFlipbookHistory_addRenderedFrameToHistory___block_invoke;
  v11[3] = &unk_27841FCC8;
  v11[4] = self;
  v11[5] = v15;
  v11[6] = v14;
  v11[7] = v12;
  [(NSMutableArray *)lock_frames enumerateObjectsWithOptions:2 usingBlock:v11];
  os_unfair_lock_unlock(&self->_lock);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
}

void __49__BLSHFlipbookHistory_addRenderedFrameToHistory___block_invoke(void *a1, void *a2, int a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [v7 retainedMemoryUsage];
  if (v8)
  {
    v9 = *(a1[5] + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 24) + v8;
      if (v11 <= *(a1[4] + 16))
      {
        *(v10 + 24) = v11;
        ++*(*(a1[7] + 8) + 24);
      }

      else
      {
        *(v9 + 24) = 1;
      }
    }
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    if ([v7 isRetainingSurface])
    {
      [v7 stopRetainingSurface];
      v12 = bls_diagnostics_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = a1[4];
        v14 = *(*(a1[7] + 8) + 24);
        v15 = [MEMORY[0x277CF0978] sharedFormatter];
        v16 = [v15 stringFromByteCount:*(*(a1[6] + 8) + 24)];
        v17 = [MEMORY[0x277CF0978] sharedFormatter];
        v18 = [v17 stringFromByteCount:*(a1[4] + 16)];
        v19 = [v7 bls_shortLoggingString];
        v20 = 134219266;
        v21 = v13;
        v22 = 1024;
        v23 = a3;
        v24 = 1024;
        v25 = v14;
        v26 = 2114;
        v27 = v16;
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        _os_log_debug_impl(&dword_21FD11000, v12, OS_LOG_TYPE_DEBUG, "%p frame %u, reached memory limit (%u — %{public}@/%{public}@), purging %{public}@", &v20, 0x36u);
      }
    }

    else
    {
      *a4 = 1;
    }
  }
}

- (NSArray)allFrames
{
  os_unfair_lock_lock(&self->_lock);
  bs_reverse = [(NSMutableArray *)self->_lock_frames bs_reverse];
  os_unfair_lock_unlock(&self->_lock);

  return bs_reverse;
}

- (id)frameWithUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_framesDict objectForKey:dCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end