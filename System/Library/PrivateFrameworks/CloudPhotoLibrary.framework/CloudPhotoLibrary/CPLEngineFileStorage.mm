@interface CPLEngineFileStorage
+ (id)platformImplementationProtocol;
- (BOOL)_compactStorageIncludeOriginals:(BOOL)originals desiredFreeSpace:(unint64_t *)space error:(id *)error;
- (BOOL)_fixupIdentity:(id)identity fileURL:(id)l data:(id)data error:(id *)error;
- (BOOL)_recoverFromCrashWithRecoveryHandler:(id)handler error:(id *)error;
- (BOOL)addDeleteFlagToFileAtURL:(id)l error:(id *)error;
- (BOOL)checkIsEmpty;
- (BOOL)closeWithError:(id *)error;
- (BOOL)commitFileWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)compactStorageIncludeOriginals:(BOOL)originals error:(id *)error;
- (BOOL)deleteFileWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteFileWithIdentity:(id)identity includingOriginal:(BOOL)original error:(id *)error;
- (BOOL)discardAllRetainedFileURLsWithError:(id *)error;
- (BOOL)discardUncommittedFileWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)discardUncommittedFileWithIdentity:(id)identity error:(id *)error;
- (BOOL)doWrite:(id)write error:(id *)error;
- (BOOL)hasCrashMarker;
- (BOOL)hasFileWithIdentifier:(id)identifier;
- (BOOL)hasFileWithIdentity:(id)identity;
- (BOOL)openWithFileRecoveryHandler:(id)handler error:(id *)error;
- (BOOL)openWithRecoveryHandler:(id)handler error:(id *)error;
- (BOOL)releaseFileURL:(id)l error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)storeData:(id)data identifier:(id)identifier needsCommit:(BOOL *)commit error:(id *)error;
- (BOOL)storeData:(id)data identity:(id)identity isOriginal:(BOOL)original needsCommit:(BOOL *)commit error:(id *)error;
- (BOOL)storeFileAtURL:(id)l identifier:(id)identifier moveIfPossible:(BOOL)possible needsCommit:(BOOL *)commit error:(id *)error;
- (BOOL)storeFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original moveIfPossible:(BOOL)possible needsCommit:(BOOL *)commit error:(id *)error;
- (BOOL)storeUnretainedData:(id)data identifier:(id)identifier error:(id *)error;
- (BOOL)storeUnretainedData:(id)data identity:(id)identity isOriginal:(BOOL)original error:(id *)error;
- (BOOL)storeUnretainedFileAtURL:(id)l identifier:(id)identifier error:(id *)error;
- (BOOL)storeUnretainedFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original error:(id *)error;
- (BOOL)trackAllStoresAndDeletes;
- (BOOL)tryToFreeDiskSpace:(unint64_t)space actuallyFreedSpace:(unint64_t *)freedSpace includeOriginals:(BOOL)originals error:(id *)error;
- (CPLEngineFileStorage)initWithBaseURL:(id)l;
- (id)_identityForIdentifier:(id)identifier;
- (id)fileEnumeratorIncludingPropertiesForKeys:(id)keys errorHandler:(id)handler;
- (id)retainFileURLForIdentifier:(id)identifier error:(id *)error;
- (id)retainFileURLForIdentity:(id)identity resourceType:(unint64_t)type error:(id *)error;
- (void)_addIdentityToUncommittedFiles:(id)files;
- (void)_removeIdentityFromUncommittedFiles:(id)files;
- (void)checkFileSizeForIdentity:(id)identity;
- (void)doRead:(id)read;
- (void)setTrackAllStoresAndDeletes:(BOOL)deletes;
- (void)setTrackAllStoresAndDeletesUntilEndOfTransaction:(BOOL)transaction;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineFileStorage

- (void)writeTransactionDidSucceed
{
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  [platformObject writeTransactionDidSucceed];
}

- (id)retainFileURLForIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  v7 = [(CPLEngineFileStorage *)self retainFileURLForIdentity:v6 resourceType:0 error:error];

  return v7;
}

- (BOOL)hasFileWithIdentifier:(id)identifier
{
  selfCopy = self;
  v4 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(selfCopy) = [(CPLEngineFileStorage *)selfCopy hasFileWithIdentity:v4];

  return selfCopy;
}

