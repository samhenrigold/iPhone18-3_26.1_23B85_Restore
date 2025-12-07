@interface ACHRemoteTemplateSource
- (ACHRemoteTemplateSource)initWithMobileAssetProvider:(id)provider backCompatWriter:(id)writer remoteTemplateAvailabilityKeyProvider:(id)keyProvider;
- (ACHTemplateAssetSourceDelegate)assetSourceDelegate;
- (id)_resourceAssetURLForTemplate:(id)template;
- (id)buildVersion;
- (id)stickerBundleURLForTemplate:(id)template;
- (int64_t)mobileAssetVersionForTemplate:(id)template;
- (void)_addAssetVersionsByUniqueNameToDictionary:(id)dictionary fromAsset:(id)asset;
- (void)_addURLsByUniqueNameToDictionary:(id)dictionary fromAsset:(id)asset;
- (void)_removeURLsByUniqueNameFromDictionary:(id)dictionary fromAsset:(id)asset;
- (void)dealloc;
- (void)templatesForDate:(id)date completion:(id)completion;
@end

@implementation ACHRemoteTemplateSource

- (id)buildVersion
{
  if (buildVersion_onceToken != -1)
  {
    [ACHRemoteTemplateSource buildVersion];
  }

  if (self->_buildVersionOverride)
  {
    buildVersionOverride = self->_buildVersionOverride;
  }

  else
  {
    buildVersionOverride = buildVersion_buildNumber;
  }

  return buildVersionOverride;
}

- (ACHRemoteTemplateSource)initWithMobileAssetProvider:(id)provider backCompatWriter:(id)writer remoteTemplateAvailabilityKeyProvider:(id)keyProvider
{
  providerCopy = provider;
  writerCopy = writer;
  keyProviderCopy = keyProvider;
  v29.receiver = self;
  v29.super_class = ACHRemoteTemplateSource;
  v12 = [(ACHRemoteTemplateSource *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mobileAssetProvider, provider);
    objc_storeStrong(&v13->_backCompatAvailabilityKeyWriter, writer);
    objc_storeStrong(&v13->_remoteTemplateAvailabilityKeyProvider, keyProvider);
    v14 = HKCreateSerialDispatchQueue();
    queue = v13->_queue;
    v13->_queue = v14;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    resourceAssetURLsByUniqueName = v13->_resourceAssetURLsByUniqueName;
    v13->_resourceAssetURLsByUniqueName = dictionary;

    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    stickerAssetURLsByUniqueName = v13->_stickerAssetURLsByUniqueName;
    v13->_stickerAssetURLsByUniqueName = dictionary2;

    dictionary3 = [MEMORY[0x277CBEAC0] dictionary];
    assetVersionsByUniqueName = v13->_assetVersionsByUniqueName;
    v13->_assetVersionsByUniqueName = dictionary3;

    objc_initWeak(&location, v13);
    uTF8String = [*MEMORY[0x277CE8C18] UTF8String];
    v23 = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85CD0];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __110__ACHRemoteTemplateSource_initWithMobileAssetProvider_backCompatWriter_remoteTemplateAvailabilityKeyProvider___block_invoke;
    v26[3] = &unk_2784907F8;
    objc_copyWeak(&v27, &location);
    notify_register_dispatch(uTF8String, &v13->_availabilityChangeToken, v23, v26);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __110__ACHRemoteTemplateSource_initWithMobileAssetProvider_backCompatWriter_remoteTemplateAvailabilityKeyProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained assetSourceDelegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 templateAssetSourceDidUpdateAssets:v3];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_availabilityChangeToken))
  {
    notify_cancel(self->_availabilityChangeToken);
  }

  v3.receiver = self;
  v3.super_class = ACHRemoteTemplateSource;
  [(ACHRemoteTemplateSource *)&v3 dealloc];
}

