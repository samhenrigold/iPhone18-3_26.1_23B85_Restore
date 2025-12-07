@interface CPLByClassExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
- (CPLByClassExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier description:(id)description class:(Class)class maximumCount:(unint64_t)count query:(void *)query;
@end

@implementation CPLByClassExtractionStep

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  storage = [(CPLBatchExtractionStep *)self storage];
  if (self->_maximumCount >= count)
  {
    maximumCount = count;
  }

  else
  {
    maximumCount = self->_maximumCount;
  }

  (self->_query)(self);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = v42 = 0u;
  v37 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v37)
  {
    errorCopy = error;
    v14 = 0;
    v15 = 0;
    v16 = *v40;
    v32 = batchCopy;
    v33 = v13;
    v35 = storage;
    sizeCopy = size;
    while (2)
    {
      v17 = 0;
      v18 = v14 + 1;
      v31 = v14 + v37;
      v19 = v15;
      do
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v39 + 1) + 8 * v17);
        if ([v20 supportsResources] && objc_msgSend(v20, "hasChangeType:", 8))
        {
          v21 = [v20 effectiveResourceSizeToUploadUsingStorage:storage];
          if (v21 > sizeCopy)
          {
            batch = [batchCopy batch];
            v34 = [batch count];

            batchCopy = v32;
            v13 = v33;
            if (v34)
            {
              v15 = v19;
              storage = v35;
LABEL_27:
              [batchCopy setFull:1];
              goto LABEL_28;
            }
          }

          v23 = sizeCopy - v21;
          if (sizeCopy < v21)
          {
            v23 = 0;
          }

          sizeCopy = v23;
          storage = v35;
        }

        [batchCopy addChange:v20 fromStorage:storage];
        v38 = v19;
        v24 = [storage removeChange:v20 error:&v38];
        v15 = v38;

        if (!v24)
        {

          if (errorCopy)
          {
            v26 = v15;
            v27 = 0;
            *errorCopy = v15;
          }

          else
          {
            v27 = 0;
          }

          v28 = v33;
          goto LABEL_29;
        }

        if (v18 >= maximumCount)
        {
          goto LABEL_27;
        }

        ++v17;
        ++v18;
        v19 = v15;
      }

      while (v37 != v17);
      v25 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      v14 = v31;
      v37 = v25;
      if (v25)
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

LABEL_28:

  v28 = v13;
  v27 = 1;
LABEL_29:

  return v27;
}

- (CPLByClassExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier description:(id)description class:(Class)class maximumCount:(unint64_t)count query:(void *)query
{
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = CPLByClassExtractionStep;
  v15 = [(CPLBatchExtractionStep *)&v19 initWithStorage:storage scopeIdentifier:identifier];
  if (v15)
  {
    v16 = [descriptionCopy copy];
    queryDescription = v15->_queryDescription;
    v15->_queryDescription = v16;

    v15->_extractionClass = class;
    v15->_maximumCount = count;
    v15->_query = query;
  }

  return v15;
}

@end