- (BOOL)storeUnretainedData:(id)data identifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  v9 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self storeUnretainedData:dataCopy identity:v9 isOriginal:0 error:error];

  return error;
}

- (BOOL)storeUnretainedFileAtURL:(id)l identifier:(id)identifier error:(id *)error
{
  lCopy = l;
  v9 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self storeUnretainedFileAtURL:lCopy identity:v9 isOriginal:0 error:error];

  return error;
}

- (BOOL)deleteFileWithIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self deleteFileWithIdentity:v6 error:error];

  return error;
}

- (BOOL)discardUncommittedFileWithIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self discardUncommittedFileWithIdentity:v6 error:error];

  return error;
}

- (BOOL)commitFileWithIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self commitFileWithIdentity:v6 error:error];

  return error;
}

- (BOOL)storeData:(id)data identifier:(id)identifier needsCommit:(BOOL *)commit error:(id *)error
{
  dataCopy = data;
  v11 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self storeData:dataCopy identity:v11 isOriginal:0 needsCommit:commit error:error];

  return error;
}

- (BOOL)storeFileAtURL:(id)l identifier:(id)identifier moveIfPossible:(BOOL)possible needsCommit:(BOOL *)commit error:(id *)error
{
  possibleCopy = possible;
  lCopy = l;
  v13 = [(CPLEngineFileStorage *)self _identityForIdentifier:identifier];
  LOBYTE(error) = [(CPLEngineFileStorage *)self storeFileAtURL:lCopy identity:v13 isOriginal:0 moveIfPossible:possibleCopy needsCommit:commit error:error];

  return error;
}

- (id)_identityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(CPLResourceIdentity);
  [(CPLResourceIdentity *)v4 setFingerPrint:identifierCopy];

  [(CPLResourceIdentity *)v4 setFileUTI:@"public.data"];

  return v4;
}

- (BOOL)openWithFileRecoveryHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CPLEngineFileStorage_openWithFileRecoveryHandler_error___block_invoke;
  v9[3] = &unk_1E861BE38;
  v10 = handlerCopy;
  v7 = handlerCopy;
  LOBYTE(error) = [(CPLEngineFileStorage *)self openWithRecoveryHandler:v9 error:error];

  return error;
}

uint64_t __58__CPLEngineFileStorage_openWithFileRecoveryHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fingerPrint];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

- (BOOL)addDeleteFlagToFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  LOBYTE(error) = [platformObject addDeleteFlagToFileAtURL:lCopy error:error];

  return error;
}

- (void)writeTransactionDidFail
{
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  [platformObject writeTransactionDidFail];
}

- (BOOL)checkIsEmpty
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  fileEnumerator = [(CPLEngineFileStorage *)self fileEnumerator];
  v3 = [fileEnumerator countByEnumeratingWithState:v7 objects:v10 count:16];
  if (v3 && (_CPLSilentLogging & 1) == 0)
  {
    v4 = **(&v7[0] + 1);
    v5 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Resource cache contains at least one item: %@", buf, 0xCu);
    }
  }

  return v3 == 0;
}

- (id)fileEnumeratorIncludingPropertiesForKeys:(id)keys errorHandler:(id)handler
{
  handlerCopy = handler;
  keysCopy = keys;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v9 = [platformObject fileEnumeratorIncludingPropertiesForKeys:keysCopy errorHandler:handlerCopy];

  return v9;
}

- (BOOL)tryToFreeDiskSpace:(unint64_t)space actuallyFreedSpace:(unint64_t *)freedSpace includeOriginals:(BOOL)originals error:(id *)error
{
  originalsCopy = originals;
  v27 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      spaceCopy2 = space;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Trying to free %llu bytes on disk", buf, 0xCu);
    }
  }

  v13 = [(CPLEngineFileStorage *)self _compactStorageIncludeOriginals:originalsCopy desiredFreeSpace:&spaceCopy error:error];
  if (v13)
  {
    if (space < spaceCopy)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLStorageOSLogDomain_2026();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "We should not have less space on disk after compaction", buf, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v23 lineNumber:563 description:@"We should not have less space on disk after compaction"];

      abort();
    }

    *freedSpace = space - spaceCopy;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *freedSpace;
        *buf = 134217984;
        spaceCopy2 = v15;
        v16 = "Actually freed %llu bytes";
        v17 = v14;
        v18 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&dword_1DC05A000, v17, v18, v16, buf, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = *error;
      *buf = 138412290;
      spaceCopy2 = v19;
      v16 = "Unable to free space on disk: %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

