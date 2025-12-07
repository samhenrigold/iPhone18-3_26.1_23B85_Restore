@interface QLUbiquitousItemFetcher
- (BOOL)isLongFetchOperation;
- (QLUbiquitousItemFetcher)initWithCoder:(id)coder;
- (QLUbiquitousItemFetcher)initWithSandboxingURLWrapper:(id)wrapper shouldZipPackageIfNeeded:(BOOL)needed;
- (QLUbiquitousItemFetcher)initWithURL:(id)l shouldZipPackageIfNeeded:(BOOL)needed;
- (QLUbiquitousItemFetcher)initWithZippingPackageIfNeeded:(BOOL)needed;
- (id)_createURLForPackageIfNeeded;
- (id)fetchedContent;
- (id)itemSize;
- (id)newItemProvider;
- (void)_deleteTempraryZipPackageFileIfNeeded;
- (void)_removeUpdateBlockIfNeeded:(id)needed;
- (void)cancelFetch;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fetchContentWithAllowedOutputClasses:(id)classes inQueue:(id)queue updateBlock:(id)block completionBlock:(id)completionBlock;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)subscribeToPreviewItemProgress;
@end

@implementation QLUbiquitousItemFetcher

- (QLUbiquitousItemFetcher)initWithSandboxingURLWrapper:(id)wrapper shouldZipPackageIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  wrapperCopy = wrapper;
  v8 = [(QLUbiquitousItemFetcher *)self initWithZippingPackageIfNeeded:neededCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sandboxingWrapper, wrapper);
    v10 = v9;
  }

  return v9;
}

- (QLUbiquitousItemFetcher)initWithZippingPackageIfNeeded:(BOOL)needed
{
  v12.receiver = self;
  v12.super_class = QLUbiquitousItemFetcher;
  v4 = [(QLItemFetcher *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_shouldZipPackageIfNeeded = needed;
    v6 = objc_opt_new();
    updateBlocks = v5->_updateBlocks;
    v5->_updateBlocks = v6;

    v8 = objc_opt_new();
    fileCoordinators = v5->_fileCoordinators;
    v5->_fileCoordinators = v8;

    v10 = v5;
  }

  return v5;
}

- (QLUbiquitousItemFetcher)initWithURL:(id)l shouldZipPackageIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = [(QLUbiquitousItemFetcher *)self initWithZippingPackageIfNeeded:neededCopy];
  if (v7)
  {
    v8 = *MEMORY[0x277CDAB68];
    v16 = 0;
    v9 = [MEMORY[0x277CC6438] wrapperWithURL:lCopy extensionClass:v8 error:&v16];
    v10 = v16;
    sandboxingWrapper = v7->_sandboxingWrapper;
    v7->_sandboxingWrapper = v9;

    if (!v7->_sandboxingWrapper)
    {
      v12 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v15 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v12 = *v15;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_ERROR, "QLUbiquitousItemFetcher: %@ could not create sandbox wrapper. Error: %@ #PreviewItem", buf, 0x16u);
      }
    }

    v13 = v7;
  }

  return v7;
}

- (void)fetchContentWithAllowedOutputClasses:(id)classes inQueue:(id)queue updateBlock:(id)block completionBlock:(id)completionBlock
{
  v37[1] = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (blockCopy)
  {
    v14 = self->_updateBlocks;
    objc_sync_enter(v14);
    updateBlocks = self->_updateBlocks;
    v16 = MEMORY[0x266708AD0](blockCopy);
    [(NSMutableArray *)updateBlocks addObject:v16];

    objc_sync_exit(v14);
  }

  v17 = [(FPSandboxingURLWrapper *)self->_sandboxingWrapper url];
  self->_isAccessingURL = [v17 startAccessingSecurityScopedResource];

  fileURL = [(QLUbiquitousItemFetcher *)self fileURL];
  if (fileURL)
  {
    v19 = [MEMORY[0x277CCA9E0] readingIntentWithURL:fileURL options:0];
    v20 = objc_opt_new();
    v21 = self->_fileCoordinators;
    objc_sync_enter(v21);
    [(NSMutableArray *)self->_fileCoordinators addObject:v20];
    objc_sync_exit(v21);

    v37[0] = v19;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __100__QLUbiquitousItemFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke;
    v29 = &unk_279AE1400;
    selfCopy = self;
    v34 = blockCopy;
    v31 = fileURL;
    v35 = completionBlockCopy;
    v32 = v19;
    v33 = classesCopy;
    v23 = v19;
    [v20 coordinateAccessWithIntents:v22 queue:queueCopy byAccessor:&v26];

    if (blockCopy)
    {
      [(QLUbiquitousItemFetcher *)self subscribeToPreviewItemProgress:v26];
    }
  }

  else
  {
    v24 = MEMORY[0x277D43EF8];
    v25 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v25, OS_LOG_TYPE_FAULT, "URL cannot be nil when trying to fetch the contents of QLUbiquitousItemFetcher #PreviewItem", buf, 2u);
    }

    [(QLUbiquitousItemFetcher *)self _removeUpdateBlockIfNeeded:blockCopy];
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLUbiquitousItemFetcher" code:0 userInfo:0];
    (*(completionBlockCopy + 2))(completionBlockCopy, 0, v20);
  }
}

