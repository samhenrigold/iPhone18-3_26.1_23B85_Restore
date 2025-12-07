@interface VSCacheDeleteService
+ (id)sharedService;
- (id)periodic:(id)periodic urgency:(int)urgency;
- (id)purge:(id)purge urgency:(int)urgency;
- (id)purgeImpl:(id)impl urgency:(int)urgency;
- (id)purgeable:(id)purgeable urgency:(int)urgency;
- (id)purgeableAssetsWithInfo:(id)info urgency:(int)urgency;
- (int64_t)totalSizeOfAssets:(id)assets;
@end

@implementation VSCacheDeleteService

- (id)purgeImpl:(id)impl urgency:(int)urgency
{
  implCopy = impl;
  v6 = [VSCacheDeleteService purgeableAssetsWithInfo:"purgeableAssetsWithInfo:urgency:" urgency:?];
  v27 = [(VSCacheDeleteService *)self totalSizeOfAssets:?];
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
          v13 = [mEMORY[0x277D79950] purgeAsset:?];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
          [mEMORY[0x277D79950] removeVoiceResource:? completion:?];
        }
      }

      v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  if (urgency < 2)
  {
    v16 = implCopy;
  }

  else
  {
    v14 = +[VSSpeechCache defaultCacheStore];
    dirPath = [v14 dirPath];
    v16 = implCopy;
    v17 = [implCopy objectForKeyedSubscript:?];
    v18 = [dirPath hasPrefix:?];

    if (v18)
    {
      v19 = +[VSSpeechCache defaultCacheStore];
      [v19 totalCacheSize];

      v20 = +[VSSpeechCache defaultCacheStore];
      [v20 deleteCache];
    }

    v21 = [implCopy objectForKeyedSubscript:v27];
    v22 = [@"/private/var/mobile/" hasPrefix:?];

    if (v22)
    {
      v23 = +[VSDiagnosticService defaultService];
      [v23 totalDiagnosticFileSize];

      v24 = +[VSDiagnosticService defaultService];
      [v24 removeDirectory];
    }
  }

  v29 = [v16 objectForKeyedSubscript:v27];
  v30 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v25;
}

- (id)periodic:(id)periodic urgency:(int)urgency
{
  v15 = *MEMORY[0x277D85DE8];
  periodicCopy = periodic;
  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = urgency;
    v11 = 1024;
    v12 = 4;
    v13 = 2112;
    v14 = periodicCopy;
    _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEFAULT, "#CacheDelete periodic purge, urgency: %d / %d, info: %@", v10, 0x18u);
  }

  v8 = [VSCacheDeleteService purgeImpl:"purgeImpl:urgency:" urgency:?];

  return v8;
}

- (id)purge:(id)purge urgency:(int)urgency
{
  v15 = *MEMORY[0x277D85DE8];
  purgeCopy = purge;
  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = urgency;
    v11 = 1024;
    v12 = 4;
    v13 = 2112;
    v14 = purgeCopy;
    _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEFAULT, "#CacheDelete purge, urgency: %d / %d, info: %@", v10, 0x18u);
  }

  v8 = [VSCacheDeleteService purgeImpl:"purgeImpl:urgency:" urgency:?];

  return v8;
}

- (id)purgeable:(id)purgeable urgency:(int)urgency
{
  v27 = *MEMORY[0x277D85DE8];
  purgeableCopy = purgeable;
  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    urgencyCopy = urgency;
    v23 = 1024;
    v24 = 4;
    v25 = 2112;
    v26 = purgeableCopy;
    _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEFAULT, "#CacheDelete query purgeable size, urgency: %d / %d, info: %@", buf, 0x18u);
  }

  v8 = [VSCacheDeleteService purgeableAssetsWithInfo:"purgeableAssetsWithInfo:urgency:" urgency:?];
  [(VSCacheDeleteService *)self totalSizeOfAssets:?];
  if (urgency >= 2)
  {
    v9 = +[VSSpeechCache defaultCacheStore];
    dirPath = [v9 dirPath];
    v11 = [purgeableCopy objectForKeyedSubscript:?];
    v12 = [dirPath hasPrefix:?];

    if (v12)
    {
      v13 = +[VSSpeechCache defaultCacheStore];
      [v13 totalCacheSize];
    }

    v14 = [purgeableCopy objectForKeyedSubscript:?];
    v15 = [@"/private/var/mobile/" hasPrefix:?];

    if (v15)
    {
      v16 = +[VSDiagnosticService defaultService];
      [v16 totalDiagnosticFileSize];
    }
  }

  v19 = [purgeableCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v17;
}

