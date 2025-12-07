@interface NSBundle
+ (void)sk_bundleWithIdentifier:(void *)identifier partnerAppDirectoryURL:;
- (uint64_t)sr_bundleTypeWithPartnerAppDirectoryURL:(void *)l;
@end

@implementation NSBundle

+ (void)sk_bundleWithIdentifier:(void *)identifier partnerAppDirectoryURL:
{
  v37[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
  }

  v5 = qword_1EE02AB38;
  if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v32 = a2;
    _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_INFO, "Looking for %{public}@ in LaunchServices", buf, 0xCu);
  }

  v29 = 0;
  v6 = [MEMORY[0x1E69635F8] sr_applicationRecordWithIdentifier:a2 error:&v29];
  if (!v6)
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v7 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = a2;
      v33 = 2114;
      identifierCopy2 = v29;
      _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_DEFAULT, "No application record found for %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  v8 = [objc_msgSend(v6 "URL")];
  if (!v8)
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v9 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v32 = a2;
      v33 = 2114;
      identifierCopy2 = identifier;
      _os_log_impl(&dword_1C914D000, v9, OS_LOG_TYPE_INFO, "Searching for study bundle %{public}@ in %{public}@", buf, 0x16u);
    }

    v10 = [a2 stringByAppendingPathExtension:@"bundle"];
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0 relativeToURL:identifier];
    v8 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleWithURL:{v11), "bundlePath"}];
    if (!v8)
    {
      if (_MergedGlobals_6 != -1)
      {
        dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
      }

      v19 = qword_1EE02AB38;
      if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v32 = a2;
        v33 = 2114;
        identifierCopy2 = identifier;
        v35 = 2114;
        v36 = @"loadedStudies.plist";
        _os_log_impl(&dword_1C914D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ not found in %{public}@. Trying %{public}@", buf, 0x20u);
      }

      v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"loadedStudies.plist" isDirectory:0 relativeToURL:identifier];
      if (_MergedGlobals_6 != -1)
      {
        dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
      }

      v21 = qword_1EE02AB38;
      if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v32 = a2;
        v33 = 2114;
        identifierCopy2 = v20;
        _os_log_impl(&dword_1C914D000, v21, OS_LOG_TYPE_INFO, "Searching for %{public}@ in plist %{public}@", buf, 0x16u);
      }

      if (v20)
      {
        v30 = 0;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v20 error:&v30];
        if (v30)
        {
          if (_MergedGlobals_6 != -1)
          {
            dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
          }

          v23 = qword_1EE02AB38;
          if (!os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 138543362;
          v32 = v20;
          v24 = "Error creating dictionary from %{public}@";
        }

        else
        {
          v25 = [objc_msgSend(v22 objectForKeyedSubscript:{@"studies", "objectForKeyedSubscript:", a2}];
          if (!v25)
          {
            if (_MergedGlobals_6 != -1)
            {
              dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
            }

            v28 = qword_1EE02AB38;
            if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v32 = a2;
              v33 = 2114;
              identifierCopy2 = v20;
              _os_log_impl(&dword_1C914D000, v28, OS_LOG_TYPE_DEFAULT, "No %{public}@ was found in %{public}@", buf, 0x16u);
            }

            goto LABEL_18;
          }

          v26 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@-v%@", a2, objc_msgSend(v25, "stringValue")), "stringByAppendingPathExtension:", @"bundle"];
          v27 = MEMORY[0x1E696AEC0];
          v37[0] = [identifier path];
          v37[1] = v26;
          v12 = [v27 pathWithComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v37, 2)}];
          if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
          {
            if (!v12)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          if (_MergedGlobals_6 != -1)
          {
            dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
          }

          v23 = qword_1EE02AB38;
          if (!os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 138543362;
          v32 = v12;
          v24 = "Failed to locate bundle %{public}@";
        }
      }

      else
      {
        if (_MergedGlobals_6 != -1)
        {
          dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
        }

        v23 = qword_1EE02AB38;
        if (!os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 138543362;
        v32 = 0;
        v24 = "Failed to location %{public}@";
      }

      _os_log_error_impl(&dword_1C914D000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
      goto LABEL_18;
    }
  }

  v12 = v8;
