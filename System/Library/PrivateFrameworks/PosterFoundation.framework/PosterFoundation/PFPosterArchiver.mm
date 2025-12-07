@interface PFPosterArchiver
+ (id)archiveExtensionForFormat:(int64_t)format;
+ (id)archivePath:(id)path format:(int64_t)format error:(id *)error;
+ (id)unarchivePathAtURL:(id)l format:(int64_t)format error:(id *)error;
+ (id)unarchivePathFromData:(id)data format:(int64_t)format error:(id *)error;
+ (int64_t)formatForData:(id)data;
+ (int64_t)formatForDataAtURL:(id)l;
- (PFPosterArchiver)init;
- (PFPosterArchiver)initWithFileManager:(id)manager processHandle:(id)handle unarchivingContainerURL:(id)l;
- (id)_unarchiveWithHandler:(id)handler manifest:(id *)manifest error:(id *)error;
- (id)archivePath:(id)path format:(int64_t)format error:(id *)error;
- (id)unarchivePathAppleArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error;
- (id)unarchivePathAppleArchiveData:(id)data manifest:(id *)manifest error:(id *)error;
- (id)unarchivePathAtURL:(id)l format:(int64_t)format error:(id *)error;
- (id)unarchivePathFromData:(id)data format:(int64_t)format error:(id *)error;
- (id)unarchivePathZipArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error;
- (id)unarchivePathZipArchiveData:(id)data manifest:(id *)manifest error:(id *)error;
@end

@implementation PFPosterArchiver

+ (id)archivePath:(id)path format:(int64_t)format error:(id *)error
{
  pathCopy = path;
  v8 = objc_alloc_init(PFPosterArchiver);
  v9 = [(PFPosterArchiver *)v8 archivePath:pathCopy format:format error:error];

  return v9;
}

+ (id)unarchivePathAtURL:(id)l format:(int64_t)format error:(id *)error
{
  lCopy = l;
  v8 = objc_alloc_init(PFPosterArchiver);
  v9 = [(PFPosterArchiver *)v8 unarchivePathAtURL:lCopy format:format error:error];

  return v9;
}

+ (id)unarchivePathFromData:(id)data format:(int64_t)format error:(id *)error
{
  dataCopy = data;
  v8 = objc_alloc_init(PFPosterArchiver);
  v9 = [(PFPosterArchiver *)v8 unarchivePathFromData:dataCopy format:format error:error];

  return v9;
}

- (PFPosterArchiver)init
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PFPosterArchiver *)self initWithFileManager:defaultManager];

  return v4;
}

- (PFPosterArchiver)initWithFileManager:(id)manager processHandle:(id)handle unarchivingContainerURL:(id)l
{
  managerCopy = manager;
  handleCopy = handle;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PFPosterArchiver;
  v12 = [(PFPosterArchiver *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileManager, manager);
    objc_storeStrong(&v13->_processHandle, handle);
    objc_storeStrong(&v13->_unarchivingContainerURL, l);
  }

  return v13;
}

