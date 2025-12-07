@interface PGAggregationsTitleSpecFactory
+ (id)_buildSpecCollectionForMeaningLabel:(id)label withSpecDefinition:(id)definition features:(id)features;
+ (id)_featureTypesFromFeatureKey:(id)key;
+ (id)_specCollectionForBirthday;
+ (id)_specCollectionForGathering;
+ (id)_specDefinitionForActivity;
+ (id)_specDefinitionForBeaching;
+ (id)_specDefinitionForBreakfast;
+ (id)_specDefinitionForClimbing;
+ (id)_specDefinitionForDinner;
+ (id)_specDefinitionForDiving;
+ (id)_specDefinitionForEntertainment;
+ (id)_specDefinitionForHiking;
+ (id)_specDefinitionForLunch;
+ (id)_specDefinitionForNightOut;
+ (id)_specDefinitionForPerformance;
+ (id)_specDefinitionForSportEvent;
+ (id)_specDefinitionForWinterSport;
+ (id)specCollectionForMeaningLabel:(id)label features:(id)features;
@end

@implementation PGAggregationsTitleSpecFactory

+ (id)_buildSpecCollectionForMeaningLabel:(id)label withSpecDefinition:(id)definition features:(id)features
{
  v44 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  definitionCopy = definition;
  featuresCopy = features;
  if (definitionCopy)
  {
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = featuresCopy;
    v13 = featuresCopy;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v38 + 1) + 8 * i), "type")}];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v15);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __98__PGAggregationsTitleSpecFactory__buildSpecCollectionForMeaningLabel_withSpecDefinition_features___block_invoke;
    v31[3] = &unk_27887F9B8;
    v32 = v12;
    v37 = selfCopy;
    v33 = definitionCopy;
    v19 = labelCopy;
    v34 = labelCopy;
    v35 = array2;
    v36 = array;
    v20 = array;
    v21 = array2;
    v22 = v12;
    [v33 enumerateKeysAndObjectsUsingBlock:v31];
    v23 = [PGTitleSpecPool poolWithSpecs:v20];
    v24 = [PGTitleSpecPool poolWithSpecs:v21];
    v42[0] = v23;
    v42[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v26 = [PGTitleSpecCollection collectionWithSpecPools:v25];

    featuresCopy = v29;
  }

  else
  {
    v26 = 0;
    v19 = labelCopy;
  }

  return v26;
}

void __98__PGAggregationsTitleSpecFactory__buildSpecCollectionForMeaningLabel_withSpecDefinition_features___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v36 = [a3 unsignedIntegerValue];
  v6 = v5;
  v35 = [(__CFString *)v6 isEqualToString:@"none"];
  v7 = [(__CFString *)v6 isEqualToString:@"LocationIncludingAOI"];
  v8 = [(__CFString *)v6 isEqualToString:@"LocationIncludingLineBreak"];
  v9 = v8;
  v34 = v7 | v8;
  if (((v7 | v8) & 1) != 0 || ([(__CFString *)v6 isEqualToString:@"Location"]& 1) != 0)
  {
    v10 = 1;
    v32 = 1;
  }

  else
  {
    v32 = [(__CFString *)v6 isEqualToString:@"Person"];
    v10 = 0;
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 72) _featureTypesFromFeatureKey:v6];
  v13 = [v11 intersectsSet:v12];

  v31 = v6;
  if (!v10)
  {
    if ([(__CFString *)v6 isEqualToString:@"Person"])
    {
      v17 = 0;
    }

    else if ([(__CFString *)v6 isEqualToString:@"Family"])
    {
      v17 = 3;
    }

    else
    {
      if (![(__CFString *)v6 isEqualToString:@"SocialGroup"])
      {
        v22 = 0;
        goto LABEL_20;
      }

      v17 = 1;
    }

    v22 = [PGTitleSpecPeopleArgument argumentWithPeopleType:v17];
LABEL_20:
    v15 = 0;
    v33 = v6;
    goto LABEL_21;
  }

  if (v7)
  {
    v14 = [*(a1 + 40) objectForKeyedSubscript:@"Location"];
    v15 = [v14 unsignedIntegerValue];

    v36 += v15;
    v16 = 21;
  }

  else
  {
    if (v9)
    {
      v18 = [*(a1 + 40) objectForKeyedSubscript:@"Location"];
      v19 = [v18 unsignedIntegerValue];

      v20 = [*(a1 + 40) objectForKeyedSubscript:@"LocationIncludingAOI"];
      v21 = [v20 unsignedIntegerValue];

      v15 = v21 + v19;
      v36 += v15;
    }

    else
    {
      v15 = 0;
    }

    v16 = 17;
  }

  v22 = [PGTitleSpecLocationArgument argumentWithLocationType:v16 filterLocations:0];
  v33 = @"Location";
