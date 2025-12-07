@interface PGMemoryElectorConfiguration
+ (id)defaultConfigurationDictionarySource;
- (PGMemoryElectorConfiguration)init;
- (id)futureMemoryCollisionUniversalDateInterval;
- (id)pastMemoryCollisionUniversalDateInterval;
- (unint64_t)targetNumberOfMemoriesWithMemoryContext:(id)context totalNumberOfMemoryNodes:(unint64_t)nodes referenceNumberOfDays:(unint64_t)days;
@end

@implementation PGMemoryElectorConfiguration

+ (id)defaultConfigurationDictionarySource
{
  v11[21] = *MEMORY[0x277D85DE8];
  v10[0] = @"localDate";
  currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
  v11[0] = currentLocalDate;
  v10[1] = @"timeZone";
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v11[1] = systemTimeZone;
  v11[2] = MEMORY[0x277CBEC38];
  v10[2] = @"shouldPersist";
  v10[3] = @"pendingState";
  v11[3] = &unk_284484290;
  v11[4] = &unk_2844842A8;
  v10[4] = @"maximumTargetNumberOfMemories";
  v10[5] = @"minimumTargetNumberOfMemories";
  v4 = MEMORY[0x277CBEC28];
  v11[5] = &unk_2844842C0;
  v11[6] = MEMORY[0x277CBEC28];
  v10[6] = @"useMaximumTargetNumberOfMemories";
  v10[7] = @"maximumNumberOfMemoriesWithGuestAssets";
  v11[7] = &unk_2844842D8;
  v11[8] = &unk_2844871B8;
  v10[8] = @"maximumRatioOfGuestAssets";
  v10[9] = @"numberOfDaysToLookInPast";
  v11[9] = &unk_2844842F0;
  v11[10] = &unk_284484308;
  v10[10] = @"numberOfDaysToLookInFuture";
  v10[11] = @"numberOfDaysToFocusOnNewMemoryTypes";
  v11[11] = &unk_284484320;
  v11[12] = &unk_284484338;
  v10[12] = @"minimumNumberOfDaysBeforeTimeDecay";
  v10[13] = @"minimumNumberOfCuratedAssets";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
  v11[13] = v5;
  v11[14] = MEMORY[0x277CBEBF8];
  v10[14] = @"collidableSuggestions";
  v10[15] = @"skipEnrichment";
  v10[16] = @"requestedMemoryCategory";
  v10[17] = @"requestedTriggerType";
  v11[15] = v4;
  v11[16] = &unk_284484350;
  v11[17] = &unk_284484350;
  v11[18] = &stru_2843F5C58;
  v10[18] = @"requestedUniqueMemoryIdentifier";
  v10[19] = @"moodHistory";
  v11[19] = MEMORY[0x277CBEBF8];
  v10[20] = @"allowGuestAsset";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v11[20] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:21];

  v8 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v7];

  return v8;
}

- (unint64_t)targetNumberOfMemoriesWithMemoryContext:(id)context totalNumberOfMemoryNodes:(unint64_t)nodes referenceNumberOfDays:(unint64_t)days
{
  contextCopy = context;
  v9 = contextCopy;
  maximumTargetNumberOfMemories = self->_maximumTargetNumberOfMemories;
  if (!self->_useMaximumTargetNumberOfMemories)
  {
    v11 = vcvtpd_u64_f64(nodes / days);
    if (maximumTargetNumberOfMemories >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = self->_maximumTargetNumberOfMemories;
    }

    if (maximumTargetNumberOfMemories > v11)
    {
      creationDateOfLastMemory = [contextCopy creationDateOfLastMemory];
      if (creationDateOfLastMemory)
      {
        v14 = [PGMemoryDate alloc];
        localDate = [v9 localDate];
        v16 = [(PGMemoryDate *)v14 initWithLocalDate:localDate];

        timeZone = [v9 timeZone];
        v18 = [(PGMemoryDate *)v16 universalDateInTimeZone:timeZone];
        [v18 timeIntervalSinceDate:creationDateOfLastMemory];
        v20 = v19;

        v21 = (v20 / 86400.0);
        v22 = self->_maximumTargetNumberOfMemories;
        v23 = v22;
        if (v21 < 2 * v22)
        {
          v23 = v12;
          if (v22 <= v21)
          {
            v23 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v22, 1uLL));
          }
        }
      }

      else
      {
        v23 = self->_maximumTargetNumberOfMemories;
      }

      v12 = v23;
    }

    if (v12 <= self->_minimumTargetNumberOfMemories)
    {
      maximumTargetNumberOfMemories = self->_minimumTargetNumberOfMemories;
    }

    else
    {
      maximumTargetNumberOfMemories = v12;
    }
  }

  return maximumTargetNumberOfMemories;
}

- (id)futureMemoryCollisionUniversalDateInterval
{
  v3 = [[PGMemoryDate alloc] initWithLocalDate:self->_localDate];
  v4 = [(PGMemoryDate *)v3 universalDateInTimeZone:self->_timeZone];
  v5 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v4];

  v6 = [MEMORY[0x277D27690] dateByAddingDays:self->_numberOfDaysToLookInFuture toDate:v5];
  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v6];

  return v7;
}

- (id)pastMemoryCollisionUniversalDateInterval
{
  v3 = [[PGMemoryDate alloc] initWithLocalDate:self->_localDate];
  v4 = [(PGMemoryDate *)v3 universalDateInTimeZone:self->_timeZone];
  v5 = [MEMORY[0x277D27690] dateByAddingDays:-self->_numberOfDaysToLookInPast toDate:v4];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v4];

  return v6;
}

- (PGMemoryElectorConfiguration)init
{
  v7[1] = *MEMORY[0x277D85DE8];
  defaultConfigurationDictionarySource = [objc_opt_class() defaultConfigurationDictionarySource];
  v7[0] = defaultConfigurationDictionarySource;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [(PGConfiguration *)self initWithSources:v4 version:1.0];

  return v5;
}

@end