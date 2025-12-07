@interface LSApplicationRecord(CX)
+ (id)cx_applicationRecordForBundleIdentifier:()CX;
+ (id)cx_applicationRecordForConnection:()CX;
- (BOOL)containsBackgroundModeOptions:()CX;
- (uint64_t)cx_backgroundModeOptions;
@end

@implementation LSApplicationRecord(CX)

+ (id)cx_applicationRecordForBundleIdentifier:()CX
{
  v3 = a3;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v4)
  {
    v7 = CXDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(CX) *)v3 cx_applicationRecordForBundleIdentifier:v6, v7];
    }
  }

  return v4;
}

+ (id)cx_applicationRecordForConnection:()CX
{
  v4 = a3;
  cx_bundleIdentifier = [v4 cx_bundleIdentifier];
  if ([cx_bundleIdentifier length])
  {
    v6 = [self cx_applicationRecordForBundleIdentifier:cx_bundleIdentifier];
  }

  else
  {
    v7 = CXDefaultLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(CX) *)v4 cx_applicationRecordForConnection:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (uint64_t)cx_backgroundModeOptions
{
  HasBackgroundMode = _cx_LSAppRecordHasBackgroundMode(self, @"voip");
  if (_cx_LSAppRecordHasBackgroundMode(self, @"push-to-talk"))
  {
    return HasBackgroundMode | 2;
  }

  else
  {
    return HasBackgroundMode;
  }
}

- (BOOL)containsBackgroundModeOptions:()CX
{
  cx_backgroundModeOptions = [self cx_backgroundModeOptions];
  if (a3)
  {
    return (a3 & ~cx_backgroundModeOptions) == 0;
  }

  else
  {
    return cx_backgroundModeOptions == 0;
  }
}

+ (void)cx_applicationRecordForBundleIdentifier:()CX .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B47F3000, log, OS_LOG_TYPE_ERROR, "Attempt to retrieve application record for bundle identifier %@ failed with error: %@", &v3, 0x16u);
}

+ (void)cx_applicationRecordForConnection:()CX .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Could not obtain bundle identifier from connection %@", &v2, 0xCu);
}

@end