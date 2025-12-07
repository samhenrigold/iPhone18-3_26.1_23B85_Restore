@interface CDBAttachmentMigrator
+ (BOOL)_createNewContainerIfNeeded:(id)needed error:(id *)error;
+ (BOOL)_moveAttachmentWithInfo:(id)info error:(id *)error;
+ (BOOL)_moveAttachmentsWithInfo:(id)info error:(id *)error;
+ (id)_attachmentInfoForLegacyAttachmentURL:(id)l newAttachmentContainerForStore:(id)store newCalendarDataContainer:(id)container database:(CalDatabase *)database attachmentUUID:(id *)d;
+ (id)_infoForAttachmentsInLegacyAttachmentContainerForStore:(id)store newAttachmentContainerForStore:(id)forStore newCalendarDataContainer:(id)container database:(CalDatabase *)database;
+ (void)_moveAttachmentsForStore:(void *)store fromLegacyAttachmentContainer:(id)container calendarDataContainerProvider:(id)provider database:(CalDatabase *)database;
+ (void)_moveAttachmentsFromLegacyAttachmentContainer:(id)container calendarDataContainerProvider:(id)provider database:(CalDatabase *)database;
+ (void)_setFileSizeForAttachmentUUID:(id)d attachmentURL:(id)l database:(CalDatabase *)database;
+ (void)_setFileSizeForAttachmentsWithInfo:(id)info database:(CalDatabase *)database;
+ (void)_setLocalRelativePathForAttachmentUUID:(id)d localRelativePath:(id)path database:(CalDatabase *)database;
+ (void)_updateLocalRelativeURLForAttachmentsWithInfo:(id)info database:(CalDatabase *)database;
+ (void)migrateDataClassProtectionForAttachmentsInLegacyCalendarDataContainer:(id)container;
+ (void)migrateWithLegacyCalendarDataContainer:(id)container calendarDataContainerProvider:(id)provider database:(CalDatabase *)database;
@end

@implementation CDBAttachmentMigrator

+ (void)migrateWithLegacyCalendarDataContainer:(id)container calendarDataContainerProvider:(id)provider database:(CalDatabase *)database
{
  providerCopy = provider;
  containerCopy = container;
  [self migrateDataClassProtectionForAttachmentsInLegacyCalendarDataContainer:containerCopy];
  v10 = [MEMORY[0x1E6992F10] legacyAttachmentContainerWithBaseURL:containerCopy];

  [self _moveAttachmentsFromLegacyAttachmentContainer:v10 calendarDataContainerProvider:providerCopy database:database];
  if ((CalDatabaseSave(database) & 1) == 0)
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Could not save database.", v12, 2u);
    }
  }
}

+ (void)_moveAttachmentsFromLegacyAttachmentContainer:(id)container calendarDataContainerProvider:(id)provider database:(CalDatabase *)database
{
  containerCopy = container;
  providerCopy = provider;
  v9 = CalDatabaseCopyOfAllStores(database);
  if (v9)
  {
    v10 = v9;
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        [self _moveAttachmentsForStore:CFArrayGetValueAtIndex(v10 fromLegacyAttachmentContainer:i) calendarDataContainerProvider:containerCopy database:{providerCopy, database}];
      }
    }

    CFRelease(v10);
  }
}