- (id)archivePath:(id)path format:(int64_t)format error:(id *)error
{
  v86[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v9 = pathCopy;
  if (format == -1)
  {
    v19 = PFLogArchiver(pathCopy);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PFPosterArchiver archivePath:format:error:];
    }

    v12 = MEMORY[0x1E696ABC0];
    v85 = *MEMORY[0x1E696A578];
    v86[0] = @"Cannot archive to unknown format";
    v13 = MEMORY[0x1E695DF20];
    v14 = v86;
    v15 = &v85;
    goto LABEL_14;
  }

  if (!format)
  {
    v10 = [(BSProcessHandle *)self->_processHandle hasEntitlement:@"com.apple.posterboardservices.disallowArchivingAppleArchive"];
    if (v10)
    {
      v11 = PFLogArchiver(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver archivePath:format:error:];
      }

      v12 = MEMORY[0x1E696ABC0];
      v83 = *MEMORY[0x1E696A578];
      v84 = @"Process has disallow AppleArchive entitlement and thus cannot archive to that format";
      v13 = MEMORY[0x1E695DF20];
      v14 = &v84;
      v15 = &v83;
LABEL_14:
      v20 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
      v21 = [v12 errorWithDomain:@"PFPosterArchiverErrorDomain" code:6 userInfo:v20];

      if (error)
      {
        v22 = v21;
        v23 = 0;
        *error = v21;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_53;
    }
  }

  v16 = objc_opt_class();
  v17 = v9;
  errorCopy = error;
  v69 = v9;
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v24 = v18;

  identifierURL = [v24 identifierURL];
  serverIdentity = [v24 serverIdentity];
  provider = [serverIdentity provider];

  v27 = [[PFPosterArchiveManifest alloc] initWithServerPath:v24];
  serverIdentity2 = [v24 serverIdentity];

  posterUUID = [serverIdentity2 posterUUID];
  uUIDString = [posterUUID UUIDString];
  v68 = provider;
  v31 = [provider stringByAppendingFormat:@"-%@", uUIDString];

  v32 = [objc_opt_class() archiveExtensionForFormat:format];
  temporaryDirectory = [(NSFileManager *)self->_fileManager temporaryDirectory];
  v34 = [temporaryDirectory URLByAppendingPathComponent:v31];
  v71 = v32;
  v70 = [v34 URLByAppendingPathExtension:v32];

  fileManager = self->_fileManager;
  v80 = 0;
  v36 = [(NSFileManager *)fileManager URLForDirectory:99 inDomain:1 appropriateForURL:temporaryDirectory create:1 error:&v80];
  v37 = v80;
  v67 = v31;
  v38 = [v36 URLByAppendingPathComponent:v31];
  v39 = self->_fileManager;
  v40 = PFFileProtectionNoneAttributes(v38);
  v79 = v37;
  LOBYTE(v39) = [(NSFileManager *)v39 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:v40 error:&v79];
  v41 = v79;

  if ((v39 & 1) == 0)
  {
    v54 = PFLogArchiver(v42);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [PFPosterArchiver archivePath:format:error:];
    }

    v55 = [(NSFileManager *)self->_fileManager removeItemAtURL:v36 error:0];
    v9 = v69;
    goto LABEL_44;
  }

  v78 = 0;
  v43 = [(PFPosterArchiveManifest *)v27 dataRepresentationWithError:&v78];
  v44 = v78;

  if (v43)
  {
    v46 = [v38 URLByAppendingPathComponent:@"manifest"];
    v47 = [v46 URLByAppendingPathExtension:@"plist"];

    v77 = v44;
    v66 = v47;
    LOBYTE(v46) = [v43 writeToURL:v47 options:0 error:&v77];
    v48 = v77;

    if (v46)
    {
      v50 = self->_fileManager;
      v51 = [v38 URLByAppendingPathComponent:@"configuration"];
      v76 = v48;
      LOBYTE(v50) = [(NSFileManager *)v50 copyItemAtURL:identifierURL toURL:v51 error:&v76];
      v65 = v76;

      if (v50)
      {
        v53 = [v38 URLByAppendingPathExtension:v71];
        if (format)
        {
          PFZipArchiverCompressDirectory(v38, v53, self->_fileManager);
        }

        else
        {
          PFAppleArchiveCompressDirectory(v38, v53);
        }

        [(NSFileManager *)self->_fileManager removeItemAtURL:v70 error:0];
        v57 = self->_fileManager;
        v75 = v65;
        v58 = [(NSFileManager *)v57 moveItemAtURL:v53 toURL:v70 error:&v75];
        v48 = v75;

        if (v58)
        {
          v56 = v70;
        }

        else
        {
          v56 = 0;
        }

        v9 = v69;
        goto LABEL_40;
      }

      v53 = PFLogArchiver(v52);
      v9 = v69;
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v56 = 0;
        v48 = v65;
        goto LABEL_40;
      }

      v48 = v65;
      [PFPosterArchiver archivePath:format:error:];
    }

    else
    {
      v53 = PFLogArchiver(v49);
      v9 = v69;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver archivePath:format:error:];
      }
    }

    v56 = 0;
