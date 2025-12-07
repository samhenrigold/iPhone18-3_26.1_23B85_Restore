@interface MSPublishMMCSProtocol
- (MSPublishMMCSProtocol)initWithPersonID:(id)d;
- (id)_getUTIFromItem:(unint64_t)item;
- (int)_getFileDescriptorFromItem:(unint64_t)item;
- (void)_putItemDone:(unint64_t)done putReceipt:(id)receipt error:(id)error;
- (void)_putItemsFailure;
- (void)_requestCompleted;
- (void)computeHashForAsset:(id)asset;
- (void)deactivate;
- (void)dealloc;
- (void)publishAssets:(id)assets URL:(id)l;
@end

@implementation MSPublishMMCSProtocol

- (void)_putItemsFailure
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_opt_class();
    v17 = v16;
    personID = [(MSMMCSProtocol *)self personID];
    *buf = 138543618;
    v26 = v16;
    v27 = 2112;
    v28 = personID;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ _putItemsFailure", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_itemIDToAssetDict;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(NSMutableDictionary *)self->_itemIDToAssetDict objectForKey:*(*(&v20 + 1) + 8 * v6)];
        delegate = self->_delegate;
        v9 = MEMORY[0x277CCA9B8];
        v10 = MSCFCopyLocalizedString(@"ERROR_PUBLISH_STORAGE_CANNOT_QUEUE");
        v11 = [v9 MSErrorWithDomain:@"MSPublishStorageProtocolErrorDomain" code:0 description:v10];
        [(MSPublishStorageProtocolDelegate *)delegate publishStorageProtocol:self didFinishUploadingAsset:v7 error:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  itemIDs = self->_itemIDs;
  if (itemIDs)
  {
    free(itemIDs);
    self->_itemIDs = 0;
  }

  signatures = self->_signatures;
  if (signatures)
  {
    free(signatures);
    self->_signatures = 0;
  }

  authTokens = self->_authTokens;
  if (authTokens)
  {
    free(authTokens);
    self->_authTokens = 0;
  }

  itemFlags = self->_itemFlags;
  if (itemFlags)
  {
    free(itemFlags);
    self->_itemFlags = 0;
  }

  [(NSMutableDictionary *)self->_itemIDToAssetDict removeAllObjects];
}

- (void)_requestCompleted
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v11;
    personID = [(MSMMCSProtocol *)self personID];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = personID;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ _requestCompleted", &v14, 0x16u);
  }

  if (self->_itemsInFlight)
  {
    v3 = 0;
    do
    {
      v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:self->_itemIDs[v3]];
      v5 = [(NSMutableDictionary *)self->_itemIDToAssetDict objectForKey:v4];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(MSPublishStorageProtocolDelegate *)self->_delegate publishStorageProtocol:self didFinishUsingFD:0xFFFFFFFFLL forAsset:v5];
      }

      [(NSMutableDictionary *)self->_itemIDToAssetDict removeObjectForKey:v4];
      v6 = self->_authTokens[v3];
      if (v6)
      {
        free(v6);
        self->_authTokens[v3] = 0;
      }

      ++v3;
    }

    while (v3 < self->_itemsInFlight);
  }

  itemIDs = self->_itemIDs;
  if (itemIDs)
  {
    free(itemIDs);
    self->_itemIDs = 0;
  }

  signatures = self->_signatures;
  if (signatures)
  {
    free(signatures);
    self->_signatures = 0;
  }

  authTokens = self->_authTokens;
  if (authTokens)
  {
    free(authTokens);
    self->_authTokens = 0;
  }

  itemFlags = self->_itemFlags;
  if (itemFlags)
  {
    free(itemFlags);
    self->_itemFlags = 0;
  }

  [(NSMutableDictionary *)self->_itemIDToAssetDict removeAllObjects];
  [(MSPublishStorageProtocolDelegate *)self->_delegate publishStorageProtocolDidFinishPublishingAllAssets:self];
}

- (void)_putItemDone:(unint64_t)done putReceipt:(id)receipt error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  receiptCopy = receipt;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D25460]])
  {
    code = [errorCopy code];

    if (code != 28)
    {
      goto LABEL_5;
    }

    v12 = MEMORY[0x277CCA9B8];
    domain = MSCFCopyLocalizedString(@"ERROR_PUBLISH_STORAGE_NEED_RESUBMISSION");
    v13 = [v12 MSErrorWithDomain:@"MSPublishStorageProtocolErrorDomain" code:2 description:domain underlyingError:errorCopy];

    errorCopy = v13;
  }