void __100__QLUbiquitousItemFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _removeUpdateBlockIfNeeded:*(a1 + 64)];
  if ([v3 code] == 3072)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = *(a1 + 40);
    v16 = 0;
    v6 = [v4 evictUbiquitousItemAtURL:v5 error:&v16];
    v7 = v16;

    if ((v6 & 1) == 0)
    {
      v8 = MEMORY[0x277D43EF8];
      v9 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_ERROR, "Failed to evict file for canceled download: %@ #Downloading", buf, 0xCu);
      }
    }

    v10 = *(*(a1 + 72) + 16);
    goto LABEL_17;
  }

  if (!v3)
  {
    v7 = [*(a1 + 48) URL];
    if ([*(a1 + 56) containsObject:objc_opt_class()])
    {
      v11 = *(a1 + 32);
      if (v11[72] == 1)
      {
        v12 = [v11 _createURLForPackageIfNeeded];

        v11 = *(a1 + 32);
        v7 = v12;
      }

      [v11 setFetchingState:1];
      v10 = *(*(a1 + 72) + 16);
    }

    else
    {
      if ([*(a1 + 56) containsObject:objc_opt_class()])
      {
        v13 = [*(a1 + 32) _createURLForPackageIfNeeded];

        [*(a1 + 32) setFetchingState:1];
        v14 = *(a1 + 72);
        v15 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v13];
        (*(v14 + 16))(v14, v15, 0);

        v7 = v13;
LABEL_18:

        goto LABEL_19;
      }

      v10 = *(*(a1 + 72) + 16);
    }

LABEL_17:
    v10();
    goto LABEL_18;
  }

  (*(*(a1 + 72) + 16))();
LABEL_19:
}

- (void)subscribeToPreviewItemProgress
{
  if (!self->_progressSubscriber)
  {
    v3 = MEMORY[0x277CCAC48];
    fileURL = [(QLUbiquitousItemFetcher *)self fileURL];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__QLUbiquitousItemFetcher_subscribeToPreviewItemProgress__block_invoke;
    v7[3] = &unk_279AE1428;
    v7[4] = self;
    v5 = [v3 _addSubscriberForFileURL:fileURL withPublishingHandler:v7];
    progressSubscriber = self->_progressSubscriber;
    self->_progressSubscriber = v5;
  }
}

id __57__QLUbiquitousItemFetcher_subscribeToPreviewItemProgress__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "totalUnitCount")}];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v7 = *(*(a1 + 32) + 40);
  objc_sync_enter(v7);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = *(*(a1 + 32) + 40);
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = MEMORY[0x277CCABB0];
        [v3 fractionCompleted];
        v14 = [v13 numberWithDouble:?];
        (*(v12 + 16))(v12, v14);
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  [v3 addObserver:*(a1 + 32) forKeyPath:@"fractionCompleted" options:1 context:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__QLUbiquitousItemFetcher_subscribeToPreviewItemProgress__block_invoke_2;
  v19[3] = &unk_279AE0E40;
  v15 = *(a1 + 32);
  v20 = v3;
  v21 = v15;
  v16 = v3;
  v17 = MEMORY[0x266708AD0](v19);

  return v17;
}

