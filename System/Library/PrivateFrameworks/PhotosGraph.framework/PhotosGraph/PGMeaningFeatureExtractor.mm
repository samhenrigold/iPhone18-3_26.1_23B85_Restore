@interface PGMeaningFeatureExtractor
+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label;
+ (id)_labelsForVersion:(int64_t)version;
- (PGMeaningFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
@end

@implementation PGMeaningFeatureExtractor

- (PGMeaningFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v6 = [objc_opt_class() _labelsForVersion:version];
  v7 = +[PGMeaningFeatureExtractor name];
  v8 = +[PGGraphMomentNode meaningHierarchyOfMoment];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__PGMeaningFeatureExtractor_initWithVersion_error___block_invoke;
  v12[3] = &__block_descriptor_40_e42___NSString_24__0__PGGraphMeaningNode_8__16l;
  v12[4] = version;
  v11.receiver = self;
  v11.super_class = PGMeaningFeatureExtractor;
  v9 = [(PGGraphFeatureExtractor *)&v11 initWithName:v7 featureNames:v6 relation:v8 labelForTargetBlock:v12];

  return v9;
}

id __51__PGMeaningFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  v4 = [PGMeaningFeatureExtractor _labelProcessingForVersion:v2 label:v3];

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
  v23[19] = *MEMORY[0x277D85DE8];
  if (version == 2)
  {
    v22[0] = @"Activity";
    v22[1] = @"Hiking";
    v22[2] = @"Climbing";
    v22[3] = @"Beaching";
    v22[4] = @"Diving";
    v22[5] = @"WinterSport";
    v22[6] = @"Entertainment";
    v22[7] = @"AmusementPark";
    v22[8] = @"Performance";
    v22[9] = @"Concert";
    v22[10] = @"Festival";
    v22[11] = @"Theater";
    v22[12] = @"Dance";
    v22[13] = @"SportEvent";
    v22[14] = @"NightOut";
    v22[15] = @"Museum";
    v22[16] = @"Celebration";
    v22[17] = @"Birthday";
    v22[18] = @"Anniversary";
    v22[19] = @"Wedding";
    v22[20] = @"HolidayEvent";
    v22[21] = @"Gathering";
    v22[22] = @"Restaurant";
    v22[23] = @"Breakfast";
    v22[24] = @"Lunch";
    v22[25] = @"Dinner";
    v5 = MEMORY[0x277CBEA60];
    v6 = v22;
    v7 = 26;
    goto LABEL_5;
  }

  if (version == 1)
  {
    v23[0] = @"Activity";
    v23[1] = @"Beaching";
    v23[2] = @"Birthday";
    v23[3] = @"Breakfast";
    v23[4] = @"Celebration";
    v23[5] = @"Concert";
    v23[6] = @"Dinner";
    v23[7] = @"Entertainment";
    v23[8] = @"Gathering";
    v23[9] = @"Hiking";
    v23[10] = @"HolidayEvent";
    v23[11] = @"Lunch";
    v23[12] = @"Museum";
    v23[13] = @"NightOut";
    v23[14] = @"Performance";
    v23[15] = @"Restaurant";
    v23[16] = @"SportEvent";
    v23[17] = @"Theater";
    v23[18] = @"WinterSport";
    v5 = MEMORY[0x277CBEA60];
    v6 = v23;
    v7 = 19;
LABEL_5:
    v8 = [v5 arrayWithObjects:v6 count:v7];
    goto LABEL_7;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_7:
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [self _labelProcessingForVersion:version label:{*(*(&v17 + 1) + 8 * i), v17}];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

@end