@interface ANAnnouncementStorageManager
+ (id)sharedManager;
- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error removingItemAtURL:(id)l;
- (id)_announcementDataDirectoryForType:(id)type endpointID:(id)d error:(id *)error;
- (id)_baseDirectoryURLForEndpointID:(id)d error:(id *)error;
- (id)_cachesURLWithError:(id *)error;
- (id)_saveAudioDataForAnnouncement:(id)announcement endpointID:(id)d;
- (id)storedAnnouncementsForEndpointID:(id)d;
- (void)_removeAudioDataForAnnouncementID:(id)d endpointID:(id)iD;
- (void)_removeDirectoryForEndpointsExcludingEndpointIDs:(id)ds;
- (void)_removeMetadataForAnnouncementID:(id)d endpointID:(id)iD;
- (void)_saveMetadataForAnnouncement:(id)announcement endpointID:(id)d;
- (void)deleteAnnouncementWithID:(id)d endpointID:(id)iD;
- (void)deleteAnnouncementsExcludingAnnouncementsForEndpointIDs:(id)ds;
- (void)removeAnnouncementDataExcludingDataForAnnouncementIDs:(id)ds endpointID:(id)d;
- (void)saveAnnouncement:(id)announcement endpointID:(id)d;
@end

@implementation ANAnnouncementStorageManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ANAnnouncementStorageManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_manager;

  return v2;
}

uint64_t __45__ANAnnouncementStorageManager_sharedManager__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = sharedManager_manager;
  sharedManager_manager = v2;

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.announce.announcements"];
  v5 = *(sharedManager_manager + 8);
  *(sharedManager_manager + 8) = v4;

  v6 = objc_opt_new();
  v7 = *(sharedManager_manager + 16);
  *(sharedManager_manager + 16) = v6;

  v8 = *(sharedManager_manager + 16);

  return [v8 setDelegate:?];
}

- (id)storedAnnouncementsForEndpointID:(id)d
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v5 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8B8]];

  if (v5)
  {
    v7 = ANLogHandleAnnouncementStorageManager(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = &stru_2851BDB18;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Loading Announcements from Metadata for EndpontID: %@", buf, 0x16u);
    }

    uUIDString = [dCopy UUIDString];
    defaults = [(ANAnnouncementStorageManager *)self defaults];
    v10 = [defaults dictionaryForKey:uUIDString];

    if (v10)
    {
      v30 = v10;
      v31 = uUIDString;
      allValues = [v10 allValues];
      v13 = [allValues na_map:&__block_literal_global_11];

      v14 = [MEMORY[0x277CBEB18] arrayWithArray:v13];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            fileManager = [(ANAnnouncementStorageManager *)self fileManager];
            filePath = [v20 filePath];
            v23 = [fileManager fileExistsAtPath:filePath];

            if ((v23 & 1) == 0)
            {
              identifier = [v20 identifier];
              [(ANAnnouncementStorageManager *)self deleteAnnouncementWithID:identifier endpointID:dCopy];

              v26 = ANLogHandleAnnouncementStorageManager(v25);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                identifier2 = [v20 identifier];
                *buf = 138412546;
                v39 = &stru_2851BDB18;
                v40 = 2112;
                v41 = identifier2;
                _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "%@Deleting Announcement missing Audio Data on disk: %@", buf, 0x16u);
              }

              [v14 removeObject:v20];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v17);
      }

      v28 = [v14 copy];
      v10 = v30;
      uUIDString = v31;
    }

    else
    {
      v15 = ANLogHandleAnnouncementStorageManager(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = &stru_2851BDB18;
        v40 = 2112;
        v41 = dCopy;
        _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "%@No Announcements found for Endpoint %@", buf, 0x16u);
      }

      v28 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  return v28;
}

id __65__ANAnnouncementStorageManager_storedAnnouncementsForEndpointID___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEAB48];
  v3 = a2;
  v4 = [[v2 alloc] initWithMessage:v3];

  return v4;
}