- (void)cancelFetch
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = self->_fileCoordinators;
  objc_sync_enter(v3);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_fileCoordinators;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_fileCoordinators removeAllObjects];
  objc_sync_exit(v3);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v36 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"fractionCompleted"])
  {
    [objectCopy fractionCompleted];
    v14 = v13;
    obj = self->_updateBlocks;
    objc_sync_enter(obj);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = self->_updateBlocks;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    v18 = v14;
    if (v16)
    {
      v19 = *v30;
      do
      {
        v20 = 0;
        do
        {
          v21 = objectCopy;
          v22 = changeCopy;
          if (*v30 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v29 + 1) + 8 * v20);
          *&v17 = v18;
          v24 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
          (*(v23 + 16))(v23, v24);

          changeCopy = v22;
          objectCopy = v21;
          ++v20;
        }

        while (v16 != v20);
        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v16);
    }

    objc_sync_exit(obj);
    v25 = MEMORY[0x277D43EF8];
    v26 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v34 = v18;
      _os_log_impl(&dword_261653000, v26, OS_LOG_TYPE_DEBUG, "Updated progress for downloading file: %f #Downloading", buf, 0xCu);
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = QLUbiquitousItemFetcher;
    [(QLUbiquitousItemFetcher *)&v28 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)dealloc
{
  [MEMORY[0x277CCAC48] _removeSubscriber:self->_progressSubscriber];
  [(QLUbiquitousItemFetcher *)self _deleteTempraryZipPackageFileIfNeeded];
  if (self->_isAccessingURL)
  {
    v3 = [(FPSandboxingURLWrapper *)self->_sandboxingWrapper url];
    [v3 stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = QLUbiquitousItemFetcher;
  [(QLUbiquitousItemFetcher *)&v4 dealloc];
}

- (BOOL)isLongFetchOperation
{
  fileURL = [(QLUbiquitousItemFetcher *)self fileURL];
  startAccessingSecurityScopedResource = [fileURL startAccessingSecurityScopedResource];

  fileURL2 = [(QLUbiquitousItemFetcher *)self fileURL];
  _QLDownloadingStatusIsNotCurrent = [fileURL2 _QLDownloadingStatusIsNotCurrent];

  if (startAccessingSecurityScopedResource)
  {
    fileURL3 = [(QLUbiquitousItemFetcher *)self fileURL];
    [fileURL3 stopAccessingSecurityScopedResource];
  }

  return _QLDownloadingStatusIsNotCurrent;
}

- (id)itemSize
{
  sizeTotalUnitCount = self->_sizeTotalUnitCount;
  if (sizeTotalUnitCount)
  {
    _QLUrlFileSize = sizeTotalUnitCount;
  }

  else
  {
    fileURL = [(QLUbiquitousItemFetcher *)self fileURL];
    startAccessingSecurityScopedResource = [fileURL startAccessingSecurityScopedResource];

    fileURL2 = [(QLUbiquitousItemFetcher *)self fileURL];
    _QLUrlFileSize = [fileURL2 _QLUrlFileSize];

    if (startAccessingSecurityScopedResource)
    {
      fileURL3 = [(QLUbiquitousItemFetcher *)self fileURL];
      [fileURL3 stopAccessingSecurityScopedResource];
    }
  }

  return _QLUrlFileSize;
}

- (id)fetchedContent
{
  fetchingState = [(QLItemFetcher *)self fetchingState];
  if (fetchingState)
  {
    fetchingState = [(QLUbiquitousItemFetcher *)self fileURL];
  }

  return fetchingState;
}

- (id)newItemProvider
{
  v3 = objc_opt_new();
  fileURL = [(QLUbiquitousItemFetcher *)self fileURL];
  v5 = [fileURL copy];

  v6 = [MEMORY[0x277CDAB20] UTIForURL:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__QLUbiquitousItemFetcher_newItemProvider__block_invoke;
  v9[3] = &unk_279AE1450;
  v10 = v5;
  v7 = v5;
  [v3 registerFileRepresentationForTypeIdentifier:v6 fileOptions:0 visibility:0 loadHandler:v9];

  return v3;
}

- (void)_removeUpdateBlockIfNeeded:(id)needed
{
  neededCopy = needed;
  if (neededCopy)
  {
    v8 = neededCopy;
    v5 = self->_updateBlocks;
    objc_sync_enter(v5);
    updateBlocks = self->_updateBlocks;
    v7 = MEMORY[0x266708AD0](v8);
    [(NSMutableArray *)updateBlocks removeObject:v7];

    objc_sync_exit(v5);
    neededCopy = v8;
  }
}

- (id)_createURLForPackageIfNeeded
{
  v48 = *MEMORY[0x277D85DE8];
  fileURL = [(QLUbiquitousItemFetcher *)self fileURL];
  _QLIsPackageURL = [fileURL _QLIsPackageURL];

  if ((_QLIsPackageURL & 1) == 0)
  {
    fileURL2 = [(QLUbiquitousItemFetcher *)self fileURL];
    goto LABEL_5;
  }

  zipPackageUrlHandler = self->_zipPackageUrlHandler;
  if (zipPackageUrlHandler)
  {
    fileURL2 = [(QLURLHandler *)zipPackageUrlHandler fileURL];
LABEL_5:
    fileURL6 = fileURL2;
    goto LABEL_6;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v11 = MEMORY[0x277CBEBC0];
  v12 = MEMORY[0x277CCACA8];
  v13 = NSTemporaryDirectory();
  v14 = [v12 stringWithFormat:@"%@%@", v13, uUIDString];
  v15 = [v11 fileURLWithPath:v14];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v38 = 0;
  v17 = [defaultManager createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v38];
  v18 = v38;
  if (v18)
  {
    v17 = 0;
  }

  if (v17)
  {
    fileURL3 = [(QLUbiquitousItemFetcher *)self fileURL];
    lastPathComponent = [fileURL3 lastPathComponent];
    v21 = [v15 URLByAppendingPathComponent:lastPathComponent];

    *&v43 = 0;
    *(&v43 + 1) = &v43;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy_;
    v46 = __Block_byref_object_dispose_;
    v47 = 0;
    v22 = objc_opt_new();
    fileURL4 = [(QLUbiquitousItemFetcher *)self fileURL];
    v37 = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __55__QLUbiquitousItemFetcher__createURLForPackageIfNeeded__block_invoke;
    v34[3] = &unk_279AE1478;
    v24 = v21;
    v35 = v24;
    v36 = &v43;
    [v22 coordinateReadingItemAtURL:fileURL4 options:8 error:&v37 byAccessor:v34];
    v25 = v37;

    if (v25)
    {
      v26 = MEMORY[0x277D43EF8];
      v27 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v27 = *v26;
      }

      v28 = v27;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        fileURL5 = [(QLUbiquitousItemFetcher *)self fileURL];
        *buf = 138412546;
        v40 = fileURL5;
        v41 = 2112;
        v42 = v25;
        _os_log_impl(&dword_261653000, v28, OS_LOG_TYPE_ERROR, "Could not do a coordinated read for directory at URL: %@ (%@). #PreviewItem", buf, 0x16u);
      }
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277CDAB18]);
      v33 = [v32 initWithURL:*(*(&v43 + 1) + 40) sandboxType:*MEMORY[0x277CDAB68]];
      v28 = self->_zipPackageUrlHandler;
      self->_zipPackageUrlHandler = v33;
    }

    fileURL6 = [(QLURLHandler *)self->_zipPackageUrlHandler fileURL];

    _Block_object_dispose(&v43, 8);
  }

  else
  {
    v30 = MEMORY[0x277D43EF8];
    v31 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v43) = 138412290;
      *(&v43 + 4) = v18;
      _os_log_impl(&dword_261653000, v31, OS_LOG_TYPE_ERROR, "Could not create temporary folder for data item with error: %@ #PreviewItem", &v43, 0xCu);
    }

    fileURL6 = 0;
  }