LABEL_5:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = v17;
    personID = [(MSMMCSProtocol *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v21 = 138543874;
    v22 = v17;
    v23 = 2112;
    v24 = personID;
    v25 = 2114;
    v26 = mSVerboseDescription;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ _putItemDone. Error: %{public}@", &v21, 0x20u);
  }

  itemIDToAssetDict = self->_itemIDToAssetDict;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:done];
  v16 = [(NSMutableDictionary *)itemIDToAssetDict objectForKey:v15];

  if (v16)
  {
    if (!errorCopy)
    {
      [v16 setMMCSReceipt:receiptCopy];
    }

    [(MSPublishStorageProtocolDelegate *)self->_delegate publishStorageProtocol:self didFinishUploadingAsset:v16 error:errorCopy];
  }
}

- (void)publishAssets:(id)assets URL:(id)l
{
  v41 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  lCopy = l;
  v7 = [assetsCopy count];
  v8 = 56;
  self->_itemIDs = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  self->_signatures = malloc_type_malloc(8 * v7, 0x10040436913F5uLL);
  self->_authTokens = malloc_type_malloc(8 * v7, 0xC0040B8AA526DuLL);
  self->_itemFlags = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  self->_itemsInFlight = v7;
  if (v7)
  {
    v9 = 0;
    v30 = assetsCopy;
    do
    {
      v10 = [assetsCopy objectAtIndex:v9];
      metadata = [v10 metadata];
      v12 = [metadata objectForKey:@"MSAssetMetadataItemID"];
      mMCSAccessHeader = [v10 MMCSAccessHeader];
      [(NSMutableDictionary *)self->_itemIDToAssetDict setObject:v10 forKey:v12];
      (*(&self->super.super.isa + v8))[v9] = [v12 unsignedLongLongValue];
      [v10 fileHash];
      v14 = v8;
      v16 = v15 = v7;
      self->_signatures[v9] = [v16 bytes];

      v17 = [mMCSAccessHeader cStringUsingEncoding:4];
      v18 = strlen(v17);
      self->_authTokens[v9] = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
      v19 = v17;
      v7 = v15;
      v8 = v14;
      strcpy(self->_authTokens[v9], v19);
      self->_itemFlags[v9] = 1;

      assetsCopy = v30;
      ++v9;
    }

    while (v7 != v9);
  }

  v32 = 0;
  [(MSMMCSProtocol *)self engine];
  [(MSMMCSProtocol *)self personID];
  MSPMMCSConnectionProperties();
  itemFlags = self->_itemFlags;
  authTokens = self->_authTokens;
  v20 = 0;
  if (!MMCSPutItems())
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = MSCFCopyLocalizedString(@"ERROR_PUBLISH_STORAGE_CANNOT_PUBLISH");
    v20 = [v21 MSErrorWithDomain:@"MSPublishStorageProtocolErrorDomain" code:1 description:{v22, authTokens, itemFlags, &v32}];
  }

  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = v23;
      personID = [(MSMMCSProtocol *)self personID];
      mSVerboseDescription = [v20 MSVerboseDescription];
      *buf = 138544130;
      v34 = v23;
      v35 = 2112;
      v36 = personID;
      v37 = 2114;
      v38 = assetsCopy;
      v39 = 2114;
      v40 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed to publish assets: %{public}@\nError: %{public}@", buf, 0x2Au);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__MSPublishMMCSProtocol_publishAssets_URL___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)_getUTIFromItem:(unint64_t)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemIDToAssetDict = self->_itemIDToAssetDict;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)itemIDToAssetDict objectForKey:v6];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = v8;
      personID = [(MSMMCSProtocol *)self personID];
      mMCSItemType = [v7 MMCSItemType];
      v17 = 138544130;
      v18 = v8;
      v19 = 2112;
      v20 = personID;
      v21 = 2048;
      itemCopy2 = item;
      v23 = 2114;
      v24 = mMCSItemType;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ retrieved MMCSItemType for itemID %llu. ItemType: %{public}@", &v17, 0x2Au);
    }

    mMCSItemType2 = [v7 MMCSItemType];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      personID2 = [(MSMMCSProtocol *)self personID];
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = personID2;
      v21 = 2048;
      itemCopy2 = item;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ attempted to get UTI for unknown itemID %llu", &v17, 0x20u);
    }

    mMCSItemType2 = 0;
  }

  return mMCSItemType2;
}

