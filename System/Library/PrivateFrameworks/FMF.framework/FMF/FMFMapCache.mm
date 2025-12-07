@interface FMFMapCache
- (BOOL)pendingMapImageForLocation:(id)location altitude:(double)altitude pitch:(double)pitch width:(double)width andHeight:(double)height;
- (BOOL)pendingMapImageForRequest:(id)request;
- (FMFMapCache)init;
- (double)cacheExpiryInSeconds;
- (double)pruneIntervalInSeconds;
- (id)cachedGridImageForWidth:(double)width andHeight:(double)height;
- (id)cachedMapImageForLocation:(id)location altitude:(double)altitude pitch:(double)pitch width:(double)width andHeight:(double)height;
- (id)cachedMapImageForRequest:(id)request;
- (id)cachedNoLocationImageForWidth:(double)width andHeight:(double)height;
- (id)gridKeyForWidth:(double)width andHeight:(double)height;
- (id)noLocationKeyForWidth:(double)width andHeight:(double)height;
- (void)cacheGridImage:(id)image forWidth:(double)width andHeight:(double)height;
- (void)cacheMapImage:(id)image forLocation:(id)location altitude:(double)altitude pitch:(double)pitch width:(double)width andHeight:(double)height;
- (void)cacheMapImage:(id)image forRequest:(id)request;
- (void)cacheNoLocationImage:(id)image forWidth:(double)width andHeight:(double)height;
- (void)flushCache;
- (void)pruneCacheIfNeeded;
- (void)readMetaData;
- (void)saveMetaData;
@end

@implementation FMFMapCache

- (FMFMapCache)init
{
  v35 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = FMFMapCache;
  v2 = [(FMFMapCache *)&v30 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D07B70] integerForKey:@"lastPruneTimestamp" inDomain:@"com.apple.findmy"];
    -[FMFMapCache setFileProtectionDeactivated:](v2, "setFileProtectionDeactivated:", [MEMORY[0x277D07B70] BOOLForKey:@"fileProtectionDisabled" inDomain:@"com.apple.findmy"]);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v3];
    [(FMFMapCache *)v2 setLastPruneDate:v4];

    v6 = LogCategory_FMFMapXPC(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      fileProtectionDeactivated = [(FMFMapCache *)v2 fileProtectionDeactivated];
      lastPruneDate = [(FMFMapCache *)v2 lastPruneDate];
      *buf = 67109378;
      v32 = fileProtectionDeactivated;
      v33 = 2112;
      v34 = lastPruneDate;
      _os_log_impl(&dword_24A33F000, v6, OS_LOG_TYPE_DEFAULT, "FMFMapCache: File protection deactivated? %i last prune date? %@", buf, 0x12u);
    }

    [(FMFMapCache *)v2 setMapLocationDistanceThreshold:50.0];
    v9 = objc_opt_new();
    [(FMFMapCache *)v2 setCacheMetaData:v9];

    v10 = objc_opt_new();
    [(FMFMapCache *)v2 setGridImageMetaData:v10];

    v11 = objc_opt_new();
    [(FMFMapCache *)v2 setNoLocationImageMetaData:v11];

    v12 = objc_opt_new();
    [(FMFMapCache *)v2 setMapImageMetaData:v12];

    v13 = objc_opt_new();
    [(FMFMapCache *)v2 setPendingMapImageMetaData:v13];

    v14 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    firstObject = [v14 firstObject];
    v16 = [firstObject stringByAppendingPathComponent:@"com.apple.icloud.FMF.FMFMapXPCService"];

    v17 = [v16 stringByAppendingPathComponent:@"FMFMapCacheMeta.data"];
    [(FMFMapCache *)v2 setCachePath:v17];

    [(FMFMapCache *)v2 setImageCachePath:v16];
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v19 = dispatch_queue_create("com.apple.icloud.FMF.CacheMetaIO", v18);
    [(FMFMapCache *)v2 setCacheMetaQueue:v19];

    v20 = dispatch_queue_create("com.apple.icloud.FMF.GridImageIO", v18);
    [(FMFMapCache *)v2 setGridImageQueue:v20];

    v21 = dispatch_queue_create("com.apple.icloud.FMF.NoLocationImageIO", v18);
    [(FMFMapCache *)v2 setNoLocationImageQueue:v21];

    v22 = dispatch_queue_create("com.apple.icloud.FMF.MapImageIO", v18);
    [(FMFMapCache *)v2 setMapImageQueue:v22];

    v23 = dispatch_queue_create("com.apple.icloud.FMF.PendingImageQueue", v18);
    [(FMFMapCache *)v2 setPendingImageQueue:v23];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v25 = [defaultManager fileExistsAtPath:v16];

    if ((v25 & 1) == 0)
    {
      v27 = LogCategory_FMFMapXPC(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A33F000, v27, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Creating cache folder", buf, 2u);
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:0];
    }

    [(FMFMapCache *)v2 readMetaData];
  }

  return v2;
}