+ (void)_moveAttachmentsForStore:(void *)store fromLegacyAttachmentContainer:(id)container calendarDataContainerProvider:(id)provider database:(CalDatabase *)database
{
  v56 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  providerCopy = provider;
  v12 = CalStoreCopyUUID(store);
  if (v12)
  {
    v13 = [containerCopy URLByAppendingPathComponent:v12];
    v14 = v13;
    if (!v13)
    {
      v28 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v49 = v12;
        v50 = 2112;
        v51 = containerCopy;
        _os_log_impl(&dword_1DEBB1000, v28, OS_LOG_TYPE_ERROR, "Could not get attachment container for store. store uuid = %{public}@, legacy attachment container = %@", buf, 0x16u);
      }

      goto LABEL_40;
    }

    path = [v13 path];
    if (!path)
    {
      v29 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v49 = v12;
        v50 = 2112;
        v51 = containerCopy;
        _os_log_impl(&dword_1DEBB1000, v29, OS_LOG_TYPE_INFO, "Could not get attachment container path for store. store uuid = %{public}@, legacy attachment container = %@", buf, 0x16u);
      }

      goto LABEL_39;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v47 = 0;
    if ([defaultManager fileExistsAtPath:path isDirectory:&v47])
    {
      if (v47)
      {
        v17 = [providerCopy containerForAccountIdentifier:0];
        if (v17)
        {
          v18 = [MEMORY[0x1E6992F10] attachmentContainerWithBaseURL:v17];
          v19 = v18;
          if (v18)
          {
            v44 = v17;
            v20 = [v18 URLByAppendingPathComponent:v12];
            v45 = v20;
            if (v20)
            {
              v21 = v20;
              v43 = v19;
              v46 = 0;
              v22 = [self _createNewContainerIfNeeded:v20 error:&v46];
              v42 = v46;
              if (v22)
              {
                v23 = v21;
                v17 = v44;
                v41 = [self _infoForAttachmentsInLegacyAttachmentContainerForStore:v14 newAttachmentContainerForStore:v23 newCalendarDataContainer:v44 database:database];
                v24 = [self _moveAttachmentsWithInfo:? error:?];
                v40 = 0;
                if (v24)
                {
                  [self _updateLocalRelativeURLForAttachmentsWithInfo:v41 database:database];
                  [self _setFileSizeForAttachmentsWithInfo:v41 database:database];
                  v25 = v42;
                  v19 = v43;
                }

                else
                {
                  v39 = CDBLogHandle;
                  v25 = v42;
                  v19 = v43;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138413058;
                    v49 = v40;
                    v50 = 2112;
                    v51 = v14;
                    v52 = 2112;
                    v53 = v43;
                    v54 = 2112;
                    v55 = v41;
                    _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_ERROR, "Could not move attachments for store. error = %@, legacy attachment container for store = %@, new attachment container = %@, attachment info = %@", buf, 0x2Au);
                  }
                }
              }

              else
              {
                v38 = CDBLogHandle;
                v19 = v43;
                v17 = v44;
                v25 = v42;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v49 = v42;
                  v50 = 2112;
                  v51 = v45;
                  _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_ERROR, "Could not create new attachment container for store if needed. error = %@, new attachment container for store = %@", buf, 0x16u);
                }
              }
            }

            else
            {
              v37 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v49 = v12;
                v50 = 2112;
                v51 = 0;
                _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_ERROR, "Could not get new attachment container for store. store uuid = %{public}@, new attachment container = %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v36 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v49 = v12;
              v50 = 2112;
              v51 = v17;
              _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_ERROR, "Could not get new attachment container. store uuid = %{public}@, new calendar data container = %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v35 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v49 = v12;
            _os_log_impl(&dword_1DEBB1000, v35, OS_LOG_TYPE_ERROR, "Could not get new calendar data container. store uuid = %{public}@", buf, 0xCu);
          }
        }

        goto LABEL_38;
      }

      v34 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v49 = v12;
        v50 = 2112;
        v51 = path;
        v31 = "Legacy attachment container for store is not a directory. store uuid = %{public}@, legacy attachment container for store path = %@";
        v32 = v34;
        v33 = OS_LOG_TYPE_ERROR;
        goto LABEL_22;
      }
    }

    else
    {
      v30 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v49 = v12;
        v50 = 2112;
        v51 = path;
        v31 = "Legacy attachment container for store does not exist. store uuid = %{public}@, legacy attachment container for store path = %@";
        v32 = v30;
        v33 = OS_LOG_TYPE_INFO;
LABEL_22:
        _os_log_impl(&dword_1DEBB1000, v32, v33, v31, buf, 0x16u);
      }
    }

LABEL_38:

LABEL_39:
LABEL_40:

    goto LABEL_41;
  }

  v26 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v27 = v26;
    *buf = 67109120;
    LODWORD(v49) = CalStoreGetUID(store);
    _os_log_impl(&dword_1DEBB1000, v27, OS_LOG_TYPE_ERROR, "Could not get account persistent id for store. store uid = %d", buf, 8u);
  }

LABEL_41:
}

+ (void)_updateLocalRelativeURLForAttachmentsWithInfo:(id)info database:(CalDatabase *)database
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__CDBAttachmentMigrator__updateLocalRelativeURLForAttachmentsWithInfo_database___block_invoke;
  v4[3] = &__block_descriptor_48_e44_v32__0__NSString_8__CDBAttachmentInfo_16_B24l;
  v4[4] = self;
  v4[5] = database;
  [info enumerateKeysAndObjectsUsingBlock:v4];
}