LABEL_14:
  }

  return v13;
}

- (BOOL)compactStorageIncludeOriginals:(BOOL)originals error:(id *)error
{
  originalsCopy = originals;
  v14 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Compacting", &v12, 2u);
    }
  }

  v8 = [(CPLEngineFileStorage *)self _compactStorageIncludeOriginals:originalsCopy desiredFreeSpace:0 error:error];
  if (!v8 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *error;
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Error compacting: %@", &v12, 0xCu);
    }
  }

  return v8;
}

- (BOOL)_compactStorageIncludeOriginals:(BOOL)originals desiredFreeSpace:(unint64_t *)space error:(id *)error
{
  originalsCopy = originals;
  v45[1] = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2046;
  v38 = __Block_byref_object_dispose__2047;
  v39 = 0;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v25 = *MEMORY[0x1E695DB50];
  v45[0] = *MEMORY[0x1E695DB50];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __79__CPLEngineFileStorage__compactStorageIncludeOriginals_desiredFreeSpace_error___block_invoke;
  v33[3] = &unk_1E861BE10;
  v33[4] = &v34;
  v33[5] = &v40;
  v9 = [platformObject fileEnumeratorIncludingPropertiesForKeys:v8 errorHandler:v33];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v44 count:16];
  if (v11)
  {
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if (originalsCopy || ([*(*(&v29 + 1) + 8 * i) isOriginal] & 1) == 0)
        {
          if ([v14 isMarkedForDelete])
          {
            if (space)
            {
              v28 = 0;
              v15 = [v14 getResourceValue:&v28 forKey:v25 error:error];
              v16 = v28;
              v17 = v16;
              *(v41 + 24) = v15;
              if (v15)
              {
                unsignedLongLongValue = [v16 unsignedLongLongValue];
              }

              else
              {
                unsignedLongLongValue = 0;
              }
            }

            else
            {
              unsignedLongLongValue = 0;
            }

            if (*(v41 + 24) != 1)
            {
              goto LABEL_26;
            }

            platformObject2 = [(CPLEngineFileStorage *)self platformObject];
            identity = [v14 identity];
            v21 = [platformObject2 deleteFileWithIdentity:identity includingOriginal:originalsCopy error:error];
            *(v41 + 24) = v21;

            if (((space != 0) & v41[3]) == 1)
            {
              if (*space <= unsignedLongLongValue)
              {
                *space = 0;
                goto LABEL_26;
              }

              *space -= unsignedLongLongValue;
            }

            else if (!*(v41 + 24))
            {
              goto LABEL_26;
            }
          }

          else if ((v41[3] & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v44 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  if (v41[3])
  {
    v22 = 1;
  }

  else
  {
    v22 = 0;
    if (error)
    {
      v23 = v35[5];
      if (v23)
      {
        *error = v23;
        v22 = *(v41 + 24);
      }
    }
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  return v22 & 1;
}

uint64_t __79__CPLEngineFileStorage__compactStorageIncludeOriginals_desiredFreeSpace_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Error accessing %@ file: %@", &v10, 0x16u);
      }
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);

  return v8;
}

- (BOOL)resetWithError:(id *)error
{
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  LOBYTE(error) = [platformObject resetWithError:error];

  return error;
}

- (BOOL)discardAllRetainedFileURLsWithError:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Discarding all URLs for upload", &v15, 2u);
    }
  }

  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v7 = [platformObject discardAllRetainedFileURLsWithError:error];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        v9 = "All URLs were discarded successfully";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEBUG;
        v12 = 2;
LABEL_12:
        _os_log_impl(&dword_1DC05A000, v10, v11, v9, &v15, v12);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *error;
      v15 = 138412290;
      v16 = v13;
      v9 = "Unable to discard all URLs: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_12;
    }

LABEL_13:
  }

  return v7;
}

- (BOOL)releaseFileURL:(id)l error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      path = [lCopy path];
      v18 = 138412290;
      v19 = path;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Releasing %@", &v18, 0xCu);
    }
  }

  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v10 = [platformObject releaseFileURL:lCopy error:error];

  if (v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v18) = 0;
        v12 = "URL was released successfully";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEBUG;
        v15 = 2;
