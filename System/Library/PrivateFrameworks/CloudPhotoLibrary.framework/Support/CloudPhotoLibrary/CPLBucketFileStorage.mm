@interface CPLBucketFileStorage
- (BOOL)_fixupStoredDestinationURL:(id)l isOriginal:(BOOL)original needsCommit:(BOOL *)commit error:(id *)error;
- (BOOL)_getIsOriginal:(BOOL *)original markedForDelete:(BOOL *)delete forDestinationURL:(id)l error:(id *)error;
- (BOOL)_markURLForDelete:(id)delete error:(id *)error;
- (BOOL)_setIsOriginal:(BOOL *)original markedForDelete:(BOOL *)delete onDestinationURL:(id)l clearFlags:(BOOL)flags error:(id *)error;
- (BOOL)deleteFileWithIdentity:(id)identity includingOriginal:(BOOL)original error:(id *)error;
- (BOOL)discardAllRetainedFileURLsWithError:(id *)error;
- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error removingItemAtURL:(id)l;
- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l;
- (BOOL)hasFileWithIdentity:(id)identity;
- (BOOL)markForDeleteFileWithIdentity:(id)identity error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)releaseFileURL:(id)l error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)storeData:(id)data identity:(id)identity isOriginal:(BOOL)original needsCommit:(BOOL *)commit onNewFile:(id)file error:(id *)error;
- (BOOL)storeFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original moveIfPossible:(BOOL)possible needsCommit:(BOOL *)commit onNewFile:(id)file error:(id *)error;
- (BOOL)storeUnretainedData:(id)data identity:(id)identity isOriginal:(BOOL)original error:(id *)error;
- (BOOL)storeUnretainedFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original error:(id *)error;
- (CPLBucketFileStorage)initWithAbstractObject:(id)object;
- (id)_destinationURLForIdentity:(id)identity;
- (id)fileEnumeratorIncludingPropertiesForKeys:(id)keys errorHandler:(id)handler;
- (id)retainFileURLForIdentity:(id)identity resourceType:(unint64_t)type error:(id *)error;
- (void)_clearFlagsOnFd:(int)fd url:(id)url;
- (void)_clearFlagsOnURL:(id)l;
- (void)checkFileSizeForIdentity:(id)identity;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLBucketFileStorage

- (void)writeTransactionDidSucceed
{
  temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
  self->_temporarilyRetainedURLsAtTheStartOfTransaction = 0;
}

- (CPLBucketFileStorage)initWithAbstractObject:(id)object
{
  v15.receiver = self;
  v15.super_class = CPLBucketFileStorage;
  v3 = [(CPLBucketFileStorage *)&v15 initWithAbstractObject:object];
  v4 = v3;
  if (v3)
  {
    abstractObject = [(CPLBucketFileStorage *)v3 abstractObject];
    baseURL = [abstractObject baseURL];
    v7 = [baseURL URLByAppendingPathComponent:@"filecache" isDirectory:1];
    urlForFiles = v4->_urlForFiles;
    v4->_urlForFiles = v7;

    v9 = objc_alloc_init(NSFileManager);
    fileManager = v4->_fileManager;
    v4->_fileManager = v9;

    logDomain = v4->_logDomain;
    v4->_logDomain = @"engine.filestorage.bucketstorage";

    v12 = objc_alloc_init(NSCountedSet);
    temporarilyRetainedURLs = v4->_temporarilyRetainedURLs;
    v4->_temporarilyRetainedURLs = v12;
  }

  return v4;
}

