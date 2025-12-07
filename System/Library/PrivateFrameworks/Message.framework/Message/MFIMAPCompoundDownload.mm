@interface MFIMAPCompoundDownload
- (BOOL)isComplete;
- (BOOL)isSuccessful;
- (id)subdownloads;
- (unint64_t)bytesFetched;
- (unint64_t)expectedLength;
- (unint64_t)lengthOfDataBeforeLineConversion;
- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache;
- (void)addSubdownload:(id)subdownload;
- (void)processResults;
- (void)removeSubdownload:(id)subdownload;
@end

@implementation MFIMAPCompoundDownload

- (id)subdownloads
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  if (self->_subdownloads)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_subdownloads];
  }

  else
  {
    v3 = 0;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];

  return v3;
}

- (void)addSubdownload:(id)subdownload
{
  subdownloadCopy = subdownload;
  v8 = subdownloadCopy;
  [(MFIMAPCompoundDownload *)self mf_lock];
  subdownloads = self->_subdownloads;
  if (subdownloads)
  {
    if ([(NSMutableArray *)subdownloads indexOfObjectIdenticalTo:subdownloadCopy]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_subdownloads addObject:subdownloadCopy];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v8 count:1];
    v7 = self->_subdownloads;
    self->_subdownloads = v6;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (void)removeSubdownload:(id)subdownload
{
  subdownloadCopy = subdownload;
  [(MFIMAPCompoundDownload *)self mf_lock];
  [(NSMutableArray *)self->_subdownloads removeObjectIdenticalTo:subdownloadCopy];
  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache
{
  v18 = *MEMORY[0x1E69E9840];
  pipelineCopy = pipeline;
  cacheCopy = cache;
  if (self->_subdownloads && ([pipelineCopy isFull] & 1) == 0)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_subdownloads;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (([v12 isComplete] & 1) == 0)
        {
          [v12 addCommandsToPipeline:pipelineCopy withCache:cacheCopy];
        }

        if ([pipelineCopy isFull])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    [(MFIMAPCompoundDownload *)self mf_unlock];
  }
}

- (void)processResults
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  [(NSMutableArray *)self->_subdownloads makeObjectsPerformSelector:a2];

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (BOOL)isComplete
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_subdownloads)
  {
    return 1;
  }

  [(MFIMAPCompoundDownload *)self mf_lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_subdownloads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v9 + 1) + 8 * i) isComplete] & 1) == 0)
        {
          v7 = 0;
          goto LABEL_12;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_12:

  [(MFIMAPCompoundDownload *)self mf_unlock];
  return v7;
}

- (BOOL)isSuccessful
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  subdownloads = self->_subdownloads;
  if (subdownloads)
  {
    v4 = [(NSMutableArray *)subdownloads ef_all:&__block_literal_global_33];
  }

  else
  {
    v4 = 1;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
  return v4;
}

- (unint64_t)expectedLength
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_subdownloads)
  {
    return 0;
  }

  [(MFIMAPCompoundDownload *)self mf_lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_subdownloads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v12;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      expectedLength = [*(*(&v11 + 1) + 8 * v7) expectedLength];
      v9 = 0xFFFFFFFFLL;
      if (expectedLength == 0xFFFFFFFFLL)
      {
        break;
      }

      v5 += expectedLength;
      if (v4 == ++v7)
      {
        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v9 = v5;
        if (v4)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
  return v9;
}

- (unint64_t)bytesFetched
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_subdownloads)
  {
    return 0;
  }

  [(MFIMAPCompoundDownload *)self mf_lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_subdownloads;
  v4 = 0;
  v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) bytesFetched];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
  return v4;
}

- (unint64_t)lengthOfDataBeforeLineConversion
{
  v14 = *MEMORY[0x1E69E9840];
  subdownloads = self->_subdownloads;
  if (!subdownloads)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = subdownloads;
  v4 = 0;
  v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) lengthOfDataBeforeLineConversion];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

@end