@interface PGHighlightsTitleSpecFactory
+ (id)orderedHighlightTitleSpecTypesForMeaningLabel:(id)label;
+ (id)specCollectionForMeaningLabel:(id)label allowAllCities:(BOOL)cities;
+ (id)specPoolForAOILocation;
+ (id)specPoolForBusinessItem;
+ (id)specPoolForGenericLocation:(BOOL)location;
+ (id)specPoolForPublicEvent;
+ (id)specPoolForPublicEventWithBusiness;
+ (id)specPoolsForBirthdayIncludingLocationIfPossible:(BOOL)possible allowAllCities:(BOOL)cities;
+ (id)specPoolsForHolidayEventIncludingLocationIfPossible:(BOOL)possible allowAllCities:(BOOL)cities;
+ (id)titleSpecForGenericLocation:(BOOL)location;
+ (id)titleSpecForHolidayEventIncludingLocationIfPossible:(BOOL)possible;
@end

@implementation PGHighlightsTitleSpecFactory

+ (id)orderedHighlightTitleSpecTypesForMeaningLabel:(id)label
{
  v3 = orderedHighlightTitleSpecTypesForMeaningLabel__onceToken;
  labelCopy = label;
  if (v3 != -1)
  {
    dispatch_once(&orderedHighlightTitleSpecTypesForMeaningLabel__onceToken, &__block_literal_global_34243);
  }

  v5 = [orderedHighlightTitleSpecTypesForMeaningLabel__specTypesByMeaningLabel objectForKeyedSubscript:labelCopy];

  return v5;
}

void __78__PGHighlightsTitleSpecFactory_orderedHighlightTitleSpecTypesForMeaningLabel___block_invoke()
{
  v4[27] = *MEMORY[0x277D85DE8];
  v3[0] = @"Activity";
  v3[1] = @"Hiking";
  v4[0] = &unk_284485AF0;
  v4[1] = &unk_284485AF0;
  v3[2] = @"Climbing";
  v3[3] = @"Beaching";
  v4[2] = &unk_284485AF0;
  v4[3] = &unk_284485AF0;
  v3[4] = @"Diving";
  v3[5] = @"WinterSport";
  v4[4] = &unk_284485AF0;
  v4[5] = &unk_284485AF0;
  v3[6] = @"Entertainment";
  v3[7] = @"Theater";
  v4[6] = &unk_284485B08;
  v4[7] = &unk_284485B08;
  v3[8] = @"Dance";
  v3[9] = @"AmusementPark";
  v4[8] = &unk_284485B08;
  v4[9] = &unk_284485B08;
  v3[10] = @"SportEvent";
  v3[11] = @"Performance";
  v4[10] = &unk_284485B08;
  v4[11] = &unk_284485B08;
  v3[12] = @"Concert";
  v3[13] = @"Festival";
  v4[12] = &unk_284485B08;
  v4[13] = &unk_284485B08;
  v3[14] = @"NightOut";
  v3[15] = @"Museum";
  v4[14] = &unk_284485B20;
  v4[15] = &unk_284485B08;
  v3[16] = @"Celebration";
  v3[17] = @"Birthday";
  v4[16] = &unk_284485AD8;
  v4[17] = &unk_284485B68;
  v3[18] = @"Anniversary";
  v3[19] = @"Wedding";
  v4[18] = &unk_284485AD8;
  v4[19] = &unk_284485AD8;
  v3[20] = @"HolidayEvent";
  v3[21] = @"Restaurant";
  v4[20] = &unk_284485B80;
  v4[21] = &unk_284485B38;
  v3[22] = @"Breakfast";
  v3[23] = @"Lunch";
  v4[22] = &unk_284485B38;
  v4[23] = &unk_284485B38;
  v3[24] = @"Dinner";
  v3[25] = @"Gathering";
  v4[24] = &unk_284485B38;
  v4[25] = &unk_284485AD8;
  v0 = [MEMORY[0x277D27780] appleEvents];
  v3[26] = v0;
  v4[26] = &unk_284485B50;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:27];
  v2 = orderedHighlightTitleSpecTypesForMeaningLabel__specTypesByMeaningLabel;
  orderedHighlightTitleSpecTypesForMeaningLabel__specTypesByMeaningLabel = v1;
}