- (BOOL)openWithError:(id *)error
{
  fileManager = self->_fileManager;
  urlForFiles = self->_urlForFiles;
  v12 = 0;
  v7 = 1;
  v8 = [(NSFileManager *)fileManager createDirectoryAtURL:urlForFiles withIntermediateDirectories:1 attributes:0 error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    if ([(NSFileManager *)self->_fileManager cplIsFileExistsError:v9])
    {

      v9 = 0;
    }

    else if (error)
    {
      v10 = v9;
      v7 = 0;
      *error = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_destinationURLForIdentity:(id)identity
{
  identityCopy = identity;
  fingerPrint = [identityCopy fingerPrint];
  fileUTI = [identityCopy fileUTI];
  if (!fingerPrint)
  {
    sub_1001C7A04(a2, self);
  }

  v8 = fileUTI;
  v14 = 0;
  v9 = [CPLResourceIdentity storageNameForFingerPrint:fingerPrint fileUTI:fileUTI bucket:&v14];
  v10 = v14;
  v11 = [(NSURL *)self->_urlForFiles URLByAppendingPathComponent:v10 isDirectory:1];
  v12 = [v11 URLByAppendingPathComponent:v9 isDirectory:0];

  return v12;
}

- (BOOL)_setIsOriginal:(BOOL *)original markedForDelete:(BOOL *)delete onDestinationURL:(id)l clearFlags:(BOOL)flags error:(id *)error
{
  flagsCopy = flags;
  lCopy = l;
  v13 = lCopy;
  if (!(original | delete))
  {
    LOBYTE(v16) = 1;
    goto LABEL_35;
  }

  v14 = open([lCopy fileSystemRepresentation], 0);
  v15 = v14;
  if (error && (v14 & 0x80000000) != 0)
  {
    [CPLErrors posixErrorForURL:v13];
    *error = LOBYTE(v16) = 0;
    goto LABEL_35;
  }

  v16 = v14 >= 0;
  if ((v14 & 0x80000000) == 0 && flagsCopy)
  {
    [(CPLBucketFileStorage *)self _clearFlagsOnFd:v14 url:v13];
  }

  if (original && (v15 & 0x80000000) == 0)
  {
    v17 = *original;
    v18 = v13;
    if (v17)
    {
      v19 = fsetxattr(v15, "com.apple.cpl.original", "Y", 1uLL, 0, 0);
      v16 = v19 == 0;
      if (!error || !v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!fremovexattr(v15, "com.apple.cpl.original", 0))
      {
        v16 = 1;
        goto LABEL_20;
      }

      v20 = *__error();
      v16 = v20 == 93;
      if (!error || v20 == 93)
      {
        goto LABEL_20;
      }
    }

    [CPLErrors posixErrorForURL:v18];
    *error = v16 = 0;
LABEL_20:
  }

  if (delete && v16)
  {
    v21 = *delete;
    v22 = v13;
    if (v21)
    {
      v23 = fsetxattr(v15, "com.apple.cpl.delete", "Y", 1uLL, 0, 0);
      LOBYTE(v16) = v23 == 0;
      if (!error || !v23)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!fremovexattr(v15, "com.apple.cpl.delete", 0))
      {
        LOBYTE(v16) = 1;
        goto LABEL_32;
      }

      v24 = *__error();
      LOBYTE(v16) = v24 == 93;
      if (!error || v24 == 93)
      {
        goto LABEL_32;
      }
    }

    [CPLErrors posixErrorForURL:v22];
    *error = LOBYTE(v16) = 0;
LABEL_32:
  }

  if ((v15 & 0x80000000) == 0)
  {
    close(v15);
  }

LABEL_35:

  return v16;
}

- (BOOL)_getIsOriginal:(BOOL *)original markedForDelete:(BOOL *)delete forDestinationURL:(id)l error:(id *)error
{
  lCopy = l;
  v10 = lCopy;
  if (original | delete)
  {
    v11 = open([lCopy fileSystemRepresentation], 0);
    v12 = v11;
    if (error && v11 < 0)
    {
      [CPLErrors posixErrorForURL:v10];
      *error = LOBYTE(v13) = 0;
    }

    else
    {
      v13 = v11 >= 0;
      if (original && (v11 & 0x80000000) == 0)
      {
        v14 = v10;
        if (fgetxattr(v12, "com.apple.cpl.original", 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0) < 1)
        {
          if (*__error() == 93)
          {
            *original = 0;
            v13 = 1;
          }

          else if (error)
          {
            [CPLErrors posixErrorForURL:v14];
            *error = v13 = 0;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 1;
          *original = 1;
        }
      }

      if (delete && v13)
      {
        v15 = v10;
        if (fgetxattr(v12, "com.apple.cpl.delete", 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0) < 1)
        {
          if (*__error() == 93)
          {
            *delete = 0;
            LOBYTE(v13) = 1;
          }

          else if (error)
          {
            [CPLErrors posixErrorForURL:v15];
            *error = LOBYTE(v13) = 0;
          }

          else
          {
            LOBYTE(v13) = 0;
          }
        }

        else
        {
          LOBYTE(v13) = 1;
          *delete = 1;
        }
      }

      if ((v12 & 0x80000000) == 0)
      {
        close(v12);
      }
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)_fixupStoredDestinationURL:(id)l isOriginal:(BOOL)original needsCommit:(BOOL *)commit error:(id *)error
{
  originalCopy = original;
  lCopy = l;
  v23 = 0;
  if (originalCopy)
  {
    v11 = [(CPLBucketFileStorage *)self _getIsOriginal:&v23 + 1 markedForDelete:&v23 forDestinationURL:lCopy error:error];
    if ((v11 & 1) == 0)
    {
      v14 = 0;
      goto LABEL_23;
    }

    v12 = HIBYTE(v23) ^ 1;
    if (HIBYTE(v23))
    {
      v13 = 0;
    }

    else
    {
      v13 = &unk_1002C4E20;
    }
  }

  else
  {
    v11 = [(CPLBucketFileStorage *)self _getIsOriginal:0 markedForDelete:&v23 forDestinationURL:lCopy error:error];
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v15 = v23;
  if (v23)
  {
    v16 = &unk_1002D2CC8;
  }

  else
  {
    v16 = 0;
  }

  *commit = v23;
  if ((v12 & 1) != 0 || v15)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_1001805BC(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        path = [lCopy path];
        v19 = path;
        v20 = "";
        v21 = " original";
        if (!v12)
        {
          v21 = "";
        }

        *buf = 138412802;
        v25 = path;
        v26 = 2080;
        v27 = v21;
        if (v15)
        {
          v20 = " undelete";
        }

        v28 = 2080;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Marking %@:%s%s", buf, 0x20u);
      }
    }

    v14 = [(CPLBucketFileStorage *)self _setIsOriginal:v13 markedForDelete:v16 onDestinationURL:lCopy clearFlags:0 error:error];
  }

  else
  {
    v14 = 1;
  }

LABEL_23:

  return v14;
}

- (BOOL)storeFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original moveIfPossible:(BOOL)possible needsCommit:(BOOL *)commit onNewFile:(id)file error:(id *)error
{
  possibleCopy = possible;
  originalCopy = original;
  lCopy = l;
  identityCopy = identity;
  fileCopy = file;
  v18 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  if (![(NSFileManager *)self->_fileManager cplFileExistsAtURL:v18])
  {
    v47 = lCopy;
    if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001C7AE4();
    }

    v54 = 0;
    v22 = fileCopy[2](fileCopy, &v54);
    v23 = v54;
    if (v22)
    {
      *commit = 1;
      fileManager = self->_fileManager;
      if (possibleCopy)
      {
        v53 = v23;
        v25 = [(NSFileManager *)fileManager cplMoveItemAtURL:v47 toURL:v18 error:&v53];
        v26 = v53;
      }

      else
      {
        v52 = v23;
        v25 = [(NSFileManager *)fileManager cplCopyItemAtURL:v47 toURL:v18 error:&v52];
        v26 = v52;
      }

      v20 = v26;

      if ((v25 & 1) == 0)
      {
        if (![(NSFileManager *)self->_fileManager cplIsFileDoesNotExistError:v20])
        {
          goto LABEL_13;
        }

        uRLByDeletingLastPathComponent = [v18 URLByDeletingLastPathComponent];
        v37 = uRLByDeletingLastPathComponent;
        v45 = uRLByDeletingLastPathComponent;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v38 = sub_1001805BC(uRLByDeletingLastPathComponent);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            path = [v37 path];
            *buf = 138412290;
            v57 = path;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Creating bucket at %@", buf, 0xCu);

            v37 = v45;
          }
        }

        v40 = self->_fileManager;
        v51 = v20;
        v41 = [(NSFileManager *)v40 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v51, v45];
        v23 = v51;

        if ((v41 & 1) == 0)
        {

          goto LABEL_14;
        }

        v42 = self->_fileManager;
        if (possibleCopy)
        {
          v50 = v23;
          v43 = [(NSFileManager *)v42 cplMoveItemAtURL:v47 toURL:v18 error:&v50];
          v20 = v50;

          v23 = v20;
          if ((v43 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v49 = v23;
          v44 = [(NSFileManager *)v42 cplCopyItemAtURL:v47 toURL:v18 error:&v49];
          v20 = v49;

          v23 = v20;
          if (!v44)
          {
            goto LABEL_14;
          }
        }
      }

      if (!originalCopy)
      {
        [(CPLBucketFileStorage *)self _clearFlagsOnURL:v18];
        v21 = 1;
        goto LABEL_27;
      }

      v48 = v20;
      v21 = 1;
      v35 = [(CPLBucketFileStorage *)self _setIsOriginal:&unk_1002C4E20 markedForDelete:0 onDestinationURL:v18 clearFlags:1 error:&v48];
      v23 = v48;

      if (v35)
      {
LABEL_26:
        v20 = v23;
LABEL_27:
        lCopy = v47;
        goto LABEL_28;
      }

      [(NSFileManager *)self->_fileManager removeItemAtURL:v18 error:0];
    }

LABEL_14:
    v27 = [(NSFileManager *)self->_fileManager cplIsFileExistsError:v23];
    if (v27)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_23;
      }

      v28 = sub_1001805BC(v27);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      path2 = [v18 path];
      *buf = 138412290;
      v57 = path2;
      v30 = "Tried to store %@ but file appeared miraculously!";
      v31 = v28;
      v32 = 12;
    }

    else
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_23;
      }

      v28 = sub_1001805BC(v27);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

LABEL_23:
        if (error)
        {
          v33 = v23;
          v21 = 0;
          *error = v23;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_26;
      }

      path2 = [v18 path];
      *buf = 138412802;
      v57 = identityCopy;
      v58 = 2112;
      v59 = path2;
      v60 = 2112;
      v61 = v23;
      v30 = "Failed to store %@ to %@: %@";
      v31 = v28;
      v32 = 32;
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);

    goto LABEL_22;
  }

  if (self->_trackAllStoresAndDeletes)
  {
    sub_1001C7B94();
  }

  v55 = 0;
  v19 = [(CPLBucketFileStorage *)self _fixupStoredDestinationURL:v18 isOriginal:originalCopy needsCommit:commit error:&v55];
  v20 = v55;
  if ((v19 & 1) == 0)
  {
    v47 = lCopy;
LABEL_13:
    v23 = v20;
    goto LABEL_14;
  }

  v21 = 1;
