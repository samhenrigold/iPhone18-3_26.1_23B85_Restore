@interface MSSubscribeMMCSProtocol
- (MSSubscribeMMCSProtocol)initWithPersonID:(id)d;
- (void)_getItemDone:(unint64_t)done path:(id)path error:(id)error;
- (void)_requestCompleted;
- (void)_tellDelegateProtocolDidFinishRetrievingAssetParams:(id)params;
- (void)deactivate;
- (void)dealloc;
- (void)retrieveAssets:(id)assets;
@end

@implementation MSSubscribeMMCSProtocol

- (void)_requestCompleted
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSMMCSProtocol *)self personID];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = personID;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Finished retrieving assets.", &v10, 0x16u);
  }

  itemCount = self->_itemCount;
  if (itemCount)
  {
    for (i = 0; i < itemCount; ++i)
    {
      v5 = self->_authTokens[i];
      if (v5)
      {
        free(v5);
        itemCount = self->_itemCount;
      }
    }
  }

  itemIDToAssetDict = self->_itemIDToAssetDict;
  self->_itemIDToAssetDict = 0;

  free(self->_itemIDs);
  self->_itemIDs = 0;
  free(self->_signatures);
  self->_signatures = 0;
  free(self->_authTokens);
  self->_authTokens = 0;
  self->_itemCount = 0;
  [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocolDidFinishRetrievingAllAssets:self];
}

- (void)_getItemDone:(unint64_t)done path:(id)path error:(id)error
{
  v42 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:done];
  v11 = [(NSMutableDictionary *)self->_itemIDToAssetDict objectForKey:v10];
  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = v16;
      personID = [(MSMMCSProtocol *)self personID];
      mSVerboseDescription = [errorCopy MSVerboseDescription];
      v32 = 138544386;
      v33 = v16;
      v34 = 2112;
      v35 = personID;
      v36 = 2114;
      doneCopy = v11;
      v38 = 2112;
      v39 = pathCopy;
      v40 = 2114;
      v41 = mSVerboseDescription;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Retrieved file for asset %{public}@ at path %@, error %{public}@", &v32, 0x34u);
    }

    [v11 setPath:pathCopy];
    [v11 setError:errorCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      personID2 = [(MSMMCSProtocol *)self personID];
      mSVerboseDescription2 = [errorCopy MSVerboseDescription];
      v32 = 138544130;
      v33 = v20;
      v34 = 2112;
      v35 = personID2;
      v36 = 2114;
      doneCopy = v11;
      v38 = 2114;
      v39 = mSVerboseDescription2;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Retreived asset %{public}@ with error %{public}@", &v32, 0x2Au);

      if (pathCopy)
      {
        goto LABEL_6;
      }
    }

    else if (pathCopy)
    {
LABEL_6:
      [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:0];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtPath:pathCopy error:0];

LABEL_17:
      [(NSMutableDictionary *)self->_itemIDToAssetDict removeObjectForKey:v10];
      goto LABEL_18;
    }

    if (!errorCopy)
    {
      delegate = self->_delegate;
      v29 = MEMORY[0x277CCA9B8];
      v30 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_GET_ASSET");
      v31 = [v29 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:0 description:v30];
      [(MSSubscribeStorageProtocolDelegate *)delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:v31];

      errorCopy = 0;
      goto LABEL_17;
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D25460]])
    {
      code = [errorCopy code];

      if (code != 14)
      {
LABEL_15:
        [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:errorCopy];
        goto LABEL_17;
      }

      v26 = MEMORY[0x277CCA9B8];
      domain = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_BAD_TOKEN");
      v27 = [v26 MSErrorWithDomain:@"MSSubscribeStorageProtocolErrorDomain" code:0 description:domain];

      errorCopy = v27;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = v13;
    personID3 = [(MSMMCSProtocol *)self personID];
    v32 = 138543874;
    v33 = v13;
    v34 = 2112;
    v35 = personID3;
    v36 = 2048;
    doneCopy = done;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Cannot find asset for item ID %lld", &v32, 0x20u);
  }