+ (id)titleSpecForHolidayEventIncludingLocationIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = [PGTitleSpecTimeArgument argumentWithTimeType:3];
  v5 = [PGTitleSpec alloc];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (possibleCopy)
  {
    v8 = [v6 localizedStringForKey:@"PGLocalizedHolidayLocation %@ holidayEventName %@" value:@"PGLocalizedHolidayLocation %@ holidayEventName %@" table:@"Localizable"];
    v9 = [(PGTitleSpec *)v5 initWithFormat:v8 titleCategory:0];

    v10 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
    v15[0] = v10;
    v15[1] = v4;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [(PGTitleSpec *)v9 setArguments:v11];
  }

  else
  {
    v12 = [v6 localizedStringForKey:@"PGLocalizedHolidayEventName %@" value:@"PGLocalizedHolidayEventName %@" table:@"Localizable"];
    v9 = [(PGTitleSpec *)v5 initWithFormat:v12 titleCategory:0];

    v14 = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [(PGTitleSpec *)v9 setArguments:v10];
  }

  return v9;
}

+ (id)specPoolsForHolidayEventIncludingLocationIfPossible:(BOOL)possible allowAllCities:(BOOL)cities
{
  citiesCopy = cities;
  possibleCopy = possible;
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = [self titleSpecForHolidayEventIncludingLocationIfPossible:?];
  v22[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v9 = [PGTitleSpecPool poolWithSpecs:v8];

  v10 = [self titleSpecForGenericLocation:citiesCopy];
  v21 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v12 = [PGTitleSpecPool poolWithSpecs:v11];

  if (possibleCopy)
  {
    v13 = [self titleSpecForHolidayEventIncludingLocationIfPossible:0];
    v20 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v15 = [PGTitleSpecPool poolWithSpecs:v14];

    v19[0] = v9;
    v19[1] = v15;
    v19[2] = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  }

  else
  {
    v18[0] = v9;
    v18[1] = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  }

  return v16;
}

+ (id)specPoolsForBirthdayIncludingLocationIfPossible:(BOOL)possible allowAllCities:(BOOL)cities
{
  citiesCopy = cities;
  possibleCopy = possible;
  v58[2] = *MEMORY[0x277D85DE8];
  v5 = [PGTitleSpecPeopleArgument argumentWithPeopleType:4];
  v6 = [PGTitleSpecTimeArgument argumentWithTimeType:0];
  v7 = [PGTitleSpec alloc];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithName %@ ordinalYearsString %@" value:@"PGPeopleBirthdayTitleFormatWithName %@ ordinalYearsString %@" table:@"Localizable"];
  v10 = [(PGTitleSpec *)v7 initWithFormat:v9 titleCategory:3];

  v11 = [PGTitleSpec alloc];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithName %@" value:@"PGPeopleBirthdayTitleFormatWithName %@" table:@"Localizable"];
  v14 = [(PGTitleSpec *)v11 initWithFormat:v13 titleCategory:3];

  v15 = v6;
  v58[0] = v5;
  v58[1] = v6;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  [(PGTitleSpec *)v10 setArguments:v16];

  v57 = v5;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  [(PGTitleSpec *)v14 setArguments:v17];

  v46 = v10;
  v56 = v10;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v19 = [PGTitleSpecPool poolWithSpecs:v18];

  v55 = v14;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v47 = [PGTitleSpecPool poolWithSpecs:v20];

  v21 = [self titleSpecForGenericLocation:citiesCopy];
  v54 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v23 = [PGTitleSpecPool poolWithSpecs:v22];

  if (possibleCopy)
  {
    v41 = v21;
    v24 = [PGTitleSpec alloc];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v45 = v15;
    [v25 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithLocation %@ name %@ ordinalYearsString %@" value:@"PGPeopleBirthdayTitleFormatWithLocation %@ name %@ ordinalYearsString %@" table:@"Localizable"];
    v26 = v43 = v19;
    v40 = [(PGTitleSpec *)v24 initWithFormat:v26 titleCategory:3];

    v27 = [PGTitleSpec alloc];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithLocation %@ andName %@" value:@"PGPeopleBirthdayTitleFormatWithLocation %@ andName %@" table:@"Localizable"];
    v30 = [(PGTitleSpec *)v27 initWithFormat:v29 titleCategory:4];

    v31 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
    v53[0] = v31;
    v53[1] = v5;
    v53[2] = v45;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
    [(PGTitleSpec *)v40 setArguments:v32];

    v52[0] = v31;
    v52[1] = v5;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    [(PGTitleSpec *)v30 setArguments:v33];

    v51 = v40;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v35 = [PGTitleSpecPool poolWithSpecs:v34];

    v50 = v30;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v37 = [PGTitleSpecPool poolWithSpecs:v36];

    v15 = v45;
    v49[0] = v35;
    v49[1] = v37;
    v49[2] = v43;
    v49[3] = v47;
    v49[4] = v23;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:5];

    v21 = v41;
    v19 = v43;
  }

  else
  {
    v48[0] = v19;
    v48[1] = v47;
    v48[2] = v23;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
  }

  return v38;
}

+ (id)specPoolForAOILocation
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:4];
  v3 = [PGTitleSpecLocationArgument argumentWithLocationType:8 filterLocations:1];
  [v3 setLineBreakBehavior:2];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  [(PGTitleSpec *)v2 setHasSpecArgumentHandlingLineBreakBehavior:1];
  v8 = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  return v6;
}