- (void)saveAnnouncement:(id)announcement endpointID:(id)d
{
  announcementCopy = announcement;
  dCopy = d;
  v7 = [(ANAnnouncementStorageManager *)self _saveAudioDataForAnnouncement:announcementCopy endpointID:dCopy];
  if (!v7)
  {
    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v9 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8B8]];

    if (v9)
    {
      [(ANAnnouncementStorageManager *)self _saveMetadataForAnnouncement:announcementCopy endpointID:dCopy];
    }
  }
}

- (void)deleteAnnouncementWithID:(id)d endpointID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v8 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA900]];

  if ((v8 & 1) == 0)
  {
    [(ANAnnouncementStorageManager *)self _removeAudioDataForAnnouncementID:dCopy endpointID:iDCopy];
  }

  mEMORY[0x277CEAB80]2 = [MEMORY[0x277CEAB80] sharedInstance];
  v10 = [mEMORY[0x277CEAB80]2 BOOLForDefault:*MEMORY[0x277CEA8B8]];

  if (v10)
  {
    [(ANAnnouncementStorageManager *)self _removeMetadataForAnnouncementID:dCopy endpointID:iDCopy];
  }
}

- (void)deleteAnnouncementsExcludingAnnouncementsForEndpointIDs:(id)ds
{
  v27 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = ANLogHandleAnnouncementStorageManager(dsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = &stru_2851BDB18;
    v25 = 2112;
    v26 = dsCopy;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Scrubbing stored announcements excluding: %@", buf, 0x16u);
  }

  defaults = [(ANAnnouncementStorageManager *)self defaults];
  dictionaryRepresentation = [defaults dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = allKeys;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = objc_alloc(MEMORY[0x277CCAD78]);
        v16 = [v15 initWithUUIDString:{v14, v18}];
        if (v16 && ([dsCopy containsObject:v16] & 1) == 0)
        {
          defaults2 = [(ANAnnouncementStorageManager *)self defaults];
          [defaults2 removeObjectForKey:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(ANAnnouncementStorageManager *)self _removeDirectoryForEndpointsExcludingEndpointIDs:dsCopy];
}

- (void)removeAnnouncementDataExcludingDataForAnnouncementIDs:(id)ds endpointID:(id)d
{
  v61 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v51 = 0;
  v7 = [(ANAnnouncementStorageManager *)self _announcementDataDirectoryForType:@"received" endpointID:d error:&v51];
  v8 = v51;
  v9 = v8;
  if (v7)
  {
    fileManager = [(ANAnnouncementStorageManager *)self fileManager];
    v50 = v9;
    v11 = [fileManager contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v50];
    v12 = v50;

    v14 = ANLogHandleAnnouncementStorageManager(v13);
    v15 = v14;
    if (v11)
    {
      v42 = v12;
      selfCopy = self;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v53 = &stru_2851BDB18;
        v54 = 2112;
        v55 = v7;
        _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "%@Cleaning Announcement Data in: %@", buf, 0x16u);
      }

      v41 = v7;

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v11 = v11;
      v16 = [v11 countByEnumeratingWithState:&v46 objects:v60 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v47;
        do
        {
          v19 = 0;
          v44 = v17;
          do
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(v11);
            }

            v20 = *(*(&v46 + 1) + 8 * v19);
            v21 = ANLogHandleAnnouncementStorageManager(v16);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v53 = &stru_2851BDB18;
              v54 = 2112;
              v55 = v20;
              _os_log_impl(&dword_23F525000, v21, OS_LOG_TYPE_DEFAULT, "%@Checking item %@", buf, 0x16u);
            }

            uRLByDeletingPathExtension = [v20 URLByDeletingPathExtension];
            lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

            v24 = [lastPathComponent componentsSeparatedByString:@"--"];
            v25 = [v24 objectAtIndexedSubscript:0];

            v26 = [dsCopy containsObject:v25];
            if ((v26 & 1) == 0)
            {
              v27 = v18;
              v28 = v11;
              v29 = dsCopy;
              v30 = ANLogHandleAnnouncementStorageManager(v26);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v53 = &stru_2851BDB18;
                v54 = 2112;
                v55 = v20;
                _os_log_impl(&dword_23F525000, v30, OS_LOG_TYPE_DEFAULT, "%@Removing item %@", buf, 0x16u);
              }

              fileManager2 = [(ANAnnouncementStorageManager *)selfCopy fileManager];
              v45 = 0;
              v32 = [fileManager2 removeItemAtURL:v20 error:&v45];
              v33 = v45;

              v35 = ANLogHandleAnnouncementStorageManager(v34);
              v36 = v35;
              if (v32)
              {
                dsCopy = v29;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v53 = &stru_2851BDB18;
                  v54 = 2080;
                  v55 = "[ANAnnouncementStorageManager removeAnnouncementDataExcludingDataForAnnouncementIDs:endpointID:]";
                  v56 = 2112;
                  v57 = v20;
                  v37 = v36;
                  v38 = OS_LOG_TYPE_DEFAULT;
                  v39 = "%@%s Successfully removed item %@";
                  v40 = 32;
                  goto LABEL_20;
                }
              }

              else
              {
                dsCopy = v29;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138413058;
                  v53 = &stru_2851BDB18;
                  v54 = 2080;
                  v55 = "[ANAnnouncementStorageManager removeAnnouncementDataExcludingDataForAnnouncementIDs:endpointID:]";
                  v56 = 2112;
                  v57 = v20;
                  v58 = 2112;
                  v59 = v42;
                  v37 = v36;
                  v38 = OS_LOG_TYPE_ERROR;
                  v39 = "%@%s Failed to remove item: %@, Error = %@";
                  v40 = 42;
LABEL_20:
                  _os_log_impl(&dword_23F525000, v37, v38, v39, buf, v40);
                }
              }

              v11 = v28;
              v18 = v27;
              v17 = v44;
            }

            ++v19;
          }

          while (v17 != v19);
          v16 = [v11 countByEnumeratingWithState:&v46 objects:v60 count:16];
          v17 = v16;
        }

        while (v16);
      }

      v7 = v41;
      v12 = v42;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v53 = &stru_2851BDB18;
        v54 = 2112;
        v55 = v12;
        _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_ERROR, "%@Failed to get contents of directory: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = ANLogHandleAnnouncementStorageManager(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v53 = &stru_2851BDB18;
      v54 = 2112;
      v55 = v9;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_ERROR, "%@Failed to get Directory for saved announcements. %@", buf, 0x16u);
    }

    v12 = v9;
  }
}

