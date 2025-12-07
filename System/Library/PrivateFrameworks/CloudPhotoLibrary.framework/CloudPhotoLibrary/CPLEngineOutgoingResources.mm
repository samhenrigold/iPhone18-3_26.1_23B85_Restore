@interface CPLEngineOutgoingResources
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)identifier error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)shouldUploadResource:(id)resource;
- (BOOL)storeResourcesToUpload:(id)upload withUploadIdentifier:(id)identifier shouldCheckResources:(BOOL)resources error:(id *)error;
- (id)resourceTypesToUploadForChange:(id)change;
- (unint64_t)availableResourceSizeForUploadIdentifier:(id)identifier;
- (unint64_t)countOfOriginalImages;
- (unint64_t)countOfOriginalOthers;
- (unint64_t)countOfOriginalVideos;
- (unint64_t)sizeOfOriginalResourcesToUpload;
- (unint64_t)sizeOfResourcesToUpload;
@end

@implementation CPLEngineOutgoingResources

- (unint64_t)sizeOfResourcesToUpload
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  sizeOfResourcesToUpload = [platformObject sizeOfResourcesToUpload];

  return sizeOfResourcesToUpload;
}

- (unint64_t)sizeOfOriginalResourcesToUpload
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  sizeOfOriginalResourcesToUpload = [platformObject sizeOfOriginalResourcesToUpload];

  return sizeOfOriginalResourcesToUpload;
}

- (unint64_t)countOfOriginalImages
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfOriginalImages = [platformObject countOfOriginalImages];

  return countOfOriginalImages;
}

- (unint64_t)countOfOriginalVideos
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfOriginalVideos = [platformObject countOfOriginalVideos];

  return countOfOriginalVideos;
}

- (unint64_t)countOfOriginalOthers
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfOriginalOthers = [platformObject countOfOriginalOthers];

  return countOfOriginalOthers;
}

- (BOOL)openWithError:(id *)error
{
  v4.receiver = self;
  v4.super_class = CPLEngineOutgoingResources;
  return [(CPLEngineStorage *)&v4 openWithError:error];
}

- (BOOL)shouldUploadResource:(id)resource
{
  resourceCopy = resource;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject shouldUploadResource:resourceCopy];

  return v6;
}

- (unint64_t)availableResourceSizeForUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject availableResourceSizeForUploadIdentifier:identifierCopy];

  return v6;
}

- (id)resourceTypesToUploadForChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _pushContext = [changeCopy _pushContext];
  uploadIdentifier = [_pushContext uploadIdentifier];

  if (!uploadIdentifier)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStorageOSLogDomain_22429();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@ has no upload identifiers but has resources to upload", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineOutgoingResources.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:98 description:{@"%@ has no upload identifiers but has resources to upload", changeCopy}];

    abort();
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject resourceTypesToUploadForUploadIdentifier:uploadIdentifier];

  return v9;
}

- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)identifier error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  engineStore = [(CPLEngineStorage *)self engineStore];
  resourceStorage = [engineStore resourceStorage];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  platformObject = [(CPLEngineStorage *)self platformObject];
  platformObject2 = [platformObject resourcesToUploadForUploadIdentifier:identifierCopy];

  v11 = [platformObject2 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(platformObject2);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (([resourceStorage dropResourceForUpload:v15 error:error] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v17 = __CPLStorageOSLogDomain_22429();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = v15;
              _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Failed to drop resource for upload: %@", buf, 0xCu);
            }
          }

          v16 = 0;
          goto LABEL_15;
        }
      }

      v12 = [platformObject2 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v16 = [platformObject2 deleteResourcesToUploadWithUploadIdentifier:identifierCopy error:error];
LABEL_15:

  return v16;
}

- (BOOL)storeResourcesToUpload:(id)upload withUploadIdentifier:(id)identifier shouldCheckResources:(BOOL)resources error:(id *)error
{
  resourcesCopy = resources;
  v50 = *MEMORY[0x1E69E9840];
  uploadCopy = upload;
  identifierCopy = identifier;
  selfCopy = self;
  engineStore = [(CPLEngineStorage *)self engineStore];
  resourceStorage = [engineStore resourceStorage];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = uploadCopy;
  v14 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v38 = a2;
    v16 = *v44;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * i);
        identity = [v18 identity];
        fingerPrint = [identity fingerPrint];
        if (!fingerPrint || (v21 = fingerPrint, [identity fileUTI], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, !v22))
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v35 = __CPLStorageOSLogDomain_22429();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v48 = v18;
              _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_ERROR, "Resource should be fully formed here: %@", buf, 0xCu);
            }
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineOutgoingResources.m"];
          [currentHandler handleFailureInMethod:v38 object:selfCopy file:v37 lineNumber:46 description:{@"Resource should be fully formed here: %@", v18}];

          abort();
        }

        fileURL = [identity fileURL];

        if (fileURL)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v24 = __CPLStorageOSLogDomain_22429();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v48 = v18;
              _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEBUG, "Storing for upload: %@", buf, 0xCu);
            }
          }

          platformObject = [(CPLEngineStorage *)selfCopy platformObject];
          v26 = [platformObject storeResourceToUpload:v18 withUploadIdentifier:identifierCopy error:error];

          if (!v26)
          {
            goto LABEL_28;
          }

          v27 = [resourceStorage storeResourceForUpload:v18 shouldCheckResource:resourcesCopy error:error];

          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v42 = 0;
          v28 = [resourceStorage storeResourceCopyForUpload:v18 error:&v42];
          v29 = v42;
          v30 = v29;
          if (v28)
          {
            platformObject2 = [(CPLEngineStorage *)selfCopy platformObject];
            v32 = [platformObject2 storeResourceToUpload:v18 withUploadIdentifier:identifierCopy error:error];

            if (!v32)
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (![v29 isCPLErrorWithCode:27])
            {
              if (error)
              {
                v33 = v30;
                *error = v30;
              }

LABEL_28:
LABEL_29:
              LOBYTE(v32) = 0;
              goto LABEL_30;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      LOBYTE(v32) = 1;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v32) = 1;
  }

LABEL_30:

  return v32;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v26 = 0;
  LODWORD(count) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount discardedResources:&v26 error:error];
  v12 = v26;

  if (count)
  {
    if ([v12 count])
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      resourceStorage = [engineStore resourceStorage];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (![resourceStorage dropResourceForUpload:*(*(&v22 + 1) + 8 * i) error:{error, v22}])
            {
              v20 = 0;
              goto LABEL_14;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v20 = 1;
LABEL_14:
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end