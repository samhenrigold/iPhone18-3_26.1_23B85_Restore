@interface ACHAwardPluginSystem
- (ACHAwardPluginSystem)init;
- (Class)_loadPrincipalClassConformingToProtocols:(id)protocols fromBundleAtPath:(id)path;
- (id)_createPluginsFromClasses:(id)classes;
- (id)_loadPrincipalClassesConformingToProtocols:(id)protocols fromBundlesInDirectoryAtPath:(id)path error:(id *)error;
- (id)_pluginClasses;
- (id)_pluginDirectoryPath;
- (id)_principalClassProtocols;
- (id)createProgressProviders;
- (id)createTemplateAssetSources;
- (void)_loadPlugins;
@end

@implementation ACHAwardPluginSystem

- (ACHAwardPluginSystem)init
{
  v6.receiver = self;
  v6.super_class = ACHAwardPluginSystem;
  v2 = [(ACHAwardPluginSystem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    progressProviders = v2->_progressProviders;
    v2->_progressProviders = MEMORY[0x277CBEBF8];

    [(ACHAwardPluginSystem *)v3 _loadPlugins];
  }

  return v3;
}

- (id)_pluginDirectoryPath
{
  v2 = GSSystemRootDirectory();

  return [v2 stringByAppendingPathComponent:@"/System/Library/Fitness/Plugins"];
}

- (id)_principalClassProtocols
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_28356FF18;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)_pluginClasses
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _pluginDirectoryPath = [(ACHAwardPluginSystem *)self _pluginDirectoryPath];
  _principalClassProtocols = [(ACHAwardPluginSystem *)self _principalClassProtocols];
  v10 = 0;
  v6 = [(ACHAwardPluginSystem *)self _loadPrincipalClassesConformingToProtocols:_principalClassProtocols fromBundlesInDirectoryAtPath:_pluginDirectoryPath error:&v10];
  v7 = v10;

  if (v6)
  {
    [v3 addObjectsFromArray:v6];
  }

  else if (([v7 hk_isCocoaNoSuchFileError] & 1) == 0)
  {
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACHAwardPluginSystem _pluginClasses];
    }
  }

  return v3;
}

- (id)_loadPrincipalClassesConformingToProtocols:(id)protocols fromBundlesInDirectoryAtPath:(id)path error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  protocolsCopy = protocols;
  pathCopy = path;
  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = pathCopy;
  v10 = [v8 contentsOfDirectoryAtPath:pathCopy error:error];
  if (v10)
  {
    v24 = v8;
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v10;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          pathExtension = [v16 pathExtension];
          v19 = [pathExtension isEqualToString:@"bundle"];

          if (v19)
          {
            v20 = [v9 stringByAppendingPathComponent:v16];
            v21 = [(ACHAwardPluginSystem *)self _loadPrincipalClassConformingToProtocols:protocolsCopy fromBundleAtPath:v20];
            if (v21)
            {
              [v25 addObject:v21];
            }
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v10 = v23;
    v8 = v24;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (Class)_loadPrincipalClassConformingToProtocols:(id)protocols fromBundleAtPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  protocolsCopy = protocols;
  pathCopy = path;
  v7 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:pathCopy];
  v8 = v7;
  if (v7)
  {
    v28 = 0;
    v9 = [v7 loadAndReturnError:&v28];
    v10 = v28;
    if (v9)
    {
      principalClass = [v8 principalClass];
      if (!principalClass)
      {
        v12 = ACHLogDefault();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [ACHAwardPluginSystem _loadPrincipalClassConformingToProtocols:fromBundleAtPath:];
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = protocolsCopy;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if ([principalClass conformsToProtocol:{*(*(&v24 + 1) + 8 * i), v24}])
            {
              v20 = ACHLogDefault();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                [ACHAwardPluginSystem _loadPrincipalClassConformingToProtocols:fromBundleAtPath:];
              }

              v19 = principalClass;
              goto LABEL_26;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v35 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v18 = ACHLogDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (principalClass)
        {
          v22 = NSStringFromClass(principalClass);
        }

        else
        {
          v22 = @"<>";
        }

        v23 = [v13 hk_map:&__block_literal_global_11, v24];
        *buf = 138543874;
        v30 = pathCopy;
        v31 = 2114;
        v32 = v22;
        v33 = 2114;
        v34 = v23;
        _os_log_error_impl(&dword_221DDC000, v18, OS_LOG_TYPE_ERROR, "Error: failed to load bundle %{public}@: principal class %{public}@ doesn't conform to any of: %{public}@", buf, 0x20u);
        if (principalClass)
        {
        }
      }

      v19 = 0;
      v13 = v18;
    }

    else
    {
      v13 = ACHLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ACHAwardPluginSystem _loadPrincipalClassConformingToProtocols:fromBundleAtPath:];
      }

      v19 = 0;
    }

LABEL_26:
  }

  else
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHAwardPluginSystem _loadPrincipalClassConformingToProtocols:fromBundleAtPath:];
    }

    v19 = 0;
  }

  return v19;
}

- (id)_createPluginsFromClasses:(id)classes
{
  v4 = &unk_28356FF18;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ACHAwardPluginSystem__createPluginsFromClasses___block_invoke;
  v8[3] = &unk_278491808;
  v9 = v4;
  v10 = sel_shouldLoadPlugin;
  v5 = v4;
  v6 = [classes hk_map:v8];

  return v6;
}

id __50__ACHAwardPluginSystem__createPluginsFromClasses___block_invoke(uint64_t a1, objc_class *a2)
{
  if ([(objc_class *)a2 conformsToProtocol:*(a1 + 32)]&& ((objc_opt_respondsToSelector() & 1) == 0 || [(objc_class *)a2 shouldLoadPlugin]))
  {
    v3 = objc_alloc_init(a2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_loadPlugins
{
  _pluginClasses = [(ACHAwardPluginSystem *)self _pluginClasses];
  v3 = [(ACHAwardPluginSystem *)self _createPluginsFromClasses:_pluginClasses];
  plugins = self->_plugins;
  self->_plugins = v3;
}

- (id)createTemplateAssetSources
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_plugins;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        templateAssetSource = [v9 templateAssetSource];
        if (templateAssetSource)
        {
          pluginIdentifier = [v9 pluginIdentifier];
          [v3 setObject:templateAssetSource forKeyedSubscript:pluginIdentifier];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)createProgressProviders
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_plugins;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          progressProvider = [v9 progressProvider];
          if (progressProvider)
          {
            pluginIdentifier = [v9 pluginIdentifier];
            [v3 setObject:progressProvider forKeyedSubscript:pluginIdentifier];

            v12 = [(NSArray *)self->_progressProviders arrayByAddingObject:progressProvider];
            progressProviders = self->_progressProviders;
            self->_progressProviders = v12;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_loadPrincipalClassConformingToProtocols:fromBundleAtPath:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Error: failed to get principal class from bundle %{public}@", v1, 0xCu);
}

- (void)_loadPrincipalClassConformingToProtocols:fromBundleAtPath:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_221DDC000, v0, OS_LOG_TYPE_DEBUG, "Loaded bundle %{public}@", v1, 0xCu);
}

- (void)_loadPrincipalClassConformingToProtocols:fromBundleAtPath:.cold.4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Error: failed to instantiate bundle %{public}@", v1, 0xCu);
}

@end