- (id)cachedGridImageForWidth:(double)width andHeight:(double)height
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(FMFMapCache *)self gridKeyForWidth:width andHeight:height];
  gridImageMetaData = [(FMFMapCache *)self gridImageMetaData];
  v7 = [gridImageMetaData objectForKey:v5];

  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    path = [v7 path];
    v10 = [v8 dataWithContentsOfFile:path];

    v12 = LogCategory_FMFMapXPC(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cachedGridImageForWidth data retreived: %@", &v14, 0xCu);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cacheGridImage:(id)image forWidth:(double)width andHeight:(double)height
{
  imageCopy = image;
  selfCopy = self;
  gridImageQueue = [(FMFMapCache *)selfCopy gridImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke;
  block[3] = &unk_278FDE520;
  widthCopy = width;
  heightCopy = height;
  v14 = selfCopy;
  v15 = imageCopy;
  v16 = selfCopy;
  v11 = imageCopy;
  v12 = selfCopy;
  dispatch_async(gridImageQueue, block);
}

void __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 gridKeyForWidth:*(a1 + 56) andHeight:*(a1 + 64)];
  v4 = [v3 stringByAppendingPathExtension:@"png"];
  v5 = v4;
  v6 = &stru_285D7AA10;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v2 imageCachePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CCA1B0]];
  v11 = [*(a1 + 40) writeToFile:v9 atomically:1];
  v12 = v11;
  v13 = LogCategory_FMFMapXPC(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_24A33F000, v13, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cacheGridImage %@", buf, 0xCu);
  }

  if (v12)
  {
    if (([*(a1 + 48) fileProtectionDeactivated] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v15 = objc_claimAutoreleasedReturnValue(), v20 = 0, objc_msgSend(v15, "setAttributes:ofItemAtPath:error:", v10, v9, &v20), v16 = v20, v15, !v16))
    {
      v16 = [[FMFMapCacheImage alloc] initWithPath:v9];
      v19 = [v2 gridImageMetaData];
      [v19 setObject:v16 forKey:v3];

      [v2 saveMetaData];
    }

    else
    {
      v18 = LogCategory_FMFMapXPC(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v16 = LogCategory_FMFMapXPC(v14);
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_24A33F000, &v16->super, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Unable to write grid image to disk %@", buf, 0xCu);
    }
  }
}

