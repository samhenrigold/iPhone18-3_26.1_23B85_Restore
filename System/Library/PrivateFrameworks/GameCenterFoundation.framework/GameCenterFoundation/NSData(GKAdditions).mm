@interface NSData(GKAdditions)
+ (id)_gkImageCachePathForURL:()GKAdditions subdirectory:filename:;
+ (uint64_t)imageDebugEnabled;
+ (void)_gkLoadRemoteImageDataForURL:()GKAdditions session:subdirectory:filename:queue:handler:;
+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:queue:reply:;
+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:subdirectory:filename:queue:imageQueue:handler:;
- (id)_gkAsHexString;
@end

@implementation NSData(GKAdditions)

+ (uint64_t)imageDebugEnabled
{
  if (imageDebugEnabled_onceToken != -1)
  {
    +[NSData(GKAdditions) imageDebugEnabled];
  }

  return imageDebugEnabled_enabled;
}

+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:queue:reply:
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v12 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
  }

  if ([MEMORY[0x277CBEA90] imageDebugEnabled])
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      *buf = 67109120;
      v31 = GKAtomicIncrement32(imageLoadCount);
      _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "BEGIN daemon image load: (%d)", buf, 8u);
    }
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "NSData+GKAdditions.m", 42, "+[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:queue:reply:]"];
  v19 = [GKDispatchGroup dispatchGroupWithName:v18];

  if (v10)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke;
    v25[3] = &unk_2785DDBE8;
    v26 = v10;
    v27 = v11;
    v29 = a2;
    v28 = v19;
    [v28 perform:v25];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_queue_reply___block_invoke_9;
  v22[3] = &unk_2785DDC10;
  v23 = v19;
  v24 = v13;
  v20 = v19;
  v21 = v13;
  [v20 notifyOnQueue:v12 block:v22];
}

+ (void)_gkLoadRemoteImageDataForURL:()GKAdditions session:subdirectory:filename:queue:handler:
{
  v21 = a7;
  if (!v21)
  {
    v21 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
  }

  v15 = _gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__onceToken;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  if (v15 != -1)
  {
    +[NSData(GKAdditions) _gkLoadRemoteImageDataForURL:session:subdirectory:filename:queue:handler:];
  }

  [self _gkLoadRemoteImageDataForUrl:v20 session:v19 subdirectory:v18 filename:v17 queue:v21 imageQueue:_gkLoadRemoteImageDataForURL_session_subdirectory_filename_queue_handler__imageQueue handler:v16];
}

+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:subdirectory:filename:queue:imageQueue:handler:
{
  v61 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v47 = a4;
  v45 = a5;
  v46 = a6;
  v15 = a7;
  v48 = a8;
  v44 = a9;
  v16 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
    v16 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = v16;
    absoluteString = [v14 absoluteString];
    *buf = 138412290;
    v60 = absoluteString;
    _os_log_impl(&dword_227904000, v18, OS_LOG_TYPE_INFO, "_gkLoadRemoteImageDataForUrl: %@", buf, 0xCu);
  }

  if (_gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler__onceToken != -1)
  {
    +[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:subdirectory:filename:queue:imageQueue:handler:];
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "NSData+GKAdditions.m", 136, "+[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:subdirectory:filename:queue:imageQueue:handler:]"];
  v43 = [GKDispatchGroup dispatchGroupWithName:v20];

  path = [v14 path];
  v22 = GKImageCacheRoot(&stru_283AFD1E0);
  v23 = [path hasPrefix:v22];

  v24 = +[GKPreferences shared];
  if ([v24 isInternalBuild])
  {
    scheme = [v14 scheme];
    if ([scheme isEqualToString:@"file"])
    {
      path2 = [v14 path];
      v27 = MEMORY[0x277CCACA8];
      v28 = +[GKGame currentGame];
      bundleIdentifier = [v28 bundleIdentifier];
      v30 = [v27 stringWithFormat:@"/AppleInternal/Library/Bundles/GameKitFakeData.bundle/%@.gamekit", bundleIdentifier];
      v31 = [path2 hasPrefix:v30];
    }

    else
    {
      v31 = 0;
    }

    v32 = v47;
    v33 = v45;
  }

  else
  {
    v31 = 0;
    v32 = v47;
    v33 = v45;
  }

  if (v14 && (([v14 _gkIsValidServerURL] | v31 | v23) & 1) != 0)
  {
    v34 = [MEMORY[0x277CBEA90] _gkImageCachePathForURL:v14 subdirectory:v33 filename:v46];
    if ([v34 containsString:@"../"])
    {
      v35 = v43;
      if (!os_log_GKGeneral)
      {
        v36 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        +[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:subdirectory:filename:queue:imageQueue:handler:];
      }
    }

    else
    {
      v39 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v34];
      v35 = v43;
      if ([v39 length])
      {
        [v43 setResult:v39];
        if (!os_log_GKGeneral)
        {
          v40 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
        {
          +[NSData(GKAdditions) _gkLoadRemoteImageDataForUrl:session:subdirectory:filename:queue:imageQueue:handler:];
        }
      }

      else
      {
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_31;
        v52[3] = &unk_2785DDA00;
        v53 = v34;
        v54 = v48;
        v55 = v43;
        v56 = v14;
        v57 = v32;
        v58 = v15;
        [v55 perform:v52];
      }
    }
  }

  else
  {
    v37 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v38 = GKOSLoggers();
      v37 = os_log_GKGeneral;
    }

    v35 = v43;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v60 = v14;
      _os_log_impl(&dword_227904000, v37, OS_LOG_TYPE_INFO, "Image URL not HTTPS compliant, and not ImageCacheRoot for: %@", buf, 0xCu);
    }
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __107__NSData_GKAdditions___gkLoadRemoteImageDataForUrl_session_subdirectory_filename_queue_imageQueue_handler___block_invoke_35;
  v49[3] = &unk_2785DDC10;
  v50 = v35;
  v51 = v44;
  v41 = v35;
  v42 = v44;
  [v41 notifyOnQueue:v15 block:v49];
}

+ (id)_gkImageCachePathForURL:()GKAdditions subdirectory:filename:
{
  v7 = a3;
  v8 = v7;
  if (a4 && a5)
  {
    v9 = GKImageCachePathForSubdirectoryAndFilename(a4, a5);
  }

  else
  {
    absoluteString = [v7 absoluteString];
    v11 = GKImageCacheRoot(absoluteString);
    lastPathComponent = [v8 lastPathComponent];
    v9 = [v11 stringByAppendingPathComponent:lastPathComponent];
  }

  return v9;
}

- (id)_gkAsHexString
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  bytes = [self bytes];
  if ([self length])
  {
    v4 = 0;
    do
    {
      [v2 appendFormat:@"%02X", *(bytes + v4++)];
    }

    while ([self length] > v4);
  }

  return v2;
}

+ (void)_gkLoadRemoteImageDataForUrl:()GKAdditions session:subdirectory:filename:queue:imageQueue:handler:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v0, OS_LOG_TYPE_ERROR, "Illegal file cache path: %@", v1, 0xCu);
}

@end