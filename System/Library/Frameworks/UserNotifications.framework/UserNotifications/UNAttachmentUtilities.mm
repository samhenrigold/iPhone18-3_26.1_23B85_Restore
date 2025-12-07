@interface UNAttachmentUtilities
+ (id)_systemDirectoryURL;
+ (void)_deleteFile:(id)file;
+ (void)_processAttachment:(id)attachment;
+ (void)deleteAttachmentFilesInContentsIfNecessary:(id)necessary;
+ (void)deleteAttachmentFilesInRequestsIfNecessary:(id)necessary;
@end

@implementation UNAttachmentUtilities

+ (void)deleteAttachmentFilesInRequestsIfNecessary:(id)necessary
{
  v17 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = necessaryCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        content = [*(*(&v12 + 1) + 8 * v10) content];
        if (content)
        {
          [array addObject:content];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [self deleteAttachmentFilesInContentsIfNecessary:array];
}

+ (void)deleteAttachmentFilesInContentsIfNecessary:(id)necessary
{
  v24 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [necessaryCopy countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(necessaryCopy);
        }

        attachments = [*(*(&v18 + 1) + 8 * v8) attachments];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [attachments countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(attachments);
              }

              [self _processAttachment:*(*(&v14 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [attachments countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [necessaryCopy countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }
}

+ (void)_processAttachment:(id)attachment
{
  v39 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = [attachmentCopy URL];
  if (v5)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    v8 = [bundleRecordForCurrentProcess URL];
    if (v8 && (v35 = 2, [defaultManager getRelationship:&v35 ofDirectoryAtURL:v8 toItemAtURL:v5 error:0], !v35))
    {
      v26 = UNLogAttachmentsService;
      if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v38 = v5;
        _os_log_impl(&dword_1B85E3000, v26, OS_LOG_TYPE_DEFAULT, "Contained in the bundle: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      selfCopy = self;
      dataContainerURL = [bundleRecordForCurrentProcess dataContainerURL];
      groupContainerURLs = [bundleRecordForCurrentProcess groupContainerURLs];
      allValues = [groupContainerURLs allValues];

      array = [MEMORY[0x1E695DF70] array];
      v13 = array;
      if (dataContainerURL)
      {
        [array addObject:dataContainerURL];
      }

      v29 = dataContainerURL;
      if (allValues)
      {
        [v13 addObjectsFromArray:allValues];
      }

      v28 = allValues;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            v35 = 2;
            [defaultManager getRelationship:&v35 ofDirectoryAtURL:v19 toItemAtURL:v5 error:0];
            if (!v35)
            {
              v25 = UNLogAttachmentsService;
              if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v38 = v5;
                _os_log_impl(&dword_1B85E3000, v25, OS_LOG_TYPE_DEFAULT, "Contained in a group container. Deleting file: %{public}@", buf, 0xCu);
              }

              [selfCopy _deleteFile:v5];
              _systemDirectoryURL = v14;
              goto LABEL_26;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      _systemDirectoryURL = [selfCopy _systemDirectoryURL];
      v35 = 2;
      [defaultManager getRelationship:&v35 ofDirectoryAtURL:_systemDirectoryURL toItemAtURL:v5 error:0];
      if (v35)
      {
        path = [v5 path];
        v22 = [defaultManager isWritableFileAtPath:path];

        if (v22)
        {
          v23 = UNLogAttachmentsService;
          if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v5;
            _os_log_impl(&dword_1B85E3000, v23, OS_LOG_TYPE_DEFAULT, "File is writable. Deleting file: %{public}@", buf, 0xCu);
          }

          [selfCopy _deleteFile:v5];
        }
      }

      else
      {
        v27 = UNLogAttachmentsService;
        if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v38 = v5;
          _os_log_impl(&dword_1B85E3000, v27, OS_LOG_TYPE_DEFAULT, "Contained in the System directory: %{public}@", buf, 0xCu);
        }
      }

LABEL_26:
    }

    goto LABEL_28;
  }

  v24 = UNLogAttachmentsService;
  if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
  {
    defaultManager = v24;
    bundleRecordForCurrentProcess = [attachmentCopy identifier];
    *buf = 138543362;
    v38 = bundleRecordForCurrentProcess;
    _os_log_impl(&dword_1B85E3000, defaultManager, OS_LOG_TYPE_DEFAULT, "No attachment URL for %{public}@", buf, 0xCu);
LABEL_28:
  }
}

+ (id)_systemDirectoryURL
{
  if (_systemDirectoryURL_onceToken != -1)
  {
    +[UNAttachmentUtilities _systemDirectoryURL];
  }

  v3 = _systemDirectoryURL_systemDirectoryURL;

  return v3;
}

void __44__UNAttachmentUtilities__systemDirectoryURL__block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v4 = BSSystemRootDirectory();
  v1 = [v4 stringByAppendingPathComponent:@"System"];
  v2 = [v0 fileURLWithPath:v1];
  v3 = _systemDirectoryURL_systemDirectoryURL;
  _systemDirectoryURL_systemDirectoryURL = v2;
}

+ (void)_deleteFile:(id)file
{
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  [defaultManager removeItemAtURL:fileCopy error:&v9];
  v5 = v9;

  if (v5)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundlePath = [mainBundle bundlePath];

    v8 = UNLogAttachmentsService;
    if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_FAULT))
    {
      [(UNAttachmentUtilities *)bundlePath _deleteFile:v8, fileCopy];
    }
  }
}

+ (void)_deleteFile:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 absoluteString];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_fault_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_FAULT, "[Notification Attachment] Failed to delete an attachment file. Bundle: '%{public}@', Attachment: '%{public}@'", &v7, 0x16u);
}

@end