@interface SIOutputData
+ (id)initWithConfig:(id)config;
- (BOOL)copyDataTo:(id)to;
- (BOOL)saveToDisk:(id)disk identifier:(id)identifier;
- (SIOutputData)initWithConfig:(id)config;
@end

@implementation SIOutputData

+ (id)initWithConfig:(id)config
{
  v13 = *MEMORY[0x277D85DE8];
  configCopy = config;
  algorithmOutputClassName = [configCopy algorithmOutputClassName];
  v5 = algorithmOutputClassName;
  if (algorithmOutputClassName)
  {
    v6 = [objc_alloc(NSClassFromString(algorithmOutputClassName)) initWithConfig:configCopy];
  }

  else
  {
    v7 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136380931;
      v10 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIData.m";
      v11 = 1025;
      v12 = 19;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** algorithm output class name is not specified in the subclass ***", &v9, 0x12u);
    }

    v6 = 0;
  }

  return v6;
}

- (SIOutputData)initWithConfig:(id)config
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136380931;
    v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIData.m";
    v8 = 1025;
    v9 = 25;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** init function for output data should be implemented by the subclass ***", &v6, 0x12u);
  }

  return 0;
}

- (BOOL)copyDataTo:(id)to
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIData.m";
    v7 = 1025;
    v8 = 31;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Not Supported for output data ***", &v5, 0x12u);
  }

  return 0;
}

- (BOOL)saveToDisk:(id)disk identifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136380931;
    v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIData.m";
    v8 = 1025;
    v9 = 38;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** saveToDisk function for output data should be implemented by the subclass ***", &v6, 0x12u);
  }

  return 0;
}

@end