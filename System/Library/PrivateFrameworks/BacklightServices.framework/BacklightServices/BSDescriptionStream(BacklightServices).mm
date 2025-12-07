@interface BSDescriptionStream(BacklightServices)
- (id)bls_appendTimeInterval:()BacklightServices withName:decomposeUnits:;
- (void)bls_appendBoundedCollection:()BacklightServices withName:maximumItems:itemBlock:;
@end

@implementation BSDescriptionStream(BacklightServices)

- (void)bls_appendBoundedCollection:()BacklightServices withName:maximumItems:itemBlock:
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 count];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __102__BSDescriptionStream_BacklightServices__bls_appendBoundedCollection_withName_maximumItems_itemBlock___block_invoke;
  v44[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
  v44[4] = v13;
  [self appendCustomFormatWithName:0 block:v44];
  v14 = _NSIsNSSet();
  v15 = v10;
  v16 = v15;
  if (v13 <= a5)
  {
    goto LABEL_24;
  }

  v17 = v15;
  if (([self sortKeys] & v14) == 1)
  {
    v35 = v11;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      v22 = &unk_278429000;
      while (2)
      {
        v23 = v14;
        v24 = 0;
        v25 = *(v22 + 409);
        do
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v17 = v18;
            LODWORD(v14) = v23;
            goto LABEL_15;
          }

          ++v24;
        }

        while (v20 != v24);
        v20 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
        v14 = v23;
        v22 = &unk_278429000;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v25 = sel_compare_;
    }

    allObjects = [v18 allObjects];
    v17 = [allObjects sortedArrayUsingSelector:v25];

    v18 = allObjects;
LABEL_15:

    v11 = v35;
  }

  v27 = a5 - 1;
  if (a5 == 1)
  {
    allObjects2 = [v17 allObjects];
    firstObject = [allObjects2 firstObject];
    v46[0] = firstObject;
    v46[1] = @"…";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  }

  else
  {
    if (!a5)
    {
      v47 = @"…";
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      goto LABEL_22;
    }

    allObjects2 = [v17 allObjects];
    v30 = [allObjects2 subarrayWithRange:{0, v27}];

    v45[0] = @"…";
    lastObject = [allObjects2 lastObject];
    v45[1] = lastObject;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v16 = [v30 arrayByAddingObjectsFromArray:v32];
  }

  v17 = allObjects2;
LABEL_22:

  if (v14)
  {
    v33 = [MEMORY[0x277CBEB98] setWithArray:v16];

    v16 = v33;
  }

LABEL_24:
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __102__BSDescriptionStream_BacklightServices__bls_appendBoundedCollection_withName_maximumItems_itemBlock___block_invoke_2;
  v36[3] = &unk_278428740;
  v37 = @"…";
  selfCopy = self;
  v39 = v12;
  v34 = v12;
  [self appendCollection:v16 withName:v11 itemBlock:v36];
}

- (id)bls_appendTimeInterval:()BacklightServices withName:decomposeUnits:
{
  if (a2 >= 1.0 || (a5 & 1) != 0)
  {
    selfCopy = [self appendTimeInterval:a4 withName:? decomposeUnits:?];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __89__BSDescriptionStream_BacklightServices__bls_appendTimeInterval_withName_decomposeUnits___block_invoke;
    v8[3] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
    *&v8[4] = a2;
    [self appendCustomFormatWithName:a4 block:v8];
    selfCopy = self;
  }

  return selfCopy;
}

@end