- (id)cachedNoLocationImageForWidth:(double)width andHeight:(double)height
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(FMFMapCache *)self noLocationKeyForWidth:width andHeight:height];
  noLocationImageMetaData = [(FMFMapCache *)self noLocationImageMetaData];
  v7 = [noLocationImageMetaData objectForKey:v5];

  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    path = [v7 path];
    v10 = [v8 dataWithContentsOfFile:path];

    v12 = LogCategory_FMFMapXPC(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "FMFMapCache: noLocationImageForWidth data retreived: %@", &v14, 0xCu);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cacheNoLocationImage:(id)image forWidth:(double)width andHeight:(double)height
{
  imageCopy = image;
  selfCopy = self;
  noLocationImageQueue = [(FMFMapCache *)selfCopy noLocationImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__FMFMapCache_cacheNoLocationImage_forWidth_andHeight___block_invoke;
  block[3] = &unk_278FDE520;
  widthCopy = width;
  heightCopy = height;
  v14 = selfCopy;
  v15 = imageCopy;
  v16 = selfCopy;
  v11 = imageCopy;
  v12 = selfCopy;
  dispatch_async(noLocationImageQueue, block);
}

void __55__FMFMapCache_cacheNoLocationImage_forWidth_andHeight___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 noLocationKeyForWidth:*(a1 + 56) andHeight:*(a1 + 64)];
  v4 = [v3 stringByAppendingPathExtension:@"png"];
  v5 = v4;
  v6 = &stru_285D7AA10;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v2 imageCachePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CCA1B0]];
  v11 = [*(a1 + 40) writeToFile:v9 atomically:1];
  v12 = v11;
  v13 = LogCategory_FMFMapXPC(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_24A33F000, v13, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cacheNoLocationImage %@", buf, 0xCu);
  }

  if (v12)
  {
    if (([*(a1 + 48) fileProtectionDeactivated] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v15 = objc_claimAutoreleasedReturnValue(), v20 = 0, objc_msgSend(v15, "setAttributes:ofItemAtPath:error:", v10, v9, &v20), v16 = v20, v15, !v16))
    {
      v16 = [[FMFMapCacheImage alloc] initWithPath:v9];
      v19 = [v2 noLocationImageMetaData];
      [v19 setObject:v16 forKey:v3];

      [v2 saveMetaData];
    }

    else
    {
      v18 = LogCategory_FMFMapXPC(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v16 = LogCategory_FMFMapXPC(v14);
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_24A33F000, &v16->super, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Unable to write grid image to disk %@", buf, 0xCu);
    }
  }
}