LABEL_12:
        _os_log_impl(&dword_1DC05A000, v13, v14, v12, &v18, v15);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = *error;
      v18 = 138412290;
      v19 = v16;
      v12 = "Unable to release URL: %@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 12;
      goto LABEL_12;
    }

LABEL_13:
  }

  return v10;
}

- (id)retainFileURLForIdentity:(id)identity resourceType:(unint64_t)type error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [CPLResource shortDescriptionForResourceType:type];
      v16 = 138412546;
      v17 = identityCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Retaining URL for %@ (%@)", &v16, 0x16u);
    }
  }

  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v12 = [platformObject retainFileURLForIdentity:identityCopy resourceType:type error:error];

  if (v12 && (_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      path = [v12 path];
      v16 = 138412290;
      v17 = path;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEBUG, "Retained URL: %@", &v16, 0xCu);
    }
  }

  return v12;
}

- (void)checkFileSizeForIdentity:(id)identity
{
  identityCopy = identity;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  [platformObject checkFileSizeForIdentity:identityCopy];
}

- (BOOL)hasFileWithIdentity:(id)identity
{
  identityCopy = identity;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v6 = [platformObject hasFileWithIdentity:identityCopy];

  return v6;
}

- (BOOL)storeUnretainedData:(id)data identity:(id)identity isOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  identityCopy = identity;
  dataCopy = data;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  LOBYTE(error) = [platformObject storeUnretainedData:dataCopy identity:identityCopy isOriginal:originalCopy error:error];

  return error;
}

- (BOOL)storeUnretainedFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  identityCopy = identity;
  lCopy = l;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  LOBYTE(error) = [platformObject storeUnretainedFileAtURL:lCopy identity:identityCopy isOriginal:originalCopy error:error];

  return error;
}

- (BOOL)deleteFileWithIdentity:(id)identity includingOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  v23 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if (self->_deleteImmediately)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138412290;
        v22 = identityCopy;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Deleting %@", &v21, 0xCu);
      }
    }

    platformObject = [(CPLEngineFileStorage *)self platformObject];
    v11 = [platformObject deleteFileWithIdentity:identityCopy includingOriginal:originalCopy error:error];

    if ((v11 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLStorageOSLogDomain_2026();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *error;
          v21 = 138412290;
          v22 = v13;
          v14 = "Unable to delete: %@";
LABEL_19:
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, v14, &v21, 0xCu);
          goto LABEL_20;
        }

        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138412290;
        v22 = identityCopy;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEBUG, "Marking %@ for deletion", &v21, 0xCu);
      }
    }

    platformObject2 = [(CPLEngineFileStorage *)self platformObject];
    v17 = [platformObject2 markForDeleteFileWithIdentity:identityCopy error:error];

    if ((v17 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLStorageOSLogDomain_2026();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v19 = *error;
          v21 = 138412290;
          v22 = v19;
          v14 = "Unable to mark for delete: %@";
          goto LABEL_19;
        }

LABEL_20:
      }

LABEL_21:
      v18 = 0;
      goto LABEL_22;
    }
  }

  v18 = 1;
LABEL_22:

  return v18;
}

- (BOOL)discardUncommittedFileWithIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v7 = [(CPLEngineFileStorage *)self deleteFileWithIdentity:identityCopy error:error];
  if (v7)
  {
    [(CPLEngineFileStorage *)self _removeIdentityFromUncommittedFiles:identityCopy];
  }

  return v7;
}

- (BOOL)storeData:(id)data identity:(id)identity isOriginal:(BOOL)original needsCommit:(BOOL *)commit error:(id *)error
{
  originalCopy = original;
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identityCopy = identity;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      *&buf[4] = [dataCopy length];
      *&buf[12] = 2112;
      *&buf[14] = identityCopy;
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "Storing %lu bytes with identity %@", buf, 0x16u);
    }
  }

  if (![(CPLEngineFileStorage *)self _fixupIdentity:identityCopy fileURL:0 data:dataCopy error:error])
  {
    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v26 = 0;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__CPLEngineFileStorage_storeData_identity_isOriginal_needsCommit_error___block_invoke;
  v22[3] = &unk_1E8620A38;
  v24 = buf;
  v22[4] = self;
  v16 = identityCopy;
  v23 = v16;
  v17 = [platformObject storeData:dataCopy identity:v16 isOriginal:originalCopy needsCommit:commit onNewFile:v22 error:error];

  if (v17)
  {
    [v16 setAvailable:1];
    [v16 setFileURL:0];
  }

  else if (*(*&buf[8] + 24) == 1)
  {
    [(CPLEngineFileStorage *)self _removeIdentityFromUncommittedFiles:v16];
  }

  _Block_object_dispose(buf, 8);
  if (v17)
  {
    v18 = 1;
  }

  else
  {
LABEL_12:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *error;
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Error storing data: %@", buf, 0xCu);
      }
    }

    v18 = 0;
  }

  return v18;
}