- (int)_getFileDescriptorFromItem:(unint64_t)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemIDToAssetDict = self->_itemIDToAssetDict;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v7 = [(NSMutableDictionary *)itemIDToAssetDict objectForKey:v6];

  if (v7)
  {
    v8 = [(MSPublishStorageProtocolDelegate *)self->_delegate publishStorageProtocol:self didRequestFDForAsset:v7];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = v9;
      personID = [(MSMMCSProtocol *)self personID];
      v16 = 138544130;
      v17 = v9;
      v18 = 2112;
      v19 = personID;
      v20 = 2048;
      itemCopy2 = item;
      v22 = 1024;
      v23 = v8;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ retrieving file descriptor for item %llu, returned %d.", &v16, 0x26u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = v13;
      personID2 = [(MSMMCSProtocol *)self personID];
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = personID2;
      v20 = 2048;
      itemCopy2 = item;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ attempted to get file descriptor for unknown itemID %llu", &v16, 0x20u);
    }

    v8 = -1;
  }

  return v8;
}

- (void)computeHashForAsset:(id)asset
{
  v28 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = [MSMMCSProtocol computeItemIDForAsset:assetCopy];
  [v5 unsignedLongLongValue];
  [(NSMutableDictionary *)self->_itemIDToAssetDict setObject:assetCopy forKey:v5];
  [(MSMMCSProtocol *)self engine];
  if (MMCSRegisterFile())
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:MEMORY[0x245D7B450](0)];
    free(0);
    [assetCopy setFileHash:v6];
    [assetCopy setProtocolFileSize:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = v14;
    personID = [(MSMMCSProtocol *)self personID];
    mSVerboseDescription = [0 MSVerboseDescription];
    *buf = 138544130;
    v21 = v14;
    v22 = 2112;
    v23 = personID;
    v24 = 2114;
    v25 = assetCopy;
    v26 = 2114;
    v27 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Could not compute signature for asset. Ignoring. %{public}@\nError: %{public}@", buf, 0x2Au);
  }

  [(NSMutableDictionary *)self->_itemIDToAssetDict removeObjectForKey:v5];
  if (objc_opt_respondsToSelector())
  {
    [(MSPublishStorageProtocolDelegate *)self->_delegate publishStorageProtocol:self didFinishUsingFD:0xFFFFFFFFLL forAsset:assetCopy];
  }

  metadata = [assetCopy metadata];
  v8 = [metadata objectForKey:@"MSAssetMetadataSHA1HashKey"];

  if (!v8)
  {
    v9 = [(MSPublishStorageProtocolDelegate *)self->_delegate publishStorageProtocol:self didRequestFDForAsset:assetCopy];
    if ((v9 & 0x80000000) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v18 = objc_opt_class();
      v11 = v18;
      personID2 = [(MSMMCSProtocol *)self personID];
      *buf = 138543874;
      v21 = v18;
      v22 = 2112;
      v23 = personID2;
      v24 = 2114;
      v25 = assetCopy;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Could not compute hash for asset. Ignoring. %{public}@", buf, 0x20u);
    }

    else
    {
      v10 = v9;
      v11 = MSSHA1HashForFileDescriptor(v9);
      if (v11)
      {
        metadata2 = [assetCopy metadata];
        v13 = [metadata2 mutableCopy];

        [v13 setObject:v11 forKey:@"MSAssetMetadataSHA1HashKey"];
        [assetCopy setMetadata:v13];
      }

      [(MSPublishStorageProtocolDelegate *)self->_delegate publishStorageProtocol:self didFinishUsingFD:v10 forAsset:assetCopy];
    }
  }

LABEL_14:
}

- (void)dealloc
{
  [(MSPublishMMCSProtocol *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSPublishMMCSProtocol;
  [(MSMMCSProtocol *)&v3 dealloc];
}

- (void)deactivate
{
  v4.receiver = self;
  v4.super_class = MSPublishMMCSProtocol;
  [(MSMMCSProtocol *)&v4 deactivate];
  itemIDToAssetDict = self->_itemIDToAssetDict;
  self->_itemIDToAssetDict = 0;
}

- (MSPublishMMCSProtocol)initWithPersonID:(id)d
{
  dCopy = d;
  v5 = MSPathPublishMMCSLibraryForPersonID(dCopy);
  v10.receiver = self;
  v10.super_class = MSPublishMMCSProtocol;
  v6 = [(MSMMCSProtocol *)&v10 initWithPersonID:dCopy path:v5];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemIDToAssetDict = v6->_itemIDToAssetDict;
    v6->_itemIDToAssetDict = v7;
  }

  return v6;
}

@end