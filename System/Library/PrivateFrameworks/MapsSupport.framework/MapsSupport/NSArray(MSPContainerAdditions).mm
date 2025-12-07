@interface NSArray(MSPContainerAdditions)
- (id)_maps_arrayWithObjectsConformingToProtocols:()MSPContainerAdditions;
- (id)_maps_indexesOfObjectsCorrespondingToIdentifiableObjects:()MSPContainerAdditions;
- (uint64_t)_maps_indexOfObjectCorrespondingToIdentifiableObject:()MSPContainerAdditions;
@end

@implementation NSArray(MSPContainerAdditions)

- (id)_maps_indexesOfObjectsCorrespondingToIdentifiableObjects:()MSPContainerAdditions
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = [a3 valueForKey:@"storageIdentifier"];
  v6 = [v4 setWithArray:v5];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  v9 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(selfCopy);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        storageIdentifier = [v14 storageIdentifier];
        v16 = [v6 containsObject:storageIdentifier];

        if (v16)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
          storageIdentifier2 = [v14 storageIdentifier];
          [v7 setObject:v17 forKeyedSubscript:storageIdentifier2];
        }

        ++v11;
      }

      v10 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

- (uint64_t)_maps_indexOfObjectCorrespondingToIdentifiableObject:()MSPContainerAdditions
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(selfCopy);
      }

      storageIdentifier = [*(*(&v16 + 1) + 8 * v10) storageIdentifier];
      storageIdentifier2 = [v4 storageIdentifier];
      v14 = [storageIdentifier isEqual:storageIdentifier2];

      if (v14)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (id)_maps_arrayWithObjectsConformingToProtocols:()MSPContainerAdditions
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = v4;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([v10 conformsToProtocol:*(*(&v18 + 1) + 8 * j)])
              {
                [v5 addObject:v10];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  return v5;
}

@end