LABEL_40:

    v44 = v48;
    goto LABEL_41;
  }

  v66 = PFLogArchiver(v45);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    [PFPosterArchiver archivePath:format:error:];
  }

  v56 = 0;
  v9 = v69;
LABEL_41:
  v59 = errorCopy;

  v55 = [(NSFileManager *)self->_fileManager removeItemAtURL:v36 error:0];
  if (!v56)
  {
    v41 = v44;
LABEL_44:
    v62 = PFLogArchiver(v55);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      [PFPosterArchiver archivePath:format:error:];
    }

    v60 = v70;
    if (v41)
    {
      v81 = *MEMORY[0x1E696AA08];
      v82 = v41;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    }

    else
    {
      v44 = 0;
    }

    v61 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PFPosterArchiverErrorDomain" code:2 userInfo:v44];

    v56 = 0;
    v59 = errorCopy;
    goto LABEL_50;
  }

  v74 = 0;
  v60 = v70;
  [v70 pf_markPurgableInOneHourWithError:&v74];
  v61 = v74;
LABEL_50:

  if (v59)
  {
    v63 = v61;
    *v59 = v61;
  }

  v21 = v56;

  v23 = v21;
LABEL_53:

  return v23;
}

- (id)unarchivePathAtURL:(id)l format:(int64_t)format error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v9 = lCopy;
  if (format == -1)
  {
    lCopy = [objc_opt_class() formatForDataAtURL:lCopy];
    format = lCopy;
  }

  if (format == 1)
  {
    v24 = 0;
    v21 = [(PFPosterArchiver *)self unarchivePathZipArchiveAtURL:v9 manifest:&v24 error:error];
    goto LABEL_18;
  }

  if (!format)
  {
    v15 = [(BSProcessHandle *)self->_processHandle hasEntitlement:@"com.apple.posterboardservices.disallowArchivingAppleArchive"];
    if (v15)
    {
      v16 = PFLogArchiver(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver unarchivePathAtURL:format:error:];
      }

      v11 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"Process has disallow AppleArchive entitlement and thus cannot unarchive that format";
      v12 = MEMORY[0x1E695DF20];
      v13 = &v26;
      v14 = &v25;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (format != -1)
  {
LABEL_16:
    v23 = 0;
    v21 = [(PFPosterArchiver *)self unarchivePathAppleArchiveAtURL:v9 manifest:&v23 error:error];
LABEL_18:
    v20 = v21;
    goto LABEL_19;
  }

  v10 = PFLogArchiver(lCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [PFPosterArchiver unarchivePathAtURL:format:error:];
  }

  v11 = MEMORY[0x1E696ABC0];
  v27 = *MEMORY[0x1E696A578];
  v28[0] = @"Unable to resolve format for file to be unarchived";
  v12 = MEMORY[0x1E695DF20];
  v13 = v28;
  v14 = &v27;
LABEL_13:
  v17 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
  v18 = [v11 errorWithDomain:@"PFPosterArchiverErrorDomain" code:6 userInfo:v17];

  if (error)
  {
    v19 = v18;
    *error = v18;
  }

  v20 = 0;
LABEL_19:

  return v20;
}

