@interface ATXExpiredDataRemover
+ (void)removeExpiredBundleIdsFrom:(id)from removeExpiredActionKeysFrom:(id)keysFrom expiredDataProvider:(id)provider;
@end

@implementation ATXExpiredDataRemover

+ (void)removeExpiredBundleIdsFrom:(id)from removeExpiredActionKeysFrom:(id)keysFrom expiredDataProvider:(id)provider
{
  v45 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  keysFromCopy = keysFrom;
  providerCopy = provider;
  expiredBundleIdsAndActionKeys = [providerCopy expiredBundleIdsAndActionKeys];
  expiredBundleIds = [expiredBundleIdsAndActionKeys expiredBundleIds];
  v12 = [expiredBundleIds count];

  if (v12)
  {
    v33 = keysFromCopy;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = fromCopy;
    v14 = fromCopy;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        v18 = 0;
        do
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v39 + 1) + 8 * v18);
          v20 = objc_autoreleasePoolPush();
          expiredBundleIds2 = [expiredBundleIdsAndActionKeys expiredBundleIds];
          [v19 removeBundleIds:expiredBundleIds2];

          objc_autoreleasePoolPop(v20);
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    fromCopy = v13;
    keysFromCopy = v33;
  }

  expiredActionKeys = [expiredBundleIdsAndActionKeys expiredActionKeys];
  v23 = [expiredActionKeys count];

  if (v23)
  {
    v34 = fromCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = keysFromCopy;
    v25 = keysFromCopy;
    v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        v29 = 0;
        do
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v35 + 1) + 8 * v29);
          v31 = objc_autoreleasePoolPush();
          expiredActionKeys2 = [expiredBundleIdsAndActionKeys expiredActionKeys];
          [v30 removeActionKeys:expiredActionKeys2];

          objc_autoreleasePoolPop(v31);
          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v27);
    }

    fromCopy = v34;
    keysFromCopy = v24;
  }
}

@end