- (void)_saveMetadataForAnnouncement:(id)announcement endpointID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  announcementCopy = announcement;
  v8 = ANLogHandleAnnouncementStorageManager(announcementCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    defaults = [(ANAnnouncementStorageManager *)self defaults];
    v23 = 138412546;
    v24 = &stru_2851BDB18;
    v25 = 2112;
    v26 = defaults;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Saving Announcement Metadata to %@", &v23, 0x16u);
  }

  uUIDString = [dCopy UUIDString];

  v12 = ANLogHandleAnnouncementStorageManager(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = &stru_2851BDB18;
    v25 = 2112;
    v26 = uUIDString;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Key: %@", &v23, 0x16u);
  }

  defaults2 = [(ANAnnouncementStorageManager *)self defaults];
  v14 = [defaults2 dictionaryForKey:uUIDString];
  v15 = v14;
  v16 = MEMORY[0x277CBEC10];
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [v17 mutableCopy];
  metadata = [announcementCopy metadata];
  identifier = [announcementCopy identifier];

  [v18 setObject:metadata forKeyedSubscript:identifier];
  defaults3 = [(ANAnnouncementStorageManager *)self defaults];
  v22 = [v18 copy];
  [defaults3 setObject:v22 forKey:uUIDString];
}

- (id)_saveAudioDataForAnnouncement:(id)announcement endpointID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  dCopy = d;
  v32 = 0;
  v8 = [(ANAnnouncementStorageManager *)self _announcementDataDirectoryForType:@"received" endpointID:dCopy error:&v32];
  v9 = v32;
  v10 = v9;
  if (v8)
  {
    v11 = MEMORY[0x277CCACA8];
    identifier = [announcementCopy identifier];
    an_dateFormatterForFilename = [MEMORY[0x277CEABE0] an_dateFormatterForFilename];
    date = [MEMORY[0x277CBEAA8] date];
    v15 = [an_dateFormatterForFilename stringFromDate:date];
    v16 = [v11 stringWithFormat:@"%@--%@", identifier, v15];

    v17 = [v8 URLByAppendingPathComponent:v16];
    v18 = [v17 URLByAppendingPathExtension:@"caf"];

    v20 = ANLogHandleAnnouncementStorageManager(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      fileData = [announcementCopy fileData];
      v22 = [fileData length];
      *buf = 138412802;
      v34 = &stru_2851BDB18;
      v35 = 2112;
      v36 = v18;
      v37 = 2048;
      v38 = v22;
      _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_DEFAULT, "%@Saving to URL: %@, Size: %lu", buf, 0x20u);
    }

    fileData2 = [announcementCopy fileData];
    v31 = v10;
    v24 = [fileData2 writeToURL:v18 options:1 error:&v31];
    v25 = v31;

    if (v24)
    {
      path = [v18 path];
      [announcementCopy setFilePath:path];
    }

    else
    {
      v28 = ANLogHandleAnnouncementStorageManager(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = &stru_2851BDB18;
        v35 = 2112;
        v36 = v25;
        _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_ERROR, "%@Failed to write data: %@", buf, 0x16u);
      }

      path = +[ANAnalytics shared];
      v29 = [ANAnalyticsContext contextWithEndpointID:dCopy];
      [path error:5009 context:v29];
    }
  }

  else
  {
    v25 = v9;
  }

  return v25;
}

