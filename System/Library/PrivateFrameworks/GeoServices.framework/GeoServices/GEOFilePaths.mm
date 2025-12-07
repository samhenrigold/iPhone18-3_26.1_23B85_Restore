@interface GEOFilePaths
+ (NSString)_internal_geoServicesCacheDirectoryPath;
+ (id)dictionaryRepresentation;
- (GEOFilePaths)init;
@end

@implementation GEOFilePaths

void __47__GEOFilePaths_registerStateCaptureIfNecessary__block_invoke()
{
  v0 = objc_alloc_init(GEOFilePaths);
  v1 = registerStateCaptureIfNecessary_instance;
  registerStateCaptureIfNecessary_instance = v0;
}

- (GEOFilePaths)init
{
  v8.receiver = self;
  v8.super_class = GEOFilePaths;
  v2 = [(GEOFilePaths *)&v8 init];
  if (v2)
  {
    global_queue = geo_get_global_queue();
    v4 = GEORegisterPListStateCaptureAtFrequency();
    stateCaptureHandle = v2->_stateCaptureHandle;
    v2->_stateCaptureHandle = v4;

    v6 = v2;
  }

  return v2;
}

+ (NSString)_internal_geoServicesCacheDirectoryPath
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__GEOFilePaths__internal_geoServicesCacheDirectoryPath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_internal_geoServicesCacheDirectoryPath_once != -1)
  {
    dispatch_once(&_internal_geoServicesCacheDirectoryPath_once, block);
  }

  v2 = _internal_geoServicesCacheDirectoryPath__directory;

  return v2;
}

uint64_t __27__GEOFilePaths__isMultUser__block_invoke()
{
  multiuser_mode = 0;
  result = host_check_multiuser_mode(0, &multiuser_mode);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    v1 = multiuser_mode == 1;
  }

  v2 = v1;
  _isMultUser_isEDU = v2;
  return result;
}

void __55__GEOFilePaths__internal_geoServicesCacheDirectoryPath__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _internal_homeDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"Library/Caches/GeoServices"];
  v3 = _internal_geoServicesCacheDirectoryPath__directory;
  _internal_geoServicesCacheDirectoryPath__directory = v2;

  v4 = GEOGetGEOFilePathsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = _internal_geoServicesCacheDirectoryPath__directory;
    _os_log_impl(&dword_18660C000, v4, OS_LOG_TYPE_DEBUG, "geoServicesCacheDirectory: %@", &v5, 0xCu);
  }
}

+ (id)dictionaryRepresentation
{
  v40[2] = *MEMORY[0x1E69E9840];
  v39[0] = @"homeDirectory";
  _internal_homeDirectory = [self _internal_homeDirectory];
  v40[0] = _internal_homeDirectory;
  v39[1] = @"geoServicesCacheDirectoryPath";
  _internal_geoServicesCacheDirectoryPath = [self _internal_geoServicesCacheDirectoryPath];
  v40[1] = _internal_geoServicesCacheDirectoryPath;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v6 = [v5 mutableCopy];

  v7 = +[GEOFilePathsPrivate systemContainerPathUsingLibSystem];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"<nil>";
  }

  v38[0] = v9;
  v37[1] = @"systemContainerLibraryPathUsingLibSystem";
  v10 = +[GEOFilePathsPrivate systemContainerLibraryPathUsingLibSystem];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"<nil>";
  }

  v38[1] = v12;
  v37[2] = @"systemContainerCachesPathUsingLibSystem";
  v13 = +[GEOFilePathsPrivate systemContainerCachesPathUsingLibSystem];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"<nil>";
  }

  v38[2] = v15;
  v37[3] = @"daemonContainerPathUsingLibSystem";
  v16 = +[GEOFilePathsPrivate daemonContainerPathUsingLibSystem];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"<nil>";
  }

  v38[3] = v18;
  v37[4] = @"daemonContainerLibraryPathUsingLibSystem";
  v19 = +[GEOFilePathsPrivate daemonContainerLibraryPathUsingLibSystem];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"<nil>";
  }

  v38[4] = v21;
  v37[5] = @"daemonContainerCachesPathUsingLibSystem";
  v22 = +[GEOFilePathsPrivate daemonContainerCachesPathUsingLibSystem];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"<nil>";
  }

  v38[5] = v24;
  v37[6] = @"userContainerLibPathUsingLibSystem";
  v25 = +[GEOFilePathsPrivate userContainerLibPathUsingLibSystem];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"<nil>";
  }

  v38[6] = v27;
  v37[7] = @"userContainerCachesPathUsingLibSystem";
  v28 = +[GEOFilePathsPrivate userContainerCachesPathUsingLibSystem];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"<nil>";
  }

  v38[7] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:8];
  [v6 addEntriesFromDictionary:v31];

  v32 = -1;
  do
  {
    v33 = v32 + 1;
    if (v32 <= 0x27)
    {
      v34 = off_1E705A750[v32];
      v35 = [GEOFilePaths pathFor:v32 + 1];
      [v6 setObject:v35 forKeyedSubscript:v34];
    }

    v32 = v33;
  }

  while (v33 != 40);

  return v6;
}

@end