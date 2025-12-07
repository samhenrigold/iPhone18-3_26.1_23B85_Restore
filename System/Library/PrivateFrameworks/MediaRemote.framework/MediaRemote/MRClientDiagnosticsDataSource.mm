@interface MRClientDiagnosticsDataSource
+ (MRClientDiagnosticsDataSource)sharedDataSource;
- (MRClientDiagnosticsDataSource)init;
- (NSString)diagnostic;
- (void)add:(id)add;
- (void)remove:(id)remove;
@end

@implementation MRClientDiagnosticsDataSource

+ (MRClientDiagnosticsDataSource)sharedDataSource
{
  if (sharedDataSource_onceToken != -1)
  {
    +[MRClientDiagnosticsDataSource sharedDataSource];
  }

  v3 = sharedDataSource___dataSource;

  return v3;
}

void __49__MRClientDiagnosticsDataSource_sharedDataSource__block_invoke()
{
  v0 = objc_alloc_init(MRClientDiagnosticsDataSource);
  v1 = sharedDataSource___dataSource;
  sharedDataSource___dataSource = v0;
}

- (MRClientDiagnosticsDataSource)init
{
  v7.receiver = self;
  v7.super_class = MRClientDiagnosticsDataSource;
  v2 = [(MRClientDiagnosticsDataSource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    map = v3->_map;
    v3->_map = dictionary;
  }

  return v3;
}

- (NSString)diagnostic
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_opt_new();
  [v3 appendFormat:@"Log History:\n\n"];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  v4 = [(MRClientDiagnosticsDataSource *)self map];
  allKeys = [v4 allKeys];

  obj = allKeys;
  v21 = [allKeys countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        [v3 appendFormat:@"Registered %@ Instances:\n\n", v7];
        v8 = [(MRClientDiagnosticsDataSource *)selfCopy map];
        v9 = [v8 objectForKeyedSubscript:v7];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              diagnosticDescription = [*(*(&v22 + 1) + 8 * j) diagnosticDescription];
              [v3 appendString:diagnosticDescription];

              v16 = [&stru_1F1513E38 stringByPaddingToLength:100 withString:@"-" startingAtIndex:0];
              [v3 appendString:v16];

              [v3 appendString:@"\n"];
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        [v3 appendString:@"\n"];
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  return v3;
}

- (void)add:(id)add
{
  addCopy = add;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MRClientDiagnosticsDataSource *)self map];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v9 = [(MRClientDiagnosticsDataSource *)self map];
    [v9 setObject:weakObjectsHashTable forKeyedSubscript:v5];
  }

  v10 = [(MRClientDiagnosticsDataSource *)self map];
  v11 = [v10 objectForKeyedSubscript:v5];
  [v11 addObject:addCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)remove:(id)remove
{
  removeCopy = remove;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_opt_class();
  v12 = NSStringFromClass(v5);
  v6 = [(MRClientDiagnosticsDataSource *)self map];
  v7 = [v6 objectForKeyedSubscript:v12];
  [v7 removeObject:removeCopy];

  v8 = [(MRClientDiagnosticsDataSource *)self map];
  v9 = [v8 objectForKeyedSubscript:v12];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = [(MRClientDiagnosticsDataSource *)self map];
    [v11 setObject:0 forKeyedSubscript:v12];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end