- (id)unarchivePathFromData:(id)data format:(int64_t)format error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = dataCopy;
  if (format == -1)
  {
    dataCopy = [objc_opt_class() formatForData:dataCopy];
    format = dataCopy;
  }

  if (format == 1)
  {
    v24 = 0;
    v21 = [(PFPosterArchiver *)self unarchivePathZipArchiveData:v9 manifest:&v24 error:error];
    goto LABEL_18;
  }

  if (!format)
  {
    v15 = [(BSProcessHandle *)self->_processHandle hasEntitlement:@"com.apple.posterboardservices.disallowArchivingAppleArchive"];
    if (v15)
    {
      v16 = PFLogArchiver(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver unarchivePathAtURL:format:error:];
      }

      v11 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"Process has disallow AppleArchive entitlement and thus cannot unarchive that format";
      v12 = MEMORY[0x1E695DF20];
      v13 = &v26;
      v14 = &v25;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (format != -1)
  {
LABEL_16:
    v23 = 0;
    v21 = [(PFPosterArchiver *)self unarchivePathAppleArchiveData:v9 manifest:&v23 error:error];
LABEL_18:
    v20 = v21;
    goto LABEL_19;
  }

  v10 = PFLogArchiver(dataCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [PFPosterArchiver unarchivePathAtURL:format:error:];
  }

  v11 = MEMORY[0x1E696ABC0];
  v27 = *MEMORY[0x1E696A578];
  v28[0] = @"Unable to resolve format for file to be unarchived";
  v12 = MEMORY[0x1E695DF20];
  v13 = v28;
  v14 = &v27;
LABEL_13:
  v17 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
  v18 = [v11 errorWithDomain:@"PFPosterArchiverErrorDomain" code:6 userInfo:v17];

  if (error)
  {
    v19 = v18;
    *error = v18;
  }

  v20 = 0;
LABEL_19:

  return v20;
}

+ (id)archiveExtensionForFormat:(int64_t)format
{
  if (format == 1)
  {
    return @"zapa";
  }

  else
  {
    return @"apa";
  }
}

+ (int64_t)formatForDataAtURL:(id)l
{
  lCopy = l;
  v15 = 0;
  v5 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:lCopy error:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v14 = 0;
    v8 = [v5 readDataUpToLength:4 error:&v14];
    v9 = v14;

    if (v8)
    {
      v11 = [self formatForData:v8];
    }

    else
    {
      v12 = PFLogArchiver(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[PFPosterArchiver formatForDataAtURL:];
      }

      v11 = -1;
    }
  }

  else
  {
    v8 = PFLogArchiver(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[PFPosterArchiver formatForDataAtURL:];
    }

    v11 = -1;
    v9 = v7;
  }

  return v11;
}

+ (int64_t)formatForData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] < 4)
  {
    goto LABEL_12;
  }

  bytes = [dataCopy bytes];
  v5 = *bytes;
  if (v5 == 65)
  {
    if (bytes[1] == 65 && bytes[2] == 48 && bytes[3] == 49)
    {
      v6 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v6 = -1;
    goto LABEL_13;
  }

  if (v5 != 80 || bytes[1] != 75 || bytes[2] != 3 || bytes[3] != 4)
  {
    goto LABEL_12;
  }

  v6 = 1;
LABEL_13:

  return v6;
}

