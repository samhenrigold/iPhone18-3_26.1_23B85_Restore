@interface PGSettlingEffectConfig
- (PGSettlingEffectConfig)initWithPhotoLibrary:(id)library loggingConnection:(id)connection;
- (id)_requestWallpaperDownloadServerConfigWithPhotoLibrary:(id)library loggingConnection:(id)connection;
@end

@implementation PGSettlingEffectConfig

- (id)_requestWallpaperDownloadServerConfigWithPhotoLibrary:(id)library loggingConnection:(id)connection
{
  v36 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__32407;
  v30 = __Block_byref_object_dispose__32408;
  v31 = 0;
  connectionCopy = connection;
  v7 = os_signpost_id_generate(connectionCopy);
  v8 = connectionCopy;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "RequestWallpaperDownloadServerConfig", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v10 = mach_absolute_time();
  v11 = dispatch_semaphore_create(0);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__PGSettlingEffectConfig__requestWallpaperDownloadServerConfigWithPhotoLibrary_loggingConnection___block_invoke;
  v22[3] = &unk_278883190;
  v24 = &v26;
  v12 = v11;
  v23 = v12;
  [libraryCopy getCPLConfigrationValueForClient:0 completionHandler:v22];
  v13 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v12, v13) && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "[PGSettlingEffectConfig] Timeout requesting 'Wallpaper Download' server config.", buf, 2u);
  }

  v14 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v17 = v9;
  v18 = v17;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_END, v7, "RequestWallpaperDownloadServerConfig", "", buf, 2u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "RequestWallpaperDownloadServerConfig";
    v34 = 2048;
    v35 = ((((v14 - v10) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v27[5];
    *buf = 138412290;
    v33 = v19;
    _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGSettlingEffectConfig] Requested 'Wallpaper Download' server config: %@", buf, 0xCu);
  }

  v20 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v20;
}

void __98__PGSettlingEffectConfig__requestWallpaperDownloadServerConfigWithPhotoLibrary_loggingConnection___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (PGSettlingEffectConfig)initWithPhotoLibrary:(id)library loggingConnection:(id)connection
{
  v32 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  v29.receiver = self;
  v29.super_class = PGSettlingEffectConfig;
  v8 = [(PGSettlingEffectConfig *)&v29 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 8) = xmmword_22F78C090;
    *(v8 + 24) = xmmword_22F78C0A0;
    v10 = [v8 _requestWallpaperDownloadServerConfigWithPhotoLibrary:libraryCopy loggingConnection:connectionCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:@"max.num.stabilizationFailuresAllowed"];
      v13 = v12;
      if (v12)
      {
        unsignedIntegerValue = [v12 unsignedIntegerValue];
        v15 = unsignedIntegerValue;
        v9->_maxL1FailuresAllowed = unsignedIntegerValue;
        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v31 = v15;
          _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGSettlingEffectConfig] Set server configured maxL1FailuresAllowed: %d", buf, 8u);
        }
      }

      v16 = [v11 objectForKeyedSubscript:@"max.num.frcRequestsAllowed"];
      v17 = v16;
      if (v16)
      {
        unsignedIntegerValue2 = [v16 unsignedIntegerValue];
        v19 = unsignedIntegerValue2;
        v9->_maxFRCRequestsAllowed = unsignedIntegerValue2;
        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v31 = v19;
          _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGSettlingEffectConfig] Set server configured maxFRCRequestsAllowed: %d", buf, 8u);
        }
      }

      v20 = [v11 objectForKeyedSubscript:@"default.num.stabilizationFailuresAllowed"];
      v21 = v20;
      if (v20)
      {
        unsignedIntegerValue3 = [v20 unsignedIntegerValue];
        v23 = unsignedIntegerValue3;
        v9->_defaultL1FailuresAllowed = unsignedIntegerValue3;
        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v31 = v23;
          _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGSettlingEffectConfig] Set server configured defaultL1FailuresAllowed: %d", buf, 8u);
        }
      }

      v24 = [v11 objectForKeyedSubscript:@"default.num.frcRequestsAllowed"];
      v25 = v24;
      if (v24)
      {
        unsignedIntegerValue4 = [v24 unsignedIntegerValue];
        v27 = unsignedIntegerValue4;
        v9->_defaultFRCRequestsAllowed = unsignedIntegerValue4;
        if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v31 = v27;
          _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_INFO, "[PGSettlingEffectConfig] Set server configured defaultFRCRequestsAllowed: %d", buf, 8u);
        }
      }
    }
  }

  return v9;
}

@end