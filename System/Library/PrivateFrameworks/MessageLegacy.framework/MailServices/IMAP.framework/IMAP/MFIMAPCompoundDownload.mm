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
  v3.receiver = self;
  v3.super_class = MFIMAPCompoundDownload;
  [(MFIMAPDownload *)&v3 dealloc];
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
  [(MFIMAPCompoundDownload *)self mf_lock];
  subdownloads = self->_subdownloads;
  if (subdownloads)
  {
    if ([(NSMutableArray *)subdownloads indexOfObjectIdenticalTo:subdownload]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_subdownloads addObject:subdownload];
    }
  }

  else
  {
    self->_subdownloads = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:&subdownloadCopy count:1];
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (void)removeSubdownload:(id)subdownload
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  [(NSMutableArray *)self->_subdownloads removeObjectIdenticalTo:subdownload];

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_subdownloads && ([pipeline isFull] & 1) == 0)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subdownloads = self->_subdownloads;
    v8 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subdownloads);
        }

        [*(*(&v12 + 1) + 8 * v11) addCommandsToPipeline:pipeline withCache:cache];
        if ([pipeline isFull])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  subdownloads = self->_subdownloads;
  v4 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(subdownloads);
        }

        if (![*(*(&v10 + 1) + 8 * i) isComplete])
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v5 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  subdownloads = self->_subdownloads;
  v4 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(subdownloads);
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
        v5 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  subdownloads = self->_subdownloads;
  v4 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(subdownloads);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) bytesFetched];
      }

      v5 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v14 = *MEMORY[0x277D85DE8];
  subdownloads = self->_subdownloads;
  if (!subdownloads)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(subdownloads);
      }

      v5 += [*(*(&v9 + 1) + 8 * i) lengthOfDataBeforeLineConversion];
    }

    v4 = [(NSMutableArray *)subdownloads countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

@end