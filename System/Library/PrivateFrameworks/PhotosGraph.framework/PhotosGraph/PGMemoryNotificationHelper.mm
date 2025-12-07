@interface PGMemoryNotificationHelper
+ (BOOL)memoriesOfTheDayAreWorthNotifyingWithPhotoLibrary:(id)library;
+ (id)_memoryFetchOptionsWithPhotoLibrary:(id)library;
+ (id)lastTriggeredNotificationDateWithPhotoLibrary:(id)library;
+ (id)nextPossibleNotificationDateWithPhotoLibrary:(id)library;
@end

@implementation PGMemoryNotificationHelper

+ (id)_memoryFetchOptionsWithPhotoLibrary:(id)library
{
  v8[2] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v8[0] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:0];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  [librarySpecificFetchOptions setIncludePendingMemories:0];
  [librarySpecificFetchOptions setIncludeRejectedMemories:1];

  return librarySpecificFetchOptions;
}

+ (BOOL)memoriesOfTheDayAreWorthNotifyingWithPhotoLibrary:(id)library
{
  v23 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar startOfDayForDate:date];

  v8 = [self _memoryFetchOptionsWithPhotoLibrary:libraryCopy];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d && (%K >= %@) && (%K <= %@)", @"category", 401, @"creationDate", v7, @"creationDate", date];
  [v8 setPredicate:v9];

  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 isGreat] & 1) != 0 || (objc_msgSend(v15, "isStellar") & 1) != 0 || (objc_msgSend(v15, "isMustSee"))
        {
          v16 = 1;
          goto LABEL_14;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

+ (id)lastTriggeredNotificationDateWithPhotoLibrary:(id)library
{
  v3 = [self _memoryFetchOptionsWithPhotoLibrary:library];
  [v3 setFetchLimit:1];
  [v3 setChunkSizeForFetch:100];
  [v3 setCacheSizeForFetch:{objc_msgSend(v3, "chunkSizeForFetch")}];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %d", @"notificationState", 0];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v3];
  firstObject = [v5 firstObject];
  creationDate = [firstObject creationDate];

  return creationDate;
}

+ (id)nextPossibleNotificationDateWithPhotoLibrary:(id)library
{
  v48 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [self _memoryFetchOptionsWithPhotoLibrary:libraryCopy];
  [v6 setChunkSizeForFetch:100];
  [v6 setCacheSizeForFetch:{objc_msgSend(v6, "chunkSizeForFetch")}];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"category", 401];
  [v6 setPredicate:v7];

  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = v45 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v42 + 1) + 8 * v12);
      if ([v13 category] != 101)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    creationDate = [v13 creationDate];

    if (creationDate)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v15 = [standardUserDefaults objectForKey:@"PGManagerNotificationUserDefaultsDateOfFirstTimeUsage"];
  if (v15)
  {
    creationDate = v15;
  }

  else
  {
    creationDate = [MEMORY[0x277CBEAA8] date];
    [standardUserDefaults setObject:creationDate forKey:@"PGManagerNotificationUserDefaultsDateOfFirstTimeUsage"];
  }

LABEL_14:
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  if ([currentCalendar isDateInWeekend:date])
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Memories Notification generated over the weekend, special time interval between notification applied.", buf, 2u);
    }

    v20 = 259200.0;
  }

  else
  {
    v20 = 518400.0;
  }

  v21 = [standardUserDefaults objectForKey:@"PGManagerNotificationUserDefaultsRegularTimeIntervalBeforeNotifying"];
  v22 = v21;
  if (v21)
  {
    [v21 doubleValue];
    v20 = v23;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = v8;
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v36 = libraryCopy;
    v27 = *v38;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v24);
        }

        if ([*(*(&v37 + 1) + 8 * i) notificationState] == 1)
        {
          v29 = [standardUserDefaults objectForKey:@"PGManagerNotificationUserDefaultsExtendedTimeIntervalBeforeNotifying"];
          v30 = v29;
          if (v29)
          {
            [v29 doubleValue];
            v20 = v31;
          }

          else
          {
            v20 = 2592000.0;
          }

          v32 = +[PGLogging sharedLogging];
          loggingConnection2 = [v32 loggingConnection];

          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Extending notification time interval because one or more memories are still in the state PHMemoryNotificationStateRequested", buf, 2u);
          }

          goto LABEL_36;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

LABEL_36:
    libraryCopy = v36;
  }

  v34 = [creationDate dateByAddingTimeInterval:v20];

  return v34;
}

@end