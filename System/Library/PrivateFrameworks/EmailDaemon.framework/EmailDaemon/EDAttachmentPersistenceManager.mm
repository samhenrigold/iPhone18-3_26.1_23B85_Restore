@interface EDAttachmentPersistenceManager
+ (OS_os_log)log;
+ (__CFString)createFilenameForAttachmentName:(uint64_t)name;
+ (id)attachmentDirectoryURLWithBasePath:(id)path;
+ (void)removeSynapseAttachmentAttributesForMessages:(id)messages;
- (BOOL)persistAttachmentMetadata:(id)metadata;
- (EDAttachmentFileWriter)_createAttachmentFileWriterForAttachmentMetadata:(void *)metadata basePath:(void *)path downloadDate:(void *)date queue:(void *)queue compressionQueue:(void *)compressionQueue completion:;
- (EDAttachmentMetadata)_updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:(void *)file metadata:(void *)metadata basePath:(void *)path digest:(void *)digest downloadDate:;
- (EDAttachmentPersistenceManager)initWithDatabase:(id)database messagePersistence:(id)persistence;
- (id)_accountIdentifiersByAttachmentIDs:(uint64_t)ds;
- (id)_attachmentURLForAttachment:(void *)attachment basePath:;
- (id)_attachmentURLForAttachmentID:(void *)d nameOnDisk:(void *)disk basePath:;
- (id)_attachmentURLForAttachmentMetadata:(void *)metadata basePath:;
- (id)_attachmentURLWithBasePath:(void *)path attachmentID:(void *)d nameOnDisk:;
- (id)_attachmentURLsAndNamesForMetadata:(void *)metadata basePath:;
- (id)_createTemporaryURLForAttachmentMetadata:(void *)metadata basePath:;
- (id)_temporaryFileURLWithBasePath:(void *)path name:;
- (id)_updateAttachmentIDAndCreateFinalFileURLForFile:(void *)file metadata:(void *)metadata basePath:(void *)path digest:(void *)digest downloadDate:;
- (id)_updateAttachmentURL:(void *)l attachmentName:;
- (id)addSynapseAttributesToAttachmentWithURL:(id)l contentType:(id)type usingGenerator:(id)generator;
- (id)allAttachmentsInfoForGlobalMessageIDs:(id)ds basePath:(id)path;
- (id)attachmentDirectoryURLForMessageID:(int64_t)d basePath:(id)path;
- (id)attachmentURLForGlobalMessageID:(int64_t)d mimePartNumber:(id)number basePath:(id)path;
- (id)attachmentURLForGlobalMessageID:(int64_t)d remoteURL:(id)l basePath:(id)path;
- (id)attachmentURLForMessageAttachmentID:(id)d basePath:(id)path;
- (id)attachmentURLsForGlobalMessageIDs:(id)ds;
- (id)createAttachmentFileWriterForAttachmentMetadata:(id)metadata basePath:(id)path downloadDate:(id)date queue:(id)queue compressionQueue:(id)compressionQueue completion:(id)completion;
- (id)removeDatabaseAttachments:(id *)attachments;
- (uint64_t)_moveAttachmentAtURL:(void *)l toURL:(uint64_t)rL outError:;
- (uint64_t)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:(void *)wrapper orURL:(void *)l attachmentMetadata:(void *)metadata basePath:(int)path shouldUpdateAttachmentID:;
- (uint64_t)_persistAttachmentWithWrapper:(id *)wrapper orURL:(void *)l attachmentMetadata:(void *)metadata basePath:(void *)path error:(void *)error;
- (uint64_t)_writeAttachment:(void *)attachment toDirectory:(void *)directory outError:;
- (uint64_t)_writeFileWrapper:(void *)wrapper toURL:(void *)l outError:;
- (uint64_t)removeFilesystemAttachmentsByAccountIdentifier:(NSObject *)identifier;
- (void)_createParentDirectoryForFile:(uint64_t)file;
- (void)_didCompleteWritingAttachmentToFile:(void *)file basePath:(void *)path digest:(void *)digest metadata:(void *)metadata downloadDate:;
- (void)_tempDirectoryForArchiveAttachmentsWithParentDirectory:(void *)directory;
- (void)insertMimePartAttachments:(id)attachments forGlobalMessageID:(int64_t)d;
- (void)isDeletingMessages:(id)messages;
- (void)persistenceDidDeleteMessages:(id)messages generationWindow:(id)window;
- (void)persistenceIsDeletingMessages:(id)messages generationWindow:(id)window;
- (void)persistenceWillDeleteMessages:(id)messages;
- (void)willDeleteAttachmentsForMessages:(id)messages;
@end

@implementation EDAttachmentPersistenceManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDAttachmentPersistenceManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_12 != -1)
  {
    dispatch_once(&log_onceToken_12, block);
  }

  v2 = log_log_12;

  return v2;
}

void __37__EDAttachmentPersistenceManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_12;
  log_log_12 = v1;
}

+ (id)attachmentDirectoryURLWithBasePath:(id)path
{
  v3 = [path URLByAppendingPathComponent:@"AttachmentData" isDirectory:1];

  return v3;
}

+ (__CFString)createFilenameForAttachmentName:(uint64_t)name
{
  v2 = a2;
  objc_opt_self();
  ef_sanitizedFileName = [v2 ef_sanitizedFileName];
  if (![(__CFString *)ef_sanitizedFileName length]|| [(__CFString *)ef_sanitizedFileName length]> 0xFF || ([(__CFString *)ef_sanitizedFileName isEqualToString:@"."]& 1) != 0 || [(__CFString *)ef_sanitizedFileName isEqualToString:@".."])
  {

    ef_sanitizedFileName = @"attachment";
  }

  return ef_sanitizedFileName;
}

- (EDAttachmentPersistenceManager)initWithDatabase:(id)database messagePersistence:(id)persistence
{
  databaseCopy = database;
  persistenceCopy = persistence;
  v14.receiver = self;
  v14.super_class = EDAttachmentPersistenceManager;
  v8 = [(EDAttachmentPersistenceManager *)&v14 init];
  if (v8)
  {
    v9 = [[EDAttachmentPersistence alloc] initWithDatabase:databaseCopy];
    attachmentPersistence = v8->_attachmentPersistence;
    v8->_attachmentPersistence = v9;

    objc_storeStrong(&v8->_messagePersistence, persistence);
    v11 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDAttachmentPersistenceManager" qualityOfService:17];
    synapseAttributesScheduler = v8->_synapseAttributesScheduler;
    v8->_synapseAttributesScheduler = v11;
  }

  return v8;
}

- (uint64_t)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:(void *)wrapper orURL:(void *)l attachmentMetadata:(void *)metadata basePath:(int)path shouldUpdateAttachmentID:
{
  v105 = *MEMORY[0x1E69E9840];
  v11 = a2;
  wrapperCopy = wrapper;
  lCopy = l;
  metadataCopy = metadata;
  v90 = wrapperCopy;
  if (!self)
  {
    v82 = 0;
    goto LABEL_89;
  }

  v89 = *(self + 8);
  if (v11)
  {
    preferredFilename = [v11 preferredFilename];
    filename = preferredFilename;
    if (!preferredFilename)
    {
      filename = [v11 filename];
    }

    v15 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:filename];
    if (!preferredFilename)
    {
    }

    [v11 setPreferredFilename:v15];
    [v11 setFilename:v15];
    isDirectory = [v11 isDirectory];
    if (isDirectory)
    {
      if (!v90)
      {
        v91 = 0;
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    regularFileContents = [v11 regularFileContents];
    v91 = [EDAttachmentPersistence hashForAttachmentData:regularFileContents];
  }

  else
  {
    if (wrapperCopy)
    {
      ef_lastPathComponent = [wrapperCopy ef_lastPathComponent];
      sanitizedString = [ef_lastPathComponent sanitizedString];
      v15 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:sanitizedString];

LABEL_12:
      regularFileContents = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v90];
      if (!regularFileContents)
      {
        v20 = EDAttachmentsLog(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [EDAttachmentPersistenceManager _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:v90 orURL:v20 attachmentMetadata:? basePath:? shouldUpdateAttachmentID:?];
        }

        v91 = 0;
        v96 = 0;
        goto LABEL_88;
      }

      v91 = [EDAttachmentPersistence hashForAttachmentData:regularFileContents];
      goto LABEL_19;
    }

    regularFileContents = [MEMORY[0x1E696AAA8] currentHandler];
    [regularFileContents handleFailureInMethod:sel__persistAndUpdateAttachmentPersistenceTableFromFileWrapper_orURL_attachmentMetadata_basePath_shouldUpdateAttachmentID_ object:self file:@"EDAttachmentPersistenceManager.m" lineNumber:88 description:@"Need to have either a fileWrapper or a URL"];
    v15 = 0;
    v91 = 0;
  }

LABEL_19:

