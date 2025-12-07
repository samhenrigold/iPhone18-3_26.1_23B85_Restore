@interface HKPluginLoader
+ (Class)loadPrincipalClassConformingToProtocols:(id)protocols fromBundleAtURL:(id)l skipIfLoaded:(BOOL)loaded;
+ (id)loadPrincipalClassesConformingToProtocols:(id)protocols fromBundlesInDirectoryAtURL:(id)l skipLoadedBundles:(BOOL)bundles error:(id *)error;
@end

@implementation HKPluginLoader

+ (id)loadPrincipalClassesConformingToProtocols:(id)protocols fromBundlesInDirectoryAtURL:(id)l skipLoadedBundles:(BOOL)bundles error:(id *)error
{
  bundlesCopy = bundles;
  v33 = *MEMORY[0x1E69E9840];
  protocolsCopy = protocols;
  lCopy = l;
  v11 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v12 = [v11 contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:error];
  if (v12)
  {
    v24 = v11;
    v25 = lCopy;
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v12;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          pathExtension = [v18 pathExtension];
          v20 = [pathExtension isEqualToString:@"bundle"];

          if (v20)
          {
            v21 = [self loadPrincipalClassConformingToProtocols:protocolsCopy fromBundleAtURL:v18 skipIfLoaded:bundlesCopy];
            if (v21)
            {
              [v26 addObject:v21];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    v11 = v24;
    lCopy = v25;
    v12 = v23;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (Class)loadPrincipalClassConformingToProtocols:(id)protocols fromBundleAtURL:(id)l skipIfLoaded:(BOOL)loaded
{
  v45 = *MEMORY[0x1E69E9840];
  protocolsCopy = protocols;
  lCopy = l;
  v9 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:lCopy];
  v11 = v9;
  if (!v9)
  {
    _HKInitializeLogging(0, v10);
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[HKPluginLoader loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:];
    }

    goto LABEL_20;
  }

  if ([v9 isLoaded] && loaded)
  {
LABEL_20:
    v28 = 0;
    goto LABEL_28;
  }

  v37 = 0;
  v12 = [v11 loadAndReturnError:&v37];
  v13 = v37;
  v15 = v13;
  if (v12)
  {
    principalClass = [v11 principalClass];
    if (!principalClass)
    {
      _HKInitializeLogging(0, v16);
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        +[HKPluginLoader loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:];
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = protocolsCopy;
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [principalClass conformsToProtocol:{*(*(&v33 + 1) + 8 * i), v33}];
          if (v23)
          {
            _HKInitializeLogging(v23, v24);
            if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEBUG))
            {
              +[HKPluginLoader loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:];
            }

            v28 = principalClass;

            goto LABEL_27;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v44 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging(v25, v26);
    v27 = HKLogDefault;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (principalClass)
      {
        v30 = NSStringFromClass(principalClass);
      }

      else
      {
        v30 = @"<>";
      }

      v31 = [v18 hk_map:{&__block_literal_global_2, v33}];
      v32 = [v31 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v39 = lCopy;
      v40 = 2114;
      v41 = v30;
      v42 = 2114;
      v43 = v32;
      _os_log_error_impl(&dword_19197B000, v27, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: principal class %{public}@ doesn't conform to any of: %{public}@", buf, 0x20u);

      if (principalClass)
      {
      }
    }
  }

  else
  {
    _HKInitializeLogging(v13, v14);
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[HKPluginLoader loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:];
    }
  }

  v28 = 0;
LABEL_27:

LABEL_28:

  return v28;
}

+ (void)loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_19197B000, v1, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: %{public}@", v2, 0x16u);
}

+ (void)loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_19197B000, v0, OS_LOG_TYPE_ERROR, "Error: failed to get principal class from bundle %{public}@", v1, 0xCu);
}

+ (void)loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_19197B000, v0, OS_LOG_TYPE_DEBUG, "Loaded bundle %{public}@", v1, 0xCu);
}

+ (void)loadPrincipalClassConformingToProtocols:fromBundleAtURL:skipIfLoaded:.cold.4()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_19197B000, v0, OS_LOG_TYPE_ERROR, "Error: failed to instantiate bundle %{public}@", v1, 0xCu);
}

@end