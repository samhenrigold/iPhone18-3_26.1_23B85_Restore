@interface MNFilePaths
+ (BOOL)createFolderIfNotPresent:(id)present error:(id *)error;
+ (NSDictionary)fileAttributes;
+ (NSString)commuteTracesDirectoryPath;
+ (NSString)navTempDirectoryPath;
+ (NSString)navTracesDirectoryPath;
+ (NSString)navdCacheDirectoryPath;
+ (NSString)routeCreationTracesDirectoryPath;
+ (NSString)routePlanningTracesDirectoryPath;
+ (id)_cachesDirectoryPath;
+ (id)_homeDirectoryPath;
+ (id)_validFilenameForTraceName:(id)name;
+ (id)tracePathForTraceName:(id)name extension:(id)extension directoryPath:(id)path;
@end

@implementation MNFilePaths

+ (NSString)navTempDirectoryPath
{
  if (navTempDirectoryPath_once != -1)
  {
    dispatch_once(&navTempDirectoryPath_once, &__block_literal_global_33_9858);
  }

  v3 = navTempDirectoryPath_navTracesPath;

  return v3;
}

+ (id)_validFilenameForTraceName:(id)name
{
  v3 = [name componentsSeparatedByString:@"\n"];
  firstObject = [v3 firstObject];

  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[\x00/\\\\]+" options:0 error:0];
  v6 = [v5 stringByReplacingMatchesInString:firstObject options:0 range:0 withTemplate:{objc_msgSend(firstObject, "length"), @"_"}];

  return v6;
}

+ (id)tracePathForTraceName:(id)name extension:(id)extension directoryPath:(id)path
{
  pathCopy = path;
  extensionCopy = extension;
  v9 = [MNFilePaths _validFilenameForTraceName:name];
  v10 = [v9 stringByAppendingPathExtension:extensionCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:pathCopy isDirectory:0] & 1) == 0)
  {
    [MNFilePaths createFolderIfNotPresent:pathCopy error:0];
  }

  v12 = [pathCopy stringByAppendingPathComponent:v10];

  return v12;
}

+ (BOOL)createFolderIfNotPresent:(id)present error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  presentCopy = present;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  if (![defaultManager fileExistsAtPath:presentCopy isDirectory:&v12])
  {
    v8 = +[MNFilePaths fileAttributes];
    v7 = 1;
    if ([defaultManager createDirectoryAtPath:presentCopy withIntermediateDirectories:1 attributes:v8 error:error])
    {
LABEL_11:

      goto LABEL_12;
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *error;
      *buf = 138412546;
      v14 = presentCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Could not create trace directory at path: %@. Error: %@", buf, 0x16u);
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if ((v12 & 1) == 0)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = presentCopy;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "File exists in place of traces directory at path: %@. Please remove it.", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

void __35__MNFilePaths_navTempDirectoryPath__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = +[MNFilePaths navdCacheDirectoryPath];
  v1 = [v0 stringByAppendingPathComponent:@"tmp"];
  v2 = navTempDirectoryPath_navTracesPath;
  navTempDirectoryPath_navTracesPath = v1;

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138477827;
    v5 = navTempDirectoryPath_navTracesPath;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "navTracesDirectoryPath: %{private}@", &v4, 0xCu);
  }
}

+ (NSString)commuteTracesDirectoryPath
{
  v2 = +[MNFilePaths navTracesDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"Commute"];

  return v3;
}

+ (NSString)routeCreationTracesDirectoryPath
{
  v2 = +[MNFilePaths navTracesDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"RouteCreation"];

  return v3;
}

+ (NSString)routePlanningTracesDirectoryPath
{
  v2 = +[MNFilePaths navTracesDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"RoutePlanning"];

  return v3;
}

+ (NSString)navTracesDirectoryPath
{
  if (navTracesDirectoryPath_once != -1)
  {
    dispatch_once(&navTracesDirectoryPath_once, &__block_literal_global_19);
  }

  v3 = navTracesDirectoryPath_navTracesPath;

  return v3;
}

void __37__MNFilePaths_navTracesDirectoryPath__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = +[MNFilePaths navdCacheDirectoryPath];
  v1 = [v0 stringByAppendingPathComponent:@"NavTraces"];
  v2 = navTracesDirectoryPath_navTracesPath;
  navTracesDirectoryPath_navTracesPath = v1;

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138477827;
    v5 = navTracesDirectoryPath_navTracesPath;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "navTracesDirectoryPath: %{private}@", &v4, 0xCu);
  }
}

+ (NSString)navdCacheDirectoryPath
{
  if (navdCacheDirectoryPath_once != -1)
  {
    dispatch_once(&navdCacheDirectoryPath_once, &__block_literal_global_14);
  }

  v3 = navdCacheDirectoryPath_navdCachePath;

  return v3;
}

void __37__MNFilePaths_navdCacheDirectoryPath__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = +[MNFilePaths _cachesDirectoryPath];
  v1 = [v0 stringByAppendingPathComponent:@"com.apple.navd"];
  v2 = navdCacheDirectoryPath_navdCachePath;
  navdCacheDirectoryPath_navdCachePath = v1;

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138477827;
    v5 = navdCacheDirectoryPath_navdCachePath;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "navdCacheDirectoryPath: %{private}@", &v4, 0xCu);
  }
}

+ (NSDictionary)fileAttributes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A3A0];
  v5[0] = *MEMORY[0x1E696A388];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)_cachesDirectoryPath
{
  if (_cachesDirectoryPath_once != -1)
  {
    dispatch_once(&_cachesDirectoryPath_once, &__block_literal_global_9882);
  }

  v3 = _cachesDirectoryPath_cachesPath;

  return v3;
}

void __35__MNFilePaths__cachesDirectoryPath__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = +[MNFilePaths _homeDirectoryPath];
  v1 = [v0 stringByAppendingPathComponent:@"Library/Caches/"];
  v2 = _cachesDirectoryPath_cachesPath;
  _cachesDirectoryPath_cachesPath = v1;

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138477827;
    v5 = _cachesDirectoryPath_cachesPath;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "cachesDirectory: %{private}@", &v4, 0xCu);
  }
}

+ (id)_homeDirectoryPath
{
  v2 = _homeDirectoryPath_homePath;
  _homeDirectoryPath_homePath = @"/var/mobile/";

  return @"/var/mobile/";
}

@end