- (id)unarchivePathAppleArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error
{
  lCopy = l;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PFPosterArchiver_unarchivePathAppleArchiveAtURL_manifest_error___block_invoke;
  v12[3] = &unk_1E8189AA0;
  v13 = lCopy;
  v9 = lCopy;
  v10 = [(PFPosterArchiver *)self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

- (id)unarchivePathZipArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error
{
  lCopy = l;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PFPosterArchiver_unarchivePathZipArchiveAtURL_manifest_error___block_invoke;
  v12[3] = &unk_1E8189AA0;
  v13 = lCopy;
  v9 = lCopy;
  v10 = [(PFPosterArchiver *)self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

- (id)unarchivePathAppleArchiveData:(id)data manifest:(id *)manifest error:(id *)error
{
  dataCopy = data;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke;
  v12[3] = &unk_1E8189AA0;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = [(PFPosterArchiver *)self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

void __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 writeData:v3 error:&v8];
  v5 = v8;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = PFLogArchiver(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke_2_cold_1();
    }
  }

  [*(a1 + 32) closeFile];
}

- (id)unarchivePathZipArchiveData:(id)data manifest:(id *)manifest error:(id *)error
{
  dataCopy = data;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PFPosterArchiver_unarchivePathZipArchiveData_manifest_error___block_invoke;
  v12[3] = &unk_1E8189AA0;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = [(PFPosterArchiver *)self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

- (id)_unarchiveWithHandler:(id)handler manifest:(id *)manifest error:(id *)error
{
  v138[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v114 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = self->_fileManager;
  temporaryDirectory = [(NSFileManager *)v6 temporaryDirectory];
  v7 = self->_unarchivingContainerURL;
  v8 = v7;
  if (!v7 || (v116 = v7, ![(NSURL *)v7 checkResourceIsReachableAndReturnError:0]))
  {
    v9 = temporaryDirectory;

    v130 = 0;
    v116 = v9;
    v10 = [(NSFileManager *)v6 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v130];
    v11 = v130;
    v12 = v11;
    if (!v10)
    {
      v13 = PFLogArchiver(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
      }
    }

    if (v8)
    {
      v14 = PFLogArchiver(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
      }
    }
  }

  if ([(NSURL *)v8 checkResourceIsReachableAndReturnError:0])
  {
    v110 = v8;
  }

  else
  {
    v110 = [temporaryDirectory URLByAppendingPathComponent:@"PosterPaths"];
  }

  v129 = 0;
  v15 = [(NSFileManager *)v6 URLForDirectory:99 inDomain:1 appropriateForURL:v116 create:1 error:&v129];
  v16 = v129;
  v17 = v16;
  if (v15)
  {
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __57__PFPosterArchiver__unarchiveWithHandler_manifest_error___block_invoke;
    v126[3] = &unk_1E8189AC8;
    v18 = v114;
    v127 = v18;
    v19 = v6;
    v128 = v19;
    v112 = MEMORY[0x1C691C400](v126);
    if ((handlerCopy[2](handlerCopy, v15) & 1) == 0)
    {
      v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PFPosterArchiverErrorDomain" code:3 userInfo:0];
      v35 = 0;
LABEL_57:

      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 3221225472;
      v119[2] = __57__PFPosterArchiver__unarchiveWithHandler_manifest_error___block_invoke_63;
      v119[3] = &unk_1E8189AC8;
      v58 = v19;
      v120 = v58;
      v59 = v15;
      v121 = v59;
      v60 = MEMORY[0x1C691C400](v119);
      v61 = v112[2];
      if (!v35 || v21)
      {
        v82 = v61(v112);
        v83 = PFLogArchiver(v82);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
        }

        if (error != 0 && v21 != 0)
        {
          v84 = v21;
          v33 = 0;
          *error = v21;
        }

        else
        {
          v33 = 0;
        }

        goto LABEL_96;
      }

      v61(v112);
      configurationUUID = [v35 configurationUUID];
      uUIDString = [configurationUUID UUIDString];
      v64 = [(NSURL *)v110 URLByAppendingPathComponent:uUIDString];

      extensionIdentifier = [v35 extensionIdentifier];
      v109 = [v59 URLByAppendingPathComponent:extensionIdentifier];

      v66 = PFPosterPathFileAttributes([(NSFileManager *)v58 removeItemAtURL:v64 error:0]);
      v118 = 0;
      LOBYTE(extensionIdentifier) = [(NSFileManager *)v58 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:v66 error:&v118];
      v21 = v118;

      if (extensionIdentifier)
      {
        extensionIdentifier2 = [v35 extensionIdentifier];
        v107 = [v64 URLByAppendingPathComponent:extensionIdentifier2 isDirectory:1];

        v117 = v21;
        v69 = [(NSFileManager *)v58 moveItemAtURL:v109 toURL:v107 error:&v117];
        v105 = v117;

        if (v69)
        {
          extensionIdentifier3 = [v35 extensionIdentifier];
          role = [v35 role];
          configurationUUID2 = [v35 configurationUUID];
          v103 = [PFServerPosterIdentity configurationIdentityWithProvider:extensionIdentifier3 identifier:0 role:role posterUUID:configurationUUID2 version:[v35 latestConfigurationVersion] supplement:[v35 latestConfigurationSupplement]];

          v74 = [PFServerPosterPath pathWithProviderURL:v107 identity:v103];
          v33 = v74;
          if (v74)
          {
            v75 = PFLogArchiver(v74);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v134 = v33;
              _os_log_impl(&dword_1C269D000, v75, OS_LOG_TYPE_DEFAULT, "Successfully created server path: %{public}@", buf, 0xCu);
            }

            contentsURL = [v33 contentsURL];
            v77 = [contentsURL checkResourceIsReachableAndReturnError:0];

            if ((v77 & 1) == 0)
            {
              v79 = PFLogArchiver(v78);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                contentsURL2 = [v33 contentsURL];
                *buf = 138543362;
                v134 = contentsURL2;
                _os_log_impl(&dword_1C269D000, v79, OS_LOG_TYPE_DEFAULT, "Warning, contentsURL was not reachable: %{public}@", buf, 0xCu);
              }
            }

            v81 = v33;
          }

          else
          {
            if (v105)
            {
              v131 = *MEMORY[0x1E696AA08];
              v132 = v105;
              v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
            }

            else
            {
              v92 = 0;
            }

            v93 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PFPosterArchiverErrorDomain" code:3 userInfo:v92];

            v95 = PFLogArchiver(v94);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
            }

            if (error)
            {
              v96 = v93;
              *error = v93;
            }

            v105 = v93;
          }

          goto LABEL_94;
        }

        v89 = PFLogArchiver(v70);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          pf_description = [v105 pf_description];
          [PFPosterArchiver _unarchiveWithHandler:pf_description manifest:buf error:v89];
        }

        if (!error)
        {
          v33 = 0;
LABEL_94:
          v21 = v105;
          v64 = v107;
          goto LABEL_95;
        }

        v91 = v105;
        v33 = 0;
        errorCopy2 = error;
        v21 = v105;
        v64 = v107;
      }

      else
      {
        v85 = PFLogArchiver(v67);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          pf_description2 = [v21 pf_description];
          [PFPosterArchiver _unarchiveWithHandler:pf_description2 manifest:buf error:v85];
        }

        if (!error)
        {
          v33 = 0;
          goto LABEL_95;
        }

        v87 = v21;
        v33 = 0;
        errorCopy2 = error;
      }

      *errorCopy2 = v21;
LABEL_95:

LABEL_96:
      v60[2](v60);

      goto LABEL_97;
    }

    v102 = [v15 URLByAppendingPathComponent:@"configuration"];
    v20 = [v15 URLByAppendingPathComponent:@"manifest"];
    v108 = [v20 URLByAppendingPathExtension:@"plist"];

    [v18 addObject:v102];
    [v18 addObject:v108];
    v125 = v17;
    v106 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v108 options:0 error:&v125];
    v21 = v125;

    if (!v106)
    {
      p_super = PFLogArchiver(v22);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
      }

      v35 = 0;
      goto LABEL_56;
    }

    v23 = [[PFPosterArchiveManifest alloc] initWithDataRepresentation:v106];
    p_super = &v23->super;
    if (v23)
    {
      archiveVersion = [(PFPosterArchiveManifest *)v23 archiveVersion];
      minSupportedArchiveVersion = [objc_opt_class() minSupportedArchiveVersion];
      if (archiveVersion >= minSupportedArchiveVersion)
      {
        extensionIdentifier4 = [p_super extensionIdentifier];
        v100 = [v15 URLByAppendingPathComponent:extensionIdentifier4];

        v39 = MEMORY[0x1E695DFF8];
        configurationUUID3 = [p_super configurationUUID];
        v101 = [v39 pf_posterPathIdentifierURLProviderURL:v100 type:3 posterUUID:configurationUUID3];

        uRLByDeletingLastPathComponent = [v101 URLByDeletingLastPathComponent];
        v42 = PFPosterPathFileAttributes(uRLByDeletingLastPathComponent);
        v124 = v21;
        v43 = [(NSFileManager *)v19 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v42 error:&v124];
        v44 = v124;

        if (v43)
        {
          v123 = v44;
          v46 = [(NSFileManager *)v19 copyItemAtURL:v102 toURL:v101 error:&v123];
          v98 = v123;

          if (v46)
          {
            latestConfigurationVersion = [p_super latestConfigurationVersion];
            v99 = [MEMORY[0x1E695DFF8] pf_versionsURLForIdentifierURL:v101];
            v49 = [MEMORY[0x1E695DFF8] pf_posterPathInstanceURLForVersionsURL:v99 version:latestConfigurationVersion];
            v50 = [MEMORY[0x1E695DFF8] pf_posterPathScratchURLForInstanceURL:v49];
            path = [v50 path];
            v52 = [(NSFileManager *)v19 fileExistsAtPath:path];

            if (v52)
            {
              v122 = 0;
              v53 = [(NSFileManager *)v19 removeItemAtURL:v50 error:&v122];
              v54 = v122;
              v55 = v54;
              if (!v53)
              {
                v56 = PFLogArchiver(v54);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
                }
              }
            }

            if (manifest)
            {
              v57 = p_super;
              *manifest = p_super;
            }

            v35 = p_super;
          }

          else
          {
            v49 = PFLogArchiver(v47);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
            }

            v35 = 0;
            v99 = p_super;
          }

          v44 = v98;
        }

        else
        {
          v49 = PFLogArchiver(v45);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
          }

          v35 = 0;
          v99 = p_super;
        }

        p_super = v100;
        v21 = v44;
        goto LABEL_56;
      }

      v27 = PFLogArchiver(minSupportedArchiveVersion);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:self manifest:? error:?];
      }

      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      v135 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Archive version %lu is older than min supported %lu", -[NSObject archiveVersion](p_super, "archiveVersion"), objc_msgSend(objc_opt_class(), "minSupportedArchiveVersion")];
      v136 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      v31 = [v28 initWithDomain:@"PFPosterArchiverErrorDomain" code:4 userInfo:v30];
    }

    else
    {
      v36 = PFLogArchiver(0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
      }

      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v137 = *MEMORY[0x1E696A578];
      v138[0] = @"Archive is unsupported";
      p_super = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:&v137 count:1];
      v31 = [v37 initWithDomain:@"PFPosterArchiverErrorDomain" code:4 userInfo:p_super];
    }

    v35 = 0;
    v21 = v31;
