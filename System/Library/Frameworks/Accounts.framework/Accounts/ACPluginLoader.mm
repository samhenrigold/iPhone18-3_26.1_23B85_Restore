@interface ACPluginLoader
+ (id)_accountsPluginDirectoryURLs:(id)ls inAppleInternal:(BOOL)internal;
+ (id)_pluginWithName:(id)name inSubpath:(id)subpath inAppleInternal:(BOOL)internal;
+ (id)_validatedBundleAtURL:(id)l;
+ (id)pluginBundlesAtSubpath:(id)subpath;
+ (id)pluginWithName:(id)name inSubpath:(id)subpath;
+ (void)_populatePluginBundles:(id)bundles atSubpath:(id)subpath inAppleInternal:(BOOL)internal;
@end

@implementation ACPluginLoader

+ (id)_accountsPluginDirectoryURLs:(id)ls inAppleInternal:(BOOL)internal
{
  internalCopy = internal;
  v24[1] = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v6 = [MEMORY[0x1E695E0F0] mutableCopy];
  if (internalCopy)
  {
    defaultManager = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/AppleInternal/Library" isDirectory:1];
    v24[0] = defaultManager;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager URLsForDirectory:5 inDomains:8];
  }

  v9 = v8;

  if (v9 && (v10 = [v9 count]) != 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) URLByAppendingPathComponent:@"Accounts" isDirectory:{1, v19}];
          v17 = [v16 URLByAppendingPathComponent:lsCopy isDirectory:1];
          [v6 addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v11 = _ACLogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACPluginLoader _accountsPluginDirectoryURLs:v11 inAppleInternal:?];
    }
  }

  return v6;
}

+ (id)_validatedBundleAtURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v5 = [lastPathComponent hasSuffix:@"bundle"];

  if (!v5)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v25 = 0;
  v6 = *MEMORY[0x1E695DB78];
  v24 = 0;
  v7 = [lCopy getResourceValue:&v25 forKey:v6 error:&v24];
  v8 = v25;
  v9 = v24;
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    v12 = _ACLogSystem(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ACPluginLoader _validatedBundleAtURL:];
    }

    v13 = 0;
    goto LABEL_21;
  }

  if ([v8 BOOLValue])
  {
    goto LABEL_4;
  }

  v23 = 0;
  v14 = *MEMORY[0x1E695DBC8];
  v22 = 0;
  v15 = [lCopy getResourceValue:&v23 forKey:v14 error:&v22];
  v16 = v23;

  v17 = v22;
  if (v15)
  {
    bOOLValue = [v16 BOOLValue];
    if (bOOLValue)
    {
      v8 = v16;
      v10 = v17;
LABEL_4:
      v11 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
      v12 = v11;
      if (v11)
      {
        v12 = v11;
        v13 = v12;
      }

      else
      {
        v20 = _ACLogSystem(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = lCopy;
          _os_log_impl(&dword_1AC3CD000, v20, OS_LOG_TYPE_DEFAULT, "Couldn't create plugin at %@", buf, 0xCu);
        }

        v13 = 0;
      }

      goto LABEL_21;
    }

    v12 = _ACLogSystem(bOOLValue);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ACPluginLoader *)lCopy _validatedBundleAtURL:v12];
    }
  }

  else
  {
    v12 = _ACLogSystem(v18);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ACPluginLoader _validatedBundleAtURL:];
    }
  }

  v13 = 0;
  v10 = v17;
  v8 = v16;
LABEL_21:

LABEL_22:

  return v13;
}

+ (void)_populatePluginBundles:(id)bundles atSubpath:(id)subpath inAppleInternal:(BOOL)internal
{
  internalCopy = internal;
  v39 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  subpathCopy = subpath;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v24 = subpathCopy;
  v28 = internalCopy;
  [self _accountsPluginDirectoryURLs:subpathCopy inAppleInternal:internalCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    v27 = *MEMORY[0x1E695DB78];
    v26 = *MEMORY[0x1E695DBC8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        if (v14)
        {
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v27, v26, 0}];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __67__ACPluginLoader__populatePluginBundles_atSubpath_inAppleInternal___block_invoke;
          v30[3] = &__block_descriptor_33_e27_B24__0__NSURL_8__NSError_16l;
          v31 = v28;
          v16 = [defaultManager enumeratorAtURL:v14 includingPropertiesForKeys:v15 options:1 errorHandler:v30];

          nextObject = [v16 nextObject];
          if (nextObject)
          {
            v18 = nextObject;
            do
            {
              v19 = _ACLogSystem(nextObject);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v37 = v18;
                _os_log_debug_impl(&dword_1AC3CD000, v19, OS_LOG_TYPE_DEBUG, "Validating bundle at %@...", buf, 0xCu);
              }

              v20 = [self _validatedBundleAtURL:v18];
              v21 = v20;
              if (v20)
              {
                v20 = [bundlesCopy addObject:v20];
              }

              v22 = _ACLogSystem(v20);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v37 = v18;
                _os_log_debug_impl(&dword_1AC3CD000, v22, OS_LOG_TYPE_DEBUG, "Validated bundle at %@", buf, 0xCu);
              }

              nextObject2 = [v16 nextObject];

              v18 = nextObject2;
            }

            while (nextObject2);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v11);
  }
}

uint64_t __67__ACPluginLoader__populatePluginBundles_atSubpath_inAppleInternal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((*(a1 + 32) & 1) == 0)
  {
    v8 = _ACLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1AC3CD000, v8, OS_LOG_TYPE_DEFAULT, "Encountered an error while scanning for plugins at %@: %@", &v10, 0x16u);
    }
  }

  return 1;
}

+ (id)pluginBundlesAtSubpath:(id)subpath
{
  subpathCopy = subpath;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [self _populatePluginBundles:v5 atSubpath:subpathCopy inAppleInternal:0];
  v6 = ACIsInternal();
  if (v6)
  {
    v7 = _ACLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACPluginLoader pluginBundlesAtSubpath:v7];
    }

    [self _populatePluginBundles:v5 atSubpath:subpathCopy inAppleInternal:1];
  }

  v8 = [v5 copy];

  return v8;
}

+ (id)_pluginWithName:(id)name inSubpath:(id)subpath inAppleInternal:(BOOL)internal
{
  internalCopy = internal;
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  [self _accountsPluginDirectoryURLs:subpath inAppleInternal:internalCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v18 + 1) + 8 * v13);
      if (v14)
      {
        v15 = [v14 URLByAppendingPathComponent:nameCopy isDirectory:{1, v18}];
        v16 = [self _validatedBundleAtURL:v15];

        if (v16)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  return v16;
}

+ (id)pluginWithName:(id)name inSubpath:(id)subpath
{
  nameCopy = name;
  subpathCopy = subpath;
  v8 = [self _pluginWithName:nameCopy inSubpath:subpathCopy inAppleInternal:0];
  if (!v8)
  {
    v9 = ACIsInternal();
    if (v9)
    {
      v10 = _ACLogSystem(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[ACPluginLoader pluginWithName:inSubpath:];
      }

      v8 = [self _pluginWithName:nameCopy inSubpath:subpathCopy inAppleInternal:1];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (void)_validatedBundleAtURL:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_DEBUG, "Skipping file at %@ because it isn't a directory", &v2, 0xCu);
}

+ (void)pluginWithName:inSubpath:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1AC3CD000, v0, OS_LOG_TYPE_DEBUG, "Looking for AppleInternal plugin '%@' at '%@'", v1, 0x16u);
}

@end