LABEL_20:
  v21 = EDAttachmentsLog(isDirectory);
  pathCopy = path;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    globalMessageID = [lCopy globalMessageID];
    mimePartNumber = [lCopy mimePartNumber];
    *buf = 138543874;
    v100 = v91;
    v101 = 2048;
    v102 = globalMessageID;
    v103 = 2114;
    v104 = mimePartNumber;
    _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Created hash %{public}@ for attachment for globalMessageID %lld MIME part %{public}@", buf, 0x20u);
  }

  if (v11)
  {
    fileAttributes = [v11 fileAttributes];
    v25 = [fileAttributes objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
    v86 = [fileAttributes objectForKeyedSubscript:*MEMORY[0x1E696A308]];
    v85 = v25;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v90 path];
    fileAttributes = [defaultManager attributesOfItemAtPath:path error:0];

    v28 = [fileAttributes objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
    v29 = [fileAttributes objectForKeyedSubscript:*MEMORY[0x1E696A308]];
    v86 = v29;
    v85 = v28;
    if (!v28 || !v29)
    {
      v56 = EDAttachmentsLog(v29);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [EDAttachmentPersistenceManager _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:v90 orURL:v56 attachmentMetadata:? basePath:? shouldUpdateAttachmentID:?];
      }

      v96 = 0;
      goto LABEL_87;
    }
  }

  v31 = EDAttachmentsLog(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v31, OS_LOG_TYPE_DEFAULT, "Checking if the attachment hash already exists in the attachments table", buf, 2u);
  }

  v32 = [v89 uniqueAttachmentDataForHash:v91];
  fileAttributes = v32;
  v33 = *MEMORY[0x1E699A728];
  if (!v32)
  {
    v36 = [[EDAttachmentMetadata alloc] initWithAttachmentHash:v91 nameOnDisk:v15 size:v85 downloadDate:v86];
    v48 = EDAttachmentsLog(v36);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v48, OS_LOG_TYPE_DEFAULT, "No existing attachment found. Adding to the attachments table", buf, 2u);
    }

    v49 = [v89 insertAttachmentMetadata:v36];
    v50 = v49;
    if (v49 == v33)
    {
      v46 = 0;
LABEL_62:
      v37 = EDAttachmentsLog(v49);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [v11 preferredFilename];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:orURL:attachmentMetadata:basePath:shouldUpdateAttachmentID:];
      }

      v47 = 0;
      goto LABEL_65;
    }

    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v49];
    v58 = [metadataCopy URLByAppendingPathComponent:v57 isDirectory:1];

    v60 = EDAttachmentsLog(v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      preferredFilename2 = [v11 preferredFilename];
      *buf = 134218498;
      v100 = v50;
      v101 = 2112;
      v102 = preferredFilename2;
      v103 = 2112;
      v104 = v58;
      _os_log_impl(&dword_1C61EF000, v60, OS_LOG_TYPE_DEFAULT, "Persisting attachment %lld %@ to disk at directory %@", buf, 0x20u);
    }

    if (v11)
    {
      v95 = 0;
      v62 = [(EDAttachmentPersistenceManager *)self _writeAttachment:v11 toDirectory:v58 outError:&v95];
      v46 = v95;

      if ((v62 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v66 = [v58 URLByAppendingPathComponent:v15];
      v94 = 0;
      v67 = [(EDAttachmentPersistenceManager *)self _moveAttachmentAtURL:v90 toURL:v66 outError:&v94];
      v46 = v94;

      if (!v67)
      {
        goto LABEL_62;
      }
    }

    v37 = EDAttachmentsLog(v49);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      preferredFilename3 = [v11 preferredFilename];
      *buf = 134218242;
      v100 = v50;
      v101 = 2112;
      v102 = preferredFilename3;
      _os_log_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEFAULT, "Persisted attachment %lld %@ to disk", buf, 0x16u);
    }

    v47 = 1;
    goto LABEL_65;
  }

  v34 = MEMORY[0x1E696AEC0];
  attachmentID = [v32 attachmentID];
  v36 = [v34 stringWithFormat:@"%@", attachmentID];

  v37 = [metadataCopy URLByAppendingPathComponent:v36 isDirectory:1];
  v38 = [v37 URLByAppendingPathComponent:v15];
  relativePath = [v38 relativePath];

  v41 = EDAttachmentsLog(v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v100 = relativePath;
    _os_log_impl(&dword_1C61EF000, v41, OS_LOG_TYPE_DEFAULT, "Found the attachment in the attachments table. Checking if it exists on disk at %@", buf, 0xCu);
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v43 = [defaultManager2 fileExistsAtPath:relativePath];

  if ((v43 & 1) == 0)
  {
    v51 = EDAttachmentsLog(v44);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      preferredFilename4 = [v11 preferredFilename];
      *buf = 138412290;
      v100 = preferredFilename4;
      _os_log_impl(&dword_1C61EF000, v51, OS_LOG_TYPE_DEFAULT, "No existing attachment found on disk. Writing attachment %@ to disk", buf, 0xCu);
    }

    if (v11)
    {
      v93 = 0;
      v53 = [(EDAttachmentPersistenceManager *)self _writeAttachment:v11 toDirectory:v37 outError:&v93];
      v54 = v93;
      v46 = v54;
      if (v53)
      {
LABEL_44:
        v45 = EDAttachmentsLog(v54);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          preferredFilename5 = [v11 preferredFilename];
          *buf = 138412290;
          v100 = preferredFilename5;
          _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "Persisted attachment %@ to disk with existing metadata", buf, 0xCu);
        }

        v47 = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v64 = [v37 URLByAppendingPathComponent:v15];
      v92 = 0;
      v65 = [(EDAttachmentPersistenceManager *)self _moveAttachmentAtURL:v90 toURL:v64 outError:&v92];
      v46 = v92;

      if (v65)
      {
        goto LABEL_44;
      }
    }

    v45 = EDAttachmentsLog(v54);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [v11 preferredFilename];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:orURL:attachmentMetadata:basePath:shouldUpdateAttachmentID:];
    }

    goto LABEL_35;
  }

  v45 = EDAttachmentsLog(v44);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "Found the attachment on disk. No write needed", buf, 2u);
  }

  v46 = 0;
LABEL_35:
  v47 = 0;
LABEL_47:

  v50 = v33;
LABEL_65:

  attachmentID2 = [fileAttributes attachmentID];
  if (attachmentID2)
  {
    v69 = 0;
  }

  else
  {
    v69 = v50 == v33;
  }

  v70 = !v69;

  if (v70)
  {
    attachmentID3 = [fileAttributes attachmentID];
    v72 = attachmentID3;
    if (!attachmentID3)
    {
      v72 = [MEMORY[0x1E696AD98] numberWithLongLong:v50];
    }

    [lCopy setAttachmentID:v72];
    if (!attachmentID3)
    {
    }

    v74 = EDAttachmentsLog(v73);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      attachmentID4 = [fileAttributes attachmentID];
      *v97 = 138412290;
      v98 = attachmentID4;
      _os_log_impl(&dword_1C61EF000, v74, OS_LOG_TYPE_DEFAULT, "Checking if we need to update or insert the attachment metadata in the message_attachments table for attachment: %@", v97, 0xCu);
    }

    if (pathCopy)
    {
      v77 = EDAttachmentsLog(v76);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        attachmentID5 = [fileAttributes attachmentID];
        *v97 = 138412290;
        v98 = attachmentID5;
        _os_log_impl(&dword_1C61EF000, v77, OS_LOG_TYPE_DEFAULT, "Update the message_attachments table with the updated attachment ID: %@", v97, 0xCu);
      }

      v79 = [v89 updateAttachmentIDForMessageAttachment:lCopy];
    }

    else
    {
      v80 = EDAttachmentsLog(v76);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        attachmentID6 = [lCopy attachmentID];
        *v97 = 138412290;
        v98 = attachmentID6;
        _os_log_impl(&dword_1C61EF000, v80, OS_LOG_TYPE_DEFAULT, "Create a new entry into the message_attachments table with attachment ID: %@", v97, 0xCu);
      }

      v79 = [v89 insertMessageAttachmentMetadata:lCopy];
    }

    v47 = v79;
  }

  v96 = v47;

LABEL_87:
LABEL_88:

  v82 = v96;
LABEL_89:

  return v82;
}

- (uint64_t)_writeAttachment:(void *)attachment toDirectory:(void *)directory outError:
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  attachmentCopy = attachment;
  if (!self)
  {
    v27 = 0;
    goto LABEL_25;
  }

  isDirectory = [v7 isDirectory];
  v10 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v32 = 0;
  v12 = [defaultManager createDirectoryAtURL:attachmentCopy withIntermediateDirectories:1 attributes:0 error:&v32];
  v13 = v32;

  if (v12)
  {
    preferredFilename = [v7 preferredFilename];
    if (preferredFilename || ([v7 filename], (preferredFilename = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (isDirectory)
      {
        [attachmentCopy URLByAppendingPathComponent:preferredFilename isDirectory:1];
      }

      else
      {
        [attachmentCopy URLByAppendingPathComponent:preferredFilename isDirectory:0];
      }
      v17 = ;
      v31 = v13;
      v18 = [v17 checkResourceIsReachableAndReturnError:&v31];
      v19 = v31;

      if (v18)
      {
        v21 = EDAttachmentsLog(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [v17 path];
          objc_claimAutoreleasedReturnValue();
          [EDAttachmentPersistenceManager _writeAttachment:toDirectory:outError:];
        }

        v29 = v19;
        v16 = [(EDAttachmentPersistenceManager *)self _writeFileWrapper:v7 toURL:v17 outError:&v29];
        v13 = v29;

        goto LABEL_22;
      }

      domain = [v19 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A250]])
      {
        v23 = [v19 code] == 260;

        if (v23)
        {
          v30 = v19;
          v16 = [(EDAttachmentPersistenceManager *)self _writeFileWrapper:v7 toURL:v17 outError:&v30];
          v13 = v30;

          goto LABEL_22;
        }
      }

      else
      {
      }

      v25 = EDAttachmentsLog(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [v17 path];
        objc_claimAutoreleasedReturnValue();
        [v19 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _writeAttachment:toDirectory:outError:];
      }

      v16 = 0;
      v13 = v19;
      goto LABEL_22;
    }

    preferredFilename = EDAttachmentsLog(0);
    if (os_log_type_enabled(preferredFilename, OS_LOG_TYPE_ERROR))
    {
      [attachmentCopy path];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _writeAttachment:toDirectory:outError:];
    }
  }

  else
  {
    preferredFilename = EDAttachmentsLog(v14);
    if (os_log_type_enabled(preferredFilename, OS_LOG_TYPE_ERROR))
    {
      [attachmentCopy path];
      objc_claimAutoreleasedReturnValue();
      [v13 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _writeAttachment:toDirectory:outError:];
    }
  }

  v16 = 0;
  v17 = 0;
