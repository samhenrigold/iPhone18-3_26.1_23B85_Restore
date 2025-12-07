@interface NSCountedSet(PSSGResourceRequestEntry)
- (id)flattenedRequestArray;
- (id)resourceKeySet;
- (uint64_t)containsResourceKey:()PSSGResourceRequestEntry;
- (void)filterMatchingResourceKeys:()PSSGResourceRequestEntry;
- (void)filterOutResourceKeys:()PSSGResourceRequestEntry;
- (void)removeResourceKey:()PSSGResourceRequestEntry;
@end

@implementation NSCountedSet(PSSGResourceRequestEntry)

- (uint64_t)containsResourceKey:()PSSGResourceRequestEntry
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [self objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        resourceKey = [*(*(&v12 + 1) + 8 * i) resourceKey];
        v10 = [resourceKey isEqual:v4];

        if (v10)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeResourceKey:()PSSGResourceRequestEntry
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__NSCountedSet_PSSGResourceRequestEntry__removeResourceKey___block_invoke;
  v6[3] = &unk_279A48358;
  v7 = v4;
  v5 = v4;
  [self filterWithBlock:v6];
}

- (void)filterMatchingResourceKeys:()PSSGResourceRequestEntry
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__NSCountedSet_PSSGResourceRequestEntry__filterMatchingResourceKeys___block_invoke;
  v6[3] = &unk_279A48358;
  v7 = v4;
  v5 = v4;
  [self filterWithBlock:v6];
}

- (void)filterOutResourceKeys:()PSSGResourceRequestEntry
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__NSCountedSet_PSSGResourceRequestEntry__filterOutResourceKeys___block_invoke;
  v6[3] = &unk_279A48358;
  v7 = v4;
  v5 = v4;
  [self filterWithBlock:v6];
}

- (id)resourceKeySet
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [self objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        resourceKey = [*(*(&v10 + 1) + 8 * i) resourceKey];
        [v2 addObject:resourceKey];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)flattenedRequestArray
{
  v25 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v3 = +[PLSSettings currentSettings];
  enableFastTransition = [v3 enableFastTransition];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  obj = [self objectEnumerator];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (enableFastTransition)
        {
          graph = [*(*(&v20 + 1) + 8 * i) graph];
          name = [graph name];
        }

        else
        {
          name = 0;
        }

        v12 = MEMORY[0x277D3E828];
        resourceKey = [v9 resourceKey];
        stride = [v9 stride];
        v15 = [v12 entryWithKey:resourceKey stride:stride graphName:name];

        for (j = [selfCopy countForObject:v9]; j; --j)
        {
          [array addObject:v15];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return array;
}

@end