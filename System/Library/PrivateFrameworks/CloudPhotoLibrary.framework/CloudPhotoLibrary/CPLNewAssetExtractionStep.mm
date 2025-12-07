@interface CPLNewAssetExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change;
- (CPLNewAssetExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier maximumCount:(unint64_t)count;
@end

@implementation CPLNewAssetExtractionStep

- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change
{
  changeCopy = change;
  v4 = [changeCopy isAssetChange] && (objc_msgSend(changeCopy, "isFullRecord") & 1) != 0;

  return v4;
}

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  v119 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 1;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__13768;
  v110 = __Block_byref_object_dispose__13769;
  v111 = 0;
  maximumCount = self->_maximumCount;
  if (maximumCount >= count)
  {
    maximumCount = count;
  }

  v66 = maximumCount;
  selfCopy = self;
  storage = [(CPLBatchExtractionStep *)self storage];
  sizeCopy = size;
  v56 = a2;
  v11 = objc_opt_class();
  scopeIdentifier = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v13 = [storage allChangesWithClass:v11 scopeIdentifier:scopeIdentifier changeType:0];

  v72 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v102 objects:v118 count:16];
  if (v14)
  {
    v67 = *v103;
    do
    {
      v15 = 0;
      v68 = v14;
      do
      {
        if (*v103 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v102 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        scopedIdentifier = [v16 scopedIdentifier];
        if (([v72 containsObject:scopedIdentifier] & 1) == 0)
        {
          [v72 addObject:scopedIdentifier];
          masterScopedIdentifier = [v16 masterScopedIdentifier];
          v70 = masterScopedIdentifier;
          if (masterScopedIdentifier && ((-[NSMutableSet containsObject:](selfCopy->_alreadySeenMasterScopedIdentifiers, "containsObject:", masterScopedIdentifier) & 1) == 0 ? ([storage changeWithScopedIdentifier:v70], v71 = objc_claimAutoreleasedReturnValue()) : (v71 = 0), -[NSMutableSet addObject:](selfCopy->_alreadySeenMasterScopedIdentifiers, "addObject:", v70), v71))
          {
            if ([v71 isFullRecord])
            {
              v97 = 0;
              v98 = &v97;
              v99 = 0x2020000000;
              v21 = v71;
              v100 = [v71 effectiveResourceSizeToUploadUsingStorage:storage];
              v60 = v66 - 1;
              if (v66 == 1)
              {
                [(NSMutableSet *)selfCopy->_alreadySeenMasterScopedIdentifiers removeObject:v70];
                [batchCopy setFull:1];
                v19 = 2;
                v66 = 1;
              }

              else
              {
                v93 = 0;
                v94 = &v93;
                v95 = 0x2020000000;
                v96 = 0;
                v22 = objc_alloc(MEMORY[0x1E695DF70]);
                if (v60 >= 0x64)
                {
                  v23 = 100;
                }

                else
                {
                  v23 = v66 - 1;
                }

                v24 = [v22 initWithCapacity:v23];
                v84[0] = MEMORY[0x1E69E9820];
                v84[1] = 3221225472;
                v84[2] = __83__CPLNewAssetExtractionStep_extractToBatch_maximumCount_maximumResourceSize_error___block_invoke;
                v84[3] = &unk_1E861DCB0;
                v88 = &v106;
                v89 = &v112;
                v85 = v72;
                v59 = v24;
                v86 = v59;
                v90 = &v97;
                v61 = storage;
                v87 = v61;
                v91 = &v93;
                v92 = v66 - 1;
                v64 = MEMORY[0x1E128EBA0](v84);
                if ((v64)[2](v64, scopedIdentifier, v16))
                {
                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v25 = [v61 allChangesWithClass:objc_opt_class() relatedScopedIdentifier:v70];
                  v26 = [v25 countByEnumeratingWithState:&v80 objects:v117 count:16];
                  if (v26)
                  {
                    v27 = *v81;
                    while (2)
                    {
                      for (i = 0; i != v26; ++i)
                      {
                        if (*v81 != v27)
                        {
                          objc_enumerationMutation(v25);
                        }

                        v29 = *(*(&v80 + 1) + 8 * i);
                        scopedIdentifier2 = [v29 scopedIdentifier];
                        if (([scopedIdentifier2 isEqual:scopedIdentifier] & 1) == 0 && ((v64)[2](v64, scopedIdentifier2, v29) & 1) == 0)
                        {

                          goto LABEL_40;
                        }
                      }

                      v26 = [v25 countByEnumeratingWithState:&v80 objects:v117 count:16];
                      if (v26)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_40:
                }

                if (*(v113 + 24) != 1)
                {
                  goto LABEL_66;
                }

                if (v94[3] <= v60)
                {
                  goto LABEL_45;
                }

                batch = [batchCopy batch];
                v34 = [batch count] == 0;

                if (!v34)
                {
LABEL_47:
                  [(NSMutableSet *)selfCopy->_alreadySeenMasterScopedIdentifiers removeObject:v70];
                  [batchCopy setFull:1];
                  goto LABEL_66;
                }

                [v59 removeLastObject];
LABEL_45:
                v35 = v98[3];
                v36 = sizeCopy;
                if (v35 > sizeCopy)
                {
                  batch2 = [batchCopy batch];
                  v38 = [batch2 count] == 0;

                  if (!v38)
                  {
                    goto LABEL_47;
                  }

                  v35 = v98[3];
                  v36 = sizeCopy;
                }

                v39 = v36 >= v35;
                v40 = v36 - v35;
                if (!v39)
                {
                  v40 = 0;
                }

                sizeCopy = v40;
                [batchCopy addChange:v71 fromStorage:v61];
                v41 = (v107 + 5);
                v79 = v107[5];
                v42 = [v61 removeChange:v71 error:&v79];
                objc_storeStrong(v41, v79);
                *(v113 + 24) = v42;
                if (!v42)
                {
                  goto LABEL_66;
                }

                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v43 = v59;
                v44 = [v43 countByEnumeratingWithState:&v75 objects:v116 count:16];
                if (v44)
                {
                  v45 = *v76;
LABEL_54:
                  v46 = 0;
                  while (1)
                  {
                    if (*v76 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = *(*(&v75 + 1) + 8 * v46);
                    [batchCopy addChange:v47 fromStorage:v61];
                    v48 = (v107 + 5);
                    v74 = v107[5];
                    LOBYTE(v47) = [v61 removeChange:v47 error:&v74];
                    objc_storeStrong(v48, v74);
                    *(v113 + 24) = v47;
                    if ((v47 & 1) == 0)
                    {
                      break;
                    }

                    if (v44 == ++v46)
                    {
                      v44 = [v43 countByEnumeratingWithState:&v75 objects:v116 count:16];
                      if (v44)
                      {
                        goto LABEL_54;
                      }

                      break;
                    }
                  }
                }

                if (v113[3])
                {
                  if (v94[3] >= v60 || sizeCopy >> 11 <= 4)
                  {
                    [batchCopy setFull:1];
                    goto LABEL_66;
                  }

                  v50 = [v43 count];
                  v66 = v60 - v50;
                  if (v60 == v50)
                  {
                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v53 = __CPLGenericOSLogDomain();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_1DC05A000, v53, OS_LOG_TYPE_ERROR, "Batch should have at least one place left", buf, 2u);
                      }
                    }

                    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
                    [currentHandler handleFailureInMethod:v56 object:selfCopy file:v55 lineNumber:543 description:@"Batch should have at least one place left"];

                    abort();
                  }

                  v19 = 0;
                }

                else
                {
LABEL_66:
                  v19 = 2;
                }

                _Block_object_dispose(&v93, 8);
                v21 = v71;
              }

              _Block_object_dispose(&v97, 8);
LABEL_69:

              goto LABEL_70;
            }
          }

          else
          {
            v71 = 0;
          }

          [batchCopy addChange:v16 fromStorage:storage];
          v31 = (v107 + 5);
          v101 = v107[5];
          v32 = [storage removeChange:v16 error:&v101];
          objc_storeStrong(v31, v101);
          *(v113 + 24) = v32;
          if (v32)
          {
            v21 = v71;
            if (v66 != 1)
            {
              --v66;
              v19 = 3;
              goto LABEL_69;
            }

            [batchCopy setFull:1];
            v66 = 0;
          }

          else
          {
            --v66;
          }

          v19 = 2;
          v21 = v71;
          goto LABEL_69;
        }

        v19 = 3;
LABEL_70:

        objc_autoreleasePoolPop(v17);
        if (v19 != 3 && v19)
        {
          goto LABEL_77;
        }

        ++v15;
      }

      while (v15 != v68);
      v14 = [obj countByEnumeratingWithState:&v102 objects:v118 count:16];
    }

    while (v14);
  }

LABEL_77:

  v51 = *(v113 + 24);
  if (error && (v113[3] & 1) == 0)
  {
    *error = v107[5];
    v51 = *(v113 + 24);
  }

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v112, 8);

  return v51 & 1;
}

