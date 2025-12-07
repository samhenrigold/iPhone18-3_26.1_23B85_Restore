@interface MSPFileContainerPersister
- (BOOL)getSnapshot:(id *)snapshot data:(id *)data forNewContents:(id)contents edits:(id)edits appliedToOldContents:(id)oldContents error:(id *)error;
- (BOOL)getSnapshot:(id *)snapshot data:(id *)data mergingCurrentState:(id)state withState:(id)withState mergeOptions:(id)options error:(id *)error;
- (MSPFileContainerPersister)init;
- (MSPFileContainerPersister)initWithPersistenceFileAtURL:(id)l;
- (id)commitByCreatingStateSnapshotAndDataWithCreationHandler:(id)handler error:(id *)error;
- (id)newStateSnapshot;
- (void)commitByMergingWithStateSnapshot:(id)snapshot mergeOptions:(id)options completion:(id)completion;
- (void)commitEditWithNewContents:(id)contents edits:(id)edits appliedToOldContents:(id)oldContents completion:(id)completion;
- (void)eraseWithCompletion:(id)completion;
- (void)fetchStateSnapshotWithCompletion:(id)completion;
@end

@implementation MSPFileContainerPersister

- (MSPFileContainerPersister)init
{
  result = [MEMORY[0x277CBEAD8] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (MSPFileContainerPersister)initWithPersistenceFileAtURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = MSPFileContainerPersister;
  v5 = [(MSPFileContainerPersister *)&v12 init];
  if (v5)
  {
    v6 = [lCopy copy];
    persistenceFileURL = v5->_persistenceFileURL;
    v5->_persistenceFileURL = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.Maps.MSPContainerPersister.io", v8);
    ioQueue = v5->_ioQueue;
    v5->_ioQueue = v9;
  }

  return v5;
}

- (id)newStateSnapshot
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    persistenceFileURL = self->_persistenceFileURL;
    v10 = 138412290;
    v11 = persistenceFileURL;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "Reading persisted data from %@", &v10, 0xCu);
  }

  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:self->_persistenceFileURL options:1 error:0];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_persistenceFileURL;
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "Read persisted data from %@", &v10, 0xCu);
  }

  v8 = [(MSPFileContainerPersister *)self stateSnapshotFromData:v5];

  return v8;
}

- (void)fetchStateSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  ioQueue = [(MSPFileContainerPersister *)self ioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSPFileContainerPersister_fetchStateSnapshotWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(ioQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__MSPFileContainerPersister_fetchStateSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained newStateSnapshot];
    v5 = dispatch_get_global_queue(-32768, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__MSPFileContainerPersister_fetchStateSnapshotWithCompletion___block_invoke_31;
    v8[3] = &unk_2798674D8;
    v6 = *(a1 + 32);
    v9 = v4;
    v10 = v6;
    v7 = v4;
    dispatch_async(v5, v8);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[MSPFileContainerPersister fetchStateSnapshotWithCompletion:]_block_invoke";
      v13 = 1024;
      v14 = 93;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

- (void)commitEditWithNewContents:(id)contents edits:(id)edits appliedToOldContents:(id)oldContents completion:(id)completion
{
  contentsCopy = contents;
  editsCopy = edits;
  oldContentsCopy = oldContents;
  completionCopy = completion;
  objc_initWeak(&location, self);
  ioQueue = [(MSPFileContainerPersister *)self ioQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke;
  v19[3] = &unk_279868CF8;
  objc_copyWeak(&v24, &location);
  v20 = contentsCopy;
  v21 = editsCopy;
  v22 = oldContentsCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = oldContentsCopy;
  v17 = editsCopy;
  v18 = contentsCopy;
  dispatch_async(ioQueue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke_33;
    v14[3] = &unk_279868CD0;
    objc_copyWeak(&v18, a1 + 8);
    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    v13 = 0;
    v3 = [WeakRetained commitByCreatingStateSnapshotAndDataWithCreationHandler:v14 error:&v13];
    v4 = v13;
    v5 = dispatch_get_global_queue(-32768, 0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke_35;
    v9[3] = &unk_279868988;
    v6 = a1[7];
    v11 = v4;
    v12 = v6;
    v10 = v3;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v9);

    objc_destroyWeak(&v18);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[MSPFileContainerPersister commitEditWithNewContents:edits:appliedToOldContents:completion:]_block_invoke";
      v21 = 1024;
      v22 = 105;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

uint64_t __93__MSPFileContainerPersister_commitEditWithNewContents_edits_appliedToOldContents_completion___block_invoke_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained getSnapshot:a2 data:a3 forNewContents:*(a1 + 32) edits:*(a1 + 40) appliedToOldContents:*(a1 + 48) error:a4];
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[MSPFileContainerPersister commitEditWithNewContents:edits:appliedToOldContents:completion:]_block_invoke";
      v15 = 1024;
      v16 = 109;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v13, 0x12u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)commitByMergingWithStateSnapshot:(id)snapshot mergeOptions:(id)options completion:(id)completion
{
  snapshotCopy = snapshot;
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  ioQueue = [(MSPFileContainerPersister *)self ioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke;
  block[3] = &unk_2798676A8;
  objc_copyWeak(&v19, &location);
  v16 = snapshotCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = optionsCopy;
  v14 = snapshotCopy;
  dispatch_async(ioQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke_36;
    v14[3] = &unk_279868D20;
    objc_copyWeak(&v17, a1 + 7);
    v15 = a1[4];
    v16 = a1[5];
    v13 = 0;
    v3 = [WeakRetained commitByCreatingStateSnapshotAndDataWithCreationHandler:v14 error:&v13];
    v4 = v13;
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke_37;
    block[3] = &unk_279868988;
    v6 = a1[6];
    v11 = v4;
    v12 = v6;
    v10 = v3;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v17);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[MSPFileContainerPersister commitByMergingWithStateSnapshot:mergeOptions:completion:]_block_invoke";
      v20 = 1024;
      v21 = 123;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

uint64_t __86__MSPFileContainerPersister_commitByMergingWithStateSnapshot_mergeOptions_completion___block_invoke_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained newStateSnapshot];
    v11 = [v9 getSnapshot:a2 data:a3 mergingCurrentState:v10 withState:*(a1 + 32) mergeOptions:*(a1 + 40) error:a4];
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[MSPFileContainerPersister commitByMergingWithStateSnapshot:mergeOptions:completion:]_block_invoke";
      v16 = 1024;
      v17 = 127;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v14, 0x12u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)commitByCreatingStateSnapshotAndDataWithCreationHandler:(id)handler error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    persistenceFileURL = self->_persistenceFileURL;
    *buf = 138412290;
    v25 = persistenceFileURL;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEBUG, "Writing persisted data to %@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [(NSURL *)self->_persistenceFileURL URLByDeletingLastPathComponent];
  v11 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

  v12 = 0;
  if (v11)
  {
    v22 = 0;
    v23 = 0;
    v13 = handlerCopy[2](handlerCopy, &v23, &v22, error);
    v14 = v23;
    v15 = v22;
    v16 = v15;
    if (v13)
    {
      v17 = [v15 writeToURL:self->_persistenceFileURL options:536870913 error:error];
    }

    else
    {
      v17 = 0;
    }

    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = self->_persistenceFileURL;
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEBUG, "Wrote persisted data to %@", buf, 0xCu);
    }

    if (v17)
    {
      v20 = v14;
    }

    else
    {
      v20 = 0;
    }

    v12 = v20;
  }

  return v12;
}