LABEL_21:
  if (v15 < v36)
  {
    if (v13)
    {
      v23 = 64;
    }

    else
    {
      v23 = 56;
    }

    do
    {
      if (v35)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"PGMeaningfulEventAggregationMemoryTitleType%@%lu", *(a1 + 48), v15];
      }

      else
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"PGMeaningfulEventAggregationMemoryTitleType%@%luWith%@", *(a1 + 48), v15, v33, v31];
        v24 = v25;
        if (v32)
        {
          v26 = [v25 stringByAppendingString:@" %@"];

          v24 = v26;
        }
      }

      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:v24 value:v24 table:@"Localizable"];

      v29 = [[PGTitleSpec alloc] initWithFormat:v28 titleCategory:0];
      [(PGTitleSpec *)v29 setHasLineBreak:v34 & 1];
      if (v22)
      {
        v37[0] = v22;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
        [(PGTitleSpec *)v29 setArguments:v30];
      }

      [*(a1 + v23) addObject:v29];

      ++v15;
    }

    while (v36 != v15);
  }
}

+ (id)_featureTypesFromFeatureKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [keyCopy isEqualToString:@"LocationIncludingAOI"];
  if ([keyCopy isEqualToString:@"Location"] & 1) != 0 || ((objc_msgSend(keyCopy, "isEqualToString:", @"LocationIncludingLineBreak") | v5))
  {
    [v4 addObject:&unk_284482448];
    [v4 addObject:&unk_284482460];
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = &unk_284482478;
    goto LABEL_10;
  }

  if ([keyCopy isEqualToString:@"Person"])
  {
    v6 = &unk_284482490;
LABEL_10:
    [v4 addObject:v6];
    goto LABEL_11;
  }

  if (([keyCopy isEqualToString:@"Family"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"SocialGroup"))
  {
    v6 = &unk_2844824A8;
    goto LABEL_10;
  }

LABEL_11:

  return v4;
}

+ (id)_specCollectionForGathering
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventAggregationMemoryTitleTypeGatheringWithLocation %@" value:@"PGMeaningfulEventAggregationMemoryTitleTypeGatheringWithLocation %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:0];
  v23[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventAggregationMemoryTitleTypeFamilyGatheringWithLocation %@" value:@"PGMeaningfulEventAggregationMemoryTitleTypeFamilyGatheringWithLocation %@" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:4];

  v12 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:0];
  v22[0] = v12;
  v13 = [PGTitleSpecPeopleArgument argumentWithPeopleType:3];
  v22[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [(PGTitleSpec *)v11 setArguments:v14];

  v21[0] = v5;
  v21[1] = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v16 = [PGTitleSpecPool poolWithSpecs:v15];

  v20 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v18 = [PGTitleSpecCollection collectionWithSpecPools:v17];

  return v18;
}

