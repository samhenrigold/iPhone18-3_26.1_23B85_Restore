@interface HKHRFeatureStatusTestUtilities
+ (id)evaluationWithRequirementIdentifiers:(id)identifiers unsatisfiedRequirementIdentifiers:(id)requirementIdentifiers;
@end

@implementation HKHRFeatureStatusTestUtilities

+ (id)evaluationWithRequirementIdentifiers:(id)identifiers unsatisfiedRequirementIdentifiers:(id)requirementIdentifiers
{
  v37 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  requirementIdentifiersCopy = requirementIdentifiers;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v12 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setObject:v12 forKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  if ([requirementIdentifiersCopy count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = requirementIdentifiersCopy;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      v18 = MEMORY[0x277CBEC28];
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v27 + 1) + 8 * j);
          v21 = [v7 objectForKeyedSubscript:{v20, v27}];

          if (v21)
          {
            [v7 setObject:v18 forKeyedSubscript:v20];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }
  }

  v22 = MEMORY[0x277CBEB70];
  allKeys = [v7 allKeys];
  v24 = [v22 orderedSetWithArray:allKeys];

  v25 = [objc_alloc(MEMORY[0x277CCD430]) initWithRequirementIdentifiersOrderedByPriority:v24 satisfactionByRequirementIdentifier:v7];

  return v25;
}

@end