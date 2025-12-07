@interface DTNetworkInterfaceInfo
+ (id)interfaceNameMappings;
+ (void)addInterface:(__SCNetworkInterface *)interface toNameMapping:(id)mapping;
@end

@implementation DTNetworkInterfaceInfo

+ (void)addInterface:(__SCNetworkInterface *)interface toNameMapping:(id)mapping
{
  mappingCopy = mapping;
  v5 = SCNetworkInterfaceGetBSDName(interface);
  v6 = SCNetworkInterfaceGetLocalizedDisplayName(interface);
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    [mappingCopy setObject:v6 forKey:v5];
  }
}

+ (id)interfaceNameMappings
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = SCNetworkInterfaceCopyAll();
  v5 = [(__CFArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self addInterface:*(*(&v12 + 1) + 8 * i) toNameMapping:{v3, v12}];
      }

      v6 = [(__CFArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277CE16C0];
  v10 = [v3 objectForKey:SCNetworkInterfaceGetBSDName(*MEMORY[0x277CE16C0])];

  if (!v10)
  {
    [self addInterface:v9 toNameMapping:v3];
  }

  return v3;
}

@end