LABEL_28:

  return v21;
}

- (BOOL)storeData:(id)data identity:(id)identity isOriginal:(BOOL)original needsCommit:(BOOL *)commit onNewFile:(id)file error:(id *)error
{
  originalCopy = original;
  dataCopy = data;
  identityCopy = identity;
  fileCopy = file;
  v17 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  if ([(NSFileManager *)self->_fileManager cplFileExistsAtURL:v17])
  {
    if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001C7C54();
    }

    v50 = 0;
    v18 = [(CPLBucketFileStorage *)self _fixupStoredDestinationURL:v17 isOriginal:originalCopy needsCommit:commit error:&v50];
    v19 = v50;
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  *commit = 1;
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    sub_1001C7AE4();
  }

  v49 = 0;
  v21 = fileCopy[2](fileCopy, &v49);
  v22 = v49;
  v23 = v22;
  if (v21)
  {
    errorCopy = error;
    v48 = v22;
    v24 = [dataCopy writeToURL:v17 options:1 error:&v48];
    v19 = v48;

    if (v24)
    {
      if (!originalCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

    if ([(NSFileManager *)self->_fileManager cplIsFileDoesNotExistError:v19])
    {
      uRLByDeletingLastPathComponent = [v17 URLByDeletingLastPathComponent];
      v28 = uRLByDeletingLastPathComponent;
      v42 = uRLByDeletingLastPathComponent;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v29 = sub_1001805BC(uRLByDeletingLastPathComponent);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          path = [v28 path];
          *buf = 138412290;
          v52 = path;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Creating bucket at %@", buf, 0xCu);

          v28 = v42;
        }
      }

      fileManager = self->_fileManager;
      v47 = v19;
      v32 = [(NSFileManager *)fileManager createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v47, v42];
      v23 = v47;

      if ((v32 & 1) == 0)
      {

        goto LABEL_27;
      }

      v46 = v23;
      v33 = [dataCopy writeToURL:v17 options:1 error:&v46];
      v19 = v46;

      if (v33 && originalCopy)
      {
LABEL_13:
        v25 = v19;
        v45 = v19;
        v26 = [(CPLBucketFileStorage *)self _setIsOriginal:&unk_1002C4E20 markedForDelete:0 onDestinationURL:v17 clearFlags:0 error:&v45];
        v19 = v45;

        error = errorCopy;
        if ((v26 & 1) == 0)
        {
          [(NSFileManager *)self->_fileManager removeItemAtURL:v17 error:0];
LABEL_15:
          v23 = v19;
          goto LABEL_28;
        }

LABEL_6:
        v20 = 1;
        goto LABEL_41;
      }

      if (v33)
      {
        goto LABEL_6;
      }
    }

    v23 = v19;
LABEL_27:
    error = errorCopy;
  }