+ (id)_specDefinitionForDinner
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"Location";
  v4[1] = @"Person";
  v5[0] = &unk_284482430;
  v5[1] = &unk_284482430;
  v4[2] = @"SocialGroup";
  v4[3] = @"Family";
  v5[2] = &unk_284482430;
  v5[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_specDefinitionForLunch
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"Location";
  v4[1] = @"Person";
  v5[0] = &unk_284482430;
  v5[1] = &unk_284482430;
  v4[2] = @"SocialGroup";
  v4[3] = @"Family";
  v5[2] = &unk_284482430;
  v5[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_specDefinitionForBreakfast
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"Location";
  v4[1] = @"Person";
  v5[0] = &unk_284482430;
  v5[1] = &unk_284482430;
  v4[2] = @"SocialGroup";
  v4[3] = @"Family";
  v5[2] = &unk_284482430;
  v5[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_specDefinitionForClimbing
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"none";
  v4[1] = @"LocationIncludingAOI";
  v5[0] = &unk_284482430;
  v5[1] = &unk_284482430;
  v4[2] = @"Person";
  v4[3] = @"SocialGroup";
  v5[2] = &unk_284482430;
  v5[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_specDefinitionForWinterSport
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"none";
  v4[1] = @"LocationIncludingAOI";
  v5[0] = &unk_284482400;
  v5[1] = &unk_284482400;
  v4[2] = @"Person";
  v4[3] = @"SocialGroup";
  v5[2] = &unk_284482400;
  v5[3] = &unk_284482400;
  v4[4] = @"Family";
  v5[4] = &unk_284482400;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

+ (id)_specDefinitionForHiking
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"none";
  v4[1] = @"LocationIncludingAOI";
  v5[0] = &unk_284482430;
  v5[1] = &unk_284482430;
  v4[2] = @"Person";
  v4[3] = @"SocialGroup";
  v5[2] = &unk_284482430;
  v5[3] = &unk_284482430;
  v4[4] = @"Family";
  v5[4] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

+ (id)_specDefinitionForDiving
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"none";
  v4[1] = @"LocationIncludingAOI";
  v5[0] = &unk_284482400;
  v5[1] = &unk_284482400;
  v4[2] = @"Person";
  v4[3] = @"SocialGroup";
  v5[2] = &unk_284482400;
  v5[3] = &unk_284482400;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_specDefinitionForBeaching
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"none";
  v4[1] = @"LocationIncludingLineBreak";
  v5[0] = &unk_284482400;
  v5[1] = &unk_284482400;
  v4[2] = @"Person";
  v4[3] = @"SocialGroup";
  v5[2] = &unk_284482400;
  v5[3] = &unk_284482400;
  v4[4] = @"Family";
  v5[4] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

+ (id)_specDefinitionForActivity
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"none";
  v4[1] = @"LocationIncludingLineBreak";
  v5[0] = &unk_284482400;
  v5[1] = &unk_284482400;
  v4[2] = @"Person";
  v4[3] = @"SocialGroup";
  v5[2] = &unk_284482400;
  v5[3] = &unk_284482400;
  v4[4] = @"Family";
  v5[4] = &unk_284482400;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

+ (id)_specDefinitionForPerformance
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"LocationIncludingLineBreak";
  v4[1] = @"Person";
  v5[0] = &unk_284482430;
  v5[1] = &unk_284482430;
  v4[2] = @"SocialGroup";
  v4[3] = @"Family";
  v5[2] = &unk_284482430;
  v5[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_specDefinitionForSportEvent
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"LocationIncludingAOI";
  v4[1] = @"Person";
  v5[0] = &unk_284482430;
  v5[1] = &unk_284482400;
  v4[2] = @"SocialGroup";
  v5[2] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)_specDefinitionForNightOut
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"Location";
  v4[1] = @"Person";
  v5[0] = &unk_284482400;
  v5[1] = &unk_284482430;
  v4[2] = @"SocialGroup";
  v4[3] = @"Family";
  v5[2] = &unk_284482430;
  v5[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_specDefinitionForEntertainment
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"LocationIncludingAOI";
  v4[1] = @"Person";
  v5[0] = &unk_284482400;
  v5[1] = &unk_284482418;
  v4[2] = @"SocialGroup";
  v4[3] = @"Family";
  v5[2] = &unk_284482400;
  v5[3] = &unk_284482400;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_specCollectionForBirthday
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventAggregationMemoryTitleTypeBirthdayWithPerson %@" value:@"PGMeaningfulEventAggregationMemoryTitleTypeBirthdayWithPerson %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:3];

  v6 = [PGTitleSpecPeopleArgument argumentWithPeopleType:4];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  v14 = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v9 = [PGTitleSpecPool poolWithSpecs:v8];

  v13 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = [PGTitleSpecCollection collectionWithSpecPools:v10];

  return v11;
}

+ (id)specCollectionForMeaningLabel:(id)label features:(id)features
{
  v17 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  featuresCopy = features;
  if ([labelCopy isEqualToString:@"Birthday"])
  {
    _specCollectionForBirthday = [self _specCollectionForBirthday];
    goto LABEL_3;
  }

  if ([labelCopy isEqualToString:@"Entertainment"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForEntertainment];
LABEL_31:
    v10 = _specDefinitionForEntertainment;
    goto LABEL_32;
  }

  if ([labelCopy isEqualToString:@"NightOut"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForNightOut];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"SportEvent"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForSportEvent];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Performance"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForPerformance];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Activity"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForActivity];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"WinterSport"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForWinterSport];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Beaching"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForBeaching];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Hiking"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForHiking];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Diving"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForDiving];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Climbing"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForClimbing];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Breakfast"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForBreakfast];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Lunch"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForLunch];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Dinner"])
  {
    _specDefinitionForEntertainment = [self _specDefinitionForDinner];
    goto LABEL_31;
  }

  if ([labelCopy isEqualToString:@"Gathering"])
  {
    _specCollectionForBirthday = [self _specCollectionForGathering];
LABEL_3:
    v9 = _specCollectionForBirthday;
    if (_specCollectionForBirthday)
    {
      goto LABEL_33;
    }

    goto LABEL_4;
  }

  v13 = +[PGLogging sharedLogging];
  loggingConnection = [v13 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = labelCopy;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "No spec definition for %@", &v15, 0xCu);
  }

LABEL_4:
  v10 = 0;
LABEL_32:
  v9 = [self _buildSpecCollectionForMeaningLabel:labelCopy withSpecDefinition:v10 features:featuresCopy];

LABEL_33:

  return v9;
}

@end