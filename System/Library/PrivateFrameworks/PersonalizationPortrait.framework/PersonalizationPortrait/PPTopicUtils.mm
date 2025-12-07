@interface PPTopicUtils
+ (id)cachedTopicScoresAtPath:(id)path;
@end

@implementation PPTopicUtils

+ (id)cachedTopicScoresAtPath:(id)path
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [MEMORY[0x1E69C5D40] dictionaryWithPath:path error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = pp_topics_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_ERROR, "Could not read Portrait topic cache plist: %@", buf, 0xCu);
    }
  }

  return v3;
}

@end