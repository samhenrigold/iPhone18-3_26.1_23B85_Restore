@interface PGGraphMobilityNodeCollection
- (NSArray)locationMobilityTypes;
@end

@implementation PGGraphMobilityNodeCollection

- (NSArray)locationMobilityTypes
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  labels = [(MANodeCollection *)self labels];
  v5 = [labels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(labels);
        }

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[PGGraphMobilityNode mobilityTypeForMobilityLabel:](PGGraphMobilityNode, "mobilityTypeForMobilityLabel:", *(*(&v11 + 1) + 8 * i))}];
        [v3 addObject:v9];
      }

      v6 = [labels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end