- (void)_removeAudioDataForAnnouncementID:(id)d endpointID:(id)iD
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v42 = 0;
  v8 = [(ANAnnouncementStorageManager *)self _announcementDataDirectoryForType:@"received" endpointID:iDCopy error:&v42];
  v9 = v42;
  fileManager = [(ANAnnouncementStorageManager *)self fileManager];
  v41 = v9;
  v11 = [fileManager contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v41];
  v12 = v41;

  if (v11)
  {
    selfCopy = self;
    v33 = v12;
    v35 = iDCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v11;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * v18);
          v20 = ANLogHandleAnnouncementStorageManager(v15);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = &stru_2851BDB18;
            v45 = 2112;
            v46 = v19;
            _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_DEFAULT, "%@Checking item %@", buf, 0x16u);
          }

          uRLByDeletingPathExtension = [v19 URLByDeletingPathExtension];
          lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

          v23 = [lastPathComponent componentsSeparatedByString:@"--"];
          v24 = [v23 objectAtIndexedSubscript:0];

          if ([dCopy isEqualToString:v24])
          {
            fileManager2 = [(ANAnnouncementStorageManager *)selfCopy fileManager];
            v36 = v33;
            v27 = [fileManager2 removeItemAtURL:v19 error:&v36];
            v12 = v36;

            v29 = ANLogHandleAnnouncementStorageManager(v28);
            v30 = v29;
            if (v27)
            {
              iDCopy = v35;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v44 = &stru_2851BDB18;
                v45 = 2112;
                v46 = v19;
                v47 = 2112;
                v48 = dCopy;
                _os_log_impl(&dword_23F525000, v30, OS_LOG_TYPE_DEFAULT, "%@Removed file (%@) for AnnouncementID (%@)", buf, 0x20u);
              }
            }

            else
            {
              iDCopy = v35;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v44 = &stru_2851BDB18;
                v45 = 2112;
                v46 = v19;
                v47 = 2112;
                v48 = v12;
                _os_log_impl(&dword_23F525000, v30, OS_LOG_TYPE_ERROR, "%@Failed to remove file (%@): %@", buf, 0x20u);
              }

              v30 = +[ANAnalytics shared];
              v31 = [ANAnalyticsContext contextWithEndpointID:v35];
              [v30 error:5010 context:v31];
            }

            goto LABEL_24;
          }

          ++v18;
        }

        while (v16 != v18);
        v15 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
        v16 = v15;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v14 = ANLogHandleAnnouncementStorageManager(v25);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = &stru_2851BDB18;
      v45 = 2112;
      v46 = dCopy;
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@File does not exist for %@. Nothing to delete.", buf, 0x16u);
    }

    v12 = v33;
    iDCopy = v35;
