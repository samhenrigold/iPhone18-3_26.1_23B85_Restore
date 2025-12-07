@interface DEDCloudKitExtensionsUtil
+ (id)copyFiles:(id)files toDirectory:(id)directory;
+ (id)getAllFilesInSessionDirectoryForSessionID:(id)d;
+ (id)getCompletedExtensionFromAllExtensions:(id)extensions;
+ (id)getOutputDirectories:(id)directories withProcessingMap:(id)map progressHandler:(id)handler;
+ (id)getVerifiedExtensionDirectoriesFromCompletedExtensions:(id)extensions forSession:(id)session;
+ (void)updateELSSnapshotStatus:(unint64_t)status;
@end

@implementation DEDCloudKitExtensionsUtil

+ (id)getCompletedExtensionFromAllExtensions:(id)extensions
{
  v17 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = extensionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        stringValue = [*(*(&v12 + 1) + 8 * i) stringValue];
        [v4 addObject:stringValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)getVerifiedExtensionDirectoriesFromCompletedExtensions:(id)extensions forSession:(id)session
{
  v28 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  sessionCopy = session;
  v7 = objc_opt_new();
  v21 = sessionCopy;
  identifier = [sessionCopy identifier];
  v9 = [v7 directoryForBugSessionIdentifier:identifier];

  v20 = v9;
  v10 = [MEMORY[0x277D051E0] lsDir:v9];
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    v15 = *MEMORY[0x277D07700];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        lastPathComponent = [v17 lastPathComponent];
        if ([extensionsCopy containsObject:lastPathComponent] && (objc_msgSend(MEMORY[0x277D051E0], "isValidDirectory:", v17) & 1) != 0)
        {
          [v22 setValue:v17 forKey:lastPathComponent];
        }

        else
        {
          [MEMORY[0x277D07730] createLoggingEventWith:v15 postfix:lastPathComponent];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  return v22;
}

+ (id)getOutputDirectories:(id)directories withProcessingMap:(id)map progressHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  directoriesCopy = directories;
  mapCopy = map;
  handlerCopy = handler;
  v7 = +[DEDConfiguration sharedInstance];
  v24 = os_log_create([v7 loggingSubsystem], "ded-cloudkit-finisher");

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (handlerCopy)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = directoriesCopy;
    v30 = [obj countByEnumeratingWithState:&v46 objects:v51 count:{16, v24, dictionary}];
    if (v30)
    {
      v8 = 0;
      v28 = *v47;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v46 + 1) + 8 * i);
          v33 = [obj objectForKey:v10];
          v32 = [mapCopy objectForKey:v10];
          v11 = [v32 objectForKey:@"package"];
          if ([v11 isEqualToString:@"parent-directory"])
          {
            if ([MEMORY[0x277D051E0] isValidDirectory:v33])
            {
              v8 += [MEMORY[0x277D051A8] directorySizeOf:v33];
            }
          }

          else
          {
            v12 = [MEMORY[0x277D051E0] lsDir:v33];
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v13)
            {
              v14 = *v43;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v43 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v42 + 1) + 8 * j);
                  if ([MEMORY[0x277D051E0] isValidDirectory:v16])
                  {
                    v8 += [MEMORY[0x277D051A8] directorySizeOf:v16];
                  }
                }

                v13 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
              }

              while (v13);
            }
          }
        }

        v30 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v30);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __84__DEDCloudKitExtensionsUtil_getOutputDirectories_withProcessingMap_progressHandler___block_invoke;
  v34[3] = &unk_278F671B8;
  v17 = mapCopy;
  v35 = v17;
  v18 = v24;
  v36 = v18;
  v19 = handlerCopy;
  v38 = v19;
  v39 = v41;
  v40 = v8;
  v20 = dictionary;
  v37 = v20;
  [directoriesCopy enumerateKeysAndObjectsUsingBlock:v34];
  v21 = v37;
  v22 = v20;

  _Block_object_dispose(v41, 8);

  return v22;
}