- (void)eraseWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  ioQueue = [(MSPFileContainerPersister *)self ioQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSPFileContainerPersister_eraseWithCompletion___block_invoke;
  block[3] = &unk_279868960;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(ioQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__MSPFileContainerPersister_eraseWithCompletion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [WeakRetained persistenceFileURL];
    v19 = 0;
    v5 = [v3 removeItemAtURL:v4 error:&v19];
    v6 = v19;

    if (v5)
    {
      v7 = dispatch_get_global_queue(-32768, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__MSPFileContainerPersister_eraseWithCompletion___block_invoke_39;
      block[3] = &unk_2798676D0;
      v8 = &v18;
      v18 = *(a1 + 32);
      dispatch_async(v7, block);
LABEL_15:

      goto LABEL_16;
    }

    v9 = [v6 domain];
    if ([v9 isEqual:*MEMORY[0x277CCA5B8]]&& [v6 code]== 2)
    {
      v10 = v9;
      v9 = v6;
      v6 = 0;
    }

    else
    {
      v10 = [v6 domain];
      if ([v10 isEqual:*MEMORY[0x277CCA050]])
      {
        v11 = [v6 code];

        if (v11 != 4)
        {
LABEL_14:
          v13 = dispatch_get_global_queue(-32768, 0);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __49__MSPFileContainerPersister_eraseWithCompletion___block_invoke_2;
          v14[3] = &unk_2798674D8;
          v8 = &v16;
          v16 = *(a1 + 32);
          v6 = v6;
          v15 = v6;
          dispatch_async(v13, v14);

          v7 = v15;
          goto LABEL_15;
        }

        v12 = 0;
LABEL_13:

        v6 = v12;
        goto LABEL_14;
      }
    }

    v12 = v6;

    v6 = v9;
    goto LABEL_13;
  }

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[MSPFileContainerPersister eraseWithCompletion:]_block_invoke";
    v22 = 1024;
    v23 = 167;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
  }

LABEL_16:
}

- (BOOL)getSnapshot:(id *)snapshot data:(id *)data forNewContents:(id)contents edits:(id)edits appliedToOldContents:(id)oldContents error:(id *)error
{
  [(MSPFileContainerPersister *)self doesNotRecognizeSelector:a2, data, contents, edits, oldContents];
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  }

  return 0;
}

- (BOOL)getSnapshot:(id *)snapshot data:(id *)data mergingCurrentState:(id)state withState:(id)withState mergeOptions:(id)options error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:6 userInfo:{0, withState, options}];
  }

  return 0;
}

@end