LABEL_28:
  v34 = [(NSFileManager *)self->_fileManager cplIsFileExistsError:v23];
  if (v34)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v35 = sub_1001805BC(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        path2 = [v17 path];
        *buf = 138412546;
        v52 = identityCopy;
        v53 = 2112;
        v54 = path2;
        v37 = "Tried to store %@ at %@ but file appeared miraculously!";
        v38 = v35;
        v39 = 22;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);

        goto LABEL_36;
      }

      goto LABEL_36;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v35 = sub_1001805BC(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path2 = [v17 path];
      *buf = 138412802;
      v52 = identityCopy;
      v53 = 2112;
      v54 = path2;
      v55 = 2112;
      v56 = v23;
      v37 = "Failed to store %@ to %@: %@";
      v38 = v35;
      v39 = 32;
      goto LABEL_35;
    }

LABEL_36:
  }

  if (error)
  {
    v40 = v23;
    v20 = 0;
    *error = v23;
  }

  else
  {
    v20 = 0;
  }

  v19 = v23;
LABEL_41:

  return v20;
}

- (BOOL)hasFileWithIdentity:(id)identity
{
  selfCopy = self;
  v4 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identity];
  LOBYTE(selfCopy) = [(NSFileManager *)selfCopy->_fileManager cplFileExistsAtURL:v4];

  return selfCopy;
}

- (void)checkFileSizeForIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  v10 = 0;
  v9 = 0;
  v6 = [v5 getResourceValue:&v10 forKey:NSURLFileSizeKey error:&v9];
  v7 = v10;
  v8 = v9;
  if (v6)
  {
    [identityCopy setFileSize:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }
}

- (id)retainFileURLForIdentity:(id)identity resourceType:(unint64_t)type error:(id *)error
{
  identityCopy = identity;
  v8 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  if (([(NSFileManager *)self->_fileManager cplFileExistsAtURL:v8]& 1) != 0)
  {
    if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001C7D04();
    }

    if (!self->_temporarilyRetainedURLsAtTheStartOfTransaction)
    {
      v9 = [(NSCountedSet *)self->_temporarilyRetainedURLs mutableCopy];
      temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
      self->_temporarilyRetainedURLsAtTheStartOfTransaction = v9;
    }

    [(NSCountedSet *)self->_temporarilyRetainedURLs addObject:v8];
  }

  else
  {
    v11 = [NSError alloc];
    v17 = NSFilePathErrorKey;
    path = [v8 path];
    v18 = path;
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v11 initWithDomain:NSCocoaErrorDomain code:4 userInfo:v13];

    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_markURLForDelete:(id)delete error:(id *)error
{
  deleteCopy = delete;
  v6 = open([deleteCopy fileSystemRepresentation], 0);
  if (v6 < 0)
  {
    if (*__error() == 2)
    {
      v10 = 1;
    }

    else if (error)
    {
      [CPLErrors posixErrorForURL:deleteCopy];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v7 = v6;
    v8 = deleteCopy;
    v9 = fsetxattr(v7, "com.apple.cpl.delete", "Y", 1uLL, 0, 0);
    v10 = v9 == 0;
    if (error && v9)
    {
      *error = [CPLErrors posixErrorForURL:v8];
    }

    close(v7);
  }

  return v10;
}

- (id)fileEnumeratorIncludingPropertiesForKeys:(id)keys errorHandler:(id)handler
{
  handlerCopy = handler;
  fileManager = self->_fileManager;
  urlForFiles = self->_urlForFiles;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100181A14;
  v13[3] = &unk_10027BE78;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(NSFileManager *)fileManager enumeratorAtURL:urlForFiles includingPropertiesForKeys:keys options:4 errorHandler:v13];
  v11 = [[CPLBucketFileStorageEnumerator alloc] initWithDirectoryEnumerator:v10];

  return v11;
}

