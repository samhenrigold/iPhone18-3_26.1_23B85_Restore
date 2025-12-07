@interface CPLTrashedAssetExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change;
- (CPLTrashedAssetExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier maximumCount:(unint64_t)count;
@end

@implementation CPLTrashedAssetExtractionStep

- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change
{
  changeCopy = change;
  v4 = [changeCopy isAssetChange] && (objc_msgSend(changeCopy, "inTrash") & 1) != 0;

  return v4;
}

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__13768;
  v61 = __Block_byref_object_dispose__13769;
  v62 = 0;
  maximumCount = self->_maximumCount;
  if (maximumCount >= count)
  {
    maximumCount = count;
  }

  v37 = maximumCount;
  selfCopy = self;
  storage = [(CPLBatchExtractionStep *)self storage];
  v12 = objc_opt_class();
  scopeIdentifier = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v14 = [storage allChangesWithClass:v12 scopeIdentifier:scopeIdentifier trashed:1];

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v52[3] = size;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __87__CPLTrashedAssetExtractionStep_extractToBatch_maximumCount_maximumResourceSize_error___block_invoke;
  v44[3] = &unk_1E861DCD8;
  v38 = storage;
  v45 = v38;
  v47 = v52;
  v15 = batchCopy;
  v46 = v15;
  v48 = &v53;
  v49 = &v63;
  v50 = &v57;
  v51 = v37;
  v16 = MEMORY[0x1E128EBA0](v44);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v14;
  v17 = [obj countByEnumeratingWithState:&v40 objects:v69 count:16];
  if (v17)
  {
    v18 = *v41;
    v19 = v16 + 2;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v40 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        if ([v21 isFullRecord])
        {
          masterScopedIdentifier = [v21 masterScopedIdentifier];
          if (!masterScopedIdentifier)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v31 = __CPLGenericOSLogDomain();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v68 = v21;
                _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_ERROR, "%@ should have a master identifier", buf, 0xCu);
              }
            }

            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
            [currentHandler handleFailureInMethod:a2 object:selfCopy file:v33 lineNumber:635 description:{@"%@ should have a master identifier", v21}];

            abort();
          }

          v24 = [v38 changeWithScopedIdentifier:masterScopedIdentifier];
          v25 = v24;
          if (v24)
          {
            isFullRecord = [v24 isFullRecord];
            v27 = *v19;
            if (isFullRecord)
            {
              v27(v16, v21, v25);
LABEL_16:

              goto LABEL_17;
            }
          }

          else
          {
            v27 = *v19;
          }

          v27(v16, v21, 0);
          goto LABEL_16;
        }

        v16[2](v16, v21, 0);
LABEL_17:
        v28 = ([v15 isFull] & 1) == 0 && *(v64 + 24) == 1 && v54[3] < v37;
        objc_autoreleasePoolPop(v22);
        if (!v28)
        {
          goto LABEL_24;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v40 objects:v69 count:16];
    }

    while (v17);
  }

LABEL_24:

  if (*(v64 + 24) == 1 && (v54[3] || [v15 batchCanLowerQuota]))
  {
    [v15 setFull:1];
  }

  v29 = *(v64 + 24);
  if (error && (v64[3] & 1) == 0)
  {
    *error = v58[5];
    v29 = *(v64 + 24);
  }

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  return v29 & 1;
}

void __87__CPLTrashedAssetExtractionStep_extractToBatch_maximumCount_maximumResourceSize_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 effectiveResourceSizeToUploadUsingStorage:*(a1 + 32)];
  if (v6)
  {
    v7 += [v6 effectiveResourceSizeToUploadUsingStorage:*(a1 + 32)];
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  if (v7 > v9)
  {
    v10 = [*(a1 + 40) batch];
    v11 = [v10 count];

    if (v11)
    {
      v12 = *(a1 + 40);
LABEL_11:
      [v12 setFull:1];
      goto LABEL_15;
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 24);
  }

  v13 = v9 >= v7;
  v14 = v9 - v7;
  if (!v13)
  {
    v14 = 0;
  }

  *(v8 + 24) = v14;
  if (v6)
  {
    v12 = *(a1 + 40);
    if ((*(*(*(a1 + 56) + 8) + 24) + 2) > *(a1 + 80))
    {
      goto LABEL_11;
    }

    [v12 addChange:v6 fromStorage:*(a1 + 32)];
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 72) + 8);
    obj = *(v16 + 40);
    v17 = [v15 removeChange:v6 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v17;
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 40) addChange:v5 fromStorage:*(a1 + 32)];
    v18 = *(a1 + 32);
    v19 = *(*(a1 + 72) + 8);
    v21 = *(v19 + 40);
    v20 = [v18 removeChange:v5 error:&v21];
    objc_storeStrong((v19 + 40), v21);
    *(*(*(a1 + 64) + 8) + 24) = v20;
    ++*(*(*(a1 + 56) + 8) + 24);
  }

LABEL_15:
}

- (CPLTrashedAssetExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier maximumCount:(unint64_t)count
{
  storageCopy = storage;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = CPLTrashedAssetExtractionStep;
  v11 = [(CPLBatchExtractionStep *)&v18 initWithStorage:storageCopy scopeIdentifier:identifierCopy];
  v12 = v11;
  if (v11)
  {
    if (count <= 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Can't extract masters with no room for assets", v17, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
      [currentHandler handleFailureInMethod:a2 object:v12 file:v16 lineNumber:577 description:@"Can't extract masters with no room for assets"];

      abort();
    }

    v11->_maximumCount = count;
  }

  return v12;
}

@end