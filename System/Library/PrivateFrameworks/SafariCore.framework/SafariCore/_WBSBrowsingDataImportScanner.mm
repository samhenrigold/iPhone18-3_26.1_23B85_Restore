@interface _WBSBrowsingDataImportScanner
- (BOOL)_isArchiveFileURL:(id)l;
- (_WBSBrowsingDataImportScanner)init;
- (id)_createSandboxExtensionForURL:(id)l;
- (void)_processFileForURL:(id)l isInUnarchivedFolder:(BOOL)folder completionHandler:(id)handler;
- (void)_scanImportedURL:(id)l isInUnarchivedFolder:(BOOL)folder;
- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler;
@end

@implementation _WBSBrowsingDataImportScanner

- (_WBSBrowsingDataImportScanner)init
{
  v14.receiver = self;
  v14.super_class = _WBSBrowsingDataImportScanner;
  v2 = [(_WBSBrowsingDataImportScanner *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_resultLock._os_unfair_lock_opaque = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fileManager = v3->_fileManager;
    v3->_fileManager = defaultManager;

    v6 = dispatch_group_create();
    scannerGroup = v3->_scannerGroup;
    v3->_scannerGroup = v6;

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v8 = getDSArchiveServiceClass_softClass;
    v19 = getDSArchiveServiceClass_softClass;
    if (!getDSArchiveServiceClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getDSArchiveServiceClass_block_invoke;
      v15[3] = &unk_1E7CF0630;
      v15[4] = &v16;
      __getDSArchiveServiceClass_block_invoke(v15);
      v8 = v17[3];
    }

    v9 = v8;
    _Block_object_dispose(&v16, 8);
    v10 = objc_alloc_init(v8);
    archiveService = v3->_archiveService;
    v3->_archiveService = v10;

    v12 = v3;
  }

  return v3;
}

- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  handlerCopy = handler;
  if ([lsCopy count])
  {
    fileManager = self->_fileManager;
    firstObject = [lsCopy firstObject];
    v41 = 0;
    v11 = [(NSFileManager *)fileManager safari_createTemporaryDirectoryAppropriateForURL:firstObject error:&v41];
    v12 = v41;
    temporaryUnarchiveDestinationFolder = self->_temporaryUnarchiveDestinationFolder;
    self->_temporaryUnarchiveDestinationFolder = v11;

    v16 = self->_temporaryUnarchiveDestinationFolder;
    if (v16)
    {
      v40 = v12;
      v17 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:v16 options:0x100000 createMode:0 error:&v40];
      v18 = v40;

      temporaryUnarchiveDestinationFileHandle = self->_temporaryUnarchiveDestinationFileHandle;
      self->_temporaryUnarchiveDestinationFileHandle = v17;

      if (self->_temporaryUnarchiveDestinationFileHandle)
      {
        v22 = [(_WBSBrowsingDataImportScanner *)self _createSandboxExtensionForURL:self->_temporaryUnarchiveDestinationFolder];
        temporaryUnarchiveDestinationFolderSandboxExtension = self->_temporaryUnarchiveDestinationFolderSandboxExtension;
        self->_temporaryUnarchiveDestinationFolderSandboxExtension = v22;

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        results = self->_results;
        self->_results = dictionary;

        dispatch_group_enter(self->_scannerGroup);
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v26 = lsCopy;
        v27 = [v26 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v37;
          do
          {
            v30 = 0;
            do
            {
              if (*v37 != v29)
              {
                objc_enumerationMutation(v26);
              }

              [(_WBSBrowsingDataImportScanner *)self _scanImportedURL:*(*(&v36 + 1) + 8 * v30++) isInUnarchivedFolder:0];
            }

            while (v28 != v30);
            v28 = [v26 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v28);
        }

        scannerGroup = self->_scannerGroup;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __84___WBSBrowsingDataImportScanner_scanImportURLs_sandboxExtensions_completionHandler___block_invoke;
        v34[3] = &unk_1E7CF16B8;
        v34[4] = self;
        v35 = handlerCopy;
        dispatch_group_notify(scannerGroup, MEMORY[0x1E69E96A0], v34);
        dispatch_group_leave(self->_scannerGroup);
      }

      else
      {
        v33 = WBS_LOG_CHANNEL_PREFIXImport(v20, v21);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [_WBSBrowsingDataImportScanner scanImportURLs:v33 sandboxExtensions:? completionHandler:?];
        }

        (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], v18);
      }

      v12 = v18;
    }

    else
    {
      v32 = WBS_LOG_CHANNEL_PREFIXImport(v14, v15);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [_WBSBrowsingDataImportScanner scanImportURLs:v32 sandboxExtensions:? completionHandler:?];
      }

      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], v12);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], 0);
  }
}

