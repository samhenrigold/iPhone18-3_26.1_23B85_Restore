@interface GCConfigurationBundleFileSystemSource
- (GCConfigurationBundleFileSystemSource)init;
- (id)configurationBundleURLsForType:(id)type;
@end

@implementation GCConfigurationBundleFileSystemSource

- (GCConfigurationBundleFileSystemSource)init
{
  v6.receiver = self;
  v6.super_class = GCConfigurationBundleFileSystemSource;
  v2 = [(GCConfigurationBundleFileSystemSource *)&v6 init];
  v3 = gc_log_create_configuration("Filesystem");
  log = v2->_log;
  v2->_log = v3;

  return v2;
}

- (id)configurationBundleURLsForType:(id)type
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourceURL = [v20 resourceURL];
  path = [resourceURL path];
  stringByResolvingSymlinksInPath = [path stringByResolvingSymlinksInPath];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:stringByResolvingSymlinksInPath];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(GCConfigurationBundleFileSystemSource *)log configurationBundleURLsForType:v9];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __72__GCConfigurationBundleFileSystemSource_configurationBundleURLsForType___block_invoke;
  v26[3] = &unk_1E8413C08;
  v26[4] = self;
  v21 = defaultManager;
  v11 = [defaultManager enumeratorAtURL:v9 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:7 errorHandler:v26];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = self->_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(GCConfigurationBundleFileSystemSource *)v27 configurationBundleURLsForType:v17, v16, &v28];
        }

        [v4 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v13);
  }

  v18 = [GCFuture futureWithResult:v4];

  return v18;
}

uint64_t __72__GCConfigurationBundleFileSystemSource_configurationBundleURLsForType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __72__GCConfigurationBundleFileSystemSource_configurationBundleURLsForType___block_invoke_cold_1(v4, v5);
  }

  return 1;
}

- (void)configurationBundleURLsForType:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 path];
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_1D2C3B000, v3, OS_LOG_TYPE_DEBUG, "Checking '%{public}@'...", &v5, 0xCu);
}

- (void)configurationBundleURLsForType:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 path];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_1D2C3B000, v7, OS_LOG_TYPE_DEBUG, "    %@", a1, 0xCu);
}

void __72__GCConfigurationBundleFileSystemSource_configurationBundleURLsForType___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

@end