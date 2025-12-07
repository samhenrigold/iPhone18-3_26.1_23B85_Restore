@interface PGPublicEventCategoryFeatureExtractor
+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label;
+ (id)_processedLabelsForVersion:(int64_t)version;
+ (id)_rawLabelsForVersion:(int64_t)version;
- (PGPublicEventCategoryFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
@end

@implementation PGPublicEventCategoryFeatureExtractor

- (PGPublicEventCategoryFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() _processedLabelsForVersion:version];
  v7 = MEMORY[0x277CBEB98];
  v8 = [objc_opt_class() _rawLabelsForVersion:version];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277D22C90];
  v11 = +[PGGraphMomentNode publicEventOfMoment];
  v23[0] = v11;
  v12 = +[PGGraphPublicEventNode categoryOfPublicEvent];
  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v14 = [v10 chain:v13];

  v15 = [objc_opt_class() _labelProcessingForVersion:version label:@"None"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__PGPublicEventCategoryFeatureExtractor_initWithVersion_error___block_invoke;
  v20[3] = &unk_27887FBF8;
  v21 = v9;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = PGPublicEventCategoryFeatureExtractor;
  v16 = v9;
  v17 = [(MARelationCollectionFeatureExtractor *)&v19 initWithName:@"PublicEventCategory" featureNames:v6 relation:v14 labelForEmptyRelation:v15 labelForTargetBlock:v20];

  return v17;
}

id __63__PGPublicEventCategoryFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = @"None";

    v3 = @"None";
  }

  v5 = [PGPublicEventCategoryFeatureExtractor _labelProcessingForVersion:*(a1 + 40) label:v3];

  return v5;
}

+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label
{
  labelCopy = label;
  v6 = @"None";
  v7 = @"None";
  if ((version - 2) >= 2)
  {
    if (version != 1)
    {
      goto LABEL_6;
    }

    v6 = labelCopy;
    v8 = @"None";
  }

  else
  {
    v8 = [labelCopy stringByReplacingOccurrencesOfString:@"GEOSpatialEventLookupCategory" withString:&stru_2843F5C58];
    v9 = MEMORY[0x277CCACA8];
    prefix = [objc_opt_class() prefix];
    v6 = [v9 stringWithFormat:@"%@_%@", prefix, v8];
  }

LABEL_6:

  return v6;
}

+ (id)_rawLabelsForVersion:(int64_t)version
{
  v5[8] = *MEMORY[0x277D85DE8];
  if ((version - 1) >= 2)
  {
    if (version == 3)
    {
      v5[0] = @"GEOSpatialEventLookupCategoryArtsAndMuseums";
      v5[1] = @"GEOSpatialEventLookupCategoryDance";
      v5[2] = @"GEOSpatialEventLookupCategoryFestivalsAndFairs";
      v5[3] = @"GEOSpatialEventLookupCategoryMusicConcerts";
      v5[4] = @"GEOSpatialEventLookupCategoryNightLife";
      v5[5] = @"GEOSpatialEventLookupCategorySports";
      v5[6] = @"GEOSpatialEventLookupCategoryTheater";
      v5[7] = @"None";
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
    }

    else
    {
      v3 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v3 = &unk_284485508;
  }

  return v3;
}

+ (id)_processedLabelsForVersion:(int64_t)version
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [self _rawLabelsForVersion:?];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [self _labelProcessingForVersion:version label:{*(*(&v14 + 1) + 8 * i), v14}];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

@end