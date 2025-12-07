@interface VGSelectionState
+ (id)capturedStatesFromCapturedPoses:(id)poses;
@end

@implementation VGSelectionState

+ (id)capturedStatesFromCapturedPoses:(id)poses
{
  v19 = *MEMORY[0x277D85DE8];
  posesCopy = poses;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = posesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = MEMORY[0x277CCABB0];
        v11 = [v5 objectForKey:{v9, v14}];
        v12 = [v10 numberWithBool:{objc_msgSend(v11, "valid")}];
        [dictionary setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return dictionary;
}

@end