- (void)writeTransactionDidFail
{
  temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
  if (temporarilyRetainedURLsAtTheStartOfTransaction)
  {
    objc_storeStrong(&self->_temporarilyRetainedURLs, temporarilyRetainedURLsAtTheStartOfTransaction);
    v4 = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
    self->_temporarilyRetainedURLsAtTheStartOfTransaction = 0;
  }
}

- (void)_clearFlagsOnFd:(int)fd url:(id)url
{
  v4 = *&fd;
  urlCopy = url;
  v6 = fgetxattr(v4, "com.apple.cpl.delete", 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  if (v6 > 0 || *__error() == 93)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = [CPLErrors posixErrorForURL:urlCopy];
    v29 = v7;
    v8 = 0;
  }

  v9 = v7;
  v10 = v9;
  if (v8)
  {
    if (v6 >= 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = sub_1001805BC(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_100181CAC();
          _os_log_impl(v12, v13, v14, v15, v16, v17);
        }
      }

      v18 = urlCopy;
      if (fremovexattr(v4, "com.apple.cpl.delete", 0) && *__error() != 93)
      {
        v4 = [CPLErrors posixErrorForURL:v18];
        v30 = v4;
        v19 = 0;
      }

      else
      {
        v19 = 1;
        v4 = v10;
      }

      v28 = v4;
      if (v19 & 1) != 0 || (_CPLSilentLogging)
      {
        goto LABEL_18;
      }

      v32 = sub_1001805BC(v31);
      if (sub_1000033C0(v32))
      {
        path = [v18 path];
        sub_10000AF90();
        sub_1000033B4();
        sub_100003548(&_mh_execute_header, v34, v35, "Failed to clear flags when storing resource at %@ (ignoring): %@", v36, v37, v38, v39);
      }

LABEL_17:

LABEL_18:
      v10 = v28;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v20 = sub_1001805BC(v9);
    if (sub_1000033C0(v20))
    {
      path2 = [urlCopy path];
      sub_10000AF90();
      sub_1000033B4();
      sub_100003548(&_mh_execute_header, v22, v23, "Failed to get flags when storing resource at %@ (ignoring): %@", v24, v25, v26, v27);
    }

    v28 = v10;
    goto LABEL_17;
  }
}

- (void)_clearFlagsOnURL:(id)l
{
  lCopy = l;
  v5 = open([lCopy fileSystemRepresentation], 0);
  if ((v5 & 0x80000000) != 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_1001805BC(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        path = [lCopy path];
        v9 = [CPLErrors posixErrorForURL:lCopy];
        v11 = 138412546;
        v12 = path;
        sub_1000033B4();
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to clear flags when storing resource at %@ (ignoring): %@", &v11, 0x16u);
      }
    }
  }

  else
  {
    v6 = v5;
    [(CPLBucketFileStorage *)self _clearFlagsOnFd:v5 url:lCopy];
    close(v6);
  }
}