void __84__DEDCloudKitExtensionsUtil_getOutputDirectories_withProcessingMap_progressHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v35 = a3;
  v37 = v5;
  v31 = [*(a1 + 32) objectForKey:v5];
  v30 = [v31 objectForKey:@"package"];
  v40 = [v31 objectForKey:@"compression"];
  v38 = [MEMORY[0x277CBEB18] array];
  v39 = [v30 isEqualToString:@"flat-directories"];
  if (v39)
  {
    v6 = [MEMORY[0x277D051E0] lsDir:v35];
  }

  else
  {
    v55[0] = v35;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v7)
  {
    v8 = *v47;
    v34 = *MEMORY[0x277D076F8];
    v33 = *MEMORY[0x277D076F0];
    v32 = *MEMORY[0x277D076E8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = *(a1 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v10;
          _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Processing file/directory (%{public}@)", buf, 0xCu);
        }

        if (v39 && ([MEMORY[0x277D051E0] isValidDirectory:v10] & 1) == 0)
        {
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v10;
            *&buf[12] = 2112;
            *&buf[14] = v37;
            _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "Skipping file compression when flatterned directory requested (%{public}@) (%@)", buf, 0x16u);
          }

          goto LABEL_21;
        }

        if (v40 && ([v40 BOOLValue] & 1) == 0)
        {
          v21 = *(a1 + 40);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v10;
            *&buf[12] = 2112;
            *&buf[14] = v37;
            _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "Skipping file/directory compression when not requested (%{public}@) (%@)", buf, 0x16u);
          }

LABEL_21:
          [v38 addObject:v10];
          continue;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v53 = 0;
        v12 = [v35 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v37, v12];
        [MEMORY[0x277D07730] createLoggingEventWith:v34 postfix:v37];
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 138543362;
          v51 = v10;
          _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Compressing folder... (%{public}@)", v50, 0xCu);
        }

        v15 = *(a1 + 56);
        if (v15)
        {
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __84__DEDCloudKitExtensionsUtil_getOutputDirectories_withProcessingMap_progressHandler___block_invoke_34;
          v41[3] = &unk_278F67190;
          v43 = buf;
          v16 = v15;
          v17 = *(a1 + 64);
          v18 = *(a1 + 72);
          v42 = v16;
          v44 = v17;
          v45 = v18;
          v19 = MEMORY[0x24C1E5320](v41);
        }

        else
        {
          v19 = 0;
        }

        if ([MEMORY[0x277D051E0] isValidDirectory:v10])
        {
          [MEMORY[0x277D051A8] archiveDirectoryAt:v10 deleteOriginal:1 progressHandler:v19];
        }

        else
        {
          [MEMORY[0x277D051A8] archiveFile:v10 deleteOriginal:1 progressHandler:v19];
        }
        v22 = ;
        *(*(*(a1 + 64) + 8) + 24) += *(*&buf[8] + 24);
        v23 = *(a1 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 0;
          _os_log_impl(&dword_248AD7000, v23, OS_LOG_TYPE_DEFAULT, "Finished compressing", v50, 2u);
        }

        if (v22)
        {
          [v38 addObject:v22];
          [MEMORY[0x277D07730] createLoggingEventWith:v33 postfix:v13];
        }

        else
        {
          [MEMORY[0x277D07730] createLoggingEventWith:v32 postfix:v13];
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *v50 = 138543362;
            v51 = v10;
            _os_log_error_impl(&dword_248AD7000, v24, OS_LOG_TYPE_ERROR, "Error compressing: %{public}@", v50, 0xCu);
          }
        }

        _Block_object_dispose(buf, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v25 = [v38 count];
  v26 = *(a1 + 40);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      v28 = v26;
      v29 = [v38 count];
      *buf = 134218242;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_248AD7000, v28, OS_LOG_TYPE_DEFAULT, "Adding (%lu) files to %@ for upload", buf, 0x16u);
    }

    [*(a1 + 48) setValue:v38 forKey:v37];
  }

  else if (v27)
  {
    *buf = 138412290;
    *&buf[4] = v37;
    _os_log_impl(&dword_248AD7000, v26, OS_LOG_TYPE_DEFAULT, "No files to %@ for upload", buf, 0xCu);
  }
}

+ (void)updateELSSnapshotStatus:(unint64_t)status
{
  mEMORY[0x277D07738] = [MEMORY[0x277D07738] sharedManager];
  snapshot = [mEMORY[0x277D07738] snapshot];

  [snapshot setStatus:status];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D076B8], 0}];
  [snapshot refreshKeyPaths:v5];
}

+ (id)getAllFilesInSessionDirectoryForSessionID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_opt_new();
  v6 = [v5 directoryForBugSessionIdentifier:dCopy];

  v7 = [MEMORY[0x277D051E0] lsDir:v6];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([MEMORY[0x277D051E0] isValidDirectory:v12] & 1) == 0)
        {
          [v4 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v4;
}

+ (id)copyFiles:(id)files toDirectory:(id)directory
{
  v17 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  directoryCopy = directory;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [filesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(filesCopy);
        }

        [MEMORY[0x277D051E0] copyFile:*(*(&v12 + 1) + 8 * v10++) toDir:directoryCopy];
      }

      while (v8 != v10);
      v8 = [filesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return directoryCopy;
}

@end