void __80__CDBAttachmentMigrator__updateLocalRelativeURLForAttachmentsWithInfo_database___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 localRelativePath];
  [*(a1 + 32) _setLocalRelativePathForAttachmentUUID:v5 localRelativePath:v6 database:*(a1 + 40)];
}

+ (void)_setLocalRelativePathForAttachmentUUID:(id)d localRelativePath:(id)path database:(CalDatabase *)database
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathCopy = path;
  v9 = CalDatabaseCopyAttachmentFileWithUUID(database, dCopy);
  if (v9)
  {
    v10 = v9;
    CalAttachmentFileSetLocalRelativePath(v9, pathCopy);
    CFRelease(v10);
  }

  else
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
      v14 = 138543618;
      v15 = dCopy;
      v16 = 2114;
      v17 = stringByDeletingPathExtension;
      _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Could not get attachment. attachment uuid = %{public}@, local relative path = %{public}@", &v14, 0x16u);
    }
  }
}

+ (void)_setFileSizeForAttachmentsWithInfo:(id)info database:(CalDatabase *)database
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__CDBAttachmentMigrator__setFileSizeForAttachmentsWithInfo_database___block_invoke;
  v4[3] = &__block_descriptor_48_e44_v32__0__NSString_8__CDBAttachmentInfo_16_B24l;
  v4[4] = self;
  v4[5] = database;
  [info enumerateKeysAndObjectsUsingBlock:v4];
}

void __69__CDBAttachmentMigrator__setFileSizeForAttachmentsWithInfo_database___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 url];
  [*(a1 + 32) _setFileSizeForAttachmentUUID:v5 attachmentURL:v6 database:*(a1 + 40)];
}

+ (void)_setFileSizeForAttachmentUUID:(id)d attachmentURL:(id)l database:(CalDatabase *)database
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  path = [lCopy path];
  if (path)
  {
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v20 = dCopy;
      v21 = 2112;
      v22 = lCopy;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_INFO, "Setting file size for attachment uuid = %{public}@, attachment url = %@", buf, 0x16u);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v18 = 0;
    v12 = [MEMORY[0x1E6992F10] getFileSizeForPath:path fileManager:defaultManager error:&v18];
    v13 = v18;
    if (v12)
    {
      v14 = CalDatabaseCopyAttachmentFileWithUUID(database, dCopy);
      if (v14)
      {
        v15 = v14;
        CalAttachmentFileSetFileSize(v14, v12);
        CFRelease(v15);
LABEL_12:

        goto LABEL_13;
      }

      v16 = CDBLogHandle;
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 138543874;
      v20 = dCopy;
      v21 = 2112;
      v22 = path;
      v23 = 2112;
      v24 = v12;
      v17 = "Could not get attachment. attachment uuid = %{public}@, attachment path = %@, file size = %@";
    }

    else
    {
      v16 = CDBLogHandle;
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 138412802;
      v20 = v13;
      v21 = 2114;
      v22 = dCopy;
      v23 = 2112;
      v24 = path;
      v17 = "Could not get file size. error = %@, attachment uuid = %{public}@, attachment path = %@";
    }

    _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x20u);
    goto LABEL_12;
  }

LABEL_13:
}

+ (BOOL)_moveAttachmentsWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CDBAttachmentMigrator__moveAttachmentsWithInfo_error___block_invoke;
  v9[3] = &unk_1E8689600;
  v9[5] = &v16;
  v9[6] = self;
  v9[4] = &v10;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __56__CDBAttachmentMigrator__moveAttachmentsWithInfo_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[6];
  v7 = *(a1[4] + 8);
  obj = *(v7 + 40);
  v8 = [v6 _moveAttachmentWithInfo:a3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (BOOL)_moveAttachmentWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  legacyURL = [infoCopy legacyURL];
  v7 = [infoCopy url];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager moveItemAtURL:legacyURL toURL:v7 error:error];

  return error;
}