- (void)templatesForDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  if (completionCopy)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isStandalonePhoneFitnessMode = [mEMORY[0x277CCDD30] isStandalonePhoneFitnessMode];

    if (isStandalonePhoneFitnessMode)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB98]);
      (*(completionCopy + 2))(completionCopy, v10, 0, 0);
    }

    else
    {
      mobileAssetProvider = [(ACHRemoteTemplateSource *)self mobileAssetProvider];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__ACHRemoteTemplateSource_templatesForDate_completion___block_invoke;
      v12[3] = &unk_278491830;
      v12[4] = self;
      v13 = completionCopy;
      [mobileAssetProvider availableAssetsWithCompletion:v12];
    }
  }
}

void __55__ACHRemoteTemplateSource_templatesForDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ACHRemoteTemplateSource_templatesForDate_completion___block_invoke_2;
  block[3] = &unk_278491428;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __55__ACHRemoteTemplateSource_templatesForDate_completion___block_invoke_2(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v56;
    v5 = *MEMORY[0x277CE8D70];
    v6 = *MEMORY[0x277CE8D78];
    v41 = *MEMORY[0x277CE8D88];
    v40 = *MEMORY[0x277CE8D90];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v56 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v55 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 attributes];
        v11 = [v10 objectForKeyedSubscript:v5];

        if ([v11 isEqualToString:v6])
        {
          [v44 addObject:v8];
          [*(a1 + 40) _addAssetVersionsByUniqueNameToDictionary:v42 fromAsset:v8];
          goto LABEL_13;
        }

        if ([v11 isEqualToString:v41])
        {
          v12 = *(a1 + 40);
          v13 = v48;
        }

        else
        {
          if (![v11 isEqualToString:v40])
          {
            goto LABEL_13;
          }

          v12 = *(a1 + 40);
          v13 = v43;
        }

        [v12 _addURLsByUniqueNameToDictionary:v13 fromAsset:v8];
LABEL_13:

        objc_autoreleasePoolPop(v9);
      }

      v3 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v3);
  }

  v14 = ACHLogAssets();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v37 = [v44 count];
    v38 = [v48 count];
    v39 = [v43 count];
    *buf = 134218496;
    v61 = v37;
    v62 = 2048;
    v63 = v38;
    v64 = 2048;
    v65 = v39;
    _os_log_debug_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEBUG, "Available assets: %lu template assets, %lu resource assets, %lu sticker assets", buf, 0x20u);
  }

  [*(a1 + 40) setResourceAssetURLsByUniqueName:v48];
  [*(a1 + 40) setStickerAssetURLsByUniqueName:v43];
  [*(a1 + 40) setAssetVersionsByUniqueName:v42];
  obja = [MEMORY[0x277CBEB58] set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v45 = v44;
  v15 = [v45 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v52;
    do
    {
      v18 = 0;
      do
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(v45);
        }

        v19 = *(*(&v51 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [*(a1 + 40) buildVersion];
        v22 = RemoteAchievementTemplateFromTemplateAssetAndBuildVersion();

        v23 = *(a1 + 40);
        if (v22)
        {
          v24 = [v23 backCompatAvailabilityKeyWriter];
          v50 = 0;
          v25 = [v24 markTemplateAvailable:v22 error:&v50];
          v26 = v50;

          if ((v25 & 1) == 0)
          {
            v27 = ACHLogTemplates();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v32 = [v22 uniqueName];
              *buf = 138543618;
              v61 = v32;
              v62 = 2114;
              v63 = v26;
              _os_log_error_impl(&dword_221DDC000, v27, OS_LOG_TYPE_ERROR, "Error writing backcompat availability key for template %{public}@: %{public}@", buf, 0x16u);
            }
          }

          v28 = [*(a1 + 40) remoteTemplateAvailabilityKeyProvider];
          v49 = 0;
          v29 = [v28 markTemplateAvailable:v22 error:&v49];
          v30 = v49;

          if ((v29 & 1) == 0)
          {
            v31 = ACHLogTemplates();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v33 = [v22 uniqueName];
              *buf = 138543618;
              v61 = v33;
              v62 = 2114;
              v63 = v30;
              _os_log_error_impl(&dword_221DDC000, v31, OS_LOG_TYPE_ERROR, "Error writing remote template availability key for template %{public}@: %{public}@", buf, 0x16u);
            }
          }

          [obja addObject:v22];
        }

        else
        {
          [v23 _removeURLsByUniqueNameFromDictionary:v48 fromAsset:v19];
          [*(a1 + 40) _removeURLsByUniqueNameFromDictionary:v43 fromAsset:v19];
        }

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v16 != v18);
      v16 = [v45 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v16);
  }

  v34 = *(a1 + 48);
  v35 = [obja copy];
  (*(v34 + 16))(v34, v35, 0, 0);

  v36 = [*(a1 + 40) assetSourceDelegate];
  [v36 templateAssetSourceDidUpdateAssets:*(a1 + 40)];
}

