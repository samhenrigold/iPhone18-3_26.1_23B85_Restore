@interface CPLEngineChangePipe
- (BOOL)appendChangeBatch:(id)batch error:(id *)error;
- (BOOL)compactChangeBatchesWithError:(id *)error;
- (BOOL)deleteAllChangeBatchesWithError:(id *)error;
- (BOOL)deleteAllChangesWithScopeFilter:(id)filter error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasQueuedBatches;
- (BOOL)hasSomeChangeInScopesWithIdentifiers:(id)identifiers;
- (BOOL)hasSomeChangeWithScopeFilter:(id)filter;
- (BOOL)hasSomeChangeWithScopedIdentifier:(id)identifier;
- (BOOL)isEmpty;
- (BOOL)popChangeBatch:(id *)batch error:(id *)error;
- (BOOL)popNextBatchWithError:(id *)error;
- (id)addDequeueObserverWithDequeueSignalBlock:(id)block;
- (id)allChangeBatches;
- (id)nextBatch;
- (unint64_t)countOfQueuedBatches;
- (void)_notifyQueueRemovedChanges;
- (void)addDequeueObserver:(id)observer;
- (void)notifyClientDidAcknowledgeBatch:(id)batch;
- (void)notifyClientWillAcknowledgeBatch:(id)batch;
@end

@implementation CPLEngineChangePipe

- (void)_notifyQueueRemovedChanges
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_dequeueObservers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        changePipeDidRemoveChanges = [*(*(&v9 + 1) + 8 * v7) changePipeDidRemoveChanges];
        (changePipeDidRemoveChanges)[2](changePipeDidRemoveChanges, self);

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)notifyClientDidAcknowledgeBatch:(id)batch
{
  v16 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_dequeueObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        clientDidAcknowledgeBatchBlock = [*(*(&v11 + 1) + 8 * v9) clientDidAcknowledgeBatchBlock];
        (clientDidAcknowledgeBatchBlock)[2](clientDidAcknowledgeBatchBlock, self, batchCopy);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)notifyClientWillAcknowledgeBatch:(id)batch
{
  v16 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_dequeueObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        clientWillAcknowledgeBatchBlock = [*(*(&v11 + 1) + 8 * v9) clientWillAcknowledgeBatchBlock];
        (clientWillAcknowledgeBatchBlock)[2](clientWillAcknowledgeBatchBlock, self, batchCopy);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)addDequeueObserverWithDequeueSignalBlock:(id)block
{
  blockCopy = block;
  v5 = [[CPLEngineDequeueObserver alloc] initWithDequeueSignalBlock:blockCopy];

  [(CPLEngineChangePipe *)self addDequeueObserver:v5];

  return v5;
}

- (void)addDequeueObserver:(id)observer
{
  observerCopy = observer;
  dequeueObservers = self->_dequeueObservers;
  v8 = observerCopy;
  if (!dequeueObservers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dequeueObservers;
    self->_dequeueObservers = v6;

    observerCopy = v8;
    dequeueObservers = self->_dequeueObservers;
  }

  [(NSMutableArray *)dequeueObservers addObject:observerCopy];
}

- (id)allChangeBatches
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  allChangeBatches = [platformObject allChangeBatches];

  return allChangeBatches;
}

- (BOOL)compactChangeBatchesWithError:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "%@ compacting batches", &v9, 0xCu);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v7 = [platformObject compactChangeBatchesWithError:error];

  if (v7)
  {
    [(CPLEngineChangePipe *)self _notifyQueueRemovedChanges];
  }

  return v7;
}

- (BOOL)deleteAllChangesWithScopeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject deleteAllChangesWithScopeFilter:filterCopy error:error];

  if (v8)
  {
    [(CPLEngineChangePipe *)self _notifyQueueRemovedChanges];
  }

  return v8;
}

- (BOOL)deleteAllChangeBatchesWithError:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "%@ deleting all batches", &v9, 0xCu);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v7 = [platformObject deleteAllChangeBatchesWithError:error];

  if (v7)
  {
    [(CPLEngineChangePipe *)self _notifyQueueRemovedChanges];
  }

  return v7;
}

- (BOOL)hasSomeChangeWithScopeFilter:(id)filter
{
  filterCopy = filter;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasSomeChangeWithScopeFilter:filterCopy];

  return v6;
}

- (BOOL)hasSomeChangeInScopesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasSomeChangeInScopesWithIdentifiers:identifiersCopy];

  return v6;
}

- (BOOL)hasSomeChangeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasSomeChangeWithScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)popNextBatchWithError:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject popNextBatchWithError:error];

  if (v6 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%@ popped next batch", &v9, 0xCu);
    }
  }

  return v6;
}

- (id)nextBatch
{
  v11 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineStorage *)self platformObject];
  nextBatch = [platformObject nextBatch];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 2048;
      v10 = [nextBatch count];
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "%@ getting %lu changes", &v7, 0x16u);
    }
  }

  return nextBatch;
}

- (BOOL)popChangeBatch:(id *)batch error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject popChangeBatch:batch error:error];

  if (v8 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*batch count];
      v12 = 138412546;
      selfCopy = self;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "%@ popped %lu changes", &v12, 0x16u);
    }
  }

  return v8;
}

- (BOOL)appendChangeBatch:(id)batch error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_9255();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      selfCopy = self;
      v13 = 2048;
      v14 = [batchCopy count];
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%@ appending %lu changes", &v11, 0x16u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject appendChangeBatch:batchCopy error:error];

  return v9;
}

- (BOOL)hasQueuedBatches
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasQueuedBatches = [platformObject hasQueuedBatches];

  return hasQueuedBatches;
}

- (BOOL)isEmpty
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasQueuedBatches = [platformObject hasQueuedBatches];

  return hasQueuedBatches ^ 1;
}

- (unint64_t)countOfQueuedBatches
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfQueuedBatches = [platformObject countOfQueuedBatches];

  return countOfQueuedBatches;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  v12 = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  if (v12)
  {
    [(CPLEngineChangePipe *)self _notifyQueueRemovedChanges];
  }

  return v12;
}

@end