+ (id)_infoForAttachmentsInLegacyAttachmentContainerForStore:(id)store newAttachmentContainerForStore:(id)forStore newCalendarDataContainer:(id)container database:(CalDatabase *)database
{
  v37 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  forStoreCopy = forStore;
  containerCopy = container;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v28 = storeCopy;
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = 0;
  v27 = defaultManager;
  v14 = [defaultManager contentsOfDirectoryAtURL:storeCopy includingPropertiesForKeys:0 options:4 error:&v35];
  v26 = v35;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v30 = 0;
        v21 = [self _attachmentInfoForLegacyAttachmentURL:v20 newAttachmentContainerForStore:forStoreCopy newCalendarDataContainer:containerCopy database:database attachmentUUID:&v30];
        v22 = v30;
        if (v22)
        {
          v23 = v21 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          [v29 setObject:v21 forKeyedSubscript:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v17);
  }

  v24 = [v29 copy];

  return v24;
}

+ (id)_attachmentInfoForLegacyAttachmentURL:(id)l newAttachmentContainerForStore:(id)store newCalendarDataContainer:(id)container database:(CalDatabase *)database attachmentUUID:(id *)d
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  storeCopy = store;
  containerCopy = container;
  path = [lCopy path];
  v15 = path;
  if (!path)
  {
    v24 = 0;
    goto LABEL_21;
  }

  lastPathComponent = [path lastPathComponent];
  v17 = lastPathComponent;
  if (lastPathComponent)
  {
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v19 = stringByDeletingPathExtension;
    if (stringByDeletingPathExtension)
    {
      v20 = stringByDeletingPathExtension;
      *d = v19;
      v21 = CalDatabaseCopyAttachmentFileWithUUID(database, v19);
      if (v21)
      {
        CFRelease(v21);
        v22 = [storeCopy URLByAppendingPathComponent:v17];
        if (v22)
        {
          v23 = [MEMORY[0x1E6992F10] localRelativePathForLocalAbsoluteURL:v22 localBaseURL:containerCopy];
          if (v23)
          {
            v24 = [[CDBAttachmentInfo alloc] initWithLegacyURL:lCopy url:v22 localRelativePath:v23];
          }

          else
          {
            v26 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              v28 = 138412802;
              v29 = v19;
              v30 = 2112;
              v31 = v22;
              v32 = 2112;
              v33 = containerCopy;
              _os_log_impl(&dword_1DEBB1000, v26, OS_LOG_TYPE_ERROR, "Could not get new attachment local relative path. attachment uuid = %@ new attachment url = %@, new calendar data container = %@", &v28, 0x20u);
            }

            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_19;
      }

      v25 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v28 = 138412290;
        v29 = v19;
        _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_INFO, "Could not get attachment for file name = %@", &v28, 0xCu);
      }
    }

    v24 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v24 = 0;
LABEL_20:

LABEL_21:

  return v24;
}

+ (BOOL)_createNewContainerIfNeeded:(id)needed error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [neededCopy path];
  if (path)
  {
    LOBYTE(v11) = 0;
    if ([defaultManager fileExistsAtPath:path isDirectory:&v11] && (v11 & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = [defaultManager createDirectoryAtURL:neededCopy withIntermediateDirectories:1 attributes:0 error:error];
    }
  }

  else
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = neededCopy;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "New container path is nil. new attachment container = %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (void)migrateDataClassProtectionForAttachmentsInLegacyCalendarDataContainer:(id)container
{
  v27 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_INFO, "Fixing up dataclass protection for calendar attachments", buf, 2u);
  }

  v5 = [MEMORY[0x1E6992F10] legacyAttachmentContainerWithBaseURL:containerCopy];
  v6 = v5;
  if (v5)
  {
    v17 = v5;
    v18 = containerCopy;
    path = [v5 path];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [defaultManager enumeratorAtPath:path];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [path stringByAppendingPathComponent:*(*(&v20 + 1) + 8 * i)];
          v19 = 0;
          if ([defaultManager fileExistsAtPath:v14 isDirectory:&v19] && (v19 & 1) == 0)
          {
            v15 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v25 = v14;
              _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_INFO, "Setting dataclass protection for attachment: %@", buf, 0xCu);
            }

            CalAttachmentFileSetDataProtection(v14);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v11);
    }

    v6 = v17;
    containerCopy = v18;
  }

  else
  {
    v16 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Could not get legacy attachment container", buf, 2u);
    }
  }
}

@end