- (id)stickerBundleURLForTemplate:(id)template
{
  templateCopy = template;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  queue = [(ACHRemoteTemplateSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ACHRemoteTemplateSource_stickerBundleURLForTemplate___block_invoke;
  block[3] = &unk_278491010;
  v10 = templateCopy;
  v11 = &v12;
  block[4] = self;
  v6 = templateCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__ACHRemoteTemplateSource_stickerBundleURLForTemplate___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) stickerAssetURLsByUniqueName];
  v2 = [*(a1 + 40) uniqueName];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (int64_t)mobileAssetVersionForTemplate:(id)template
{
  templateCopy = template;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  queue = [(ACHRemoteTemplateSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACHRemoteTemplateSource_mobileAssetVersionForTemplate___block_invoke;
  block[3] = &unk_278491010;
  v11 = &v12;
  block[4] = self;
  v6 = templateCopy;
  v10 = v6;
  dispatch_sync(queue, block);

  integerValue = [v13[5] integerValue];
  _Block_object_dispose(&v12, 8);

  return integerValue;
}

void __57__ACHRemoteTemplateSource_mobileAssetVersionForTemplate___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) assetVersionsByUniqueName];
  v2 = [*(a1 + 40) uniqueName];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __39__ACHRemoteTemplateSource_buildVersion__block_invoke()
{
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v0 = [v2 currentOSBuild];
  v1 = buildVersion_buildNumber;
  buildVersion_buildNumber = v0;
}

- (id)_resourceAssetURLForTemplate:(id)template
{
  templateCopy = template;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  queue = [(ACHRemoteTemplateSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ACHRemoteTemplateSource__resourceAssetURLForTemplate___block_invoke;
  block[3] = &unk_278491010;
  v10 = templateCopy;
  v11 = &v12;
  block[4] = self;
  v6 = templateCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__ACHRemoteTemplateSource__resourceAssetURLForTemplate___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) resourceAssetURLsByUniqueName];
  v2 = [*(a1 + 40) uniqueName];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_addURLsByUniqueNameToDictionary:(id)dictionary fromAsset:(id)asset
{
  assetCopy = asset;
  dictionaryCopy = dictionary;
  attributes = [assetCopy attributes];
  v9 = [attributes objectForKeyedSubscript:*MEMORY[0x277CE8D80]];

  getLocalFileUrl = [assetCopy getLocalFileUrl];

  [dictionaryCopy setObject:getLocalFileUrl forKeyedSubscript:v9];
}

- (void)_removeURLsByUniqueNameFromDictionary:(id)dictionary fromAsset:(id)asset
{
  dictionaryCopy = dictionary;
  attributes = [asset attributes];
  v7 = [attributes objectForKeyedSubscript:*MEMORY[0x277CE8D80]];

  [dictionaryCopy setObject:0 forKeyedSubscript:v7];
}

- (void)_addAssetVersionsByUniqueNameToDictionary:(id)dictionary fromAsset:(id)asset
{
  assetCopy = asset;
  dictionaryCopy = dictionary;
  attributes = [assetCopy attributes];
  v12 = [attributes objectForKeyedSubscript:*MEMORY[0x277CE8D80]];

  v8 = MEMORY[0x277CCABB0];
  attributes2 = [assetCopy attributes];

  v10 = [attributes2 objectForKeyedSubscript:*MEMORY[0x277D288E8]];
  v11 = [v8 numberWithInteger:{objc_msgSend(v10, "integerValue")}];

  [dictionaryCopy setObject:v11 forKeyedSubscript:v12];
}

- (ACHTemplateAssetSourceDelegate)assetSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assetSourceDelegate);

  return WeakRetained;
}

@end