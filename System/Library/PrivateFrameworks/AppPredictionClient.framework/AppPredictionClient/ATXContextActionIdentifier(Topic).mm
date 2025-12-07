@interface ATXContextActionIdentifier(Topic)
- (id)initWithTopic:()Topic sectionBundleIdentifier:;
@end

@implementation ATXContextActionIdentifier(Topic)

- (id)initWithTopic:()Topic sectionBundleIdentifier:
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = objc_opt_new();
    v10 = [ATXSpotlightContextAdapter isSpotlightRecentSectionIdentifier:v8];
    if (v10)
    {
      v11 = __atxlog_handle_blending(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXContextActionIdentifier: skipping recent topic: %@, %@", &v20, 0x16u);
      }

      selfCopy = 0;
    }

    else
    {
      v11 = [v9 contextCodeIdentifierWithSectionBundleIdentifier:v8];
      v13 = [ATXSpotlightAction spotlightActionTypeFromTopic:v6];
      if ([v13 length])
      {
        v14 = [objc_opt_class() actionTypeFromSpotlightActionType:v13];
        v15 = [ATXSpotlightAction actionIdentifierFromTopic:v6];
        v16 = [v15 hash];
        v17 = [v11 length];
        if (v17 && (v17 = [v13 length]) != 0 && (v17 = -[NSObject length](v14, "length")) != 0 && v16)
        {
          self = [self initWithContext:v11 subType:v14 instanceIdentifierInteger:v16];
          selfCopy = self;
        }

        else
        {
          v18 = __atxlog_handle_blending(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v20 = 138413058;
            v21 = v11;
            v22 = 2112;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            v26 = 2112;
            v27 = v15;
            _os_log_debug_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEBUG, "ATXContextActionIdentifier: expected component missing: %@, %@, %@, %@", &v20, 0x2Au);
          }

          selfCopy = 0;
        }
      }

      else
      {
        v14 = __atxlog_handle_blending(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(ATXContextActionIdentifier(Topic) *)v8 initWithTopic:v6 sectionBundleIdentifier:v14];
        }

        selfCopy = 0;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithTopic:()Topic sectionBundleIdentifier:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: spotlightActionType is nil: %@, %@", &v3, 0x16u);
}

@end