- (id)cachedMapImageForRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  mapImageMetaData = [(FMFMapCache *)self mapImageMetaData];
  v6 = [requestCopy key];

  v7 = [mapImageMetaData objectForKey:v6];

  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    path = [v7 path];
    v10 = [v8 dataWithContentsOfFile:path];

    v12 = LogCategory_FMFMapXPC(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cachedMapImageForRequest data retreived: %@", &v14, 0xCu);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)cachedMapImageForLocation:(id)location altitude:(double)altitude pitch:(double)pitch width:(double)width andHeight:(double)height
{
  locationCopy = location;
  v13 = [[FMFMapImageRequest alloc] initWithLocation:locationCopy altitude:1 pitch:altitude width:pitch height:width andCachingEnabled:height];

  v14 = [(FMFMapCache *)self cachedMapImageForRequest:v13];

  return v14;
}

- (void)cacheMapImage:(id)image forRequest:(id)request
{
  imageCopy = image;
  requestCopy = request;
  objc_initWeak(&location, self);
  mapImageQueue = [(FMFMapCache *)self mapImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMFMapCache_cacheMapImage_forRequest___block_invoke;
  block[3] = &unk_278FDE570;
  objc_copyWeak(&v15, &location);
  v12 = requestCopy;
  v13 = imageCopy;
  selfCopy = self;
  v9 = imageCopy;
  v10 = requestCopy;
  dispatch_async(mapImageQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __40__FMFMapCache_cacheMapImage_forRequest___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [a1[4] key];
  v4 = [v3 stringByAppendingPathExtension:@"png"];
  v5 = v4;
  v6 = &stru_285D7AA10;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [WeakRetained imageCachePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CCA1B0]];
  v11 = [a1[5] writeToFile:v9 atomically:1];
  v12 = v11;
  v13 = LogCategory_FMFMapXPC(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v9;
    _os_log_impl(&dword_24A33F000, v13, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cacheMapImage %@", buf, 0xCu);
  }

  if ((v12 & 1) == 0)
  {
    v18 = LogCategory_FMFMapXPC(v14);
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = 0;
      _os_log_impl(&dword_24A33F000, &v18->super, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Unable to write map image to disk %@ %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if (([a1[6] fileProtectionDeactivated] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v15 = objc_claimAutoreleasedReturnValue(), v26 = 0, objc_msgSend(v15, "setAttributes:ofItemAtPath:error:", v10, v9, &v26), v16 = v26, v15, !v16))
  {
    v18 = [[FMFMapCacheImage alloc] initWithPath:v9];
    v19 = [WeakRetained mapImageMetaData];
    [v19 setObject:v18 forKey:v3];

    [WeakRetained saveMetaData];
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v18 = LogCategory_FMFMapXPC(v17);
  if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
  {
    __49__FMFMapCache_cacheGridImage_forWidth_andHeight___block_invoke_cold_1();
  }

LABEL_14:

  v20 = [WeakRetained pendingImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMFMapCache_cacheMapImage_forRequest___block_invoke_59;
  block[3] = &unk_278FDE548;
  v24 = WeakRetained;
  v25 = v3;
  v21 = v3;
  v22 = WeakRetained;
  dispatch_sync(v20, block);
}

void __40__FMFMapCache_cacheMapImage_forRequest___block_invoke_59(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingMapImageMetaData];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) pendingMapImageMetaData];
    [v4 removeObjectForKey:*(a1 + 40)];
  }
}

- (void)cacheMapImage:(id)image forLocation:(id)location altitude:(double)altitude pitch:(double)pitch width:(double)width andHeight:(double)height
{
  locationCopy = location;
  imageCopy = image;
  v16 = [[FMFMapImageRequest alloc] initWithLocation:locationCopy altitude:1 pitch:altitude width:pitch height:width andCachingEnabled:height];

  [(FMFMapCache *)self cacheMapImage:imageCopy forRequest:v16];
}

- (BOOL)pendingMapImageForRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  pendingImageQueue = [(FMFMapCache *)self pendingImageQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__FMFMapCache_pendingMapImageForRequest___block_invoke;
  v8[3] = &unk_278FDE598;
  objc_copyWeak(&v11, &location);
  v9 = requestCopy;
  v10 = &v12;
  v6 = requestCopy;
  dispatch_sync(pendingImageQueue, v8);

  LOBYTE(pendingImageQueue) = *(v13 + 24);
  objc_destroyWeak(&v11);
  _Block_object_dispose(&v12, 8);
  objc_destroyWeak(&location);
  return pendingImageQueue;
}

void __41__FMFMapCache_pendingMapImageForRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) key];
  v3 = [v2 stringByAppendingPathExtension:@"png"];
  v4 = v3;
  v5 = &stru_285D7AA10;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [WeakRetained imageCachePath];
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [WeakRetained pendingMapImageMetaData];
  v10 = [v9 objectForKeyedSubscript:v2];

  if (!v10)
  {
    v11 = [WeakRetained pendingMapImageMetaData];
    [v11 setObject:v8 forKey:v2];

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)pendingMapImageForLocation:(id)location altitude:(double)altitude pitch:(double)pitch width:(double)width andHeight:(double)height
{
  locationCopy = location;
  v13 = [[FMFMapImageRequest alloc] initWithLocation:locationCopy altitude:1 pitch:altitude width:pitch height:width andCachingEnabled:height];

  LOBYTE(self) = [(FMFMapCache *)self pendingMapImageForRequest:v13];
  return self;
}

- (void)readMetaData
{
  selfCopy = self;
  cacheMetaQueue = [(FMFMapCache *)selfCopy cacheMetaQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__FMFMapCache_readMetaData__block_invoke;
  v5[3] = &unk_278FDE548;
  v6 = selfCopy;
  v7 = selfCopy;
  v4 = selfCopy;
  dispatch_sync(cacheMetaQueue, v5);
}

void __27__FMFMapCache_readMetaData__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEA90];
  v9 = [v2 cachePath];
  v10 = [v8 dataWithContentsOfFile:v9];
  v30 = 0;
  v11 = [v7 unarchivedObjectOfClasses:v6 fromData:v10 error:&v30];
  v12 = v30;

  if (v12)
  {
    v14 = LogCategory_FMFMapXPC(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __27__FMFMapCache_readMetaData__block_invoke_cold_1(v12, v14);
    }
  }

  v15 = LogCategory_FMFMapXPC(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __27__FMFMapCache_readMetaData__block_invoke_cold_2(v11, v15);
  }

  v16 = [v11 allKeys];
  if ([v16 count] == 4)
  {
    v17 = [v11 objectForKeyedSubscript:@"version"];
    v18 = [v17 isEqualToString:@"2"];

    if (v18)
    {
      [v2 setCacheMetaData:v11];
      v20 = [v11 objectForKeyedSubscript:@"gridImage"];
      [v2 setGridImageMetaData:v20];

      v21 = [v11 objectForKeyedSubscript:@"noLocationImage"];
      [v2 setNoLocationImageMetaData:v21];

      v22 = [v11 objectForKeyedSubscript:@"mapImage"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v24 = [v11 objectForKeyedSubscript:@"mapImage"];
        [v2 setMapImageMetaData:v24];
      }

      v25 = LogCategory_FMFMapXPC(isKindOfClass);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v2 mapImageMetaData];
        v27 = [v26 allValues];
        v28 = [v27 count];
        *buf = 134217984;
        v32 = v28;
        _os_log_impl(&dword_24A33F000, v25, OS_LOG_TYPE_DEFAULT, "FMFMapCache: found entries in cache %ld", buf, 0xCu);
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v29 = LogCategory_FMFMapXPC(v19);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v29, OS_LOG_TYPE_DEFAULT, "FMFMapCache: flushing cache because of version mismatch", buf, 2u);
  }

  [*(a1 + 40) flushCache];