LABEL_22:

  objc_autoreleasePoolPop(v10);
  if (directory)
  {
    v26 = v13;
    *directory = v13;
  }

  v33 = v16;

  v27 = v33;
LABEL_25:

  return v27;
}

- (uint64_t)_moveAttachmentAtURL:(void *)l toURL:(uint64_t)rL outError:
{
  v7 = a2;
  lCopy = l;
  v9 = lCopy;
  if (!self)
  {
    v14 = 0;
    goto LABEL_14;
  }

  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:rL];

  if (v12)
  {
    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtURL:v7 error:0];

LABEL_12:
      v14 = 1;
      goto LABEL_13;
    }

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [defaultManager3 moveItemAtURL:v7 toURL:v9 error:rL];

    if (v14)
    {
      v16 = EFMarkFileAsPurgeable();
      v17 = 0;
      v18 = v17;
      if ((v16 & 1) == 0)
      {
        v19 = EDAttachmentsLog(v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [v9 path];
          objc_claimAutoreleasedReturnValue();
          [v18 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDAttachmentPersistenceManager _moveAttachmentAtURL:toURL:outError:];
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

LABEL_14:
  return v14;
}

- (uint64_t)_persistAttachmentWithWrapper:(id *)wrapper orURL:(void *)l attachmentMetadata:(void *)metadata basePath:(void *)path error:(void *)error
{
  v59 = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  pathCopy = path;
  errorCopy = error;
  v49 = pathCopy;
  if (!wrapper)
  {
    v20 = 0;
    goto LABEL_49;
  }

  globalMessageID = [pathCopy globalMessageID];
  mimePartNumber = [pathCopy mimePartNumber];
  remoteURL = [pathCopy remoteURL];
  v44 = wrapper[1];
  v11 = EDAttachmentsLog(v44);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Checking to see if the attachment metadata already exists in the message_attachments table", buf, 2u);
  }

  v55 = 0;
  if (mimePartNumber)
  {
    v13 = [v44 messageAttachmentExistsForGlobalMessageID:globalMessageID mimePartNumber:mimePartNumber hasAttachmentEntry:&v55];
    v48 = v13;
LABEL_8:
    if (v55 == 1 && v48)
    {
      v14 = EDAttachmentsLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Found both the attachment metadata and the attachment in the message_attachments and attachments table. No insertion needed.", buf, 2u);
      }

      v15 = [(EDAttachmentPersistenceManager *)wrapper _attachmentURLForAttachmentMetadata:v49 basePath:errorCopy];
      if (lCopy)
      {
        v16 = [(EDAttachmentPersistenceManager *)wrapper _writeFileWrapper:lCopy toURL:v15 outError:0];
      }

      else
      {
        v16 = [(EDAttachmentPersistenceManager *)wrapper _moveAttachmentAtURL:metadataCopy toURL:v15 outError:0];
      }

      v20 = v16;
    }

    else
    {
      if (v55)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__persistAttachmentWithWrapper_orURL_attachmentMetadata_basePath_error_ object:wrapper file:@"EDAttachmentPersistenceManager.m" lineNumber:364 description:@"We can't possibly have found an attachment entry without a message_attachment"];
      }

      v47 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:errorCopy];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      isRegularFile = [lCopy isRegularFile];
      v18 = isRegularFile ^ 1;
      if (metadataCopy)
      {
        v18 = 0;
      }

      if (v18)
      {
        v21 = EDAttachmentsLog(isRegularFile);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Persisting archive attachment", buf, 2u);
        }

        v22 = [(EDAttachmentPersistenceManager *)wrapper _tempDirectoryForArchiveAttachmentsWithParentDirectory:v47];
        [(EDAttachmentPersistenceManager *)wrapper _writeAttachment:lCopy toDirectory:v22 outError:0];
        [defaultManager contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:16 error:0];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        obj = v52 = 0u;
        v23 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
        if (v23)
        {
          LOBYTE(v20) = 0;
          v25 = *v52;
          *&v24 = 138412290;
          v38 = v24;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v52 != v25)
              {
                objc_enumerationMutation(obj);
              }

              relativeString = [*(*(&v51 + 1) + 8 * i) relativeString];
              stringByRemovingPercentEncoding = [relativeString stringByRemovingPercentEncoding];
              v29 = [v22 URLByAppendingPathComponent:stringByRemovingPercentEncoding];

              v30 = objc_alloc(MEMORY[0x1E699B7C0]);
              v50 = 0;
              v31 = [v30 initWithURL:v29 options:1 error:&v50];
              v32 = v50;
              isDirectory = [v31 isDirectory];
              if (isDirectory)
              {
                v20 = EDAttachmentsLog(isDirectory);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v38;
                  v57 = v29;
                  _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Persisting archive attachment from temp directory %@", buf, 0xCu);
                }

                isDirectory = [(EDAttachmentPersistenceManager *)wrapper _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:v31 orURL:0 attachmentMetadata:v49 basePath:v47 shouldUpdateAttachmentID:v48];
                LOBYTE(v20) = isDirectory;
              }

              if ((v20 & 1) == 0)
              {
                v35 = EDAttachmentsLog(isDirectory);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  [lCopy preferredFilename];
                  objc_claimAutoreleasedReturnValue();
                  [EDAttachmentPersistenceManager _persistAttachmentWithWrapper:orURL:attachmentMetadata:basePath:error:];
                }

                goto LABEL_45;
              }

              v20 = 1;
            }

            v23 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        else
        {
LABEL_45:
          v20 = 0;
        }

        [defaultManager removeItemAtURL:v22 error:0];
      }

      else
      {
        v19 = EDAttachmentsLog(isRegularFile);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Persisting regular file attachment", buf, 2u);
        }

        v20 = [(EDAttachmentPersistenceManager *)wrapper _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:lCopy orURL:metadataCopy attachmentMetadata:v49 basePath:v47 shouldUpdateAttachmentID:v48];
      }

      v15 = v47;
    }

    goto LABEL_48;
  }

  if (remoteURL)
  {
    v13 = [v44 messageAttachmentExistsForGlobalMessageID:globalMessageID remoteURL:remoteURL hasAttachmentEntry:&v55];
    v48 = v13;
    goto LABEL_8;
  }

  v15 = EDAttachmentsLog(v12);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    ef_publicDescription = [v49 ef_publicDescription];
    [EDAttachmentPersistenceManager _persistAttachmentWithWrapper:ef_publicDescription orURL:buf attachmentMetadata:? basePath:? error:?];
  }

  v20 = 0;
LABEL_48:

LABEL_49:
  return v20;
}

- (id)createAttachmentFileWriterForAttachmentMetadata:(id)metadata basePath:(id)path downloadDate:(id)date queue:(id)queue compressionQueue:(id)compressionQueue completion:(id)completion
{
  metadataCopy = metadata;
  pathCopy = path;
  dateCopy = date;
  queueCopy = queue;
  compressionQueueCopy = compressionQueue;
  completionCopy = completion;
  name = [metadataCopy name];

  if (name)
  {
    v20 = metadataCopy;
  }

  else
  {
    v26 = [EDMessageAttachmentMetadata alloc];
    globalMessageID = [metadataCopy globalMessageID];
    mimePartNumber = [metadataCopy mimePartNumber];
    attachmentID = [metadataCopy attachmentID];
    remoteURL = [metadataCopy remoteURL];
    v20 = [(EDMessageAttachmentMetadata *)v26 initWithGlobalMessageID:globalMessageID name:@"attachment" mimePart:mimePartNumber attachmentID:attachmentID remoteURL:remoteURL];
  }

  v24 = [(EDAttachmentPersistenceManager *)self _createAttachmentFileWriterForAttachmentMetadata:v20 basePath:pathCopy downloadDate:dateCopy queue:queueCopy compressionQueue:compressionQueueCopy completion:completionCopy];

  return v24;
}

- (EDAttachmentFileWriter)_createAttachmentFileWriterForAttachmentMetadata:(void *)metadata basePath:(void *)path downloadDate:(void *)date queue:(void *)queue compressionQueue:(void *)compressionQueue completion:
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a2;
  metadataCopy = metadata;
  pathCopy = path;
  dateCopy = date;
  queueCopy = queue;
  compressionQueueCopy = compressionQueue;
  if (self)
  {
    v18 = [(EDAttachmentPersistenceManager *)self _attachmentURLForAttachmentMetadata:v13 basePath:metadataCopy];
    v19 = [v18 checkResourceIsReachableAndReturnError:0];
    if (v19)
    {
      v20 = EDAttachmentsLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [v13 globalMessageID];
        [v13 mimePartNumber];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _createAttachmentFileWriterForAttachmentMetadata:basePath:downloadDate:queue:compressionQueue:completion:];
      }

      self = 0;
    }

    else
    {
      v20 = [(EDAttachmentPersistenceManager *)self _createTemporaryURLForAttachmentMetadata:v13 basePath:metadataCopy];
      if (v20)
      {
        v21 = [EDAttachmentFileWriter alloc];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __139__EDAttachmentPersistenceManager__createAttachmentFileWriterForAttachmentMetadata_basePath_downloadDate_queue_compressionQueue_completion___block_invoke;
        v25[3] = &unk_1E8250550;
        v26 = v13;
        v27 = v20;
        selfCopy = self;
        v29 = metadataCopy;
        v30 = pathCopy;
        v31 = compressionQueueCopy;
        self = [(EDAttachmentFileWriter *)v21 initWithFinalURL:v27 queue:dateCopy compressionQueue:queueCopy completion:v25];

        v22 = v26;
      }

      else
      {
        v22 = EDAttachmentsLog(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [v13 globalMessageID];
          [v13 mimePartNumber];
          objc_claimAutoreleasedReturnValue();
          [EDAttachmentPersistenceManager _createAttachmentFileWriterForAttachmentMetadata:basePath:downloadDate:queue:compressionQueue:completion:];
        }

        self = 0;
      }
    }
  }

  return self;
}