uint64_t __72__CPLEngineFileStorage_storeData_identity_isOriginal_needsCommit_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) _addIdentityToUncommittedFiles:*(a1 + 40)];
  return 1;
}

- (BOOL)storeFileAtURL:(id)l identity:(id)identity isOriginal:(BOOL)original moveIfPossible:(BOOL)possible needsCommit:(BOOL *)commit error:(id *)error
{
  possibleCopy = possible;
  originalCopy = original;
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identityCopy = identity;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = lCopy;
      *&buf[12] = 2112;
      *&buf[14] = identityCopy;
      _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEBUG, "Storing %@ with identity %@", buf, 0x16u);
    }
  }

  if (![(CPLEngineFileStorage *)self _fixupIdentity:identityCopy fileURL:lCopy data:0 error:error])
  {
    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v28 = 0;
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__CPLEngineFileStorage_storeFileAtURL_identity_isOriginal_moveIfPossible_needsCommit_error___block_invoke;
  v24[3] = &unk_1E8620A38;
  v26 = buf;
  v24[4] = self;
  v18 = identityCopy;
  v25 = v18;
  v19 = [platformObject storeFileAtURL:lCopy identity:v18 isOriginal:originalCopy moveIfPossible:possibleCopy needsCommit:commit onNewFile:v24 error:error];

  if (v19)
  {
    [v18 setAvailable:1];
    [v18 setFileURL:0];
  }

  else if (*(*&buf[8] + 24) == 1)
  {
    [(CPLEngineFileStorage *)self _removeIdentityFromUncommittedFiles:v18];
  }

  _Block_object_dispose(buf, 8);
  if (v19)
  {
    v20 = 1;
  }

  else
  {
LABEL_12:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *error;
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Error storing file: %@", buf, 0xCu);
      }
    }

    v20 = 0;
  }

  return v20;
}

uint64_t __92__CPLEngineFileStorage_storeFileAtURL_identity_isOriginal_moveIfPossible_needsCommit_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) _addIdentityToUncommittedFiles:*(a1 + 40)];
  return 1;
}

- (BOOL)_fixupIdentity:(id)identity fileURL:(id)l data:(id)data error:(id *)error
{
  identityCopy = identity;
  lCopy = l;
  fileUTI = [identityCopy fileUTI];
  if (!fileUTI)
  {
    pathExtension = [lCopy pathExtension];
    if (![pathExtension length])
    {
      fileURL = [identityCopy fileURL];
      pathExtension2 = [fileURL pathExtension];

      pathExtension = pathExtension2;
    }

    v14 = [CPLResourceIdentity fileUTIForExtension:pathExtension];
    [identityCopy setFileUTI:v14];
  }

  fingerPrint = [identityCopy fingerPrint];
  if (!fingerPrint)
  {
    v16 = [CPLErrors incorrectParametersErrorForParameter:@"fingerprint"];
    if (error)
    {
      v16 = v16;
      *error = v16;
    }
  }

  return fingerPrint != 0;
}

