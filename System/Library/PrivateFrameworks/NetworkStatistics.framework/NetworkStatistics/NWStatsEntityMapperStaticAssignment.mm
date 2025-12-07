@interface NWStatsEntityMapperStaticAssignment
- (NWStatsEntityMapperStaticAssignment)init;
- (id)identifierForUUID:(id)d derivation:(int *)derivation;
@end

@implementation NWStatsEntityMapperStaticAssignment

- (id)identifierForUUID:(id)d derivation:(int *)derivation
{
  result = [(NSMutableDictionary *)self->_staticUUIDToBundleIDMap objectForKeyedSubscript:d];
  if (derivation)
  {
    *derivation = 3;
  }

  return result;
}

- (NWStatsEntityMapperStaticAssignment)init
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = NWStatsEntityMapperStaticAssignment;
  v2 = [(NWStatsEntityMapperStaticAssignment *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    staticUUIDToBundleIDMap = v2->_staticUUIDToBundleIDMap;
    v2->_staticUUIDToBundleIDMap = v3;

    if (v2->_staticUUIDToBundleIDMap)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      allKeys = [&unk_286D3E5D0 allKeys];
      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(allKeys);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            v11 = objc_alloc(MEMORY[0x277CCAD78]);
            v12 = [&unk_286D3E5D0 objectForKeyedSubscript:v10];
            v13 = [v11 initWithUUIDString:v12];

            [(NSMutableDictionary *)v2->_staticUUIDToBundleIDMap setObject:v10 forKeyedSubscript:v13];
          }

          v7 = [allKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v7);
      }
    }

    else
    {
      allKeys = v2;
      v2 = 0;
    }
  }

  return v2;
}

@end