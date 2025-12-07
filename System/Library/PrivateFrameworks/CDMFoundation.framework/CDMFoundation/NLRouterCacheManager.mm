@interface NLRouterCacheManager
+ (void)deleteAll;
@end

@implementation NLRouterCacheManager

+ (void)deleteAll
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Assistant/LLMCache/NLRouter"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager removeItemAtPath:v3 error:0] & 1) == 0)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "+[NLRouterCacheManager deleteAll]";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to delete LLM Cache at directory: %@", &v6, 0x16u);
    }
  }
}

@end