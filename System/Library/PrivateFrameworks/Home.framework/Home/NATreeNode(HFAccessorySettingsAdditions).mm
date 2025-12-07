@interface NATreeNode(HFAccessorySettingsAdditions)
- (id)hf_nodeWithKeyPath:()HFAccessorySettingsAdditions;
- (id)hf_sortedAccessorySettingsChildren;
@end

@implementation NATreeNode(HFAccessorySettingsAdditions)

- (id)hf_sortedAccessorySettingsChildren
{
  childNodes = [self childNodes];
  allObjects = [childNodes allObjects];
  v3 = [allObjects sortedArrayUsingComparator:&__block_literal_global_284];

  return v3;
}

- (id)hf_nodeWithKeyPath:()HFAccessorySettingsAdditions
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingsEntity.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  representedObject = [self representedObject];
  keyPath = [representedObject keyPath];
  v8 = [keyPath isEqualToString:v5];

  if (v8)
  {
    selfCopy2 = self;
  }

  else
  {
    v25 = representedObject;
    v10 = [v5 componentsSeparatedByString:@"."];
    selfCopy2 = self;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v29;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v11);
          }

          if (!selfCopy2)
          {

            goto LABEL_20;
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          if ([v17 isEqualToString:@"root"])
          {
            v18 = @"root";
            v19 = v14;
            v14 = v18;
          }

          else
          {
            v20 = [(__CFString *)v14 stringByAppendingFormat:@".%@", v17];

            childNodes = [selfCopy2 childNodes];
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __63__NATreeNode_HFAccessorySettingsAdditions__hf_nodeWithKeyPath___block_invoke;
            v26[3] = &unk_277E01D68;
            v14 = v20;
            v27 = v14;
            v22 = [childNodes na_firstObjectPassingTest:v26];

            v19 = v27;
            selfCopy2 = v22;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

    selfCopy2 = selfCopy2;
LABEL_20:

    representedObject = v25;
  }

  return selfCopy2;
}

@end