- (id)_attachmentURLForAttachmentMetadata:(void *)metadata basePath:
{
  v5 = a2;
  metadataCopy = metadata;
  if (self)
  {
    mimePartNumber = [v5 mimePartNumber];

    if (mimePartNumber)
    {
      globalMessageID = [v5 globalMessageID];
      mimePartNumber2 = [v5 mimePartNumber];
      v10 = [self attachmentURLForGlobalMessageID:globalMessageID mimePartNumber:mimePartNumber2 basePath:metadataCopy];
LABEL_6:
      self = v10;

      goto LABEL_7;
    }

    remoteURL = [v5 remoteURL];

    if (remoteURL)
    {
      globalMessageID2 = [v5 globalMessageID];
      mimePartNumber2 = [v5 remoteURL];
      v10 = [self attachmentURLForGlobalMessageID:globalMessageID2 remoteURL:mimePartNumber2 basePath:metadataCopy];
      goto LABEL_6;
    }

    self = 0;
  }

LABEL_7:

  return self;
}

- (id)_createTemporaryURLForAttachmentMetadata:(void *)metadata basePath:
{
  v5 = a2;
  metadataCopy = metadata;
  if (self)
  {
    name = [v5 name];
    self = [(EDAttachmentPersistenceManager *)self _temporaryFileURLWithBasePath:metadataCopy name:name];
  }

  return self;
}

void __139__EDAttachmentPersistenceManager__createAttachmentFileWriterForAttachmentMetadata_basePath_downloadDate_queue_compressionQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v3)
  {
    v7 = EDAttachmentsLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __139__EDAttachmentPersistenceManager__createAttachmentFileWriterForAttachmentMetadata_basePath_downloadDate_queue_compressionQueue_completion___block_invoke_cold_1(&v17, [*(a1 + 32) globalMessageID]);
    }

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    [v8 removeItemAtURL:*(a1 + 40) error:0];
LABEL_5:

    goto LABEL_11;
  }

  v9 = EDAttachmentsLog(v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) globalMessageID];
    v11 = [*(a1 + 32) mimePartNumber];
    v17 = 134218242;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Finished writing attachment file for global message ID %llu MIME part [%{public}@] to temporary URL", &v17, 0x16u);
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 64);
  v8 = v16;
  if (!v16)
  {
    v8 = [MEMORY[0x1E695DF00] date];
  }

  [(EDAttachmentPersistenceManager *)v12 _didCompleteWritingAttachmentToFile:v15 basePath:v13 digest:v6 metadata:v14 downloadDate:v8];
  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_11:
  (*(*(a1 + 72) + 16))();
}

- (void)_didCompleteWritingAttachmentToFile:(void *)file basePath:(void *)path digest:(void *)digest metadata:(void *)metadata downloadDate:
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a2;
  fileCopy = file;
  pathCopy = path;
  digestCopy = digest;
  metadataCopy = metadata;
  if (self)
  {
    v16 = [(EDAttachmentPersistenceManager *)self _updateAttachmentIDAndCreateFinalFileURLForFile:v11 metadata:digestCopy basePath:fileCopy digest:pathCopy downloadDate:metadataCopy];
    if (v16)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v24 = 0;
      v18 = [defaultManager moveItemAtURL:v11 toURL:v16 error:&v24];
      v19 = v24;

      if (v18)
      {
        defaultManager2 = EDAttachmentsLog(v20);
        if (os_log_type_enabled(defaultManager2, OS_LOG_TYPE_DEFAULT))
        {
          -[EDAttachmentPersistenceManager _didCompleteWritingAttachmentToFile:basePath:digest:metadata:downloadDate:].cold.2(v25, [digestCopy globalMessageID]);
        }
      }

      else
      {
        v23 = EDAttachmentsLog(v20);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [digestCopy globalMessageID];
          [v19 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDAttachmentPersistenceManager _didCompleteWritingAttachmentToFile:basePath:digest:metadata:downloadDate:];
        }

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager2 removeItemAtURL:v11 error:0];
      }
    }

    else
    {
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager3 removeItemAtURL:v11 error:0];
    }
  }
}

- (id)_temporaryFileURLWithBasePath:(void *)path name:
{
  v5 = a2;
  pathCopy = path;
  if (self)
  {
    v7 = [v5 URLByAppendingPathComponent:@"__temp"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];

    v9 = [MEMORY[0x1E695DF88] dataWithLength:18];
    arc4random_buf([v9 mutableBytes], objc_msgSend(v9, "length"));
    v10 = [v9 base64EncodedStringWithOptions:0];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

    v12 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:pathCopy];
    v13 = [v12 stringByAppendingPathExtension:v11];

    v14 = [v7 URLByAppendingPathComponent:v13 isDirectory:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_updateAttachmentIDAndCreateFinalFileURLForFile:(void *)file metadata:(void *)metadata basePath:(void *)path digest:(void *)digest downloadDate:
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a2;
  fileCopy = file;
  metadataCopy = metadata;
  pathCopy = path;
  digestCopy = digest;
  if (self)
  {
    v16 = [(EDAttachmentPersistenceManager *)self _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:v11 metadata:fileCopy basePath:metadataCopy digest:pathCopy downloadDate:digestCopy];
    attachmentID = [v16 attachmentID];

    if (attachmentID)
    {
      attachmentID2 = [fileCopy attachmentID];

      if (attachmentID2)
      {
        v21 = EDAttachmentsLog(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          attachmentID3 = [v16 attachmentID];
          v31 = 138412546;
          v32 = attachmentID3;
          v33 = 2048;
          globalMessageID = [fileCopy globalMessageID];
          _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Updated nil attachment ID to %@ for global message ID %llu", &v31, 0x16u);
        }
      }

      attachmentID4 = [v16 attachmentID];
      [fileCopy setAttachmentID:attachmentID4];

      if ([*(self + 8) updateAttachmentIDForMessageAttachment:fileCopy] & 1) != 0 || (v24 = objc_msgSend(*(self + 8), "insertMessageAttachmentMetadata:", fileCopy), (v24))
      {
        attachmentID5 = [v16 attachmentID];
        nameOnDisk = [v16 nameOnDisk];
        v27 = [(EDAttachmentPersistenceManager *)self _attachmentURLWithBasePath:metadataCopy attachmentID:attachmentID5 nameOnDisk:nameOnDisk];

        [(EDAttachmentPersistenceManager *)self _createParentDirectoryForFile:v27];
LABEL_14:

        goto LABEL_15;
      }

      defaultManager = EDAttachmentsLog(v24);
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        [fileCopy attachmentID];
        objc_claimAutoreleasedReturnValue();
        [fileCopy globalMessageID];
        [EDAttachmentPersistenceManager _updateAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:];
      }
    }

    else
    {
      v28 = EDAttachmentsLog(v18);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        -[EDAttachmentPersistenceManager _updateAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:].cold.2(&v31, [fileCopy globalMessageID]);
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager removeItemAtURL:v11 error:0];
    }

    v27 = 0;
    goto LABEL_14;
  }

  v27 = 0;
LABEL_15:

  return v27;
}

- (EDAttachmentMetadata)_updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:(void *)file metadata:(void *)metadata basePath:(void *)path digest:(void *)digest downloadDate:
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = a2;
  fileCopy = file;
  metadataCopy = metadata;
  pathCopy = path;
  digestCopy = digest;
  v16 = digestCopy;
  if (self)
  {
    if (pathCopy)
    {
      v17 = [pathCopy length];
      if (v17 == 32)
      {
        v18 = *(self + 8);
        ef_hexString = [pathCopy ef_hexString];
        v20 = [v18 uniqueAttachmentDataForHash:ef_hexString];

        attachmentID = [(EDAttachmentMetadata *)v20 attachmentID];

        if (attachmentID)
        {
          v23 = EDAttachmentsLog(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            bytes = [pathCopy bytes];
            globalMessageID = [fileCopy globalMessageID];
            attachmentID2 = [(EDAttachmentMetadata *)v20 attachmentID];
            *buf = 68158466;
            v49 = 32;
            v50 = 2096;
            v51 = bytes;
            v52 = 2048;
            v53 = globalMessageID;
            v54 = 2048;
            unsignedLongLongValue = [attachmentID2 unsignedLongLongValue];
            _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Found existing attachment with digest %.32P (global ID %llu): attachment ID: %llu", buf, 0x26u);
          }
        }

        else
        {

          v47 = 0;
          v28 = *MEMORY[0x1E695DB50];
          v46 = 0;
          v29 = [v11 getResourceValue:&v47 forKey:v28 error:&v46];
          v23 = v47;
          v30 = v46;
          v44 = v30;
          if ((v29 & 1) == 0)
          {
            v31 = EDAttachmentsLog(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [fileCopy globalMessageID];
              [v44 ef_publicDescription];
              objc_claimAutoreleasedReturnValue();
              [EDAttachmentPersistenceManager _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:];
            }
          }

          name = [fileCopy name];
          v45 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:name];

          v33 = [EDAttachmentMetadata alloc];
          ef_hexString2 = [pathCopy ef_hexString];
          v35 = [(EDAttachmentMetadata *)v33 initWithAttachmentHash:ef_hexString2 nameOnDisk:v45 size:v23 downloadDate:v16];

          v36 = [*(self + 8) insertAttachmentMetadata:v35];
          v37 = v36;
          if (v36 == *MEMORY[0x1E699A728])
          {
            v38 = EDAttachmentsLog(v36);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              -[EDAttachmentPersistenceManager _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:].cold.3(buf, [fileCopy globalMessageID]);
            }

            v20 = 0;
          }

          else
          {
            v39 = EDAttachmentsLog(v36);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = pathCopy;
              bytes2 = [pathCopy bytes];
              globalMessageID2 = [fileCopy globalMessageID];
              *buf = 68158466;
              v49 = 32;
              v50 = 2096;
              v51 = bytes2;
              v52 = 2048;
              v53 = globalMessageID2;
              v54 = 2048;
              unsignedLongLongValue = v37;
              _os_log_impl(&dword_1C61EF000, v39, OS_LOG_TYPE_DEFAULT, "Did insert new attachment ID for digest %.32P (global ID %llu): attachment ID: %llu", buf, 0x26u);
            }

            v43 = [MEMORY[0x1E696AD98] numberWithLongLong:v37];
            [(EDAttachmentMetadata *)v35 setAttachmentID:v43];

            v20 = v35;
          }
        }

        goto LABEL_12;
      }

      v23 = EDAttachmentsLog(v17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        -[EDAttachmentPersistenceManager _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:].cold.1(buf, [fileCopy globalMessageID]);
      }
    }

    else
    {
      v23 = EDAttachmentsLog(digestCopy);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        -[EDAttachmentPersistenceManager _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:].cold.4(buf, [fileCopy globalMessageID]);
      }
    }

    v20 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v20 = 0;
