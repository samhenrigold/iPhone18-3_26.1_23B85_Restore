@interface CPLDropAllRecordsExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
@end

@implementation CPLDropAllRecordsExtractionStep

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = [(CPLBatchExtractionStep *)self storage:batch];
  storage = [(CPLBatchExtractionStep *)self storage];
  scopeIdentifier = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v11 = [storage allChangesWithScopeIdentifier:scopeIdentifier];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v26;
    while (2)
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v25 + 1) + 8 * v17);
        v24 = v18;
        v20 = [v8 removeChange:v19 error:&v24];
        v15 = v24;

        if (!v20)
        {

          if (error)
          {
            v21 = v15;
            v22 = 0;
            *error = v15;
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_15;
        }

        ++v17;
        v18 = v15;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

  v22 = 1;
LABEL_15:

  return v22;
}

@end