- (BOOL)storeUnretainedFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original error:(id *)error
{
  sub_100181CD0();
  v11 = v10;
  v12 = v6;
  v13 = [v7 _destinationURLForIdentity:v12];
  v14 = *(v7 + 16);
  path = [v13 path];
  v16 = [v14 fileExistsAtPath:path];

  if (!v16)
  {
    if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
    {
      v27 = sub_1001805BC(v17);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v13 lastPathComponent];
        sub_100181C00();
        sub_100181CB8();
        sub_100181C30();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
      }
    }

    v76 = v9;
    v35 = *(v7 + 16);
    v79 = 0;
    v36 = [v35 cplCopyItemAtURL:v11 toURL:v13 error:&v79];
    v37 = v79;
    v40 = v37;
    if (v36)
    {
      v26 = v37;
    }

    else
    {
      if (![*(v7 + 16) cplIsFileDoesNotExistError:v37])
      {
        v26 = v40;
        goto LABEL_28;
      }

      HIDWORD(v75) = v8;
      uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
      v49 = uRLByDeletingLastPathComponent;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v50 = sub_1001805BC(uRLByDeletingLastPathComponent);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          path2 = [v49 path];
          v80 = 138412290;
          v81 = path2;
          sub_100181CB8();
          sub_100181CAC();
          _os_log_impl(v52, v53, v54, v55, v56, v57);
        }
      }

      v58 = sub_100181C84(uRLByDeletingLastPathComponent, v42, v43, v44, v45, v46, v47, v48, v74, v75, v76, v77, v78);
      v26 = v78;

      if ((v58 & 1) == 0)
      {

        goto LABEL_28;
      }

      v59 = *(v7 + 16);
      v77 = v26;
      v60 = [v59 cplCopyItemAtURL:v11 toURL:v13 error:&v77];
      v61 = v77;

      v26 = v61;
      if (!v60)
      {
LABEL_28:
        v62 = [*(v7 + 16) cplIsFileExistsError:v26];
        if (v62)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v63 = sub_1001805BC(v62);
            if (sub_100181CE4(v63))
            {
              path3 = [v13 path];
              v80 = 138412290;
              v81 = path3;
              sub_100181C3C();
              v70 = 12;
LABEL_35:
              _os_log_impl(v65, v66, v67, v68, v69, v70);

              goto LABEL_36;
            }

            goto LABEL_36;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v71 = sub_1001805BC(v62);
          if (sub_100181CE4(v71))
          {
            path3 = [v13 path];
            sub_100181C00();
            v82 = v72;
            v83 = v26;
            sub_100181C3C();
            v70 = 32;
            goto LABEL_35;
          }

LABEL_36:

          goto LABEL_37;
        }

        LOBYTE(v16) = 0;
        goto LABEL_37;
      }
    }

    if (sub_100181C5C(v37, v38, v39, &unk_1002C4E20))
    {
      goto LABEL_17;
    }

    [*(v7 + 16) removeItemAtURL:v13 error:0];
    goto LABEL_28;
  }

  if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
  {
    v18 = sub_1001805BC(v17);
    if (sub_1000374B8(v18))
    {
      lastPathComponent2 = [v13 lastPathComponent];
      sub_100181C00();
      sub_100181C30();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
    }

    v26 = 0;
    goto LABEL_36;
  }

  v26 = 0;
LABEL_17:
  LOBYTE(v16) = 1;
LABEL_37:

  return v16;
}

- (BOOL)storeUnretainedData:(id)data identity:(id)identity isOriginal:(BOOL)original error:(id *)error
{
  sub_100181CD0();
  v11 = v10;
  v12 = v6;
  v13 = [v7 _destinationURLForIdentity:v12];
  v14 = *(v7 + 16);
  path = [v13 path];
  v16 = [v14 fileExistsAtPath:path];

  if (!v16)
  {
    if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
    {
      v27 = sub_1001805BC(v17);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v13 lastPathComponent];
        sub_100181C00();
        sub_100181CB8();
        sub_100181C30();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
      }
    }

    v74 = v9;
    v77 = 0;
    v35 = [v11 writeToURL:v13 options:1 error:&v77];
    v36 = v77;
    v39 = v36;
    if (v35)
    {
      v26 = v36;
    }

    else
    {
      if (![*(v7 + 16) cplIsFileDoesNotExistError:v36])
      {
        v26 = v39;
        goto LABEL_28;
      }

      HIDWORD(v73) = v8;
      uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
      v48 = uRLByDeletingLastPathComponent;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v49 = sub_1001805BC(uRLByDeletingLastPathComponent);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          path2 = [v48 path];
          v78 = 138412290;
          v79 = path2;
          sub_100181CB8();
          sub_100181CAC();
          _os_log_impl(v51, v52, v53, v54, v55, v56);
        }
      }

      v57 = sub_100181C84(uRLByDeletingLastPathComponent, v41, v42, v43, v44, v45, v46, v47, v72, v73, v74, v75, v76);
      v26 = v76;

      if ((v57 & 1) == 0)
      {

        goto LABEL_28;
      }

      v75 = v26;
      v58 = [v11 writeToURL:v13 options:1 error:&v75];
      v59 = v75;

      v26 = v59;
      if (!v58)
      {
LABEL_28:
        v60 = [*(v7 + 16) cplIsFileExistsError:v26];
        if (v60)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v61 = sub_1001805BC(v60);
            if (sub_100181CE4(v61))
            {
              path3 = [v13 path];
              sub_100181C00();
              sub_100181C3C();
              v68 = 22;
LABEL_35:
              _os_log_impl(v63, v64, v65, v66, v67, v68);

              goto LABEL_36;
            }

            goto LABEL_36;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v69 = sub_1001805BC(v60);
          if (sub_100181CE4(v69))
          {
            path3 = [v13 path];
            sub_100181C00();
            v80 = v70;
            v81 = v26;
            sub_100181C3C();
            v68 = 32;
            goto LABEL_35;
          }

LABEL_36:

          goto LABEL_37;
        }

        LOBYTE(v16) = 0;
        goto LABEL_37;
      }
    }

    if (sub_100181C5C(v36, v37, v38, &unk_1002C4E20))
    {
      goto LABEL_17;
    }

    [*(v7 + 16) removeItemAtURL:v13 error:0];
    goto LABEL_28;
  }

  if (*(v7 + 48) && (_CPLSilentLogging & 1) == 0)
  {
    v18 = sub_1001805BC(v17);
    if (sub_1000374B8(v18))
    {
      lastPathComponent2 = [v13 lastPathComponent];
      sub_100181C00();
      sub_100181C30();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
    }

    v26 = 0;
    goto LABEL_36;
  }

  v26 = 0;
LABEL_17:
  LOBYTE(v16) = 1;
LABEL_37:

  return v16;
}

