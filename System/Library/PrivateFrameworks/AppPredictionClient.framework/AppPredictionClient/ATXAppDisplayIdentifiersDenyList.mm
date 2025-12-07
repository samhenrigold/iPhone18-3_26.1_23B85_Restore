@interface ATXAppDisplayIdentifiersDenyList
- (ATXAppDisplayIdentifiersDenyList)init;
- (id)bundleIdentifiersNotAllowed;
- (void)bundleIdentifiersNotAllowed;
@end

@implementation ATXAppDisplayIdentifiersDenyList

- (ATXAppDisplayIdentifiersDenyList)init
{
  v6.receiver = self;
  v6.super_class = ATXAppDisplayIdentifiersDenyList;
  v2 = [(ATXAppDisplayIdentifiersDenyList *)&v6 init];
  if (v2)
  {
    v3 = [ATXAssets2 pathForResource:@"ATXAppDisplayIdentifiersDenyList" ofType:@"plist" isDirectory:0];
    path = v2->_path;
    v2->_path = v3;
  }

  return v2;
}

- (id)bundleIdentifiersNotAllowed
{
  v49 = *MEMORY[0x1E69E9840];
  p_path = &self->_path;
  if (self->_path)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = *p_path;
    v47 = 0;
    v6 = [v4 initWithContentsOfFile:v5 options:1 error:&v47];
    v7 = v47;
    objc_autoreleasePoolPop(v3);
    if (v6)
    {
      v46 = 0;
      v9 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v46];
      v10 = v46;

      if (v9)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v9 = v9;
          v13 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v43;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v43 != v15)
                {
                  objc_enumerationMutation(v9);
                }

                v17 = *(*(&v42 + 1) + 8 * i);
                objc_opt_class();
                v18 = objc_opt_isKindOfClass();
                if ((v18 & 1) == 0)
                {
                  v34 = __atxlog_handle_default(v18);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    [(ATXAppDisplayIdentifiersDenyList *)v17 bundleIdentifiersNotAllowed:v34];
                  }

                  goto LABEL_29;
                }
              }

              v14 = [v9 countByEnumeratingWithState:&v42 objects:v48 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v19 = [MEMORY[0x1E695DFD8] setWithArray:{v9, v42}];
          goto LABEL_30;
        }

        v27 = __atxlog_handle_default(isKindOfClass);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(ATXAppDisplayIdentifiersDenyList *)p_path bundleIdentifiersNotAllowed:v27];
        }
      }

      else
      {
        v20 = __atxlog_handle_default(v11);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(ATXAppDisplayIdentifiersDenyList *)v10 bundleIdentifiersNotAllowed:v20];
        }
      }

LABEL_29:
      v19 = 0;
    }

    else
    {
      v9 = __atxlog_handle_default(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ATXAppDisplayIdentifiersDenyList *)p_path bundleIdentifiersNotAllowed];
      }

      v19 = 0;
      v10 = v7;
    }

LABEL_30:

    goto LABEL_31;
  }

  v10 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ATXAppDisplayIdentifiersDenyList *)v10 bundleIdentifiersNotAllowed];
  }

  v19 = 0;
LABEL_31:

  return v19;
}

- (void)bundleIdentifiersNotAllowed
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "Error loading ATXAppDisplayIdentifiersDenyList with path %@: %@", &v4, 0x16u);
}

@end