+ (id)titleSpecForGenericLocation:(BOOL)location
{
  locationCopy = location;
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:4];
  if (locationCopy)
  {
    v5 = 481;
  }

  else
  {
    v5 = 353;
  }

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:v5 filterLocations:1];
  [v6 setLineBreakBehavior:2];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(PGTitleSpec *)v4 setArguments:v7];

  [(PGTitleSpec *)v4 setHasSpecArgumentHandlingLineBreakBehavior:1];

  return v4;
}

+ (id)specPoolForGenericLocation:(BOOL)location
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [self titleSpecForGenericLocation:location];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [PGTitleSpecPool poolWithSpecs:v4];

  return v5;
}

+ (id)specPoolForBusinessItem
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:4];
  v3 = [PGTitleSpecLocationArgument argumentWithLocationType:2 filterLocations:1];
  [v3 setLineBreakBehavior:2];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  [(PGTitleSpec *)v2 setHasSpecArgumentHandlingLineBreakBehavior:1];
  v8 = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  return v6;
}

+ (id)specPoolForPublicEvent
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:0];
  v3 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:0 shouldUseLongPublicEventTitle:1];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  v8 = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  return v6;
}

+ (id)specPoolForPublicEventWithBusiness
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@ - %@" titleCategory:0];
  v3 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:0];
  v4 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:1];
  v10[0] = v4;
  v10[1] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(PGTitleSpec *)v2 setArguments:v5];

  v9 = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v7 = [PGTitleSpecPool poolWithSpecs:v6];

  return v7;
}

+ (id)specCollectionForMeaningLabel:(id)label allowAllCities:(BOOL)cities
{
  citiesCopy = cities;
  v24 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [self orderedHighlightTitleSpecTypesForMeaningLabel:labelCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        unsignedIntegerValue = [*(*(&v19 + 1) + 8 * i) unsignedIntegerValue];
        if (unsignedIntegerValue <= 2)
        {
          if (unsignedIntegerValue)
          {
            if (unsignedIntegerValue == 1)
            {
              specPoolForPublicEventWithBusiness = [self specPoolForPublicEventWithBusiness];
            }

            else
            {
              if (unsignedIntegerValue != 2)
              {
                continue;
              }

              specPoolForPublicEventWithBusiness = [self specPoolForBusinessItem];
            }
          }

          else
          {
            specPoolForPublicEventWithBusiness = [self specPoolForPublicEvent];
          }

          goto LABEL_23;
        }

        if (unsignedIntegerValue <= 4)
        {
          if (unsignedIntegerValue == 3)
          {
            [self specPoolForGenericLocation:citiesCopy];
          }

          else
          {
            [self specPoolForAOILocation];
          }
          specPoolForPublicEventWithBusiness = ;
LABEL_23:
          v16 = specPoolForPublicEventWithBusiness;
          [array addObject:specPoolForPublicEventWithBusiness];
          goto LABEL_24;
        }

        if (unsignedIntegerValue == 5)
        {
          v15 = [self specPoolsForBirthdayIncludingLocationIfPossible:0 allowAllCities:citiesCopy];
        }

        else
        {
          if (unsignedIntegerValue != 6)
          {
            continue;
          }

          v15 = [self specPoolsForHolidayEventIncludingLocationIfPossible:1 allowAllCities:citiesCopy];
        }

        v16 = v15;
        [array addObjectsFromArray:v15];
LABEL_24:
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [PGTitleSpecCollection collectionWithSpecPools:array];

  return v17;
}

@end