LABEL_18:
}

- (void)retrieveAssets:(id)assets
{
  v72 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v5 = [assetsCopy count];
  self->_itemCount = v5;
  if (!v5)
  {
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v49 = objc_opt_class();
    v50 = v49;
    personID = [(MSMMCSProtocol *)self personID];
    *buf = 138543874;
    *&buf[4] = v49;
    v68 = 2112;
    v69 = personID;
    v70 = 2114;
    v71 = assetsCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Begin retrieving assets %{public}@", buf, 0x20u);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:self->_itemCount];
  itemIDToAssetDict = self->_itemIDToAssetDict;
  self->_itemIDToAssetDict = v6;

  self->_itemIDs = malloc_type_calloc(self->_itemCount, 8uLL, 0x100004000313F17uLL);
  self->_signatures = malloc_type_calloc(self->_itemCount, 8uLL, 0x10040436913F5uLL);
  self->_authTokens = malloc_type_calloc(self->_itemCount, 8uLL, 0xC0040B8AA526DuLL);
  v8 = MSPlatform();
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MSPlatform();
    personID2 = [(MSMMCSProtocol *)self personID];
    mMCSURL = [v10 contentURLForPersonID:personID2];

    if (mMCSURL)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = v13;
        personID3 = [(MSMMCSProtocol *)self personID];
        *buf = 138543874;
        *&buf[4] = v13;
        v68 = 2112;
        v69 = personID3;
        v70 = 2114;
        v71 = mMCSURL;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Using contentURL %{public}@ from MSPlatform for download", buf, 0x20u);
      }

      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get contentURL from MSPlatform. Using URL from asset metadata for download", buf, 2u);
    }
  }

  v16 = [assetsCopy objectAtIndex:0];
  mMCSURL = [v16 MMCSURL];

  if (!self->_itemCount)
  {
    goto LABEL_41;
  }

LABEL_11:
  v55 = mMCSURL;
  v17 = 0;
  v18 = 0;
  do
  {
    v19 = [assetsCopy objectAtIndex:v18];
    fileHash = [v19 fileHash];
    bytes = [fileHash bytes];

    fileHash2 = [v19 fileHash];
    v23 = [fileHash2 length];

    if (v23 && v23 == MEMORY[0x245D7B450](bytes) && MEMORY[0x245D7B490](bytes))
    {
      self->_signatures[v17] = bytes;
      mMCSAccessHeader = [v19 MMCSAccessHeader];
      v25 = mMCSAccessHeader;
      if (mMCSAccessHeader && [mMCSAccessHeader length])
      {
        mMCSAccessHeader2 = [v19 MMCSAccessHeader];
        v27 = [mMCSAccessHeader2 cStringUsingEncoding:4];

        v28 = strlen(v27);
        self->_authTokens[v17] = malloc_type_malloc(v28 + 1, 0x100004077774924uLL);
        strcpy(self->_authTokens[v17], v27);
      }

      v29 = [MSMMCSProtocol computeItemIDForAsset:v19];
      self->_itemIDs[v17] = [v29 unsignedLongLongValue];
      [(NSMutableDictionary *)self->_itemIDToAssetDict setObject:v19 forKey:v29];
      ++v17;
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_ASSET_BAD_SIGNATURE");
      v32 = [v30 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:2 description:v31];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__MSSubscribeMMCSProtocol_retrieveAssets___block_invoke;
      block[3] = &unk_278E92638;
      block[4] = self;
      v64 = v19;
      v65 = v32;
      v25 = v32;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    ++v18;
  }

  while (v18 < self->_itemCount);
  mMCSURL = v55;
  if (v17)
  {
    *buf = 0;
    [(MSMMCSProtocol *)self engine];
    [(MSMMCSProtocol *)self personID];
    MSPMMCSConnectionProperties();
    authTokens = self->_authTokens;
    v53 = buf;
    v33 = MMCSGetItems();
    v34 = *buf;
    if (!v33)
    {
      v54 = assetsCopy;
      if (!*buf)
      {
        v35 = MEMORY[0x277CCA9B8];
        v36 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_RETRIEVE");
        v34 = [v35 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:5 description:{v36, authTokens, buf}];
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v37 = self->_itemIDToAssetDict;
      v38 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v60;
        v41 = MEMORY[0x277D85CD0];
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v60 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v43 = [(NSMutableDictionary *)self->_itemIDToAssetDict objectForKey:*(*(&v59 + 1) + 8 * i), authTokens, v53];
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __42__MSSubscribeMMCSProtocol_retrieveAssets___block_invoke_20;
            v56[3] = &unk_278E92638;
            v56[4] = self;
            v57 = v43;
            v58 = v34;
            v44 = v43;
            dispatch_async(v41, v56);
          }

          v39 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v59 objects:v66 count:16];
        }

        while (v39);
      }

      v45 = self->_itemIDToAssetDict;
      self->_itemIDToAssetDict = 0;

      free(self->_itemIDs);
      self->_itemIDs = 0;
      free(self->_signatures);
      self->_signatures = 0;
      free(self->_authTokens);
      self->_authTokens = 0;
      assetsCopy = v54;
      mMCSURL = v55;
    }
  }

  else
  {
LABEL_41:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v46 = objc_opt_class();
      v47 = v46;
      personID4 = [(MSMMCSProtocol *)self personID];
      *buf = 138543618;
      *&buf[4] = v46;
      v68 = 2112;
      v69 = personID4;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Nothing to retrieve.", buf, 0x16u);
    }
  }