LABEL_13:

  return v20;
}

- (id)_attachmentURLWithBasePath:(void *)path attachmentID:(void *)d nameOnDisk:
{
  v7 = a2;
  pathCopy = path;
  dCopy = d;
  v10 = dCopy;
  v11 = 0;
  if (self && v7 && pathCopy && dCopy)
  {
    v12 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:v7];
    stringValue = [pathCopy stringValue];
    v14 = [v12 URLByAppendingPathComponent:stringValue isDirectory:1];
    v11 = [v14 URLByAppendingPathComponent:v10 isDirectory:0];
  }

  return v11;
}

- (void)_createParentDirectoryForFile:(uint64_t)file
{
  v3 = a2;
  if (file)
  {
    v6 = v3;
    uRLByDeletingLastPathComponent = [v3 URLByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

    v3 = v6;
  }
}

- (uint64_t)_writeFileWrapper:(void *)wrapper toURL:(void *)l outError:
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a2;
  wrapperCopy = wrapper;
  if (!self)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v33 = 0;
  v9 = [v7 writeToURL:wrapperCopy options:3 originalContentsURL:0 error:&v33];
  v10 = v33;
  v11 = v10;
  if (!v9)
  {
    v16 = EDAttachmentsLog(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      path = [wrapperCopy path];
      ef_publicDescription = [v11 ef_publicDescription];
      *buf = 138412802;
      v35 = v7;
      v36 = 2114;
      v37 = path;
      v38 = 2114;
      v39 = ef_publicDescription;
      _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Failed to write attachment file wrapper %@ to %{public}@, %{public}@", buf, 0x20u);
    }

    goto LABEL_24;
  }

  v12 = EDAttachmentsLog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    path2 = [wrapperCopy path];
    *buf = 138543362;
    v35 = path2;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Persisting attachment to filesystem: %{public}@", buf, 0xCu);
  }

  [*(self + 16) setContentProtectionForAttachmentFile:wrapperCopy];
  v32[1] = 0;
  v14 = EFMarkFileAsPurgeable();
  v15 = 0;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v17 = EDAttachmentsLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [wrapperCopy path];
      objc_claimAutoreleasedReturnValue();
      [v16 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _moveAttachmentAtURL:toURL:outError:];
    }
  }

  isDirectory = [v7 isDirectory];
  v19 = *(self + 16);
  v20 = v19;
  if (isDirectory)
  {
    v32[0] = 0;
    v21 = [v19 compressDirectory:wrapperCopy shouldCancel:0 error:v32];
    v22 = v32[0];

    if ((v21 & 1) == 0)
    {
      v24 = EDAttachmentsLog(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [wrapperCopy path];
        objc_claimAutoreleasedReturnValue();
        [v22 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _writeFileWrapper:toURL:outError:];
      }

LABEL_18:
    }
  }

  else
  {
    v31 = 0;
    v27 = [v19 compressFile:wrapperCopy error:&v31];
    v22 = v31;

    if ((v27 & 1) == 0)
    {
      v24 = EDAttachmentsLog(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [wrapperCopy path];
        objc_claimAutoreleasedReturnValue();
        [v22 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _writeFileWrapper:toURL:outError:];
      }

      goto LABEL_18;
    }
  }

  if (v22)
  {
    v28 = EDAttachmentsLog(v23);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [wrapperCopy path];
      objc_claimAutoreleasedReturnValue();
      [v22 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _writeFileWrapper:toURL:outError:];
    }
  }

LABEL_24:
  if (l)
  {
    v29 = v11;
    *l = v11;
  }

LABEL_27:
  return v9;
}

- (void)_tempDirectoryForArchiveAttachmentsWithParentDirectory:(void *)directory
{
  v3 = a2;
  if (directory)
  {
    v4 = directory[3];
    if (!v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v7 = [v5 stringWithFormat:@"__temp_%@", uUID];

      v8 = [v3 URLByAppendingPathComponent:v7];
      v9 = directory[3];
      directory[3] = v8;

      v4 = directory[3];
    }

    directory = v4;
  }

  return directory;
}

- (id)removeDatabaseAttachments:(id *)attachments
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (attachments)
  {
    v5 = EDAttachmentsLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Removing attachments to delete %@ from the attachments table", &v7, 0xCu);
    }

    attachments = [attachments[1] removeAttachments:v4];
  }

  return attachments;
}

- (uint64_t)removeFilesystemAttachmentsByAccountIdentifier:(NSObject *)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (identifier)
  {
    identifier = EDAttachmentsLog(v3);
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1C61EF000, identifier, OS_LOG_TYPE_DEFAULT, "Removing attachments to delete %@ from the filesystem", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v8 = 0x2020000000;
    v9 = 1;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__EDAttachmentPersistenceManager_removeFilesystemAttachmentsByAccountIdentifier___block_invoke;
    v6[3] = &unk_1E8250578;
    v6[4] = &buf;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
    LOBYTE(identifier) = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  return identifier & 1;
}

void __81__EDAttachmentPersistenceManager_removeFilesystemAttachmentsByAccountIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v22 = a3;
  v23 = v5;
  if ([v5 isEqualToString:@"regularAccountIdentifier"])
  {
    [MEMORY[0x1E699AE20] baseMailDirectory];
  }

  else
  {
    [EDPersonaPersistenceLayoutManager baseAccountDirectoryForPersonaIdentifier:v5];
  }
  v21 = ;
  v6 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:?];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v22;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v25 + 1) + 8 * v10) stringValue];
        v12 = [v6 URLByAppendingPathComponent:v11 isDirectory:1];

        v14 = EDAttachmentsLog(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v30 = v12;
          _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Deleting attachment directory: %{public}@", buf, 0xCu);
        }

        v16 = *(*(a1 + 32) + 8);
        if (*(v16 + 24) == 1)
        {
          v17 = [MEMORY[0x1E696AC08] defaultManager];
          v24 = 0;
          v18 = [v17 removeItemAtURL:v12 error:&v24];
          v19 = v24;
          *(*(*(a1 + 32) + 8) + 24) = v18;
        }

        else
        {
          v19 = 0;
          *(v16 + 24) = 0;
        }

        if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
        {
          v20 = EDAttachmentsLog(v15);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v30 = v12;
            _os_log_error_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_ERROR, "Failed to delete attachment directory: %{public}@", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }
}

- (id)_updateAttachmentURL:(void *)l attachmentName:
{
  v5 = a2;
  lCopy = l;
  v7 = lCopy;
  if (self)
  {
    v8 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:lCopy];

    if (v5)
    {
      ef_lastPathComponent = [v5 ef_lastPathComponent];
      sanitizedString = [ef_lastPathComponent sanitizedString];
      v11 = [sanitizedString localizedCompare:v8];

      if (v11)
      {
        uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];
        self = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v8];

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v19 = 0;
        v14 = [defaultManager copyItemAtURL:v5 toURL:self error:&v19];
        v15 = v19;

        if (v14)
        {
          EFMarkFileAsPurgeable();
LABEL_6:

          goto LABEL_11;
        }

        if ([v15 code] == 516)
        {
          domain = [v15 domain];
          v17 = [domain isEqualToString:*MEMORY[0x1E696A250]];

          if (v17)
          {
            goto LABEL_6;
          }
        }
      }
    }

    self = v5;
  }

  else
  {
    v8 = lCopy;
  }

LABEL_11:

  return self;
}

- (id)attachmentURLForGlobalMessageID:(int64_t)d mimePartNumber:(id)number basePath:(id)path
{
  v31 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  pathCopy = path;
  v10 = EDAttachmentsLog(pathCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    path = [pathCopy path];
    v23 = 134218498;
    dCopy3 = d;
    v25 = 2114;
    dCopy2 = numberCopy;
    v27 = 2112;
    v28 = path;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Fetching attachment URL for globalMessageID %lld MIME part number %{public}@ at base path %@", &v23, 0x20u);
  }

  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v13 = attachmentPersistence;
  v14 = [(EDAttachmentPersistence *)v13 attachmentMetadataForMessage:d mimePartNumber:numberCopy];

  v15 = [(EDAttachmentPersistenceManager *)self _attachmentURLForAttachment:v14 basePath:pathCopy];
  v16 = v15;
  if (v15)
  {
    v17 = EDAttachmentsLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [pathCopy path];
      v23 = 138544130;
      dCopy3 = v16;
      v25 = 2048;
      dCopy2 = d;
      v27 = 2114;
      v28 = numberCopy;
      v29 = 2112;
      v30 = path2;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Found attachment URL %{public}@ for globalMessageID %lld MIME part number %{public}@ at base path %@", &v23, 0x2Au);
    }

    v19 = v16;
  }

  else
  {
    v20 = EDAttachmentsLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      path3 = [pathCopy path];
      v23 = 134218498;
      dCopy3 = d;
      v25 = 2114;
      dCopy2 = numberCopy;
      v27 = 2112;
      v28 = path3;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Could not find attachment URL for globalMessageID %lld MIME part number %{public}@ at base path %@", &v23, 0x20u);
    }
  }

  return v16;
}