LABEL_18:
  [*(a1 + 40) pruneCacheIfNeeded];
}

- (void)saveMetaData
{
  selfCopy = self;
  cacheMetaQueue = [(FMFMapCache *)selfCopy cacheMetaQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__FMFMapCache_saveMetaData__block_invoke;
  v5[3] = &unk_278FDE548;
  v6 = selfCopy;
  v7 = selfCopy;
  v4 = selfCopy;
  dispatch_sync(cacheMetaQueue, v5);
}

void __27__FMFMapCache_saveMetaData__block_invoke(uint64_t a1)
{
  *&v28[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_new();
  [v3 setObject:@"2" forKey:@"version"];
  v4 = [v2 gridImageMetaData];
  [v3 setObject:v4 forKeyedSubscript:@"gridImage"];

  v5 = [v2 noLocationImageMetaData];
  [v3 setObject:v5 forKeyedSubscript:@"noLocationImage"];

  v6 = [v2 mapImageMetaData];
  [v3 setObject:v6 forKeyedSubscript:@"mapImage"];

  v26 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v26];
  v8 = v26;
  if (v8)
  {
    v9 = v8;
    v10 = LogCategory_FMFMapXPC(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __27__FMFMapCache_saveMetaData__block_invoke_cold_1(v9, v10);
    }

    goto LABEL_19;
  }

  v11 = [v2 cachePath];
  v12 = [v7 writeToFile:v11 atomically:1];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CCA1B0]];
  v13 = LogCategory_FMFMapXPC(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v2 mapImageMetaData];
    v15 = [v14 allValues];
    v16 = [v15 count];
    *buf = 134217984;
    *v28 = v16;
    _os_log_impl(&dword_24A33F000, v13, OS_LOG_TYPE_DEFAULT, "FMFMapCache: save map images %ld", buf, 0xCu);
  }

  if ((v12 & 1) == 0)
  {
    v19 = LogCategory_FMFMapXPC(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v2 cachePath];
      *buf = 138412290;
      *v28 = v20;
      _os_log_impl(&dword_24A33F000, v19, OS_LOG_TYPE_DEFAULT, "FMFMapCache: Unable to write meta data to disk %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_15;
  }

  v18 = [*(a1 + 40) fileProtectionDeactivated];
  if ((v18 & 1) == 0)
  {
    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [v2 cachePath];
    v25 = 0;
    [v21 setAttributes:v10 ofItemAtPath:v22 error:&v25];
    v9 = v25;

    if (!v9)
    {
      goto LABEL_16;
    }

    v19 = LogCategory_FMFMapXPC(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __27__FMFMapCache_saveMetaData__block_invoke_cold_2(v9, v2, v19);
    }

LABEL_15:

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:
  v23 = LogCategory_FMFMapXPC(v18);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [*(a1 + 40) fileProtectionDeactivated];
    *buf = 67109376;
    v28[0] = v12;
    LOWORD(v28[1]) = 1024;
    *(&v28[1] + 2) = v24;
    _os_log_impl(&dword_24A33F000, v23, OS_LOG_TYPE_DEFAULT, "FMFMapCache: FMFMapCache: Save meta data? %d %i", buf, 0xEu);
  }

LABEL_19:
}

