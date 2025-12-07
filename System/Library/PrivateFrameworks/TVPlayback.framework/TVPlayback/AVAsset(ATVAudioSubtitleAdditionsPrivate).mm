@interface AVAsset(ATVAudioSubtitleAdditionsPrivate)
+ (id)tvp_filteredAndSubsortedMainProgramSubtitleOptionsFromOptions:()ATVAudioSubtitleAdditionsPrivate;
+ (id)tvp_groupedAudioAVMediaSelectionOptionsFromOptions:()ATVAudioSubtitleAdditionsPrivate;
+ (id)tvp_sortedAuxSubtitleOptionsFromOptions:()ATVAudioSubtitleAdditionsPrivate;
@end

@implementation AVAsset(ATVAudioSubtitleAdditionsPrivate)

+ (id)tvp_groupedAudioAVMediaSelectionOptionsFromOptions:()ATVAudioSubtitleAdditionsPrivate
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    [MEMORY[0x277CBEB18] array];
    v22 = v21 = v3;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v10 = *MEMORY[0x277CE5E08];
      v11 = *MEMORY[0x277CE5E20];
      v12 = *MEMORY[0x277CE5E18];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 hasMediaCharacteristic:{v10, v21}];
          v16 = array2;
          if ((v15 & 1) == 0)
          {
            v17 = [v14 hasMediaCharacteristic:v11];
            v16 = array;
            if ((v17 & 1) == 0)
            {
              v18 = [v14 hasMediaCharacteristic:v12];
              v16 = v22;
              if (!v18)
              {
                continue;
              }
            }
          }

          [v16 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    array3 = [MEMORY[0x277CBEB18] array];
    [array3 addObjectsFromArray:array];
    [array3 addObjectsFromArray:array2];
    [array3 addObjectsFromArray:v22];

    v3 = v21;
  }

  else
  {
    array3 = 0;
  }

  return array3;
}

+ (id)tvp_filteredAndSubsortedMainProgramSubtitleOptionsFromOptions:()ATVAudioSubtitleAdditionsPrivate
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = *MEMORY[0x277CE5E58];
    v10 = *MEMORY[0x277CE5E00];
    v23 = *MEMORY[0x277CE5E38];
    v20 = *MEMORY[0x277CE5E10];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        mediaType = [v12 mediaType];
        v14 = [mediaType isEqualToString:v9];

        v15 = array4;
        if ((v14 & 1) == 0)
        {
          v16 = [v12 hasMediaCharacteristic:v10];
          v15 = array3;
          if ((v16 & 1) == 0)
          {
            v17 = [v12 hasMediaCharacteristic:v23];
            v15 = array3;
            if ((v17 & 1) == 0)
            {
              if ([v12 hasMediaCharacteristic:v20])
              {
                v15 = array5;
              }

              else
              {
                v15 = array2;
              }
            }
          }
        }

        [v15 addObject:v12];
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  [array addObjectsFromArray:array2];
  [array addObjectsFromArray:array3];
  [array addObjectsFromArray:array4];
  [array addObjectsFromArray:array5];

  return array;
}

+ (id)tvp_sortedAuxSubtitleOptionsFromOptions:()ATVAudioSubtitleAdditionsPrivate
{
  v3 = a3;
  array = [MEMORY[0x277CBEA60] array];
  if (v3)
  {
    v5 = [v3 sortedArrayUsingComparator:&__block_literal_global_13];

    array = v5;
  }

  return array;
}

@end