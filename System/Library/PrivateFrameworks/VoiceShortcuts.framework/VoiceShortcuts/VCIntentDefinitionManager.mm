@interface VCIntentDefinitionManager
+ (id)allBundleIdentifiers;
+ (id)appInfoForBundleID:(id)d;
+ (id)intentDefinitionBundleURLForBundleID:(id)d;
+ (id)intentDefinitionURLsForBundleID:(id)d;
+ (id)intentDefinitionURLsForBundleID:(id)d inDirectory:(id)directory;
@end

@implementation VCIntentDefinitionManager

+ (id)allBundleIdentifiers
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = WFSyncedDefinitionDirectoryURL();
  v21[0] = v2;
  v3 = WFBundledDefinitionDirectoryURL();
  v21[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

  v5 = [v4 if_flatMap:&__block_literal_global_7024];
  v6 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 wf_fileIsDirectory])
        {
          lastPathComponent = [v12 lastPathComponent];
          [v6 addObject:lastPathComponent];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  allObjects = [v6 allObjects];

  return allObjects;
}

void *__49__VCIntentDefinitionManager_allBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:0 error:&v11];
  v5 = v11;

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6 && ([v5 vc_isFileNotFound] & 1) == 0)
  {
    v7 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "+[VCIntentDefinitionManager allBundleIdentifiers]_block_invoke";
      v14 = 2114;
      v15 = v2;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to enumerate search directory %{public}@ for synced application data: %{public}@", buf, 0x20u);
    }
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = v8;

  return v8;
}

+ (id)appInfoForBundleID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = WFSyncedDefinitionDirectoryURL();
  v32 = dCopy;
  v5 = WFDefinitionDirectoryURLsForBundleIdentifier();

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v37;
    v10 = @"AppInfo.appinfo";
    v11 = 0x277CCA000uLL;
    *&v7 = 136315906;
    v30 = v7;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [*(*(&v36 + 1) + 8 * v12) URLByAppendingPathComponent:{v10, v30}];
      defaultManager = [*(v11 + 2560) defaultManager];
      path = [v13 path];
      v16 = [defaultManager isReadableFileAtPath:path];

      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = objc_alloc(MEMORY[0x277CBEA90]);
      v35 = 0;
      v18 = [v17 initWithContentsOfURL:v13 options:0 error:&v35];
      v19 = v35;
      v20 = v19;
      if (v18)
      {
        v21 = v8;
        v22 = v9;
        v23 = v11;
        v24 = v10;
        v34 = 0;
        v25 = [MEMORY[0x277CD3A68] appInfoWithData:v18 error:&v34];
        v26 = v34;
        if (v26)
        {
          v31 = v25;
          v27 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v41 = "+[VCIntentDefinitionManager appInfoForBundleID:]";
            v42 = 2114;
            v43 = v18;
            v44 = 2114;
            v45 = v32;
            v46 = 2114;
            v47 = v13;
            v48 = 2114;
            v49 = v26;
            _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Failed to create INAppInfo from data: %{public}@, bundleID: %{public}@, appInfoURL: %{public}@: %{public}@", buf, 0x34u);
          }

          v25 = v31;
        }

        if (v25)
        {

          goto LABEL_26;
        }

        v10 = v24;
        v11 = v23;
        v9 = v22;
        v8 = v21;
        goto LABEL_21;
      }

      if (([v19 vc_isFileNotFound]& 1) != 0)
      {
        goto LABEL_21;
      }

      if (v20)
      {
        v28 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = v30;
          v41 = "+[VCIntentDefinitionManager appInfoForBundleID:]";
          v42 = 2114;
          v43 = v32;
          v44 = 2114;
          v45 = v13;
          v46 = 2114;
          v47 = v20;
          _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_ERROR, "%s Failed to load INAppInfo data for %{public}@ at %{public}@: %{public}@", buf, 0x2Au);
        }

LABEL_21:
      }

      if (v8 == ++v12)
      {
        v8 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }

    v20 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "+[VCIntentDefinitionManager appInfoForBundleID:]";
      v42 = 2114;
      v43 = v32;
      v44 = 2114;
      v45 = v13;
      _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_ERROR, "%s Failed to load INAppInfo data for %{public}@ at %{public}@. App Info URL is not readable.", buf, 0x20u);
    }

    goto LABEL_21;
  }

LABEL_24:
  v25 = 0;
LABEL_26:

  return v25;
}