- (void)_removeIdentityFromUncommittedFiles:(id)files
{
  v19 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  identityForStorage = [filesCopy identityForStorage];
  v6 = [(NSMutableArray *)self->_uncommittedFiles indexOfObject:identityForStorage];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = filesCopy;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Removing %@ from the list of uncommitted files", buf, 0xCu);
      }
    }

    [(NSMutableArray *)self->_uncommittedFiles removeObjectAtIndex:v7];
    if (![(NSMutableArray *)self->_uncommittedFiles count])
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      crashMarkerURL = self->_crashMarkerURL;
      v16 = 0;
      v15 = [defaultManager removeItemAtURL:crashMarkerURL error:&v16];
      v9 = v16;

      if (v15 & 1) != 0 || (_CPLSilentLogging)
      {
        goto LABEL_17;
      }

      path = __CPLStorageOSLogDomain_2026();
      if (!os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v18 = v9;
      v11 = "Unable to remove crash recovery file: %@";
      v12 = path;
LABEL_15:
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
LABEL_16:

      goto LABEL_17;
    }

    if (([(NSMutableArray *)self->_uncommittedFiles writeToURL:self->_crashMarkerURL atomically:1]& 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_2026();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        goto LABEL_18;
      }

      path = [(NSURL *)self->_crashMarkerURL path];
      *buf = 138412290;
      v18 = path;
      v11 = "Unable to store the crash recovery file to %@";
      v12 = v9;
      goto LABEL_15;
    }
  }

LABEL_18:
}

- (void)_addIdentityToUncommittedFiles:(id)files
{
  v11 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  identityForStorage = [filesCopy identityForStorage];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = filesCopy;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Adding %@ to the list of uncommitted files", &v9, 0xCu);
    }
  }

  [(NSMutableArray *)self->_uncommittedFiles addObject:identityForStorage];
  if (([(NSMutableArray *)self->_uncommittedFiles writeToURL:self->_crashMarkerURL atomically:1]& 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      path = [(NSURL *)self->_crashMarkerURL path];
      v9 = 138412290;
      v10 = path;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Unable to store the crash recovery file to %@", &v9, 0xCu);
    }
  }
}

- (BOOL)hasCrashMarker
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_crashMarkerURL path];
  v5 = [defaultManager fileExistsAtPath:path];

  return v5;
}

- (BOOL)closeWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Opening", &v14, 2u);
    }
  }

  platformObject = [(CPLEngineFileStorage *)self platformObject];
  v7 = [platformObject closeWithError:error];

  if (v7)
  {
    if ([(NSMutableArray *)self->_uncommittedFiles count]&& (_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(NSMutableArray *)self->_uncommittedFiles count];
        v14 = 134217984;
        v15 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Storage still has %lu uncommitted files", &v14, 0xCu);
      }
    }

    [(NSMutableArray *)self->_uncommittedFiles removeAllObjects];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        path = [(NSURL *)self->_baseURL path];
        v14 = 138412290;
        v15 = path;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Closed storage at %@", &v14, 0xCu);
      }

LABEL_17:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *error;
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Error closing: %@", &v14, 0xCu);
    }

    goto LABEL_17;
  }

  return v7;
}

- (BOOL)openWithRecoveryHandler:(id)handler error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Opening", &v19, 2u);
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager createDirectoryAtURL:self->_baseURL withIntermediateDirectories:1 attributes:0 error:error];

  if (v9)
  {
    platformObject = [(CPLEngineFileStorage *)self platformObject];
    v11 = [platformObject openWithError:error];

    if (v11)
    {
      if ([(CPLEngineFileStorage *)self _recoverFromCrashWithRecoveryHandler:handlerCopy error:error])
      {
        if (_CPLSilentLogging)
        {
          v14 = 1;
          goto LABEL_20;
        }

        v12 = __CPLStorageOSLogDomain_2026();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          path = [(NSURL *)self->_baseURL path];
          v19 = 138412290;
          v20 = path;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Opened storage at %@", &v19, 0xCu);
        }

        v14 = 1;
        goto LABEL_19;
      }

LABEL_21:
      v14 = 0;
      goto LABEL_20;
    }

    if (_CPLSilentLogging)
    {
      goto LABEL_21;
    }

    v12 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      platformObject2 = [(CPLEngineFileStorage *)self platformObject];
      v17 = *error;
      v19 = 138412546;
      v20 = platformObject2;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ failed to open: %@", &v19, 0x16u);
    }
  }

  else
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_21;
    }

    v12 = __CPLStorageOSLogDomain_2026();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      baseURL = self->_baseURL;
      v19 = 138412290;
      v20 = baseURL;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Unable to create folder %@", &v19, 0xCu);
    }
  }

  v14 = 0;
LABEL_19:

LABEL_20:
  return v14;
}