- (id)_attachmentURLForAttachment:(void *)attachment basePath:
{
  v20[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  attachmentCopy = attachment;
  if (self)
  {
    attachmentMetadata = [v5 attachmentMetadata];
    attachmentID = [attachmentMetadata attachmentID];
    stringValue = [attachmentID stringValue];
    if (stringValue)
    {
      nameOnDisk = [attachmentMetadata nameOnDisk];

      if (nameOnDisk)
      {
        attachmentID2 = [attachmentMetadata attachmentID];
        nameOnDisk2 = [attachmentMetadata nameOnDisk];
        v14 = [(EDAttachmentPersistenceManager *)self _attachmentURLWithBasePath:attachmentCopy attachmentID:attachmentID2 nameOnDisk:nameOnDisk2];

        messageMetadata = [v5 messageMetadata];
        name = [messageMetadata name];
        self = [(EDAttachmentPersistenceManager *)self _updateAttachmentURL:v14 attachmentName:name];

LABEL_9:
        goto LABEL_10;
      }
    }

    else
    {
    }

    v17 = EDAttachmentsLog(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      attachmentID3 = [attachmentMetadata attachmentID];
      [EDAttachmentPersistenceManager _attachmentURLForAttachment:attachmentID3 basePath:v20];
    }

    self = 0;
    goto LABEL_9;
  }

LABEL_10:

  return self;
}

- (id)attachmentURLsForGlobalMessageIDs:(id)ds
{
  v62 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allKeys = [dsCopy allKeys];
  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v34 = allKeys;
  [(EDAttachmentPersistence *)attachmentPersistence attachmentMetadataForMessageIDs:?];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v7)
  {
    v35 = *v52;
    selfCopy = self;
    do
    {
      v8 = 0;
      v33 = v7;
      do
      {
        if (*v52 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v51 + 1) + 8 * v8);
        v9 = [dsCopy objectForKey:v33];
        v36 = v8;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v38 = v9;
        v10 = selfCopy;
        v11 = [v38 countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (v11)
        {
          v39 = *v48;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v48 != v39)
              {
                objc_enumerationMutation(v38);
              }

              v13 = *(*(&v47 + 1) + 8 * i);
              v14 = [obj objectForKeyedSubscript:v40];
              v15 = [(EDAttachmentPersistenceManager *)v10 _attachmentURLsAndNamesForMetadata:v14 basePath:v13];
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v16 = v15;
              v17 = [v16 countByEnumeratingWithState:&v43 objects:v59 count:16];
              if (v17)
              {
                v18 = *v44;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v44 != v18)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v20 = *(*(&v43 + 1) + 8 * j);
                    v21 = [v20 url];
                    v22 = v21 == 0;

                    if (!v22)
                    {
                      [v4 addObject:v20];
                    }
                  }

                  v17 = [v16 countByEnumeratingWithState:&v43 objects:v59 count:16];
                }

                while (v17);
              }

              v10 = selfCopy;
            }

            v11 = [v38 countByEnumeratingWithState:&v47 objects:v60 count:16];
          }

          while (v11);
        }

        v8 = v36 + 1;
      }

      while (v36 + 1 != v33);
      v7 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v7);
  }

  if (v4)
  {
    v24 = EDAttachmentsLog(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = MEMORY[0x1E699B858];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v27 = &stru_1F45B4608;
      }

      else
      {
        v27 = [v4 componentsJoinedByString:{@", "}];
      }

      v29 = [v25 partiallyRedactedStringForString:v27];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = &stru_1F45B4608;
      }

      else
      {
        v30 = v34;
      }

      *buf = 138543618;
      v56 = v29;
      v57 = 2114;
      v58 = v30;
      _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Found attachment URLs %{public}@ for globalMessageIDs %{public}@", buf, 0x16u);

      if ((isKindOfClass & 1) == 0)
      {
      }
    }

    v31 = v4;
  }

  else
  {
    v28 = EDAttachmentsLog(v23);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = v34;
      _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Could not find attachment URLs for globalMessageIDs %{public}@", buf, 0xCu);
    }
  }

  return v4;
}

- (id)_attachmentURLsAndNamesForMetadata:(void *)metadata basePath:
{
  v5 = a2;
  metadataCopy = metadata;
  v7 = metadataCopy;
  if (self)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__EDAttachmentPersistenceManager__attachmentURLsAndNamesForMetadata_basePath___block_invoke;
    v9[3] = &unk_1E82505A0;
    v9[4] = self;
    v10 = metadataCopy;
    self = [v5 ef_map:v9];
  }

  return self;
}

- (id)attachmentURLForGlobalMessageID:(int64_t)d remoteURL:(id)l basePath:(id)path
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  pathCopy = path;
  v10 = EDAttachmentsLog(pathCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    path = [pathCopy path];
    v23 = 134218498;
    dCopy3 = d;
    v25 = 2112;
    dCopy2 = lCopy;
    v27 = 2112;
    v28 = path;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Fetching attachment URL for globalMessageID %lld remoteURL %@ at base path %@", &v23, 0x20u);
  }

  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v13 = attachmentPersistence;
  v14 = [(EDAttachmentPersistence *)v13 attachmentMetadataForMessage:d remoteURL:lCopy];

  v15 = [(EDAttachmentPersistenceManager *)self _attachmentURLForAttachment:v14 basePath:pathCopy];
  v16 = v15;
  if (v15)
  {
    v17 = EDAttachmentsLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [pathCopy path];
      v23 = 138544130;
      dCopy3 = v16;
      v25 = 2048;
      dCopy2 = d;
      v27 = 2112;
      v28 = lCopy;
      v29 = 2112;
      v30 = path2;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Found attachment URL %{public}@ for globalMessageID %lld remoteURL %@ at base path %@", &v23, 0x2Au);
    }

    v19 = v16;
  }

  else
  {
    v20 = EDAttachmentsLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      path3 = [pathCopy path];
      v23 = 134218498;
      dCopy3 = d;
      v25 = 2112;
      dCopy2 = lCopy;
      v27 = 2112;
      v28 = path3;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Could not find attachment URL for globalMessageID %lld remoteURL %@ at base path %@", &v23, 0x20u);
    }
  }

  return v16;
}

id __78__EDAttachmentPersistenceManager__attachmentURLsAndNamesForMetadata_basePath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699AC10];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [v3 first];
  v8 = [v7 attachmentID];
  v9 = [v3 first];
  v10 = [v9 nameOnDisk];
  v11 = [(EDAttachmentPersistenceManager *)v5 _attachmentURLWithBasePath:v6 attachmentID:v8 nameOnDisk:v10];
  v12 = [v3 second];
  v13 = [v4 attachmentWithURL:v11 displayName:v12];

  return v13;
}

- (id)attachmentDirectoryURLForMessageID:(int64_t)d basePath:(id)path
{
  v4 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:path];

  return v4;
}

- (id)attachmentURLForMessageAttachmentID:(id)d basePath:(id)path
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathCopy = path;
  v8 = EDAttachmentsLog(pathCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [pathCopy path];
    objc_claimAutoreleasedReturnValue();
    [EDAttachmentPersistenceManager attachmentURLForMessageAttachmentID:basePath:];
  }

  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v10 = attachmentPersistence;
  v11 = [(EDAttachmentPersistence *)v10 attachmentMetadataForMessageAttachmentID:dCopy];

  attachmentMetadata = [v11 attachmentMetadata];
  v13 = attachmentMetadata;
  if (attachmentMetadata)
  {
    attachmentID = [attachmentMetadata attachmentID];
    longLongValue = [attachmentID longLongValue];
    nameOnDisk = [v13 nameOnDisk];
    v17 = [(EDAttachmentPersistenceManager *)self _attachmentURLForAttachmentID:longLongValue nameOnDisk:nameOnDisk basePath:pathCopy];

    messageMetadata = [v11 messageMetadata];
    name = [messageMetadata name];
    v20 = [(EDAttachmentPersistenceManager *)self _updateAttachmentURL:v17 attachmentName:name];

    v22 = EDAttachmentsLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      path = [pathCopy path];
      v25 = 138412802;
      v26 = v20;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = path;
      _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Found attachment URL %@ for messageAttachmentID %@ at base path %@", &v25, 0x20u);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_attachmentURLForAttachmentID:(void *)d nameOnDisk:(void *)disk basePath:
{
  dCopy = d;
  diskCopy = disk;
  v9 = 0;
  if (self && dCopy && *MEMORY[0x1E699A728] != a2)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a2];
    v11 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:diskCopy];
    v12 = [v11 URLByAppendingPathComponent:v10 isDirectory:1];
    v9 = [v12 URLByAppendingPathComponent:dCopy];
  }

  return v9;
}

- (id)allAttachmentsInfoForGlobalMessageIDs:(id)ds basePath:(id)path
{
  dsCopy = ds;
  pathCopy = path;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v10 = attachmentPersistence;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__EDAttachmentPersistenceManager_allAttachmentsInfoForGlobalMessageIDs_basePath___block_invoke;
  v16[3] = &unk_1E82505C8;
  v16[4] = self;
  v11 = pathCopy;
  v17 = v11;
  v12 = dictionary;
  v18 = v12;
  [(EDAttachmentPersistence *)v10 enumerateAttachmentsInfoForGlobalMessageIDs:dsCopy withBlock:v16];

  v13 = v18;
  v14 = v12;

  return v12;
}