+ (id)intentDefinitionBundleURLForBundleID:(id)d
{
  v52[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = WFSyncedDefinitionDirectoryURL();
  v52[0] = v4;
  v5 = WFBundledDefinitionDirectoryURL();
  v52[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v6;
  v32 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v32)
  {
    v9 = *v41;
    v10 = 0x277CCA000uLL;
    *&v8 = 136315650;
    v30 = v8;
    v33 = v7;
    v31 = *v41;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        defaultManager = [*(v10 + 2560) defaultManager];
        v39 = 0;
        v14 = [defaultManager contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:0 error:&v39];
        v15 = v39;

        if (v14)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15 == 0;
        }

        if (!v16 && ([v15 vc_isFileNotFound] & 1) == 0)
        {
          v17 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v46 = "+[VCIntentDefinitionManager intentDefinitionBundleURLForBundleID:]";
            v47 = 2114;
            v48 = v12;
            v49 = 2114;
            v50 = v15;
            _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to enumerate search directory %{public}@ for synced application data: %{public}@", buf, 0x20u);
          }
        }

        v34 = v15;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v36;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v36 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v35 + 1) + 8 * i);
              lastPathComponent = [v23 lastPathComponent];
              v25 = dCopy;
              v26 = v25;
              if (lastPathComponent == v25)
              {

LABEL_31:
                v28 = v23;

                v7 = v33;
                goto LABEL_33;
              }

              if (dCopy && lastPathComponent)
              {
                v27 = [lastPathComponent isEqualToString:v25];

                if (v27)
                {
                  goto LABEL_31;
                }
              }

              else
              {
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        ++v11;
        v7 = v33;
        v9 = v31;
        v10 = 0x277CCA000;
      }

      while (v11 != v32);
      v28 = 0;
      v32 = [v33 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v32);
  }

  else
  {
    v28 = 0;
  }

LABEL_33:

  return v28;
}

+ (id)intentDefinitionURLsForBundleID:(id)d inDirectory:(id)directory
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  directoryCopy = directory;
  v34 = dCopy;
  if (!dCopy)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v28 = v27 = directoryCopy;
    [v28 handleFailureInMethod:a2 object:self file:@"VCIntentDefinitionManager.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"bundleID"}];

    directoryCopy = v27;
  }

  if (!directoryCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCIntentDefinitionManager.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"searchDirectory"}];

    directoryCopy = 0;
  }

  WFDefinitionDirectoryURLsForBundleIdentifier();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v33 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v33)
  {
    v30 = directoryCopy;
    v32 = *v44;
    v9 = *MEMORY[0x277CBE868];
    while (2)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v48 = v9;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __73__VCIntentDefinitionManager_intentDefinitionURLsForBundleID_inDirectory___block_invoke;
        v41[3] = &unk_278900080;
        v42 = v34;
        v14 = [defaultManager enumeratorAtURL:v11 includingPropertiesForKeys:v13 options:4 errorHandler:v41];

        if (v14)
        {
          v35 = i;
          v15 = objc_opt_new();
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v16 = v14;
          v17 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v38;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v38 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v37 + 1) + 8 * j);
                v36 = 0;
                [v21 getResourceValue:&v36 forKey:v9 error:0];
                v22 = v36;
                if (([v22 BOOLValue] & 1) == 0)
                {
                  pathExtension = [v21 pathExtension];
                  if (pathExtension == @"intentdefinition" || (v24 = pathExtension) != 0 && (v25 = [(__CFString *)pathExtension isEqualToString:@"intentdefinition"], v24, v24, v25))
                  {
                    [v15 addObject:v21];
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
            }

            while (v18);
          }

          if ([v15 count])
          {

            goto LABEL_29;
          }

          i = v35;
        }
      }

      v33 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_29:
    directoryCopy = v30;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __73__VCIntentDefinitionManager_intentDefinitionURLsForBundleID_inDirectory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 vc_isFileNotFound] & 1) == 0)
  {
    v9 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v12 = 136315906;
      v13 = "+[VCIntentDefinitionManager intentDefinitionURLsForBundleID:inDirectory:]_block_invoke";
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Failed to enumerate intent definition files for %{public}@ in search directory %{public}@: %{public}@", &v12, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)intentDefinitionURLsForBundleID:(id)d
{
  v22[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCIntentDefinitionManager.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"bundleID"}];
  }

  v6 = WFSyncedDefinitionDirectoryURL();
  v22[0] = v6;
  v7 = WFBundledDefinitionDirectoryURL();
  v22[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [self intentDefinitionURLsForBundleID:dCopy inDirectory:*(*(&v17 + 1) + 8 * v13)];
      if ([v14 count])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14;
}

@end