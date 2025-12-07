@interface CSEventListener
- (CSEventListener)initWithEventListenerDelegate:(id)delegate;
@end

@implementation CSEventListener

- (CSEventListener)initWithEventListenerDelegate:(id)delegate
{
  v47 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v44.receiver = self;
  v44.super_class = CSEventListener;
  v6 = [(CSEventListener *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v7->_eventFlags = [delegateCopy eventFlags];
    includeBundleIDs = [delegateCopy includeBundleIDs];
    v9 = [includeBundleIDs count];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB58] setWithCapacity:v9];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v11 = includeBundleIDs;
      v12 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v41;
        do
        {
          v15 = 0;
          do
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(v11);
            }

            uTF8String = [*(*(&v40 + 1) + 8 * v15) UTF8String];
            v17 = strlen(uTF8String);
            v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bundleIdHash(uTF8String, v17 + 1)}];
            [v10 addObject:v18];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v13);
      }

      if ([v10 count])
      {
        v19 = [v10 copy];
        includedBundleHashes = v7->_includedBundleHashes;
        v7->_includedBundleHashes = v19;
      }
    }

    excludeBundleIDs = [delegateCopy excludeBundleIDs];

    v22 = [excludeBundleIDs count];
    if (v22)
    {
      v23 = [MEMORY[0x277CBEB58] setWithCapacity:v22];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v24 = excludeBundleIDs;
      v25 = [v24 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v37;
        do
        {
          v28 = 0;
          do
          {
            if (*v37 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v36 + 1) + 8 * v28);
            uTF8String2 = [v29 UTF8String];
            v31 = strlen(uTF8String2);
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{bundleIdHash(uTF8String2, v31 + 1)}];
            [v23 addObject:v32];

            ++v28;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v26);
      }

      if ([v23 count])
      {
        v33 = [v23 copy];
        excludedBundleHashes = v7->_excludedBundleHashes;
        v7->_excludedBundleHashes = v33;
      }
    }
  }

  return v7;
}

@end