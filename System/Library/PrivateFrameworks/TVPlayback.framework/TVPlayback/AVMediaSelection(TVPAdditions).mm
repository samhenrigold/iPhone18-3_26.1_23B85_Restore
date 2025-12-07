@interface AVMediaSelection(TVPAdditions)
- (id)tvp_description;
@end

@implementation AVMediaSelection(TVPAdditions)

- (id)tvp_description
{
  v22 = *MEMORY[0x277D85DE8];
  asset = [self asset];
  v20 = 0;
  v3 = [asset statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:&v20];
  v4 = v20;
  if (v3 == 2 || v3 == 3 && [MEMORY[0x277CE63D8] tvp_shouldIgnoreLoadFailureForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:v4 logObject:0])
  {
    v14 = v4;
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [asset availableMediaCharacteristicsWithMediaSelectionOptions];
    v6 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:v10];
          v12 = [self selectedMediaOptionInMediaSelectionGroup:v11];
          [v5 appendFormat:@"%@: %@ ", v10, v12];
        }

        v7 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }

    v4 = v14;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end