- (BOOL)_recoverFromCrashWithRecoveryHandler:(id)handler error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E695DF70] arrayWithContentsOfURL:self->_crashMarkerURL];
  if (v7)
  {
    v8 = &propertiesForChangeType__facesProperties;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_2026();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v48 = [v7 count];
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Found %lu uncommitted files in storage", buf, 0xCu);
      }
    }

    errorCopy = error;
    v39 = v7;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v44;
      v13 = off_1E861A000;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(obj);
          }

          errorCopy = [(__objc2_class *)v13[94] identityFromStoredIdentity:*(*(&v43 + 1) + 8 * i), errorCopy];
          if (handlerCopy)
          {
            if (!handlerCopy[2](handlerCopy, errorCopy))
            {
              goto LABEL_27;
            }

            if ((v8[51] & 1) == 0)
            {
              v16 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v48 = errorCopy;
                _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEBUG, "Will keep %@", buf, 0xCu);
              }
            }
          }

          v42 = 0;
          v17 = [(CPLEngineFileStorage *)self deleteFileWithIdentity:errorCopy error:&v42];
          v18 = v42;
          if (v17)
          {
            if ((v8[51] & 1) == 0)
            {
              v19 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v48 = errorCopy;
                v20 = v19;
                v21 = OS_LOG_TYPE_DEBUG;
                v22 = "Cleaned up %@";
                goto LABEL_24;
              }

              goto LABEL_25;
            }
          }

          else
          {
            uncommittedFiles = self->_uncommittedFiles;
            [errorCopy identityForStorage];
            v41 = v18;
            v24 = handlerCopy;
            v25 = v11;
            v26 = v12;
            selfCopy = self;
            v28 = v13;
            v30 = v29 = v8;
            [(NSMutableArray *)uncommittedFiles addObject:v30];

            v8 = v29;
            v13 = v28;
            self = selfCopy;
            v12 = v26;
            v11 = v25;
            handlerCopy = v24;
            v18 = v41;
            if ((v8[51] & 1) == 0)
            {
              v19 = __CPLStorageOSLogDomain_2026();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v48 = errorCopy;
                v20 = v19;
                v21 = OS_LOG_TYPE_ERROR;
                v22 = "Unable to clean up %@";
LABEL_24:
                _os_log_impl(&dword_1DC05A000, v20, v21, v22, buf, 0xCu);
              }

LABEL_25:
            }
          }

LABEL_27:
        }

        v11 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v11);
    }

    if ([(NSMutableArray *)self->_uncommittedFiles count])
    {
      v31 = 1;
      [(NSMutableArray *)self->_uncommittedFiles writeToURL:self->_crashMarkerURL atomically:1];
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v33 = [defaultManager removeItemAtURL:self->_crashMarkerURL error:errorCopy];

      if (v33)
      {
        v31 = 1;
      }

      else
      {
        if ((v8[51] & 1) == 0)
        {
          v34 = __CPLStorageOSLogDomain_2026();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            path = [(NSURL *)self->_crashMarkerURL path];
            v36 = *errorCopy;
            *buf = 138412546;
            v48 = path;
            v49 = 2112;
            v50 = v36;
            _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_ERROR, "Unable to delete crash marker at %@. Can't open the database: %@", buf, 0x16u);
          }
        }

        v31 = 0;
      }
    }

    v7 = v39;
  }

  else
  {
    v31 = 1;
  }

  return v31;
}