LABEL_38:
}

void __42__MSSubscribeMMCSProtocol_retrieveAssets___block_invoke(void *a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v5[0] = @"asset";
  v5[1] = @"error";
  v3 = a1[6];
  v6[0] = v1;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 _tellDelegateProtocolDidFinishRetrievingAssetParams:v4];
}

void __42__MSSubscribeMMCSProtocol_retrieveAssets___block_invoke_20(void *a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v5[0] = @"asset";
  v5[1] = @"error";
  v3 = a1[6];
  v6[0] = v1;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 _tellDelegateProtocolDidFinishRetrievingAssetParams:v4];
}

- (void)_tellDelegateProtocolDidFinishRetrievingAssetParams:(id)params
{
  v20 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [paramsCopy objectForKey:@"asset"];
  v6 = [paramsCopy objectForKey:@"error"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSMMCSProtocol *)self personID];
    fileHash = [v5 fileHash];
    mSVerboseDescription = [v6 MSVerboseDescription];
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = personID;
    v16 = 2114;
    v17 = fileHash;
    v18 = 2114;
    v19 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed to get asset with hash %{public}@\nError: %{public}@", &v12, 0x2Au);
  }

  [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v5 error:v6];
}

- (void)dealloc
{
  [(MSSubscribeMMCSProtocol *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSSubscribeMMCSProtocol;
  [(MSMMCSProtocol *)&v3 dealloc];
}

- (void)deactivate
{
  v4.receiver = self;
  v4.super_class = MSSubscribeMMCSProtocol;
  [(MSMMCSProtocol *)&v4 deactivate];
  itemIDToAssetDict = self->_itemIDToAssetDict;
  self->_itemIDToAssetDict = 0;
}

- (MSSubscribeMMCSProtocol)initWithPersonID:(id)d
{
  dCopy = d;
  v5 = MSPathSubscribeMMCSLibraryForPersonID(dCopy);
  v8.receiver = self;
  v8.super_class = MSSubscribeMMCSProtocol;
  v6 = [(MSMMCSProtocol *)&v8 initWithPersonID:dCopy path:v5];

  return v6;
}

@end