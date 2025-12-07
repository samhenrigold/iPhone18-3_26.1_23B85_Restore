@interface CDMRegexSpanMatchService
- (id)setupSpanMatcher:(id)matcher;
@end

@implementation CDMRegexSpanMatchService

- (id)setupSpanMatcher:(id)matcher
{
  v13 = *MEMORY[0x1E69E9840];
  dynamicConfig = [matcher dynamicConfig];
  v4 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.voc"];

  getAssetPath = [v4 getAssetPath];
  if (getAssetPath)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[CDMRegexSpanMatchService setupSpanMatcher:]";
      v11 = 2112;
      v12 = getAssetPath;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Initializing RegexSpanMatcher from path %@", &v9, 0x16u);
    }

    v7 = [[CDMRegexSpanMatcher alloc] initWithCachePath:getAssetPath];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end