- (BOOL)releaseFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = lCopy;
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_1001805BC(lCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [v6 lastPathComponent];
      sub_10000AF90();
      sub_1000374A0(&_mh_execute_header, v7, v9, "RELEASING %@", v13);
    }
  }

  if (!self->_temporarilyRetainedURLsAtTheStartOfTransaction)
  {
    v10 = [(NSCountedSet *)self->_temporarilyRetainedURLs mutableCopy];
    temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
    self->_temporarilyRetainedURLsAtTheStartOfTransaction = v10;
  }

  [(NSCountedSet *)self->_temporarilyRetainedURLs removeObject:v6];

  return 1;
}

- (BOOL)discardAllRetainedFileURLsWithError:(id *)error
{
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001805BC(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DISCARDING al retained resources", v8, 2u);
    }
  }

  if (!self->_temporarilyRetainedURLsAtTheStartOfTransaction)
  {
    v5 = [(NSCountedSet *)self->_temporarilyRetainedURLs mutableCopy];
    temporarilyRetainedURLsAtTheStartOfTransaction = self->_temporarilyRetainedURLsAtTheStartOfTransaction;
    self->_temporarilyRetainedURLsAtTheStartOfTransaction = v5;
  }

  [(NSCountedSet *)self->_temporarilyRetainedURLs removeAllObjects];
  return 1;
}

- (BOOL)deleteFileWithIdentity:(id)identity includingOriginal:(BOOL)original error:(id *)error
{
  identityCopy = identity;
  v9 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  v10 = [(NSCountedSet *)self->_temporarilyRetainedURLs containsObject:v9];
  if ((v10 & 1) == 0)
  {
    if (original)
    {
      v20 = 0;
    }

    else
    {
      LOBYTE(v53) = 0;
      v52 = 0;
      v5 = [(CPLBucketFileStorage *)self _getIsOriginal:&v53 markedForDelete:0 forDestinationURL:v9 error:&v52];
      v10 = v52;
      v19 = v10;
      if (!v5)
      {
        if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
        {
          v32 = sub_1001805BC(v10);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            lastPathComponent = [v9 lastPathComponent];
            sub_100181C18();
            sub_100181C30();
            goto LABEL_33;
          }

LABEL_34:
          v40 = 1;
          goto LABEL_22;
        }

LABEL_35:
        v40 = 1;
        goto LABEL_37;
      }

      if (v53)
      {
        if (!self->_trackAllStoresAndDeletes || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_21;
        }

        v41 = sub_1001805BC(v10);
        if (sub_1000374B8(v41))
        {
          lastPathComponent2 = [v9 lastPathComponent];
          sub_100181C18();
          sub_100181C30();
          _os_log_impl(v43, v44, v45, v46, v47, v48);
        }

        goto LABEL_7;
      }

      v20 = v10;
    }

    if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_1001805BC(v10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent3 = [v9 lastPathComponent];
        sub_100181C18();
        sub_100181C30();
        _os_log_impl(v23, v24, v25, v26, v27, v28);
      }
    }

    fileManager = self->_fileManager;
    v50 = v20;
    v30 = [(NSFileManager *)fileManager removeItemAtURL:v9 error:&v50];
    v19 = v50;

    if ((v30 & 1) == 0)
    {
      v31 = [(NSFileManager *)self->_fileManager cplIsFileDoesNotExistError:v19];
      if (!v31)
      {
        v40 = 0;
        goto LABEL_37;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v32 = sub_1001805BC(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          lastPathComponent = [v9 path];
          v53 = 138412290;
          v54 = lastPathComponent;
          sub_100181CAC();
LABEL_33:
          _os_log_impl(v34, v35, v36, v37, v38, v39);

          goto LABEL_34;
        }

        goto LABEL_34;
      }
    }

    goto LABEL_35;
  }

  if (!self->_trackAllStoresAndDeletes || (_CPLSilentLogging & 1) != 0)
  {
    v19 = 0;
    goto LABEL_21;
  }

  v11 = sub_1001805BC(v10);
  if (sub_1000374B8(v11))
  {
    lastPathComponent4 = [v9 lastPathComponent];
    sub_100181C18();
    sub_100181C30();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
  }

  v19 = 0;
LABEL_7:

LABEL_21:
  v51 = v19;
  v40 = [(CPLBucketFileStorage *)self _markURLForDelete:v9 error:&v51];
  v32 = v19;
  v19 = v51;
LABEL_22:

LABEL_37:
  return v40;
}