void __81__EDAttachmentPersistenceManager_allAttachmentsInfoForGlobalMessageIDs_basePath___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = a3;
  v9 = a5;
  v10 = [(EDAttachmentPersistenceManager *)*(a1 + 32) _attachmentURLForAttachmentID:a4 nameOnDisk:v9 basePath:*(a1 + 40)];
  v11 = [EDMessageAttachmentMetadata alloc];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v13 = [(EDMessageAttachmentMetadata *)v11 initWithGlobalMessageID:a2 name:v9 mimePart:v21 attachmentID:v12 remoteURL:0];

  v14 = [MEMORY[0x1E699B848] pairWithFirst:v13 second:v10];
  v15 = *(a1 + 48);
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  v17 = [v15 objectForKeyedSubscript:v16];

  if (v17)
  {
    [v17 addObject:v14];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
    v19 = *(a1 + 48);
    v20 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
    [v19 setObject:v18 forKeyedSubscript:v20];

    v17 = v18;
  }
}

- (void)willDeleteAttachmentsForMessages:(id)messages
{
  v30 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = messagesCopy;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        account = [v7 account];
        baseAccount = [account baseAccount];
        personaIdentifier = [baseAccount personaIdentifier];
        v11 = personaIdentifier;
        if (personaIdentifier)
        {
          v12 = personaIdentifier;
        }

        else
        {
          v12 = @"regularAccountIdentifier";
        }

        v13 = v12;

        v14 = [v3 objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v3 setObject:v14 forKeyedSubscript:v13];
        }

        [v14 addObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__EDAttachmentPersistenceManager_willDeleteAttachmentsForMessages___block_invoke;
  v23[3] = &unk_1E8250610;
  v23[4] = self;
  v16 = v15;
  v24 = v16;
  [v3 enumerateKeysAndObjectsUsingBlock:v23];
  if ([v16 count])
  {
    v17 = [v16 copy];
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];
    [threadDictionary setObject:v17 forKeyedSubscript:@"attachmentsForAccountIdentifiers"];
  }
}

void __67__EDAttachmentPersistenceManager_willDeleteAttachmentsForMessages___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 ef_map:&__block_literal_global_5];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[1];
  }

  v8 = v7;
  v9 = [v6 allObjects];
  v10 = [v8 attachmentsForGlobalMessageIDs:v9];

  [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
}

id __67__EDAttachmentPersistenceManager_willDeleteAttachmentsForMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "globalMessageID")}];

  return v3;
}

- (id)_accountIdentifiersByAttachmentIDs:(uint64_t)ds
{
  v3 = a2;
  if (ds)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__EDAttachmentPersistenceManager__accountIdentifiersByAttachmentIDs___block_invoke;
    v8[3] = &unk_1E8250638;
    v5 = v4;
    v9 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __69__EDAttachmentPersistenceManager__accountIdentifiersByAttachmentIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{v10, v14}];
        if (!v11)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [*(a1 + 32) objectForKeyedSubscript:v10];
        [v13 addObject:v5];
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)isDeletingMessages:(id)messages
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v6 = [threadDictionary objectForKeyedSubscript:@"attachmentsForAccountIdentifiers"];

  if ([v6 count])
  {
    v7 = [(EDAttachmentPersistenceManager *)self _accountIdentifiersByAttachmentIDs:v6];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke;
    v21[3] = &unk_1E8250660;
    v21[4] = self;
    v9 = v8;
    v22 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v21];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke_2;
    v17[3] = &unk_1E82506B0;
    v12 = v9;
    v18 = v12;
    v13 = v10;
    v19 = v13;
    v14 = v11;
    v20 = v14;
    [v7 enumerateKeysAndObjectsUsingBlock:v17];
    if ([v13 count])
    {
      [(EDAttachmentPersistenceManager *)&self->super.isa removeDatabaseAttachments:v13];
    }

    if ([v14 count])
    {
      [(EDAttachmentPersistenceManager *)&self->super removeFilesystemAttachmentsByAccountIdentifier:v14];
    }

    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:0 forKeyedSubscript:@"attachmentsForAccountIdentifiers"];
  }
}

__CFString *__53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke_88(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  v3 = [v2 baseAccount];
  v4 = [v3 personaIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"regularAccountIdentifier";
  }

  v7 = v6;

  return v6;
}

void __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke_2(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v17 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v5];
  if ([v6 count])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke_3;
    v22[3] = &unk_1E8250688;
    v23 = v6;
    v7 = [v17 ef_filter:v22];
  }

  else
  {
    [a1[5] addObject:v5];
    v7 = v17;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [a1[6] objectForKeyedSubscript:v12];
        v14 = v13 == 0;

        if (v14)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [a1[6] setObject:v15 forKeyedSubscript:v12];
        }

        v16 = [a1[6] objectForKeyedSubscript:v12];
        [v16 addObject:v5];
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }
}

+ (void)removeSynapseAttachmentAttributesForMessages:(id)messages
{
  v11 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if (_os_feature_enabled_impl())
  {
    v4 = [messagesCopy ef_compactMap:&__block_literal_global_97];
    v5 = EDAttachmentsLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Remove Synapse attachment attributes for messages with persistentIDs %{public}@", buf, 0xCu);
    }

    if ([v4 count])
    {
      v6 = objc_alloc_init(MEMORY[0x1E69D5428]);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __79__EDAttachmentPersistenceManager_removeSynapseAttachmentAttributesForMessages___block_invoke_99;
      v7[3] = &unk_1E82506F8;
      v8 = v4;
      [v6 unlinkDocumentsWithRelatedUniqueidentifiers:v8 completion:v7];
    }
  }
}

id __79__EDAttachmentPersistenceManager_removeSynapseAttachmentAttributesForMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 persistentID];

  return v2;
}

void __79__EDAttachmentPersistenceManager_removeSynapseAttachmentAttributesForMessages___block_invoke_99(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = EDAttachmentsLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v5 ef_publicDescription];
    v9[0] = 67109634;
    v9[1] = a2;
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "unlinkDocumentsWithRelatedUniqueidentifiers succeeded: %{BOOL}d for persistentIDs %{public}@ error:%@", v9, 0x1Cu);
  }
}

- (id)addSynapseAttributesToAttachmentWithURL:(id)l contentType:(id)type usingGenerator:(id)generator
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  typeCopy = type;
  generatorCopy = generator;
  v11 = generatorCopy;
  if (!lCopy)
  {
    v19 = EDAttachmentsLog(generatorCopy);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *location = 0;
    v20 = "Not adding Synapse attributes. No file URL.";
LABEL_9:
    _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, v20, location, 2u);
    goto LABEL_12;
  }

  if (!typeCopy)
  {
    v19 = EDAttachmentsLog(generatorCopy);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *location = 0;
    v20 = "Not adding Synapse attributes. No content type.";
    goto LABEL_9;
  }

  v12 = MEMORY[0x1E69D5420];
  identifier = [typeCopy identifier];
  LOBYTE(v12) = [v12 isSupportedContentType:identifier];

  if (v12)
  {
    promise = [MEMORY[0x1E699B868] promise];
    objc_initWeak(location, self);
    v16 = MEMORY[0x1E69D5408];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke;
    v26 = &unk_1E8250798;
    objc_copyWeak(&v30, location);
    v27 = lCopy;
    v17 = promise;
    v28 = v17;
    v29 = v11;
    [v16 fetchDocumentAttributesForFileAtURL:v27 completion:&v23];
    future = [v17 future];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);

    goto LABEL_13;
  }

  v19 = EDAttachmentsLog(v14);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    lastPathComponent = [lCopy lastPathComponent];
    *location = 138412546;
    *&location[4] = lastPathComponent;
    v32 = 2114;
    v33 = typeCopy;
    _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Not adding Synapse attributes to '%@': unsupported type %{public}@", location, 0x16u);
  }

LABEL_12:

  future = [MEMORY[0x1E699B7C8] futureWithResult:MEMORY[0x1E695E110]];
LABEL_13:

  return future;
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2;
    v8[3] = &unk_1E8250770;
    v9 = v3;
    v10 = a1[4];
    v11 = a1[5];
    v7 = a1[6];
    v12 = v5;
    v13 = v7;
    [v6 performBlock:v8];
  }
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2(uint64_t a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = EDAttachmentsLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [*(a1 + 40) lastPathComponent];
      __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_cold_1(v3, location);
    }

    [*(a1 + 48) finishWithResult:MEMORY[0x1E695E110]];
  }

  else
  {
    v4 = (*(*(a1 + 64) + 16))();
    if (v4)
    {
      objc_initWeak(location, *(a1 + 56));
      v5 = *(a1 + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_105;
      v6[3] = &unk_1E8250748;
      objc_copyWeak(&v9, location);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      [v4 saveToFile:v5 completion:v6];

      objc_destroyWeak(&v9);
      objc_destroyWeak(location);
    }

    else
    {
      [*(a1 + 48) finishWithResult:MEMORY[0x1E695E110]];
    }
  }
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_105(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_106;
    v7[3] = &unk_1E8250720;
    v8 = v3;
    v9 = a1[4];
    v10 = a1[5];
    [v6 performBlock:v7];
  }
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_106(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = EDAttachmentsLog(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) lastPathComponent];
      objc_claimAutoreleasedReturnValue();
      __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_106_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) lastPathComponent];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Did add Synapse attributes to '%@'.", &v8, 0xCu);
  }

  v6 = *(a1 + 48);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v2 == 0];
  [v6 finishWithResult:v7];
}

- (void)persistenceWillDeleteMessages:(id)messages
{
  v9 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = [messagesCopy count];
  if (v5)
  {
    v6 = EDAttachmentsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = messagesCopy;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Hook called persistenceWillDeleteMessages to prepare attachment deletion for messages %{public}@", &v7, 0xCu);
    }

    [(EDAttachmentPersistenceManager *)self willDeleteAttachmentsForMessages:messagesCopy];
  }
}