- (void)flushCache
{
  v21 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  imageCachePath = [(FMFMapCache *)self imageCachePath];
  v5 = [defaultManager enumeratorAtPath:imageCachePath];

  nextObject = [v5 nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      v8 = LogCategory_FMFMapXPC(nextObject);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A33F000, v8, OS_LOG_TYPE_DEFAULT, "FMFMapCache: clearing file", buf, 2u);
      }

      imageCachePath2 = [(FMFMapCache *)self imageCachePath];
      v10 = [imageCachePath2 stringByAppendingPathComponent:v7];

      v16 = 0;
      v11 = [defaultManager removeItemAtPath:v10 error:&v16];
      v12 = v16;
      v13 = v12;
      if ((v11 & 1) == 0 && v12)
      {
        v14 = LogCategory_FMFMapXPC(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v18 = v10;
          v19 = 2112;
          v20 = v13;
          _os_log_error_impl(&dword_24A33F000, v14, OS_LOG_TYPE_ERROR, "FMFMapCache: error deleting file: %@ error: %@", buf, 0x16u);
        }
      }

      nextObject2 = [v5 nextObject];

      v7 = nextObject2;
    }

    while (nextObject2);
  }
}

- (void)pruneCacheIfNeeded
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_FMFMapXPC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "FMFMapCache: pruneCacheIfNeeded", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v6 = v5;
  lastPruneDate = [(FMFMapCache *)self lastPruneDate];
  [lastPruneDate timeIntervalSince1970];
  v9 = v6 - v8;
  [(FMFMapCache *)self pruneIntervalInSeconds];
  v11 = v10;

  if (v9 > v11)
  {
    v41 = date;
    v13 = LogCategory_FMFMapXPC(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A33F000, v13, OS_LOG_TYPE_DEFAULT, "FMFMapCache: prunning cache....", buf, 2u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    mapImageMetaData = [(FMFMapCache *)self mapImageMetaData];
    v42 = [mapImageMetaData mutableCopy];

    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSince1970];
    v17 = v16;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    mapImageMetaData2 = [(FMFMapCache *)self mapImageMetaData];
    v19 = [mapImageMetaData2 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        v22 = 0;
        do
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(mapImageMetaData2);
          }

          v23 = *(*(&v45 + 1) + 8 * v22);
          mapImageMetaData3 = [(FMFMapCache *)self mapImageMetaData];
          v25 = [mapImageMetaData3 objectForKeyedSubscript:v23];

          timestamp = [v25 timestamp];
          [timestamp timeIntervalSince1970];
          v28 = v17 - v27;
          [(FMFMapCache *)self cacheExpiryInSeconds];
          v30 = v29;

          if (v28 > v30)
          {
            v32 = LogCategory_FMFMapXPC(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v25;
              _os_log_impl(&dword_24A33F000, v32, OS_LOG_TYPE_DEFAULT, "FMFMapCache: removing file: %@", buf, 0xCu);
            }

            path = [v25 path];
            v44 = 0;
            v34 = [defaultManager removeItemAtPath:path error:&v44];
            v35 = v44;

            if ((v34 & 1) == 0 && v35)
            {
              v37 = LogCategory_FMFMapXPC(v36);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                path2 = [v25 path];
                *buf = 138412546;
                v50 = path2;
                v51 = 2112;
                v52 = v35;
                _os_log_error_impl(&dword_24A33F000, v37, OS_LOG_TYPE_ERROR, "FMFMapCache: error pruning file: %@ error: %@", buf, 0x16u);
              }
            }

            [v42 setObject:0 forKeyedSubscript:v23];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [mapImageMetaData2 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v20);
    }

    date = v41;
    [(FMFMapCache *)self setLastPruneDate:v41];
    [(FMFMapCache *)self setMapImageMetaData:v42];
    v39 = MEMORY[0x277D07B70];
    [v41 timeIntervalSince1970];
    [v39 setInteger:v40 forKey:@"lastPruneTimestamp" inDomain:@"com.apple.findmy"];
  }
}