LABEL_17:
  v13 = [MEMORY[0x1E696AAE8] bundleWithPath:v12];
  if (v13)
  {
LABEL_19:
    v14 = v13;
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v15 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
    {
      bundleURL = [v14 bundleURL];
      *buf = 138543618;
      v32 = a2;
      v33 = 2114;
      identifierCopy2 = bundleURL;
      _os_log_impl(&dword_1C914D000, v15, OS_LOG_TYPE_INFO, "Found bundle for %{public}@ at %{public}@", buf, 0x16u);
    }

    return v14;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:a2];
  if (v13)
  {
    goto LABEL_19;
  }

  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
  }

  v17 = qword_1EE02AB38;
  if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v32 = a2;
    _os_log_error_impl(&dword_1C914D000, v17, OS_LOG_TYPE_ERROR, "Failed to find bundle for %{public}@", buf, 0xCu);
  }

  return 0;
}

uint64_t __51__NSBundle_SensorKitPrivate__sk_requiredCategories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = isValidString(a2);
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v7 = [a3 objectForKeyedSubscript:@"Required"];
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        result = [v7 BOOLValue];
        if (result)
        {
          v8 = *(a1 + 32);

          return [v8 addObject:a2];
        }
      }
    }
  }

  return result;
}

uint64_t __61__NSBundle_SensorKitPrivate__sk_perCategoryDetailDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = isValidString(a2);
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v7 = [a3 objectForKeyedSubscript:@"Description"];
      v8 = [*(a1 + 32) objectForInfoDictionaryKey:v7];
      if (v8)
      {
        v7 = v8;
      }

      result = isValidString(v7);
      if (result)
      {
        v9 = *(a1 + 40);

        return [v9 setObject:v7 forKeyedSubscript:a2];
      }
    }
  }

  return result;
}

- (uint64_t)sr_bundleTypeWithPartnerAppDirectoryURL:(void *)l
{
  v20 = *MEMORY[0x1E69E9840];
  if (!l)
  {
    return 0;
  }

  v15 = 0;
  if ([l bundleIdentifier])
  {
    if ([MEMORY[0x1E69635F8] sr_applicationRecordWithIdentifier:objc_msgSend(l error:{"bundleIdentifier"), &v15}])
    {
      if (_MergedGlobals_6 != -1)
      {
        dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
      }

      v4 = qword_1EE02AB38;
      if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [l bundleIdentifier];
        *buf = 138543362;
        bundleURL = bundleIdentifier;
        _os_log_impl(&dword_1C914D000, v4, OS_LOG_TYPE_INFO, "Detected %{public}@ as app bundle type", buf, 0xCu);
      }

      return 2;
    }

    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v8 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [l bundleIdentifier];
      *buf = 138543618;
      bundleURL = bundleIdentifier2;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_1C914D000, v8, OS_LOG_TYPE_DEFAULT, "No application record found for %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v7 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      bundleURL = [l bundleURL];
      _os_log_error_impl(&dword_1C914D000, v7, OS_LOG_TYPE_ERROR, "No bundle identifier found for bundle URL: %{public}@", buf, 0xCu);
    }
  }

  if (![objc_msgSend(objc_msgSend(MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(objc_msgSend(l isDirectory:"bundleURL") relativeToURL:{"lastPathComponent"), 1, a2), "path"), "isEqualToString:", objc_msgSend(objc_msgSend(l, "bundleURL"), "path")}])
  {
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
    }

    v12 = qword_1EE02AB38;
    if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_ERROR))
    {
      bundleIdentifier3 = [l bundleIdentifier];
      *buf = 138543362;
      bundleURL = bundleIdentifier3;
      _os_log_error_impl(&dword_1C914D000, v12, OS_LOG_TYPE_ERROR, "Failed to detect a bundle type for %{public}@", buf, 0xCu);
    }

    return 0;
  }

  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
  }

  v10 = qword_1EE02AB38;
  v6 = 1;
  if (os_log_type_enabled(qword_1EE02AB38, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier4 = [l bundleIdentifier];
    *buf = 138543362;
    bundleURL = bundleIdentifier4;
    v6 = 1;
    _os_log_impl(&dword_1C914D000, v10, OS_LOG_TYPE_INFO, "Detected %{public}@ as study bundle type", buf, 0xCu);
  }

  return v6;
}

@end