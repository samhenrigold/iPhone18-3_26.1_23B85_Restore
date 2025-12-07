@interface PGSocialGroupsQuestion
- (PGSocialGroupsQuestion)initWithSocialGroupID:(id)d personLocalIdentifiers:(id)identifiers personNames:(id)names localFactoryScore:(double)score;
@end

@implementation PGSocialGroupsQuestion

- (PGSocialGroupsQuestion)initWithSocialGroupID:(id)d personLocalIdentifiers:(id)identifiers personNames:(id)names localFactoryScore:(double)score
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifiersCopy = identifiers;
  v28.receiver = self;
  v28.super_class = PGSocialGroupsQuestion;
  v12 = [(PGSocialGroupsQuestion *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, d);
    v13->_localFactoryScore = score;
    v13->_state = 0;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([identifiersCopy count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = identifiersCopy;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          v19 = 0;
          do
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:{*(*(&v24 + 1) + 8 * v19), v24}];
            if (v20)
            {
              [v14 addObject:v20];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v24 objects:v31 count:16];
        }

        while (v17);
      }
    }

    v29 = @"personUUIDs";
    v30 = v14;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:{1, v24}];
    additionalInfo = v13->_additionalInfo;
    v13->_additionalInfo = v21;
  }

  return v13;
}

@end