uint64_t __83__CPLNewAssetExtractionStep_extractToBatch_maximumCount_maximumResourceSize_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isDelete])
  {
    v5 = 1;
  }

  else
  {
    if ([v4 isFullRecord] & 1) != 0 || (objc_msgSend(v4, "hasChangeType:", 2))
    {
      v6 = [v4 scopedIdentifier];
      [*(a1 + 32) addObject:v6];
      [*(a1 + 40) addObject:v4];
      *(*(*(a1 + 72) + 8) + 24) += [v4 effectiveResourceSizeToUploadUsingStorage:*(a1 + 48)];
      v5 = ++*(*(*(a1 + 80) + 8) + 24) <= *(a1 + 88);
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = +[CPLRecordChange descriptionForChangeType:](CPLRecordChange, "descriptionForChangeType:", [v4 changeType]);
      v6 = [v7 initWithFormat:@"Update to an asset (%@) instead of add while its master is new", v8];

      v9 = [CPLErrors invalidClientCacheErrorWithReason:v6];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v5 = 1;
    }
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);

  return v5 & v12;
}

- (CPLNewAssetExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier maximumCount:(unint64_t)count
{
  storageCopy = storage;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = CPLNewAssetExtractionStep;
  v11 = [(CPLBatchExtractionStep *)&v20 initWithStorage:storageCopy scopeIdentifier:identifierCopy];
  v12 = v11;
  if (v11)
  {
    if (count <= 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Can't extract masters with no room for assets", v19, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
      [currentHandler handleFailureInMethod:a2 object:v12 file:v18 lineNumber:390 description:@"Can't extract masters with no room for assets"];

      abort();
    }

    v11->_maximumCount = count;
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    alreadySeenMasterScopedIdentifiers = v12->_alreadySeenMasterScopedIdentifiers;
    v12->_alreadySeenMasterScopedIdentifiers = v13;
  }

  return v12;
}

@end