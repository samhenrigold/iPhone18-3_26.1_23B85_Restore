@interface MKPhotoLibrary
- (BOOL)copy:(id)copy filename:(id)filename error:(id *)error;
- (BOOL)photoLibraryDidComplete:(id)complete filename:(id)filename originalFilename:(id)originalFilename success:(BOOL)success error:(id *)error;
- (MKPhotoLibrary)init;
- (MKPhotoLibrary)initWithContentType:(unint64_t)type;
- (id)addAsset:(id)asset;
- (id)assetCollection:(id)collection;
- (id)assetCollectionChangeRequest:(id)request;
- (unint64_t)assetCount:(id)count;
- (unint64_t)countForCollection:(id)collection error:(id *)error;
- (void)addAsset:(id)asset filename:(id)filename originalFilename:(id)originalFilename size:(unint64_t)size completion:(id)completion;
- (void)sendAnalytics;
- (void)setCollection:(id)collection forLocalIdentifiers:(id)identifiers;
@end

@implementation MKPhotoLibrary

- (MKPhotoLibrary)init
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = MKPhotoLibrary;
  v2 = [(MKPhotoLibrary *)&v26 init];
  v3 = v2;
  if (v2)
  {
    [(MKPhotoLibrary *)v2 setContentType:0];
    v4 = objc_alloc_init(MKFileProvider);
    fetchRootPath = [(MKFileProvider *)v4 fetchRootPath];

    if (fetchRootPath)
    {
      v6 = MKLocalizedString(@"MOVE_TO_IOS");
      v7 = [fetchRootPath stringByAppendingPathComponent:v6];
      [(MKPhotoLibrary *)v3 setRootPath:v7];

      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        rootPath = v3->_rootPath;
        *buf = 138412290;
        v28 = rootPath;
        _os_log_impl(&dword_2592D2000, v8, OS_LOG_TYPE_INFO, "file_storage=%@", buf, 0xCu);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [defaultManager fileExistsAtPath:v3->_rootPath];

      if ((v11 & 1) == 0)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v13 = v3->_rootPath;
        v25 = 0;
        [defaultManager2 createDirectoryAtPath:v13 withIntermediateDirectories:0 attributes:0 error:&v25];
        v14 = v25;

        if (v14)
        {
          v15 = +[MKLog log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [(MKPhotoLibrary *)v14 init:v15];
          }
        }
      }
    }

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    importErrors = v3->_importErrors;
    v3->_importErrors = v22;
  }

  return v3;
}

- (MKPhotoLibrary)initWithContentType:(unint64_t)type
{
  v4 = [(MKPhotoLibrary *)self init];
  v5 = v4;
  if (v4)
  {
    [(MKPhotoLibrary *)v4 setContentType:type];
    v6 = type == 0;
    if (type)
    {
      v7 = 10;
    }

    else
    {
      v7 = 9;
    }

    v8 = off_2798DB348;
    if (!v6)
    {
      v8 = off_2798DB388;
    }

    v9 = objc_alloc_init(*v8);
    decoder = v5->_decoder;
    v5->_decoder = v9;

    v11 = [[MKImportAnalytics alloc] initWithContentType:v7];
    analytics = v5->_analytics;
    v5->_analytics = v11;
  }

  return v5;
}

- (void)sendAnalytics
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_importCount || [(NSMutableSet *)self->_importErrors count])
  {
    v3 = [(NSMutableSet *)self->_importErrors count];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_importErrors;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(MKImportAnalytics *)self->_analytics send:*(*(&v9 + 1) + 8 * v8++), v9];
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(MKImportAnalytics *)self->_analytics complete:v3 == 0];
  }
}

- (void)addAsset:(id)asset filename:(id)filename originalFilename:(id)originalFilename size:(unint64_t)size completion:(id)completion
{
  v56[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  filenameCopy = filename;
  originalFilenameCopy = originalFilename;
  completionCopy = completion;
  if (assetCopy && filenameCopy)
  {
    v16 = size == 0;
    v17 = +[MKLog log];
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(MKPhotoLibrary *)v18 addAsset:v25 filename:v26 originalFilename:v27 size:v28 completion:v29, v30, v31];
      }

      if (completionCopy)
      {
        v32 = MEMORY[0x277CCA9B8];
        v53 = *MEMORY[0x277CCA450];
        v54 = @"detected an invalid asset because the file size was zero.";
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v34 = [v32 errorWithDomain:@"MKPhotoLibraryError" code:1 userInfo:v33];

        (*(completionCopy + 2))(completionCopy, 0, 0, 0, v34);
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2592D2000, v18, OS_LOG_TYPE_INFO, "PHPhotoLibrary will import an asset.", buf, 2u);
      }

      *buf = 0;
      v48 = buf;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__1;
      v51 = __Block_byref_object_dispose__1;
      v52 = 0;
      objc_initWeak(&location, self);
      mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __69__MKPhotoLibrary_addAsset_filename_originalFilename_size_completion___block_invoke;
      v42[3] = &unk_2798DCEF8;
      objc_copyWeak(&v45, &location);
      v44 = buf;
      v20 = assetCopy;
      v43 = v20;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __69__MKPhotoLibrary_addAsset_filename_originalFilename_size_completion___block_invoke_2;
      v35[3] = &unk_2798DCF20;
      objc_copyWeak(&v41, &location);
      v40 = buf;
      v36 = v20;
      v37 = filenameCopy;
      v38 = originalFilenameCopy;
      v39 = completionCopy;
      [mEMORY[0x277CD9948] performChanges:v42 completionHandler:v35];

      objc_destroyWeak(&v41);
      objc_destroyWeak(&v45);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v21 = +[MKLog log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MKPhotoLibrary addAsset:assetCopy filename:filenameCopy originalFilename:v21 size:? completion:?];
    }

    if (completionCopy)
    {
      v22 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA450];
      v56[0] = @"detected an invalid asset because either path or filename is nil.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
      v24 = [v22 errorWithDomain:@"MKPhotoLibraryError" code:1 userInfo:v23];

      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v24);
    }
  }
}

