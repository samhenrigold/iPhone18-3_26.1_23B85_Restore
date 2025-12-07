@interface WFGetItemTypeAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFGetItemTypeAction

- (void)runWithInput:(id)input error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = [input items];
  v6 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(items);
        }

        output = [(WFGetItemTypeAction *)self output];
        localizedTypeDescription = [objc_opt_class() localizedTypeDescription];
        [output addObject:localizedTypeDescription];

        ++v9;
      }

      while (v7 != v9);
      v7 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

@end