- (BOOL)markForDeleteFileWithIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v8 = [(CPLBucketFileStorage *)self _destinationURLForIdentity:identityCopy];
  v9 = v8;
  if (self->_trackAllStoresAndDeletes && (_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1001805BC(v8);
    if (sub_1000374B8(v10))
    {
      lastPathComponent = [v9 lastPathComponent];
      *v21 = 138412546;
      *&v21[4] = identityCopy;
      sub_1000033B4();
      *&v21[14] = v12;
      sub_100181C30();
      _os_log_impl(v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = [(CPLBucketFileStorage *)self _markURLForDelete:v9 error:error, *v21, *&v21[16]];

  return v19;
}

- (BOOL)resetWithError:(id *)error
{
  urlForFiles = self->_urlForFiles;
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];
  v8 = [(NSURL *)urlForFiles URLByAppendingPathExtension:uUIDString];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1001805BC(v9);
    if (sub_10000FAE0(v10))
    {
      path = [(NSURL *)self->_urlForFiles path];
      [v8 path];
      *buf = 138412546;
      v86 = path;
      v88 = v87 = 2112;
      sub_100181CC4();
      sub_100181C30();
      _os_log_impl(v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = [(NSFileManager *)self->_fileManager moveItemAtURL:self->_urlForFiles toURL:v8 error:error];
  if (v18)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_1001805BC(v18);
      if (sub_10000FAE0(v19))
      {
        path2 = [(NSURL *)self->_urlForFiles path];
        sub_100181C4C(path2, 5.7779e-34);
        sub_100181CC4();
        sub_1000374A0(v21, v22, v23, v24, v25);
      }
    }

    fileManager = self->_fileManager;
    v27 = self->_urlForFiles;
    v83 = 0;
    v28 = [(NSFileManager *)fileManager createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:&v83];
    v29 = v83;
    v30 = v29;
    if (v28)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v31 = sub_1001805BC(v29);
        if (sub_10000FAE0(v31))
        {
          path3 = [v8 path];
          sub_100181C4C(path3, 5.7779e-34);
          sub_100181CC4();
          sub_1000374A0(v33, v34, v35, v36, v37);
        }
      }

      v72 = v30;
      [(NSFileManager *)self->_fileManager setDelegate:self];
      v38 = self->_fileManager;
      v82 = 0;
      v39 = [(NSFileManager *)v38 removeItemAtURL:v8 error:&v82];
      v40 = v82;
      v41 = v40;
      if ((v39 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v42 = sub_1001805BC(v40);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          path4 = [v8 path];
          *buf = 138412546;
          v86 = path4;
          v87 = 2112;
          v88 = v41;
          sub_100181CC4();
          _os_log_impl(v44, v45, OS_LOG_TYPE_ERROR, v46, v47, 0x16u);
        }
      }

      v73 = v8;
      uRLByDeletingLastPathComponent = [(NSURL *)self->_urlForFiles URLByDeletingLastPathComponent];
      lastPathComponent = [(NSURL *)self->_urlForFiles lastPathComponent];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      selfCopy = self;
      v71 = uRLByDeletingLastPathComponent;
      obj = [(NSFileManager *)self->_fileManager enumeratorAtURL:uRLByDeletingLastPathComponent includingPropertiesForKeys:0 options:1 errorHandler:&stru_10027BEB8];
      v50 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v79;
        v74 = *v79;
        do
        {
          for (i = 0; i != v51; i = i + 1)
          {
            if (*v79 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v54 = *(*(&v78 + 1) + 8 * i);
            lastPathComponent2 = [v54 lastPathComponent];
            pathExtension = [lastPathComponent2 pathExtension];
            stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];
            if ([pathExtension length])
            {
              v58 = [stringByDeletingPathExtension isEqualToString:lastPathComponent];
              if (v58)
              {
                v59 = lastPathComponent;
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v60 = sub_1001805BC(v58);
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v86 = lastPathComponent2;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Found orphaned file cache to clean-up %@. Cleaning it up now", buf, 0xCu);
                  }
                }

                v61 = selfCopy->_fileManager;
                v77 = v41;
                v62 = [(NSFileManager *)v61 removeItemAtURL:v54 error:&v77];
                v63 = v77;

                if ((v62 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
                {
                  v65 = sub_1001805BC(v64);
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    path5 = [v54 path];
                    sub_100181C4C(path5, 5.778e-34);
                    v87 = 2112;
                    *(v67 + 14) = v63;
                    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to effectively remove %@: %@", buf, 0x16u);
                  }
                }

                v41 = v63;
                lastPathComponent = v59;
                v52 = v74;
              }
            }
          }

          v51 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
        }

        while (v51);
      }

      [(NSFileManager *)selfCopy->_fileManager setDelegate:0];
      v68 = 1;
      v30 = v72;
      v8 = v73;
    }

    else if (([(NSFileManager *)self->_fileManager cplIsFileExistsError:v29]& 1) != 0)
    {
      v68 = 1;
    }

    else if (error)
    {
      v69 = v30;
      v68 = 0;
      *error = v30;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  return v68;
}

- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l
{
  lCopy = l;
  v13 = 0;
  v5 = [lCopy getResourceValue:&v13 forKey:NSURLIsDirectoryKey error:0];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    bOOLValue = [v6 BOOLValue];
    if ((bOOLValue & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_1001805BC(bOOLValue);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [lCopy lastPathComponent];
        v14 = 138412290;
        v15 = lastPathComponent;
        sub_1000374A0(&_mh_execute_header, v9, v11, "Deleting %@", &v14);
      }
    }
  }

  return 1;
}

- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error removingItemAtURL:(id)l
{
  errorCopy = error;
  lCopy = l;
  v9 = lCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1001805BC(lCopy);
    if (sub_1000033C0(v10))
    {
      path = [v9 path];
      sub_10000AF90();
      sub_1000033B4();
      sub_100003548(&_mh_execute_header, v12, v13, "Failed to remove %@: %@", v14, v15, v16, v17);
    }
  }

  return 1;
}

@end