LABEL_24:
    v11 = v34;
  }

  else
  {
    v14 = ANLogHandleAnnouncementStorageManager(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v44 = &stru_2851BDB18;
      v45 = 2112;
      v46 = v12;
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_ERROR, "%@Failed to get contents of directory: %@", buf, 0x16u);
    }
  }
}

- (void)_removeMetadataForAnnouncementID:(id)d endpointID:(id)iD
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  uUIDString = [iDCopy UUIDString];
  defaults = [(ANAnnouncementStorageManager *)self defaults];
  v10 = [defaults dictionaryForKey:uUIDString];

  if (v10)
  {
    v12 = [v10 mutableCopy];
    v13 = ANLogHandleAnnouncementStorageManager([v12 setObject:0 forKeyedSubscript:dCopy]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Removed Announcement Metadata: %@", &v16, 0x16u);
    }

    defaults2 = [(ANAnnouncementStorageManager *)self defaults];
    v15 = [v12 copy];
    [defaults2 setObject:v15 forKey:uUIDString];
  }

  else
  {
    v12 = ANLogHandleAnnouncementStorageManager(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = &stru_2851BDB18;
      v18 = 2112;
      v19 = iDCopy;
      _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@No Announcements found for Endpoint %@", &v16, 0x16u);
    }
  }
}

- (void)_removeDirectoryForEndpointsExcludingEndpointIDs:(id)ds
{
  v55 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v47 = 0;
  v5 = [(ANAnnouncementStorageManager *)self _cachesURLWithError:&v47];
  v6 = v47;
  v7 = v6;
  if (v5)
  {
    fileManager = [(ANAnnouncementStorageManager *)self fileManager];
    v46 = v7;
    v9 = [fileManager contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v46];
    v10 = v46;

    v12 = ANLogHandleAnnouncementStorageManager(v11);
    v13 = v12;
    if (v9)
    {
      v38 = v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        absoluteString = [v5 absoluteString];
        *buf = 138412546;
        v49 = &stru_2851BDB18;
        v50 = 2112;
        v51 = absoluteString;
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Cleaning Items in: %@", buf, 0x16u);
      }

      v36 = v5;

      v37 = dsCopy;
      v13 = [dsCopy na_map:&__block_literal_global_36];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v35 = v9;
      v15 = v9;
      v16 = [v15 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v43;
        v39 = v15;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v42 + 1) + 8 * i);
            lastPathComponent = [v20 lastPathComponent];
            if (([v13 containsObject:lastPathComponent]& 1) == 0)
            {
              v41 = 0;
              path = [v20 path];
              v23 = [fileManager fileExistsAtPath:path isDirectory:&v41];

              if (v23)
              {
                if (v41 == 1)
                {
                  v25 = ANLogHandleAnnouncementStorageManager(v24);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v49 = &stru_2851BDB18;
                    v50 = 2112;
                    v51 = v20;
                    _os_log_impl(&dword_23F525000, v25, OS_LOG_TYPE_DEFAULT, "%@Removing item %@", buf, 0x16u);
                  }

                  v40 = 0;
                  v26 = fileManager;
                  v27 = [fileManager removeItemAtURL:v20 error:&v40];
                  v28 = v40;
                  v29 = ANLogHandleAnnouncementStorageManager(v28);
                  v30 = v29;
                  if (v27)
                  {
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v49 = &stru_2851BDB18;
                      v50 = 2112;
                      v51 = v20;
                      v31 = v30;
                      v32 = OS_LOG_TYPE_DEFAULT;
                      v33 = "%@Successfully removed item: %@";
                      v34 = 22;
                      goto LABEL_20;
                    }
                  }

                  else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412802;
                    v49 = &stru_2851BDB18;
                    v50 = 2112;
                    v51 = v20;
                    v52 = 2112;
                    v53 = v38;
                    v31 = v30;
                    v32 = OS_LOG_TYPE_ERROR;
                    v33 = "%@Failed to remove item: %@, Error = %@";
                    v34 = 32;
LABEL_20:
                    _os_log_impl(&dword_23F525000, v31, v32, v33, buf, v34);
                  }

                  fileManager = v26;
                  v15 = v39;
                }
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v42 objects:v54 count:16];
        }

        while (v17);
      }

      v5 = v36;
      dsCopy = v37;
      v10 = v38;
      v9 = v35;
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = &stru_2851BDB18;
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_ERROR, "%@Failed to get contents of caches directory: %@", buf, 0x16u);
    }
  }

  else
  {
    fileManager = ANLogHandleAnnouncementStorageManager(v6);
    if (os_log_type_enabled(fileManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = &stru_2851BDB18;
      v50 = 2112;
      v51 = v7;
      _os_log_impl(&dword_23F525000, fileManager, OS_LOG_TYPE_ERROR, "%@Did not find Caches URL %@", buf, 0x16u);
    }

    v10 = v7;
  }
}

