@interface MFIMAPCompoundDownload
- (BOOL)isComplete;
- (id)subdownloads;
- (unint64_t)bytesFetched;
- (unint64_t)expectedLength;
- (unint64_t)lengthOfDataBeforeLineConversion;
- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache;
- (void)addSubdownload:(id)subdownload;
- (void)dealloc;
- (void)processResults;
- (void)removeSubdownload:(id)subdownload;
@end

@implementation MFIMAPCompoundDownload

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPCompoundDownload;
  [(MFIMAPDownload *)&v2 dealloc];
}

- (id)subdownloads
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  if (self->_subdownloads)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_subdownloads];
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
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:&v8 count:1];
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
  v18 = *MEMORY[0x277D85DE8];
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
      v10 = v9;
      v11 = *v14;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) addCommandsToPipeline:pipelineCopy withCache:{cacheCopy, v13}];
        if ([pipelineCopy isFull])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v10)
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
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_subdownloads)
  {
    return 1;
  }

  [(MFIMAPCompoundDownload *)self mf_lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_subdownloads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) isComplete])
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  [(MFIMAPCompoundDownload *)self mf_unlock];
  return v8;
}

- (unint64_t)expectedLength
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_subdownloads)
  {
    return 0;
  }

  [(MFIMAPCompoundDownload *)self mf_lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_subdownloads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v3);
      }

      expectedLength = [*(*(&v12 + 1) + 8 * v8) expectedLength];
      v10 = 0xFFFFFFFFLL;
      if (expectedLength == 0xFFFFFFFFLL)
      {
        break;
      }

      v6 += expectedLength;
      if (v5 == ++v8)
      {
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v10 = v6;
        if (v5)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
  return v10;
}

- (unint64_t)bytesFetched
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_subdownloads)
  {
    return 0;
  }

  [(MFIMAPCompoundDownload *)self mf_lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_subdownloads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) bytesFetched];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
  return v6;
}

- (unint64_t)lengthOfDataBeforeLineConversion
{
  v15 = *MEMORY[0x277D85DE8];
  subdownloads = self->_subdownloads;
  if (!subdownloads)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = subdownloads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) lengthOfDataBeforeLineConversion];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end