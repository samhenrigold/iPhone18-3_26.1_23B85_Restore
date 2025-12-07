@interface NSMutableSet(HMFMerging)
- (uint64_t)mergeObject:()HMFMerging;
- (uint64_t)shouldMergeObject:()HMFMerging;
@end

@implementation NSMutableSet(HMFMerging)

- (uint64_t)shouldMergeObject:()HMFMerging
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (v3 != 0) & isKindOfClass;
}

- (uint64_t)mergeObject:()HMFMerging
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v28 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [self mutableCopy];
  [v7 minusSet:v6];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
  v10 = v9 != 0;
  if (v9)
  {
    v11 = v9;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [self removeObject:*(*(&v37 + 1) + 8 * i)];
      }

      v11 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v11);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  v15 = [selfCopy countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(selfCopy);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        v20 = [v6 member:v19];
        if (v20 && [v19 conformsToProtocol:&unk_283EDF110] && objc_msgSend(v19, "shouldMergeObject:", v20))
        {
          v10 |= [v19 mergeObject:v20];
        }
      }

      v16 = [selfCopy countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v16);
  }

  v21 = [v6 mutableCopy];
  [v21 minusSet:selfCopy];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [selfCopy addObject:*(*(&v29 + 1) + 8 * k)];
      }

      v24 = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v24);
    LOBYTE(v10) = 1;
  }

  return v10 & 1;
}

@end