@interface HMDBackingStoreCacheZone
- (HMDBackingStoreCacheZone)initWithZoneID:(int64_t)d name:(id)name;
- (id)dumpDebug;
@end

@implementation HMDBackingStoreCacheZone

- (id)dumpDebug
{
  v28 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"zone: %lu (%p)\n", -[HMDBackingStoreCacheZone zoneID](self, "zoneID"), self];
  zoneName = [(HMDBackingStoreCacheZone *)self zoneName];
  [string appendFormat:@"  name: %@\n", zoneName];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(HMDBackingStoreCacheZone *)self actualGroups];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        dumpDebug = [v9 dumpDebug];
        v11 = [dumpDebug componentsSeparatedByString:@"\n"];

        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [string appendFormat:@"    %@\n", *(*(&v18 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  return string;
}

- (HMDBackingStoreCacheZone)initWithZoneID:(int64_t)d name:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreCacheZone;
  v8 = [(HMDBackingStoreCacheZone *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_zoneID = d;
    objc_storeStrong(&v8->_zoneName, name);
    array = [MEMORY[0x277CBEB18] array];
    actualGroups = v9->_actualGroups;
    v9->_actualGroups = array;

    v12 = v9;
  }

  return v9;
}

@end