- (id)_announcementDataDirectoryForType:(id)type endpointID:(id)d error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  fileManager = [(ANAnnouncementStorageManager *)self fileManager];
  v11 = [(ANAnnouncementStorageManager *)self _baseDirectoryURLForEndpointID:dCopy error:error];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 URLByAppendingPathComponent:typeCopy];
    absoluteString = [v13 absoluteString];
    v15 = [fileManager fileExistsAtPath:absoluteString];

    if (v15 & 1) != 0 || (v16 = [fileManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:error], (v16))
    {
      v13 = v13;
      v17 = v13;
      goto LABEL_11;
    }

    v19 = ANLogHandleAnnouncementStorageManager(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *error;
      v22 = 138412802;
      v23 = &stru_2851BDB18;
      v24 = 2112;
      v25 = typeCopy;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_ERROR, "%@Failed to create directory for type: %@, %@", &v22, 0x20u);
    }
  }

  else
  {
    v13 = ANLogHandleAnnouncementStorageManager(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *error;
      v22 = 138412802;
      v23 = &stru_2851BDB18;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_ERROR, "%@Did not find directory for endpoint ID %@, %@", &v22, 0x20u);
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)_baseDirectoryURLForEndpointID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [(ANAnnouncementStorageManager *)self _cachesURLWithError:error];
  uUIDString = [dCopy UUIDString];

  v9 = [v7 URLByAppendingPathComponent:uUIDString isDirectory:1];

  return v9;
}

- (id)_cachesURLWithError:(id *)error
{
  fileManager = [(ANAnnouncementStorageManager *)self fileManager];
  v5 = [fileManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:error];

  if (!v5)
  {
    v6 = +[ANAnalytics shared];
    [v6 error:5011];
  }

  v7 = [v5 URLByAppendingPathComponent:@"com.apple.announce" isDirectory:1];

  return v7;
}

- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error removingItemAtURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  managerCopy = manager;
  fileManager = [(ANAnnouncementStorageManager *)self fileManager];

  if (fileManager == managerCopy)
  {
    v11 = ANLogHandleAnnouncementStorageManager(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = &stru_2851BDB18;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%@Remove Item At URL Error = %@. Proceeding.", &v13, 0x16u);
    }
  }

  return fileManager == managerCopy;
}

@end