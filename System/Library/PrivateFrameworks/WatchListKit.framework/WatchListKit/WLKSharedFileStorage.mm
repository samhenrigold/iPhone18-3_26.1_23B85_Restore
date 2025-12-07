@interface WLKSharedFileStorage
- (BOOL)_writeData:(id)data toURL:(id)l error:(id *)error;
- (WLKSharedFileStorage)initWithFileName:(id)name class:(Class)class;
- (id)_readDataFromURL:(id)l error:(id *)error;
- (void)delete:(id)delete;
- (void)merge:(id)merge completion:(id)completion;
- (void)read:(id)read;
- (void)write:(id)write completion:(id)completion;
@end

@implementation WLKSharedFileStorage

- (WLKSharedFileStorage)initWithFileName:(id)name class:(Class)class
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = WLKSharedFileStorage;
  v7 = [(WLKSharedFileStorage *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v9 = WLKDefaultSupportPath(v7);
    if ([v9 length])
    {
      v10 = [v9 stringByAppendingPathComponent:nameCopy];
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
      fileURL = v8->_fileURL;
      v8->_fileURL = v11;
    }

    else
    {
      NSLog(&cfstr_Wlksettingssto.isa);
      v10 = v8->_fileURL;
      v8->_fileURL = 0;
    }

    v13 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    coordinator = v8->_coordinator;
    v8->_coordinator = v13;

    v8->_class = class;
    lastPathComponent = [(NSURL *)v8->_fileURL lastPathComponent];
    debugString = v8->_debugString;
    v8->_debugString = lastPathComponent;

    if (([(objc_class *)v8->_class conformsToProtocol:&unk_2882249B0]& 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"class must conform to <WLKCoding>"];

      v17 = 0;
      goto LABEL_9;
    }
  }

  v17 = v8;
LABEL_9:

  return v17;
}