- (id)gridKeyForWidth:(double)width andHeight:(double)height
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  stringValue = [v5 stringValue];
  v7 = [@"gridImage" stringByAppendingString:stringValue];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  stringValue2 = [v8 stringValue];
  v10 = [v7 stringByAppendingString:stringValue2];

  return v10;
}

- (id)noLocationKeyForWidth:(double)width andHeight:(double)height
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  stringValue = [v5 stringValue];
  v7 = [@"noLocationImage" stringByAppendingString:stringValue];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  stringValue2 = [v8 stringValue];
  v10 = [v7 stringByAppendingString:stringValue2];

  return v10;
}

- (double)cacheExpiryInSeconds
{
  if (cacheExpiryInSeconds_onceToken != -1)
  {
    [FMFMapCache cacheExpiryInSeconds];
  }

  return *&cacheExpiryInSeconds_cacheExpiryInSeconds;
}

void __35__FMFMapCache_cacheExpiryInSeconds__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D07B70] integerForKey:@"cacheExpiryInSecondsOverride" inDomain:@"com.apple.findmy"];
  if (v0 >= 1)
  {
    v1 = v0;
    *&cacheExpiryInSeconds_cacheExpiryInSeconds = v0;
    v2 = LogCategory_FMFMapXPC(v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v1;
      _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "FMFMapCache: cache expiry overriden to %f", &v3, 0xCu);
    }
  }
}

- (double)pruneIntervalInSeconds
{
  if (pruneIntervalInSeconds_onceToken != -1)
  {
    [FMFMapCache pruneIntervalInSeconds];
  }

  return *&pruneIntervalInSeconds_pruneIntervalInSeconds;
}

void __37__FMFMapCache_pruneIntervalInSeconds__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D07B70] integerForKey:@"pruneIntervalInSecondsOverride" inDomain:@"com.apple.findmy"];
  if (v0 >= 1)
  {
    v1 = v0;
    *&pruneIntervalInSeconds_pruneIntervalInSeconds = v0;
    v2 = LogCategory_FMFMapXPC(v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = v1;
      _os_log_impl(&dword_24A33F000, v2, OS_LOG_TYPE_DEFAULT, "FMFMapCache: prune interval overriden to %f", &v3, 0xCu);
    }
  }
}

void __27__FMFMapCache_readMetaData__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving map cache: %@", &v2, 0xCu);
}

void __27__FMFMapCache_readMetaData__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24A33F000, a2, OS_LOG_TYPE_DEBUG, "FMFMapCache: meta data content %@", &v2, 0xCu);
}

void __27__FMFMapCache_saveMetaData__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "FMFMapCache: saveMetaData error: %@", &v2, 0xCu);
}

void __27__FMFMapCache_saveMetaData__block_invoke_cold_2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 cachePath];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_24A33F000, a3, OS_LOG_TYPE_ERROR, "FMFMapCache: Error setting file protection %@ %@", &v6, 0x16u);
}

@end