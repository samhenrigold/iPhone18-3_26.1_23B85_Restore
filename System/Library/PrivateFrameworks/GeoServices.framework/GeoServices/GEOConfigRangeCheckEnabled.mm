@interface GEOConfigRangeCheckEnabled
@end

@implementation GEOConfigRangeCheckEnabled

void ___GEOConfigRangeCheckEnabled_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[GEOPlatform sharedPlatform];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [GEOFilePaths pathFor:1];
    v3 = [v2 stringByAppendingPathComponent:@"GEOConfigRangeClampDisabled"];
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    if (v5)
    {
      _rangeCheckEnabled = 1;
      v6 = GEOGetUserDefaultsLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_ERROR, "!!WARNING!! %@ found, GEOConfig Range Clamping has been disabled", &v7, 0xCu);
      }
    }
  }
}

@end