- (BOOL)doWrite:(id)write error:(id *)error
{
  writeCopy = write;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2046;
  v19 = __Block_byref_object_dispose__2047;
  v20 = 0;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CPLEngineFileStorage_doWrite_error___block_invoke;
  block[3] = &unk_1E861BDE8;
  v13 = &v21;
  v8 = writeCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_barrier_sync(lock, block);
  v9 = *(v22 + 24);
  if (error && (v22[3] & 1) == 0)
  {
    *error = v16[5];
    v9 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9 & 1;
}

void __38__CPLEngineFileStorage_doWrite_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (void)doRead:(id)read
{
  readCopy = read;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CPLEngineFileStorage_doRead___block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = readCopy;
  v6 = readCopy;
  dispatch_sync(lock, block);
}

void __31__CPLEngineFileStorage_doRead___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (CPLEngineFileStorage)initWithBaseURL:(id)l
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v30.receiver = self;
  v30.super_class = CPLEngineFileStorage;
  v6 = [(CPLEngineFileStorage *)&v30 init];
  if (v6)
  {
    v7 = [lCopy copy];
    baseURL = v6->_baseURL;
    v6->_baseURL = v7;

    v9 = dispatch_queue_create("com.apple.cpl.filestorage", MEMORY[0x1E69E96A8]);
    lock = v6->_lock;
    v6->_lock = v9;

    logDomain = v6->_logDomain;
    v6->_logDomain = @"engine.filestorage";

    *&v6->_keepOriginals = 256;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    uncommittedFiles = v6->_uncommittedFiles;
    v6->_uncommittedFiles = v12;

    v14 = [(NSURL *)v6->_baseURL URLByAppendingPathComponent:@".fileStorageCrashMarker.plist" isDirectory:0];
    crashMarkerURL = v6->_crashMarkerURL;
    v6->_crashMarkerURL = v14;

    v16 = +[CPLPlatform currentPlatform];
    v17 = [v16 newPlatformImplementationForObject:v6];
    platformObject = v6->_platformObject;
    v6->_platformObject = v17;

    if (!v6->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v25 = __CPLStorageOSLogDomain_2026();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          *buf = 138412290;
          v32 = v26;
          v27 = v26;
          _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineFileStorage.m"];
      [currentHandler handleFailureInMethod:a2 object:v6 file:v29 lineNumber:120 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }

    _markerURLForTrackAllStoresAndDeletes = [(CPLEngineFileStorage *)v6 _markerURLForTrackAllStoresAndDeletes];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [_markerURLForTrackAllStoresAndDeletes path];
    v22 = [defaultManager fileExistsAtPath:path];

    if (v22)
    {
      platformObject = [(CPLEngineFileStorage *)v6 platformObject];
      [platformObject setTrackAllStoresAndDeletes:1];
    }
  }

  return v6;
}

- (void)setTrackAllStoresAndDeletesUntilEndOfTransaction:(BOOL)transaction
{
  trackAllStoresAndDeletesUntilEndOfTransaction = self->_trackAllStoresAndDeletesUntilEndOfTransaction;
  if (trackAllStoresAndDeletesUntilEndOfTransaction)
  {
    if (transaction)
    {
      return;
    }

    self->_trackAllStoresAndDeletesUntilEndOfTransaction = 0;
    if (!self->_shouldResetPlatformTrackAllStoresAndDeletes)
    {
      return;
    }

    self->_shouldResetPlatformTrackAllStoresAndDeletes = 0;
  }

  else
  {
    if (!transaction)
    {
      return;
    }

    platformObject = [(CPLEngineFileStorage *)self platformObject];
    self->_shouldResetPlatformTrackAllStoresAndDeletes = [platformObject trackAllStoresAndDeletes] ^ 1;

    self->_trackAllStoresAndDeletesUntilEndOfTransaction = 1;
  }

  platformObject2 = [(CPLEngineFileStorage *)self platformObject];
  [platformObject2 setTrackAllStoresAndDeletes:!trackAllStoresAndDeletesUntilEndOfTransaction];
}

- (BOOL)trackAllStoresAndDeletes
{
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  trackAllStoresAndDeletes = [platformObject trackAllStoresAndDeletes];

  return trackAllStoresAndDeletes;
}

- (void)setTrackAllStoresAndDeletes:(BOOL)deletes
{
  deletesCopy = deletes;
  _markerURLForTrackAllStoresAndDeletes = [(CPLEngineFileStorage *)self _markerURLForTrackAllStoresAndDeletes];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  date = defaultManager;
  if (deletesCopy)
  {
    path = [_markerURLForTrackAllStoresAndDeletes path];
    v8 = [date fileExistsAtPath:path];

    if (v8)
    {
      goto LABEL_6;
    }

    date = [MEMORY[0x1E695DF00] date];
    v9 = [CPLDateFormatter stringFromDate:date];
    [v9 writeToURL:_markerURLForTrackAllStoresAndDeletes atomically:1 encoding:4 error:0];
  }

  else
  {
    [defaultManager removeItemAtURL:_markerURLForTrackAllStoresAndDeletes error:0];
  }

LABEL_6:
  platformObject = [(CPLEngineFileStorage *)self platformObject];
  [platformObject setTrackAllStoresAndDeletes:deletesCopy];
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

@end