void __69__MKPhotoLibrary_addAsset_filename_originalFilename_size_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained addAsset:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __69__MKPhotoLibrary_addAsset_filename_originalFilename_size_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "PHPhotoLibrary did import an asset. success=%d, error=%@", buf, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = [v5 code];
  if (v10 != 3301)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v16 = v5;
    a2 = [WeakRetained photoLibraryDidComplete:v11 filename:v12 originalFilename:v13 success:a2 error:&v16];
    v14 = v16;

    v5 = v14;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v10 == 3301, *(*(*(a1 + 64) + 8) + 40), v5);
  }
}

- (unint64_t)countForCollection:(id)collection error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = objc_autoreleasePoolPush();
  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__MKPhotoLibrary_countForCollection_error___block_invoke;
  v14[3] = &unk_2798DCF48;
  v14[4] = self;
  v9 = collectionCopy;
  v15 = v9;
  v16 = &v17;
  [mEMORY[0x277CD9948] performChangesAndWait:v14 error:error];

  objc_autoreleasePoolPop(v7);
  v10 = +[MKLog log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (error)
    {
      v11 = *error;
    }

    else
    {
      v11 = 0;
    }

    *buf = 138412290;
    v22 = v11;
    _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "PHPhotoLibrary did set collections. error=%@", buf, 0xCu);
  }

  v12 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v12;
}

void __43__MKPhotoLibrary_countForCollection_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetCollection:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) assetCount:v2];
}

- (void)setCollection:(id)collection forLocalIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  identifiersCopy = identifiers;
  if ([collectionCopy length] && objc_msgSend(identifiersCopy, "count"))
  {
    v8 = objc_autoreleasePoolPush();
    mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__MKPhotoLibrary_setCollection_forLocalIdentifiers___block_invoke;
    v13[3] = &unk_2798DCF70;
    v13[4] = self;
    v14 = collectionCopy;
    v15 = identifiersCopy;
    v12 = 0;
    [mEMORY[0x277CD9948] performChangesAndWait:v13 error:&v12];
    v10 = v12;

    objc_autoreleasePoolPop(v8);
    v11 = +[MKLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "PHPhotoLibrary did set collections. error=%@", buf, 0xCu);
    }
  }
}

void __52__MKPhotoLibrary_setCollection_forLocalIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetCollectionChangeRequest:*(a1 + 40)];
  if (v2)
  {
    v5 = v2;
    v3 = objc_opt_new();
    v4 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:*(a1 + 48) options:v3];
    [v5 addAssets:v4];

    v2 = v5;
  }
}

- (id)addAsset:(id)asset
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:asset];
  if (self->_contentType)
  {
    [MEMORY[0x277CD97D0] creationRequestForAssetFromVideoAtFileURL:v4];
  }

  else
  {
    [MEMORY[0x277CD97D0] creationRequestForAssetFromImageAtFileURL:v4];
  }
  v5 = ;
  [v5 setReduceProcessingForIngest:1];
  placeholderForCreatedAsset = [v5 placeholderForCreatedAsset];
  localIdentifier = [placeholderForCreatedAsset localIdentifier];

  return localIdentifier;
}