- (void)persistenceIsDeletingMessages:(id)messages generationWindow:(id)window
{
  v10 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v6 = [messagesCopy count];
  if (v6)
  {
    v7 = EDAttachmentsLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = messagesCopy;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Hook called persistenceIsDeletingMessages to delete attachments for messages %{public}@", &v8, 0xCu);
    }

    [(EDAttachmentPersistenceManager *)self isDeletingMessages:messagesCopy];
  }
}

- (void)persistenceDidDeleteMessages:(id)messages generationWindow:(id)window
{
  v9 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = [messagesCopy count];
  if (v5)
  {
    v6 = EDAttachmentsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = messagesCopy;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Hook called persistenceDidDeleteMessages %{public}@", &v7, 0xCu);
    }

    [EDAttachmentPersistenceManager removeSynapseAttachmentAttributesForMessages:messagesCopy];
  }
}

- (BOOL)persistAttachmentMetadata:(id)metadata
{
  v48 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v6 = attachmentPersistence;
  if (![metadataCopy globalMessageID])
  {
    v11 = EDAttachmentsLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Trying to insert an attachment entry with no global message ID";
LABEL_35:
      _os_log_error_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    }

LABEL_10:
    v13 = 0;
    goto LABEL_31;
  }

  name = [metadataCopy name];

  if (!name)
  {
    v11 = EDAttachmentsLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Trying to insert an attachment entry with no name";
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  mimePartNumber = [metadataCopy mimePartNumber];
  if (!mimePartNumber)
  {
    remoteURL = [metadataCopy remoteURL];

    if (remoteURL)
    {
      goto LABEL_12;
    }

    v11 = EDAttachmentsLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Trying to insert an attachment entry neither a mime part number or remoteURL";
      goto LABEL_35;
    }

    goto LABEL_10;
  }

LABEL_12:
  v15 = EDAttachmentsLog(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    globalMessageID = [metadataCopy globalMessageID];
    mimePartNumber2 = [metadataCopy mimePartNumber];
    *buf = 134218242;
    v42 = globalMessageID;
    v43 = 2114;
    v44 = mimePartNumber2;
    OUTLINED_FUNCTION_11(&dword_1C61EF000, v15, v18, "Check the message_attachments table if attachment with message ID %lld MIME part %{public}@ exists", buf);
  }

  -[EDAttachmentPersistence messageAttachmentMetadataForMessageID:](v6, "messageAttachmentMetadataForMessageID:", [metadataCopy globalMessageID]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v11 = v38 = 0u;
  v19 = [v11 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v19)
  {
    v20 = *v38;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v11);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        mimePartNumber3 = [v22 mimePartNumber];
        mimePartNumber4 = [metadataCopy mimePartNumber];
        if ([mimePartNumber3 isEqualToString:mimePartNumber4])
        {
          globalMessageID2 = [v22 globalMessageID];
          LODWORD(globalMessageID2) = globalMessageID2 == [metadataCopy globalMessageID];

          if (globalMessageID2)
          {
            mimePartNumber5 = [metadataCopy mimePartNumber];

            v32 = EDAttachmentsLog(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              attachmentID = [metadataCopy attachmentID];
              globalMessageID3 = [metadataCopy globalMessageID];
              *buf = 138412802;
              v42 = attachmentID;
              v43 = 2048;
              v44 = globalMessageID3;
              v45 = 2114;
              v46 = mimePartNumber5;
              _os_log_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_DEFAULT, "Attachment metadata with attachment ID %@ already exists in message_attachments table for globalMessageID: %lld mime part number: %{public}@", buf, 0x20u);
            }

            v13 = 1;
            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v19 = [v11 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v27 = EDAttachmentsLog(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    globalMessageID4 = [metadataCopy globalMessageID];
    *buf = 134218242;
    v42 = globalMessageID4;
    v43 = 2114;
    v44 = 0;
    OUTLINED_FUNCTION_11(&dword_1C61EF000, v27, v29, "Attachment metadata doesn't exist in message_attachments table for messageID: %lld mime part number: %{public}@. Persisting into the message_attachments table", buf);
  }

  v13 = [(EDAttachmentPersistence *)v6 insertMessageAttachmentMetadata:metadataCopy];
LABEL_31:

  return v13;
}

- (void)insertMimePartAttachments:(id)attachments forGlobalMessageID:(int64_t)d
{
  attachmentsCopy = attachments;
  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v8 = attachmentsCopy;
  [(EDAttachmentPersistence *)attachmentPersistence insertMimePartAttachments:attachmentsCopy forGlobalMessageID:d];
}

void __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[1];
  }

  v5 = v4;
  v6 = [v5 globalMessageIDsForAttachment:v3];

  v7 = [v6 count];
  if (v7)
  {
    v8 = EDAttachmentsLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = v6;
      v25 = 2114;
      v26 = v3;
      OUTLINED_FUNCTION_11(&dword_1C61EF000, v8, v9, "Duplicate globalMessageIDs found %{public}@ for attachment %{public}@", &v23);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = v10[2];
    }

    v11 = v10;
    v12 = [v11 persistedMessageIDsForGlobalMessageIDs:v6];

    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = v13[2];
    }

    v14 = v13;
    v15 = [v14 persistedMessagesForDatabaseIDs:v12 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];

    v17 = EDAttachmentsLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = v15;
      v25 = 2114;
      v26 = v3;
      OUTLINED_FUNCTION_11(&dword_1C61EF000, v17, v18, "Found persisted messages %{public}@ for attachment %{public}@", &v23);
    }

    v19 = MEMORY[0x1E695DFD8];
    v20 = [v15 ef_map:&__block_literal_global_90];
    v21 = [v19 setWithArray:v20];
    v22 = [v21 allObjects];

    [*(a1 + 40) setObject:v22 forKeyedSubscript:v3];
  }
}

- (void)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:(uint64_t)a1 orURL:(NSObject *)a2 attachmentMetadata:basePath:shouldUpdateAttachmentID:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Couldn't read data for attachment URL %@, device may be locked", &v2, 0xCu);
}

- (void)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:(uint64_t)a1 orURL:(NSObject *)a2 attachmentMetadata:basePath:shouldUpdateAttachmentID:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Couldn't get file attributes for attachment URL %@", &v2, 0xCu);
}

- (void)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:orURL:attachmentMetadata:basePath:shouldUpdateAttachmentID:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error persisting attachment %@ to disk with existing metadata %{public}@", v4, v5);
}

- (void)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:orURL:attachmentMetadata:basePath:shouldUpdateAttachmentID:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_10(v1, v2, 5.778e-34);
  *(v3 + 12) = 2048;
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error persisting attachment %@ to disk attachmentID %lld", v5, v6);
}

- (void)_writeAttachment:toDirectory:outError:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to create attachment directory at %{public}@, %{public}@", v5, v6);
}

- (void)_writeAttachment:toDirectory:outError:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error figuring out if %{public}@ already exists, %{public}@", v5, v6);
}

- (void)_writeAttachment:toDirectory:outError:.cold.3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Attachment already exists at %{public}@. Overwriting with current attachment %@", v4, v5);
}

- (void)_writeAttachment:toDirectory:outError:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "No filename set on the file wrapper attachment %{public}@ for write to %{public}@", v4, v5);
}

- (void)_moveAttachmentAtURL:toURL:outError:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error occurred attempting to make file purgeable: %{public}@: %{public}@", v5, v6);
}

- (void)_persistAttachmentWithWrapper:orURL:attachmentMetadata:basePath:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to write archive attachment %@ to %@", v4, v5);
}

- (void)_persistAttachmentWithWrapper:(void *)a1 orURL:(uint64_t)a2 attachmentMetadata:basePath:error:.cold.2(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.8381e-34);
  _os_log_fault_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_FAULT, "attachmentMetadata %{public}@ is missing either a mimePartNumber or a remoteURL. Aborting attachment write", v4, 0xCu);
}

- (void)_createAttachmentFileWriterForAttachmentMetadata:basePath:downloadDate:queue:compressionQueue:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to create temporary file for global ID %llu MIME part [%{public}@].", v4, v5);
}

- (void)_createAttachmentFileWriterForAttachmentMetadata:basePath:downloadDate:queue:compressionQueue:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_11(&dword_1C61EF000, v6, v4, "Attachment file for global ID %llu MIME part [%{public}@] already exists. Not creating file writer.", v5);
}

void __139__EDAttachmentPersistenceManager__createAttachmentFileWriterForAttachmentMetadata_basePath_downloadDate_queue_compressionQueue_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8(a1, a2, 3.8521e-34);
  *(v2 + 12) = 1024;
  *(v2 + 14) = v3;
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "File writer failed for global ID %llu (%{errno}d). Removing temp files.", v4, 0x12u);
}

- (void)_didCompleteWritingAttachmentToFile:basePath:digest:metadata:downloadDate:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to move attachment to final location (global ID %llu): %{public}@", v4, v5);
}

- (void)_updateAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_10(v1, v2, 5.778e-34);
  *(v3 + 12) = 2048;
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to update attachmentID %@ for global message ID %llu", v5, v6);
}

- (void)_updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to get size of attachment file (global ID %llu): %{public}@", v4, v5);
}

- (void)_writeFileWrapper:toURL:outError:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error occurred attempting to compress file: %{public}@: %{public}@", v5, v6);
}

- (void)_attachmentURLForAttachment:(void *)a1 basePath:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to create attachment URL for attachment ID %@", v5);
}

- (void)attachmentURLForMessageAttachmentID:basePath:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11(&dword_1C61EF000, v6, v4, "Fetching attachment URL for messageAttachmentID %@ at base path %@", v5);
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_cold_1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.7779e-34);
  _os_log_debug_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEBUG, "Attachment '%@' already has synapse attributes.", v4, 0xCu);
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_106_cold_1()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to write Synapse attributes to attachment '%@': %@", v5, v6);
}

@end