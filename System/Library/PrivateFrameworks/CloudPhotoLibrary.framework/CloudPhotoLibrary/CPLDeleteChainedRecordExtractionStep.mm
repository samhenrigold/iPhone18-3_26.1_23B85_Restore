@interface CPLDeleteChainedRecordExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change;
- (CPLDeleteChainedRecordExtractionStep)initWithStorage:(id)storage class:(Class)class classDescription:(id)description scopeIdentifier:(id)identifier maximumCount:(unint64_t)count;
- (id)shortDescription;
@end

@implementation CPLDeleteChainedRecordExtractionStep

- (id)shortDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Deleted(%@, chained)", self->_classDescription];

  return v2;
}

- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change
{
  changeCopy = change;
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([changeCopy isDelete] & 1) != 0;

  return v4;
}

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  v89 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  maximumCount = self->_maximumCount;
  if (maximumCount >= count)
  {
    maximumCount = count;
  }

  v58 = batchCopy;
  v59 = maximumCount;
  storage = [(CPLBatchExtractionStep *)self storage];
  selfCopy = self;
  recordClass = self->_recordClass;
  scopeIdentifier = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v64 = storage;
  v13 = [storage allChangesWithClass:recordClass scopeIdentifier:scopeIdentifier changeType:1024];

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v56 = 0;
    v18 = *v82;
    v51 = *v82;
    while (2)
    {
      v19 = 0;
      v52 = v16;
      do
      {
        if (*v82 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v81 + 1) + 8 * v19);
        scopedIdentifier = [v20 scopedIdentifier];
        if (([v14 containsObject:scopedIdentifier] & 1) == 0)
        {
          v54 = v19;
          v55 = scopedIdentifier;
          v60 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
          v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v20, 0}];
          v57 = v17;
          while ([v22 count])
          {
            v23 = v22;
            context = objc_autoreleasePoolPush();
            [v60 addObjectsFromArray:v22];
            v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v66 = v23;
            v24 = [v66 countByEnumeratingWithState:&v77 objects:v87 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v78;
              v63 = *v78;
              do
              {
                v27 = 0;
                v65 = v25;
                do
                {
                  if (*v78 != v26)
                  {
                    objc_enumerationMutation(v66);
                  }

                  scopedIdentifier2 = [*(*(&v77 + 1) + 8 * v27) scopedIdentifier];
                  if (([v14 containsObject:scopedIdentifier2] & 1) == 0)
                  {
                    [v14 addObject:scopedIdentifier2];
                    v75 = 0u;
                    v76 = 0u;
                    v73 = 0u;
                    v74 = 0u;
                    v67 = scopedIdentifier2;
                    v29 = [v64 allChangesWithClass:selfCopy->_recordClass relatedScopedIdentifier:scopedIdentifier2];
                    v30 = [v29 countByEnumeratingWithState:&v73 objects:v86 count:16];
                    if (v30)
                    {
                      v31 = v30;
                      v32 = *v74;
                      do
                      {
                        for (i = 0; i != v31; ++i)
                        {
                          if (*v74 != v32)
                          {
                            objc_enumerationMutation(v29);
                          }

                          v34 = *(*(&v73 + 1) + 8 * i);
                          if ([v34 isDelete])
                          {
                            scopedIdentifier3 = [v34 scopedIdentifier];
                            v36 = [v14 containsObject:scopedIdentifier3];

                            if ((v36 & 1) == 0)
                            {
                              [v22 addObject:v34];
                            }
                          }
                        }

                        v31 = [v29 countByEnumeratingWithState:&v73 objects:v86 count:16];
                      }

                      while (v31);
                    }

                    v26 = v63;
                    v25 = v65;
                    scopedIdentifier2 = v67;
                  }

                  ++v27;
                }

                while (v27 != v25);
                v25 = [v66 countByEnumeratingWithState:&v77 objects:v87 count:16];
              }

              while (v25);
            }

            objc_autoreleasePoolPop(context);
          }

          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          reverseObjectEnumerator = [v60 reverseObjectEnumerator];
          v38 = [reverseObjectEnumerator countByEnumeratingWithState:&v69 objects:v85 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v70;
            while (2)
            {
              v41 = 0;
              v42 = v56;
              v17 = v57 + 1;
              v57 += v39;
              do
              {
                if (*v70 != v40)
                {
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                v43 = *(*(&v69 + 1) + 8 * v41);
                [v58 addChange:v43 fromStorage:v64];
                v68 = v42;
                v44 = [v64 removeChange:v43 error:&v68];
                v45 = v68;

                if (v44)
                {
                  v46 = v17 >= v59;
                }

                else
                {
                  v46 = 1;
                }

                if (v46)
                {
                  v56 = v45;
                  goto LABEL_43;
                }

                ++v41;
                ++v17;
                v42 = v45;
              }

              while (v39 != v41);
              v56 = v45;
              v39 = [reverseObjectEnumerator countByEnumeratingWithState:&v69 objects:v85 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }
          }

          v44 = 1;
          v17 = v57;
LABEL_43:

          if (v44)
          {
            v47 = v17 >= v59;
          }

          else
          {
            v47 = 1;
          }

          if (v47)
          {

            goto LABEL_54;
          }

          v18 = v51;
          v16 = v52;
          v19 = v54;
          scopedIdentifier = v55;
        }

        ++v19;
      }

      while (v19 != v16);
      v16 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
    v56 = 0;
  }

  v44 = 1;
LABEL_54:

  if (v44 && v17 >= v59)
  {
    [v58 setFull:1];
  }

  if (error)
  {
    v48 = v44;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    *error = v56;
  }

  return v44;
}

- (CPLDeleteChainedRecordExtractionStep)initWithStorage:(id)storage class:(Class)class classDescription:(id)description scopeIdentifier:(id)identifier maximumCount:(unint64_t)count
{
  v30 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  descriptionCopy = description;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = CPLDeleteChainedRecordExtractionStep;
  v16 = [(CPLBatchExtractionStep *)&v25 initWithStorage:storageCopy scopeIdentifier:identifierCopy];
  if (v16)
  {
    if ([(objc_class *)class relatedRecordClass]!= class)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          relatedRecordClass = [(objc_class *)class relatedRecordClass];
          *buf = 138412546;
          classCopy = class;
          v28 = 2112;
          v29 = relatedRecordClass;
          v22 = relatedRecordClass;
          _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Trying to extract new %@ chained but their related record class is %@", buf, 0x16u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
      [currentHandler handleFailureInMethod:a2 object:v16 file:v24 lineNumber:282 description:{@"Trying to extract new %@ chained but their related record class is %@", class, -[objc_class relatedRecordClass](class, "relatedRecordClass")}];

      abort();
    }

    objc_storeStrong(&v16->_recordClass, class);
    v17 = [descriptionCopy copy];
    classDescription = v16->_classDescription;
    v16->_classDescription = v17;

    v16->_maximumCount = count;
  }

  return v16;
}

@end