- (BOOL)photoLibraryDidComplete:(id)complete filename:(id)filename originalFilename:(id)originalFilename success:(BOOL)success error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  filenameCopy = filename;
  originalFilenameCopy = originalFilename;
  if (success)
  {
    ++self->_importCount;
    v15 = 1;
    if (!error)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (!error)
  {
    code = 0;
    domain = @"unknown";
    goto LABEL_9;
  }

  domain = [*error domain];
  code = [*error code];
  if (code != 3302)
  {
LABEL_9:
    3302 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", domain, code];
    [(NSMutableSet *)self->_importErrors addObject:3302];
    goto LABEL_10;
  }

  if (!self->_decoder)
  {
    goto LABEL_11;
  }

  3302 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", domain, 3302];
  [(NSMutableSet *)self->_importErrors addObject:3302];
  v19 = [(MKAssetDecoder *)self->_decoder extractFormatOfAsset:completeCopy];
  analytics = self->_analytics;
  [completeCopy pathExtension];
  v22 = v21 = domain;
  [(MKImportAnalytics *)analytics send:v19 extension:v22];

  domain = v21;
  decoder = self->_decoder;
  self->_decoder = 0;

LABEL_10:
LABEL_11:
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([originalFilenameCopy length])
  {
    v39 = domain;
    v40 = filenameCopy;
    [v24 addObject:originalFilenameCopy];
    rootPath = self->_rootPath;
    stringByDeletingLastPathComponent = [originalFilenameCopy stringByDeletingLastPathComponent];
    v27 = [(NSString *)rootPath stringByAppendingPathComponent:stringByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v45 = 0;
    v29 = [defaultManager createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v45];
    v30 = v45;

    v31 = +[MKLog log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v30 description];
      *buf = 67109379;
      v48 = v29;
      v49 = 2113;
      v50 = v32;
      _os_log_impl(&dword_2592D2000, v31, OS_LOG_TYPE_INFO, "did create directory. success=%d, error=%{private}@", buf, 0x12u);
    }

    domain = v39;
    filenameCopy = v40;
  }

  [v24 addObject:filenameCopy];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = v24;
  v34 = [v33 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v42;
    while (2)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(v33);
        }

        if ([(MKPhotoLibrary *)self copy:completeCopy filename:*(*(&v41 + 1) + 8 * i) error:error])
        {
          v15 = 1;
          goto LABEL_25;
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_25:

  if (error)
  {
LABEL_26:
    if (v15)
    {
      *error = 0;
    }
  }

LABEL_28:

  return v15;
}

- (BOOL)copy:(id)copy filename:(id)filename error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  filenameCopy = filename;
  rootPath = self->_rootPath;
  if (rootPath)
  {
    v11 = [(NSString *)rootPath stringByAppendingPathComponent:filenameCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v11])
    {
      errorCopy = error;
      v34 = copyCopy;
      stringByDeletingPathExtension = [filenameCopy stringByDeletingPathExtension];
      v33 = filenameCopy;
      pathExtension = [filenameCopy pathExtension];
      v15 = 2;
      v16 = 2147483645;
      while (1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %ld", stringByDeletingPathExtension, v15];
        if ([pathExtension length])
        {
          v18 = [v17 stringByAppendingFormat:@".%@", pathExtension];

          v17 = v18;
        }

        v19 = [(NSString *)self->_rootPath stringByAppendingPathComponent:v17];

        v20 = [defaultManager fileExistsAtPath:v19];
        if ((v20 & 1) == 0)
        {
          break;
        }

        ++v15;
        v11 = v19;
        if (!--v16)
        {

          LOBYTE(v21) = 0;
          filenameCopy = v33;
          copyCopy = v34;
          goto LABEL_20;
        }
      }

      filenameCopy = v33;
      copyCopy = v34;
      error = errorCopy;
    }

    else
    {
      v19 = v11;
    }

    v21 = [defaultManager moveItemAtPath:copyCopy toPath:v19 error:error];
    v29 = +[MKLog log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v36 = v21;
      _os_log_impl(&dword_2592D2000, v29, OS_LOG_TYPE_INFO, "Local File Storage did import an asset. success=%d", buf, 8u);
    }

    v30 = v21 ^ 1;
    if (!error)
    {
      v30 = 1;
    }

    if ((v30 & 1) == 0)
    {
      *error = 0;
      LOBYTE(v21) = 1;
    }
  }

  else
  {
    v22 = +[MKLog log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(MKPhotoLibrary *)self copy:v22 filename:v23 error:v24, v25, v26, v27, v28];
    }

    LOBYTE(v21) = 0;
  }

LABEL_20:

  return v21;
}

- (id)assetCollectionChangeRequest:(id)request
{
  requestCopy = request;
  v5 = [(MKPhotoLibrary *)self assetCollection:requestCopy];
  if (v5)
  {
    [MEMORY[0x277CD97C0] changeRequestForAssetCollection:v5];
  }

  else
  {
    [MEMORY[0x277CD97C0] creationRequestForAssetCollectionWithTitle:requestCopy];
  }
  v6 = ;

  return v6;
}

- (id)assetCollection:(id)collection
{
  collectionCopy = collection;
  v4 = objc_opt_new();
  collectionCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"localizedTitle = %@", collectionCopy];

  [v4 setPredicate:collectionCopy];
  v6 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:2 options:v4];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (unint64_t)assetCount:(id)count
{
  if (!count)
  {
    return 0;
  }

  v3 = MEMORY[0x277CD97A8];
  countCopy = count;
  v5 = objc_opt_new();
  v6 = [v3 fetchAssetsInAssetCollection:countCopy options:v5];

  v7 = [v6 count];
  return v7;
}

@end