- (void)read:(id)read
{
  v19 = *MEMORY[0x277D85DE8];
  readCopy = read;
  if (!readCopy)
  {
    [WLKSharedFileStorage read:];
  }

  v5 = readCopy;
  v6 = WLKSystemLogObject(readCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    debugString = self->_debugString;
    *buf = 138412290;
    v18 = debugString;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) read request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  fileURL = self->_fileURL;
  coordinator = self->_coordinator;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __29__WLKSharedFileStorage_read___block_invoke;
  v12[3] = &unk_279E5E800;
  objc_copyWeak(&v15, buf);
  v12[4] = self;
  v13 = 0;
  v10 = v5;
  v14 = v10;
  [(NSFileCoordinator *)coordinator coordinateReadingItemAtURL:fileURL options:0 error:&v16 byAccessor:v12];
  v11 = v16;

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __29__WLKSharedFileStorage_read___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3)
  {
    v16 = 0;
    v6 = [WeakRetained _readDataFromURL:v3 error:&v16];
    v7 = v16;
    v8 = v7;
    if (!v6 && v7)
    {
      v9 = WLKSystemLogObject(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 32);
        *buf = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) read failed with error: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = WLKSystemLogObject(WeakRetained);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(v12 + 32);
      v15 = *(v12 + 8);
      *buf = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) failed to coordinate read of %@: %@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)write:(id)write completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  completionCopy = completion;
  if (!writeCopy)
  {
    [WLKSharedFileStorage write:completion:];
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    [WLKSharedFileStorage write:completion:];
  }

  v9 = WLKSystemLogObject(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    debugString = self->_debugString;
    *buf = 138412290;
    v23 = debugString;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) write request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  fileURL = self->_fileURL;
  coordinator = self->_coordinator;
  v21 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__WLKSharedFileStorage_write_completion___block_invoke;
  v16[3] = &unk_279E5E828;
  objc_copyWeak(&v20, buf);
  v16[4] = self;
  v17 = 0;
  v13 = v8;
  v19 = v13;
  v14 = writeCopy;
  v18 = v14;
  [(NSFileCoordinator *)coordinator coordinateWritingItemAtURL:fileURL options:0 error:&v21 byAccessor:v16];
  v15 = v21;

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __41__WLKSharedFileStorage_write_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = *(a1 + 48);
    v17 = 0;
    v7 = [WeakRetained _writeData:v6 toURL:v3 error:&v17];
    v8 = v17;
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      v10 = WLKSystemLogObject(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 32) + 32);
        *buf = 138412546;
        v19 = v11;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) write failed with error: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = WLKSystemLogObject(WeakRetained);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(v13 + 32);
      v16 = *(v13 + 8);
      *buf = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) failed to coordinate write of %@: %@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)merge:(id)merge completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  completionCopy = completion;
  if (!mergeCopy)
  {
    [WLKSharedFileStorage merge:completion:];
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    [WLKSharedFileStorage merge:completion:];
  }

  v9 = WLKSystemLogObject(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    debugString = self->_debugString;
    *buf = 138412290;
    v23 = debugString;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - %@ merge request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  fileURL = self->_fileURL;
  coordinator = self->_coordinator;
  v21 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__WLKSharedFileStorage_merge_completion___block_invoke;
  v16[3] = &unk_279E5E828;
  objc_copyWeak(&v20, buf);
  v16[4] = self;
  v17 = 0;
  v13 = v8;
  v19 = v13;
  v14 = mergeCopy;
  v18 = v14;
  [(NSFileCoordinator *)coordinator coordinateWritingItemAtURL:fileURL options:8 error:&v21 byAccessor:v16];
  v15 = v21;

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __41__WLKSharedFileStorage_merge_completion___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = *(a1 + 48);
    v24 = 0;
    v7 = [v5 _readDataFromURL:v3 error:&v24];
    v8 = v24;
    if (v7)
    {
      v9 = [v7 conformsToProtocol:&unk_28822FD70];
      if ((v9 & 1) == 0)
      {
        v9 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"class must conform to <WLKMergeableCoding>"];
      }

      v10 = WLKSystemLogObject(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 32) + 32);
        *buf = 138412290;
        v26 = v11;
        _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) Read existing data. Merging", buf, 0xCu);
      }

      v12 = [v7 dataByMergingWith:*(a1 + 48)];

      v6 = v12;
    }

    v23 = v8;
    v13 = [v5 _writeData:v6 toURL:v3 error:&v23];
    v14 = v23;

    if ((v13 & 1) == 0)
    {
      v16 = WLKSystemLogObject(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(a1 + 32) + 32);
        *buf = 138412546;
        v26 = v17;
        v27 = 2112;
        v28 = v14;
        _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) merge failed with error: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v18 = WLKSystemLogObject(WeakRetained);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = *(v19 + 32);
      v22 = *(v19 + 8);
      *buf = 138412802;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_272A0F000, v18, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) failed to coordinate write of %@: %@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)delete:(id)delete
{
  v18 = *MEMORY[0x277D85DE8];
  deleteCopy = delete;
  if (!deleteCopy)
  {
    [WLKSharedFileStorage delete:];
  }

  v5 = deleteCopy;
  v6 = WLKSystemLogObject(deleteCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    debugString = self->_debugString;
    *buf = 138412290;
    v17 = debugString;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) delete request", buf, 0xCu);
  }

  fileURL = self->_fileURL;
  coordinator = self->_coordinator;
  v14 = v5;
  v15 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__WLKSharedFileStorage_delete___block_invoke;
  v12[3] = &unk_279E5E850;
  v12[4] = self;
  v13 = 0;
  v10 = v5;
  [(NSFileCoordinator *)coordinator coordinateWritingItemAtURL:fileURL options:1 error:&v15 byAccessor:v12];
  v11 = v15;
}

void __31__WLKSharedFileStorage_delete___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    [v4 removeItemAtURL:v3 error:&v15];
    v5 = v15;

    if (v5 && [v5 code] == 4)
    {
      v6 = WLKSystemLogObject(4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        v8 = *(v7 + 32);
        v9 = *(v7 + 8);
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) No file found to delete. Returning success. %@", buf, 0x16u);
      }

      v5 = 0;
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v10 = WLKSystemLogObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = *(v11 + 32);
      v14 = *(v11 + 8);
      *buf = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) failed to coordinate deletion of %@: %@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }
}

- (id)_readDataFromURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:self->_class fromData:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_writeData:(id)data toURL:(id)l error:(id *)error
{
  dataCopy = data;
  lCopy = l;
  v9 = WLKDefaultSupportPath(lCopy);
  if (![v9 length])
  {
    NSLog(&cfstr_Wlksettingssto.isa);
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v12 = [defaultManager createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:error];

  if (!v12)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = 1;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:error];
  v15 = v14;
  if (v14)
  {
    v13 = [v14 writeToURL:lCopy options:1 error:error];
  }

LABEL_8:
  return v13;
}

@end