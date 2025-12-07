@interface PGBusinessCategoryFeatureExtractor
+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label;
+ (id)_labelsForVersion:(int64_t)version;
- (PGBusinessCategoryFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
@end

@implementation PGBusinessCategoryFeatureExtractor

- (PGBusinessCategoryFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() _labelsForVersion:version];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphMomentNode businessOfMoment];
  v16[0] = v8;
  v9 = +[PGGraphBusinessNode categoryOfBusiness];
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v11 = [v7 chain:v10];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__PGBusinessCategoryFeatureExtractor_initWithVersion_error___block_invoke;
  v15[3] = &__block_descriptor_40_e51___NSString_24__0__PGGraphBusinessCategoryNode_8__16l;
  v15[4] = version;
  v14.receiver = self;
  v14.super_class = PGBusinessCategoryFeatureExtractor;
  v12 = [(PGGraphFeatureExtractor *)&v14 initWithName:@"Business Category" featureNames:v6 relation:v11 labelForTargetBlock:v15];

  return v12;
}

id __60__PGBusinessCategoryFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  v4 = [PGBusinessCategoryFeatureExtractor _labelProcessingForVersion:v2 label:v3];

  return v4;
}

+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label
{
  labelCopy = label;
  v7 = labelCopy;
  if (version == 2)
  {
    v9 = MEMORY[0x277CCACA8];
    prefix = [self prefix];
    v8 = [v9 stringWithFormat:@"%@_%@", prefix, v7];
  }

  else if (version == 1)
  {
    v8 = labelCopy;
  }

  else
  {
    v8 = @"unknown";
  }

  return v8;
}

+ (id)_labelsForVersion:(int64_t)version
{
  v18 = *MEMORY[0x277D85DE8];
  if ((version - 1) >= 2)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = &unk_2844866F0;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [self _labelProcessingForVersion:version label:*(*(&v13 + 1) + 8 * i)];
        [v6 addObject:v11];
      }

      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

@end