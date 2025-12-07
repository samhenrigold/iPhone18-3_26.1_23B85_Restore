@interface NSMutableSet(CECPhysicalDeviceSet)
- (void)physicalDeviceWithAddress:()CECPhysicalDeviceSet;
@end

@implementation NSMutableSet(CECPhysicalDeviceSet)

- (void)physicalDeviceWithAddress:()CECPhysicalDeviceSet
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [self countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(self);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 physicalAddress] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [self countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end