- (int64_t)totalSizeOfAssets:(id)assets
{
  v15 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [assetsCopy countByEnumeratingWithState:0 objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 += [v9 size];
        }
      }

      v5 = [assetsCopy countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)purgeableAssetsWithInfo:(id)info urgency:(int)urgency
{
  v76 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (urgency <= 3)
  {
    standardInstance = [MEMORY[0x277D79998] standardInstance];
    disableAssetCleaning = [standardInstance disableAssetCleaning];

    if (disableAssetCleaning)
    {
      v9 = VSGetLogEvent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v75) = urgency;
        _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_DEFAULT, "#CacheDelete asset cleaning is disabled in internal setting. Skip purgeable assets for urgency %d", buf, 8u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_39;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v11 = [infoCopy objectForKeyedSubscript:?];

  if (v11)
  {
    v12 = [infoCopy objectForKeyedSubscript:?];
    longLongValue = [v12 longLongValue];
  }

  else
  {
    longLongValue = -1;
  }

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __56__VSCacheDeleteService_purgeableAssetsWithInfo_urgency___block_invoke;
  v71[3] = &unk_279E4B7F0;
  v63 = infoCopy;
  v72 = infoCopy;
  v14 = MEMORY[0x2743CD880](v71);
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  activeVoiceAssets = [mEMORY[0x277D79950] activeVoiceAssets];
  v17 = (*(v14 + 16))(v14, activeVoiceAssets);

  mEMORY[0x277D79950]2 = [MEMORY[0x277D79950] sharedManager];
  inactiveVoiceAssets = [mEMORY[0x277D79950]2 inactiveVoiceAssets];
  v62 = v14;
  v65 = (*(v14 + 16))(v14, inactiveVoiceAssets);

  v20 = [MEMORY[0x277CBEB58] set];
  obj = v17;
  v21 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0];
    do
    {
      for (i = 0; i != v22; i = (i + 1))
      {
        if (MEMORY[0] != v23)
        {
          objc_enumerationMutation(obj);
        }

        voiceData = [*(8 * i) voiceData];
        languages = [voiceData languages];
        [v20 addObjectsFromArray:?];
      }

      v22 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v22);
  }

  v66 = [MEMORY[0x277CBEB58] set];
  v27 = [(VSCacheDeleteService *)self totalSizeOfAssets:?];
  v10 = array;
  v68 = v20;
  if ((urgency - 1) < 3)
  {
    goto LABEL_17;
  }

  if (urgency == 4)
  {
    if (longLongValue == -1 || longLongValue > v27)
    {
      [array addObjectsFromArray:?];
      v52 = obj;
      v53 = [v52 countByEnumeratingWithState:? objects:? count:?];
      if (v53)
      {
        v54 = v53;
        v55 = MEMORY[0];
        do
        {
          for (j = 0; j != v54; j = (j + 1))
          {
            if (MEMORY[0] != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(8 * j);
            v58 = VSGetLogDefault();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              descriptiveKey = [v57 descriptiveKey];
              *buf = 138412290;
              v75 = descriptiveKey;
              _os_log_impl(&dword_2727E4000, v58, OS_LOG_TYPE_INFO, "#CacheDelete purgeable active voice asset: %@", buf, 0xCu);
            }

            voiceData2 = [v57 voiceData];
            languages2 = [voiceData2 languages];
            [v66 addObjectsFromArray:?];
          }

          v54 = [v52 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v54);
      }

      v10 = array;
    }

LABEL_17:
    [v10 addObjectsFromArray:?];
    v67 = v65;
    v28 = [v67 countByEnumeratingWithState:? objects:? count:?];
    if (!v28)
    {
      goto LABEL_30;
    }

    v29 = v28;
    v70 = MEMORY[0];
    while (1)
    {
      for (k = 0; k != v29; k = (k + 1))
      {
        if (MEMORY[0] != v70)
        {
          objc_enumerationMutation(v67);
        }

        v31 = *(8 * k);
        v32 = VSGetLogDefault();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          descriptiveKey2 = [v31 descriptiveKey];
          *buf = 138412290;
          v75 = descriptiveKey2;
          _os_log_impl(&dword_2727E4000, v32, OS_LOG_TYPE_INFO, "#CacheDelete purgeable inactive voice asset: %@", buf, 0xCu);
        }

        voiceData3 = [v31 voiceData];
        languages3 = [voiceData3 languages];
        firstObject = [languages3 firstObject];
        if (firstObject)
        {
          v37 = firstObject;
          voiceData4 = [v31 voiceData];
          languages4 = [voiceData4 languages];
          firstObject2 = [languages4 firstObject];
          v41 = [v68 containsObject:?];

          if (v41)
          {
            continue;
          }

          voiceData3 = [v31 voiceData];
          languages3 = [voiceData3 languages];
          firstObject3 = [languages3 firstObject];
          [v66 addObject:?];
        }
      }

      v29 = [v67 countByEnumeratingWithState:? objects:? count:?];
      if (!v29)
      {
LABEL_30:

        v10 = array;
        break;
      }
    }
  }

  v43 = v66;
  v44 = [v43 countByEnumeratingWithState:? objects:? count:?];
  if (v44)
  {
    v45 = v44;
    v46 = MEMORY[0];
    do
    {
      for (m = 0; m != v45; m = (m + 1))
      {
        if (MEMORY[0] != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(8 * m);
        v49 = objc_alloc_init(MEMORY[0x277D799D8]);
        v73 = v48;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        [v49 setLanguages:?];

        [v10 addObject:?];
      }

      v45 = [v43 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v45);
  }

  v9 = v72;
  infoCopy = v63;
LABEL_39:

  return v10;
}

id __56__VSCacheDeleteService_purgeableAssetsWithInfo_urgency___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(8 * i) voicePath];
        v10 = [*(a1 + 32) objectForKeyedSubscript:?];
        v11 = [v9 hasPrefix:?];

        if (v11)
        {
          [v13 addObject:?];
        }
      }

      v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }

  return v13;
}

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_1871);
  }

  v3 = sharedService___sharedService;

  return v3;
}

uint64_t __37__VSCacheDeleteService_sharedService__block_invoke()
{
  sharedService___sharedService = objc_alloc_init(VSCacheDeleteService);

  return MEMORY[0x2821F96F8]();
}

@end