@interface PSUsageBundleManager
- (id)allUsageBundleApps;
- (void)_loadUsageBundlesWithHandler:(id)handler;
- (void)vendUsageBundleAppsWithHandler:(id)handler;
@end

@implementation PSUsageBundleManager

- (void)_loadUsageBundlesWithHandler:(id)handler
{
  v74 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  selfCopy = self;
  storageReporters = self->_storageReporters;
  if (!storageReporters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_storageReporters;
    self->_storageReporters = v6;

    storageReporters = self->_storageReporters;
  }

  [(NSMutableArray *)storageReporters removeAllObjects];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v44 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v43 = [&unk_1EFE65F28 countByEnumeratingWithState:&v63 objects:v73 count:16];
  v10 = 0;
  if (v43)
  {
    v42 = *v64;
    *&v9 = 138412546;
    v41 = v9;
LABEL_5:
    v11 = 0;
    v12 = v10;
    while (1)
    {
      if (*v64 != v42)
      {
        objc_enumerationMutation(&unk_1EFE65F28);
      }

      v13 = *(*(&v63 + 1) + 8 * v11);
      v15 = v14 = v13;
      v16 = [v15 stringByAppendingPathComponent:@"UsageBundles"];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = v12;
      v49 = v16;
      v17 = [v44 contentsOfDirectoryAtPath:v16 error:&v58];
      v10 = v58;

      obj = v17;
      v18 = [v17 countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v18)
      {
        v19 = v18;
        v45 = v11;
        v46 = v10;
        v20 = *v60;
        v21 = v49;
        v48 = *v60;
        do
        {
          v22 = 0;
          v50 = v19;
          do
          {
            if (*v60 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = [v21 stringByAppendingPathComponent:{*(*(&v59 + 1) + 8 * v22), v41}];
            v24 = _PSLoggingFacility(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v68 = v23;
              _os_log_impl(&dword_18B008000, v24, OS_LOG_TYPE_DEFAULT, "Loading usage bundle %@", buf, 0xCu);
            }

            pathExtension = [v23 pathExtension];
            v26 = [pathExtension isEqualToString:@"bundle"];

            if (v26)
            {
              v53 = v23;
              v52 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:v23];
              v27 = objc_alloc_init([v52 principalClass]);
              usageBundleApps = [v27 usageBundleApps];
              if ([usageBundleApps count])
              {
                [(NSMutableArray *)selfCopy->_storageReporters addObject:v27];
              }

              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v29 = usageBundleApps;
              v30 = [v29 countByEnumeratingWithState:&v54 objects:v71 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v55;
                while (2)
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v55 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v54 + 1) + 8 * i);
                    [v34 setUsageBundleStorageReporter:v27];
                    bundleIdentifier = [v34 bundleIdentifier];
                    [(NSDictionary *)v8 setValue:v34 forKey:bundleIdentifier];

                    if (handlerCopy && (handlerCopy[2](handlerCopy, v34) & 1) == 0)
                    {

                      v36 = 0;
                      v8 = 0;
                      goto LABEL_30;
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v54 objects:v71 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }

                v36 = 1;
LABEL_30:
                v20 = v48;
                v21 = v49;
              }

              else
              {
                v36 = 1;
              }

              v19 = v50;
              if (!v36)
              {
                goto LABEL_36;
              }
            }

            else
            {
            }

            ++v22;
          }

          while (v22 != v19);
          v19 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v19);
        v36 = 1;
LABEL_36:
        v11 = v45;
        v10 = v46;
      }

      else
      {
        v36 = 1;
      }

      if (v10)
      {
        v38 = _PSLoggingFacility(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v41;
          v68 = v49;
          v69 = 2112;
          v70 = v10;
          _os_log_impl(&dword_18B008000, v38, OS_LOG_TYPE_DEFAULT, "Error loading usage bundles from %@: %@", buf, 0x16u);
        }
      }

      if (!v36)
      {
        break;
      }

      ++v11;
      v12 = v10;
      if (v11 == v43)
      {
        v43 = [&unk_1EFE65F28 countByEnumeratingWithState:&v63 objects:v73 count:16];
        if (v43)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  bundleMap = selfCopy->_bundleMap;
  selfCopy->_bundleMap = v8;
  v40 = v8;
}

- (id)allUsageBundleApps
{
  bundleMap = self->_bundleMap;
  if (!bundleMap)
  {
    [(PSUsageBundleManager *)self _loadUsageBundlesWithHandler:0];
    bundleMap = self->_bundleMap;
  }

  return [(NSDictionary *)bundleMap allValues];
}

- (void)vendUsageBundleAppsWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  bundleMap = self->_bundleMap;
  if (bundleMap)
  {
    if (handlerCopy)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      allValues = [(NSDictionary *)bundleMap allValues];
      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(allValues);
            }

            handlerCopy[2](handlerCopy, *(*(&v11 + 1) + 8 * v10++));
          }

          while (v8 != v10);
          v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    [(PSUsageBundleManager *)self _loadUsageBundlesWithHandler:handlerCopy];
  }
}

@end