LABEL_56:

    v17 = v102;
    goto LABEL_57;
  }

  v32 = PFLogArchiver(v16);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [PFPosterArchiver _unarchiveWithHandler:manifest:error:];
  }

  v33 = 0;
  if (error && v17)
  {
    v34 = v17;
    v33 = 0;
    *error = v17;
  }

  v21 = v17;
LABEL_97:

  return v33;
}

void __57__PFPosterArchiver__unarchiveWithHandler_manifest_error___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PFPosterArchiver__unarchiveWithHandler_manifest_error___block_invoke_2;
  v3[3] = &unk_1E8189AF0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
  [*(a1 + 32) removeAllObjects];
}

- (void)archivePath:format:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)archivePath:format:error:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)archivePath:format:error:.cold.5()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)archivePath:format:error:.cold.6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)archivePath:format:error:.cold.7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)unarchivePathAtURL:format:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)unarchivePathAtURL:format:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_unarchiveWithHandler:(void *)a1 manifest:(uint64_t)a2 error:.cold.6(void *a1, uint64_t a2)
{
  [a1 archiveVersion];
  [objc_opt_class() minSupportedArchiveVersion];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_unarchiveWithHandler:(void *)a1 manifest:(uint8_t *)buf error:(os_log_t)log .cold.9(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C269D000, log, OS_LOG_TYPE_ERROR, "Unable to create finalURL: %{public}@", buf, 0xCu);
}

- (void)_unarchiveWithHandler:(void *)a1 manifest:(uint8_t *)buf error:(os_log_t)log .cold.10(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C269D000, log, OS_LOG_TYPE_ERROR, "Unable to move item at provider URL to finalURL: %{public}@", buf, 0xCu);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.11()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.12()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_unarchiveWithHandler:manifest:error:.cold.13()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end