LABEL_6:

  return fileURL6;
}

void __55__QLUbiquitousItemFetcher__createURLForPackageIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = *(a1 + 32);
  v10 = 0;
  [v4 copyItemAtURL:v3 toURL:v5 error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v12 = v3;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Could not copy zipped folder at URL (%@) to URL (%@). Error: %@ #PreviewItem", buf, 0x20u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  }
}

- (void)_deleteTempraryZipPackageFileIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_zipPackageUrlHandler)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileURL = [(QLURLHandler *)self->_zipPackageUrlHandler fileURL];
    path = [fileURL path];
    v6 = [defaultManager fileExistsAtPath:path];

    if (v6)
    {
      fileURL2 = [(QLURLHandler *)self->_zipPackageUrlHandler fileURL];
      v13 = 0;
      v8 = [defaultManager removeItemAtURL:fileURL2 error:&v13];
      v9 = v13;

      if ((v8 & 1) == 0)
      {
        v10 = MEMORY[0x277D43EF8];
        v11 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v11 = *v10;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v15 = v9;
          _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_ERROR, "Could not delete temporary zip file for folder URL with error: %@ #PreviewItem", buf, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
    }

    zipPackageUrlHandler = self->_zipPackageUrlHandler;
    self->_zipPackageUrlHandler = 0;

LABEL_10:
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = QLUbiquitousItemFetcher;
  coderCopy = coder;
  [(QLItemFetcher *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sandboxingWrapper forKey:{@"sandboxingWrapper", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_zipPackageUrlHandler forKey:@"zipPackageUrlHandler"];
  [coderCopy encodeBool:self->_shouldZipPackageIfNeeded forKey:@"shouldZipPackageIfNeeded"];
}

- (QLUbiquitousItemFetcher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = QLUbiquitousItemFetcher;
  v5 = [(QLItemFetcher *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    updateBlocks = v5->_updateBlocks;
    v5->_updateBlocks = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxingWrapper"];
    sandboxingWrapper = v5->_sandboxingWrapper;
    v5->_sandboxingWrapper = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zipPackageUrlHandler"];
    zipPackageUrlHandler = v5->_zipPackageUrlHandler;
    v5->_zipPackageUrlHandler = v10;

    v5->_shouldZipPackageIfNeeded = [coderCopy decodeBoolForKey:@"shouldZipPackageIfNeeded"];
    v12 = v5;
  }

  return v5;
}

@end