- (void)_scanImportedURL:(id)l isInUnarchivedFolder:(BOOL)folder
{
  folderCopy = folder;
  v27[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v26 = 0;
  fileManager = self->_fileManager;
  path = [lCopy path];
  LODWORD(fileManager) = [(NSFileManager *)fileManager fileExistsAtPath:path isDirectory:&v26];

  if (fileManager)
  {
    if (v26)
    {
      v9 = self->_fileManager;
      v10 = *MEMORY[0x1E695DB78];
      v27[0] = *MEMORY[0x1E695DB78];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v12 = [(NSFileManager *)v9 enumeratorAtURL:lCopy includingPropertiesForKeys:v11 options:6 errorHandler:0];

      nextObject = [v12 nextObject];
      if (nextObject)
      {
        v14 = nextObject;
        do
        {
          v22 = 0;
          [v14 getResourceValue:&v22 forKey:v10 error:0];
          v15 = v22;
          if (([v15 BOOLValue] & 1) == 0)
          {
            [(_WBSBrowsingDataImportScanner *)self _scanImportedURL:v14 isInUnarchivedFolder:folderCopy];
          }

          nextObject2 = [v12 nextObject];

          v14 = nextObject2;
        }

        while (nextObject2);
      }
    }

    else if ([(_WBSBrowsingDataImportScanner *)self _isArchiveFileURL:lCopy])
    {
      lastPathComponent = [lCopy lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

      v19 = [(NSFileManager *)self->_fileManager safari_createDirectoryWithUniqueName:stringByDeletingPathExtension relativeToDirectoryFileHandle:self->_temporaryUnarchiveDestinationFileHandle error:0];
      dispatch_group_enter(self->_scannerGroup);
      archiveService = self->_archiveService;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke;
      v25[3] = &unk_1E7CF5108;
      v25[4] = self;
      v21 = [(DSArchiveService *)archiveService unarchiveItemAtURL:lCopy toURL:v19 options:0 acceptedFormats:1 passphrases:0 completionHandler:v25];
    }

    else
    {
      dispatch_group_enter(self->_scannerGroup);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __71___WBSBrowsingDataImportScanner__scanImportedURL_isInUnarchivedFolder___block_invoke_73;
      v23[3] = &unk_1E7CF5130;
      v23[4] = self;
      v24 = lCopy;
      [(_WBSBrowsingDataImportScanner *)self _processFileForURL:v24 isInUnarchivedFolder:folderCopy completionHandler:v23];
    }
  }
}

- (BOOL)_isArchiveFileURL:(id)l
{
  v3 = _isArchiveFileURL__onceToken;
  lCopy = l;
  if (v3 != -1)
  {
    [_WBSBrowsingDataImportScanner _isArchiveFileURL:];
  }

  v5 = _isArchiveFileURL__archiveExtensions;
  pathExtension = [lCopy pathExtension];

  lowercaseString = [pathExtension lowercaseString];
  LOBYTE(v5) = [v5 containsObject:lowercaseString];

  return v5;
}

- (id)_createSandboxExtensionForURL:(id)l
{
  lCopy = l;
  [lCopy fileSystemRepresentation];
  v4 = sandbox_extension_issue_file();
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v4 length:strlen(v4) encoding:4 freeWhenDone:1];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_WBSBrowsingDataImportScanner *)lCopy _createSandboxExtensionForURL:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (void)_processFileForURL:(id)l isInUnarchivedFolder:(BOOL)folder completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7CF5158;
  folderCopy = folder;
  aBlock[4] = self;
  v10 = handlerCopy;
  v29 = v10;
  v11 = _Block_copy(aBlock);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  pathExtension = [lCopy pathExtension];
  if ([pathExtension isEqualToString:@"html"])
  {
    v14 = [WBSNetscapeBookmarkFileReader looksLikeBookmarkFile:lCopy];

    if (v14)
    {
      [dictionary setObject:@"bookmark" forKeyedSubscript:@"data_type"];
LABEL_11:
      v11[2](v11, dictionary);
      goto LABEL_15;
    }
  }

  else
  {
  }

  pathExtension2 = [lCopy pathExtension];
  v16 = [pathExtension2 isEqualToString:@"json"];

  if (v16)
  {
    v17 = WBSLoadMetadataDictionaryFromURL(lCopy, 0);
    v18 = [v17 mutableCopy];

    v11[2](v11, v18);
    dictionary = v18;
  }

  else
  {
    pathExtension3 = [lCopy pathExtension];
    v20 = [pathExtension3 isEqualToString:@"csv"];

    if (v20)
    {
      v21 = objc_alloc_init(NSClassFromString(&cfstr_Wbspasswordsda.isa));
      v22 = v21;
      if (v21)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __91___WBSBrowsingDataImportScanner__processFileForURL_isInUnarchivedFolder_completionHandler___block_invoke_2;
        block[3] = &unk_1E7CF4970;
        v24 = v21;
        v25 = lCopy;
        v26 = dictionary;
        v27 = v11;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        v11[2](v11, dictionary);
      }
    }

    else
    {
      if ([dictionary count])
      {
        goto LABEL_11;
      }

      (*(v10 + 2))(v10, dictionary);
    }
  }

LABEL_15:
}

- (void)scanImportURLs:(void *)a1 sandboxExtensions:completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)scanImportURLs:(void *)a1 sandboxExtensions:completionHandler:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)_createSandboxExtensionForURL:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = a2;
  __error();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

@end