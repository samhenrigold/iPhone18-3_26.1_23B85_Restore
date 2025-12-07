@interface GKDiscoveryBonjourResolveContainer
- (GKDiscoveryBonjourResolveContainer)init;
- (void)dealloc;
@end

@implementation GKDiscoveryBonjourResolveContainer

- (GKDiscoveryBonjourResolveContainer)init
{
  v4.receiver = self;
  v4.super_class = GKDiscoveryBonjourResolveContainer;
  v2 = [(GKDiscoveryBonjourResolveContainer *)&v4 init];
  if (v2)
  {
    v2->_serviceRefList = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];

  self->_resolveCompletionHandler = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  serviceRefList = self->_serviceRefList;
  v4 = [(NSMutableArray *)serviceRefList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(serviceRefList);
        }

        pointerValue = [*(*(&v10 + 1) + 8 * i) pointerValue];
        if (pointerValue)
        {
          DNSServiceRefDeallocate(pointerValue);
        }
      }

      v5 = [(NSMutableArray *)serviceRefList countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = GKDiscoveryBonjourResolveContainer;
  [(GKDiscoveryBonjourResolveContainer *)&v9 dealloc];
}

@end