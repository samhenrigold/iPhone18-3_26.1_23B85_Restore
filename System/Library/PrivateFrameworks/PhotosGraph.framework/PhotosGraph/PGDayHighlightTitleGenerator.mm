@interface PGDayHighlightTitleGenerator
- (PGDayHighlightTitleGenerator)initWithSummarizedFeatures:(id)features momentNodes:(id)nodes titleGenerationContext:(id)context loggingConnection:(id)connection;
- (PGTitleTuple)titleTuple;
- (id)dayHighlightMeaningLabels;
- (id)localizedTitleStringForSortedSummarizedFeatures:(id)features;
- (id)localizedTitleStringFromBusinessFeature:(id)feature;
- (id)localizedTitleStringFromDistrictNode:(id)node districtName:(id)name;
- (id)localizedTitleStringFromHolidayDateFeature:(id)feature;
- (id)localizedTitleStringFromLocationFeature:(id)feature;
- (id)localizedTitleStringFromMeaningFeature:(id)feature;
- (id)localizedTitleStringFromPublicEventFeature:(id)feature;
- (id)nameFromLocationFeature:(id)feature;
@end

@implementation PGDayHighlightTitleGenerator

- (id)dayHighlightMeaningLabels
{
  v4[11] = *MEMORY[0x277D85DE8];
  v4[0] = @"Entertainment";
  v4[1] = @"Theater";
  v4[2] = @"Dance";
  v4[3] = @"AmusementPark";
  v4[4] = @"SportEvent";
  v4[5] = @"Performance";
  v4[6] = @"Concert";
  v4[7] = @"Festival";
  v4[8] = @"Museum";
  v4[9] = @"Birthday";
  v4[10] = @"HolidayEvent";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:11];

  return v2;
}

- (id)localizedTitleStringFromDistrictNode:(id)node districtName:(id)name
{
  v54 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  nameCopy = name;
  locationHelper = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
  v9 = [locationHelper cityNodeFromDistrictNode:nodeCopy];

  if ([v9 count] == 1)
  {
    v42 = nodeCopy;
    anyNode = [v9 anyNode];
    locationHelper2 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
    v12 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:anyNode locationHelper:locationHelper2];

    v13 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    v41 = v12;
    [v13 setString:v12];
    string = [v13 string];
    v17 = [string length];

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __82__PGDayHighlightTitleGenerator_localizedTitleStringFromDistrictNode_districtName___block_invoke;
    v46[3] = &unk_27887FF90;
    v18 = v13;
    v47 = v18;
    v19 = v14;
    v48 = v19;
    [v18 enumerateTokensInRange:0 usingBlock:{v17, v46}];
    [v18 setString:nameCopy];
    string2 = [v18 string];
    v21 = [string2 length];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __82__PGDayHighlightTitleGenerator_localizedTitleStringFromDistrictNode_districtName___block_invoke_2;
    v43[3] = &unk_27887FF90;
    v22 = v18;
    v44 = v22;
    v23 = v15;
    v45 = v23;
    [v22 enumerateTokensInRange:0 usingBlock:{v21, v43}];
    v24 = [v23 count];
    v25 = [v19 count];
    v26 = v24 - v25;
    if (v24 < v25)
    {
LABEL_6:
      v30 = MEMORY[0x277CCACA8];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"PGLocationTitleFormatOneDistrict %@ city %@" value:@"PGLocationTitleFormatOneDistrict %@ city %@" table:@"Localizable"];
      v33 = v41;
      v34 = [v30 localizedStringWithFormat:v32, nameCopy, v41];

      v49[0] = nameCopy;
      v49[1] = v41;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
      v35 = [PGCommonTitleUtility titleWithNoLineBreakSpaceForTitle:v34 andUsedNames:v29];
    }

    else
    {
      v27 = v25;
      v28 = 0;
      while (1)
      {
        v29 = [v23 subarrayWithRange:{v28, v27}];
        if ([v29 isEqualToArray:v19])
        {
          break;
        }

        if (++v28 > v26)
        {
          goto LABEL_6;
        }
      }

      loggingConnection = self->_loggingConnection;
      v33 = v41;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v51 = v41;
        v52 = 2112;
        v53 = nameCopy;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Only city name %@ used for highlight subtitle, not using district name %@", buf, 0x16u);
      }

      v35 = v41;
    }

    nodeCopy = v42;
  }

  else
  {
    v36 = self->_loggingConnection;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = v36;
      uUID = [nodeCopy UUID];
      *buf = 138412546;
      v51 = uUID;
      v52 = 2112;
      v53 = nameCopy;
      _os_log_error_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_ERROR, "cityNode from districtNode count is invalid for districtNode: %@ with name: %@", buf, 0x16u);
    }

    v35 = 0;
  }

  return v35;
}

void __82__PGDayHighlightTitleGenerator_localizedTitleStringFromDistrictNode_districtName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) string];
  v7 = [v6 substringWithRange:{a2, a3}];

  [*(a1 + 40) addObject:v7];
}

void __82__PGDayHighlightTitleGenerator_localizedTitleStringFromDistrictNode_districtName___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) string];
  v7 = [v6 substringWithRange:{a2, a3}];

  [*(a1 + 40) addObject:v7];
}

- (id)localizedTitleStringFromHolidayDateFeature:(id)feature
{
  featureCopy = feature;
  v5 = [PGTitleGeneratorDateMatching alloc];
  v6 = [(MAElementCollection *)self->_momentNodes set];
  titleGenerationContext = self->_titleGenerationContext;
  holidayName = [featureCopy holidayName];

  v9 = [(PGTitleGeneratorDateMatching *)v5 initWithType:4 referenceDateInterval:0 momentNodes:v6 titleGenerationContext:titleGenerationContext holidayName:holidayName isForHighlight:1];
  [(PGTitleGeneratorDateMatching *)v9 setLineBreakBehavior:2];
  title = [(PGTitleGeneratorDateMatching *)v9 title];
  stringValue = [title stringValue];

  return stringValue;
}

- (id)localizedTitleStringFromLocationFeature:(id)feature
{
  v20 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v5 = [(PGDayHighlightTitleGenerator *)self nameFromLocationFeature:featureCopy];
  locationNode = [featureCopy locationNode];

  if (v5)
  {
    label = [locationNode label];
    v8 = [label isEqualToString:@"District"];

    if (v8)
    {
      v9 = [(PGDayHighlightTitleGenerator *)self localizedTitleStringFromDistrictNode:locationNode districtName:v5];
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"PGDayHighlightTitleFormatOneLocation %@" value:@"PGDayHighlightTitleFormatOneLocation %@" table:@"Localizable"];
      v14 = [v11 localizedStringWithFormat:v13, v5];

      v9 = [v14 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    }
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v16 = loggingConnection;
      name = [locationNode name];
      *buf = 138412290;
      v19 = name;
      _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "Nil beautified locationName for locationNode %@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (id)localizedTitleStringFromPublicEventFeature:(id)feature
{
  featureCopy = feature;
  v5 = [PGSpecBasedHighlightTitleGenerator alloc];
  v6 = [(MAElementCollection *)self->_momentNodes set];
  publicEventLabel = [featureCopy publicEventLabel];

  v8 = [(PGSpecBasedHighlightTitleGenerator *)v5 initWithMomentNodes:v6 meaningLabel:publicEventLabel createVerboseTitle:0 titleGenerationContext:self->_titleGenerationContext];
  [(PGTitleGenerator *)v8 setLineBreakBehavior:2];
  title = [(PGTitleGenerator *)v8 title];
  stringValue = [title stringValue];

  return stringValue;
}

- (id)localizedTitleStringFromBusinessFeature:(id)feature
{
  businessNode = [feature businessNode];
  name = [businessNode name];

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PGDayHighlightTitleFormatOneBusinessLocation %@" value:@"PGDayHighlightTitleFormatOneBusinessLocation %@" table:@"Localizable"];
  v8 = [v5 localizedStringWithFormat:v7, name];

  v9 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v9;
}

- (id)localizedTitleStringFromMeaningFeature:(id)feature
{
  featureCopy = feature;
  v5 = [PGSpecBasedHighlightTitleGenerator alloc];
  v6 = [(MAElementCollection *)self->_momentNodes set];
  meaningLabel = [featureCopy meaningLabel];

  v8 = [(PGSpecBasedHighlightTitleGenerator *)v5 initWithMomentNodes:v6 meaningLabel:meaningLabel createVerboseTitle:0 titleGenerationContext:self->_titleGenerationContext];
  [(PGTitleGenerator *)v8 setLineBreakBehavior:2];
  title = [(PGTitleGenerator *)v8 title];
  stringValue = [title stringValue];

  return stringValue;
}

- (id)nameFromLocationFeature:(id)feature
{
  featureCopy = feature;
  subtype = [featureCopy subtype];
  if ((subtype - 2) >= 4)
  {
    if (subtype == 1)
    {
      locationName = [featureCopy locationName];
    }

    else
    {
      locationName = 0;
    }
  }

  else
  {
    locationNode = [featureCopy locationNode];
    locationHelper = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
    locationName = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:locationNode locationHelper:locationHelper];
  }

  return locationName;
}

- (id)localizedTitleStringForSortedSummarizedFeatures:(id)features
{
  v38 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = featuresCopy;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        type = [v14 type];
        v16 = v4;
        if (type != 1)
        {
          type2 = [v14 type];
          v16 = v5;
          if (type2 != 3)
          {
            type3 = [v14 type];
            v16 = v6;
            if (type3 != 2)
            {
              type4 = [v14 type];
              v16 = v7;
              if (type4 != 4)
              {
                type5 = [v14 type];
                v16 = v8;
                if (type5 != 5)
                {
                  continue;
                }
              }
            }
          }
        }

        [v16 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  dayHighlightMeaningLabels = [(PGDayHighlightTitleGenerator *)self dayHighlightMeaningLabels];
  firstObject = [v5 firstObject];
  if ([v5 count] == 1 && (objc_msgSend(firstObject, "meaningLabel"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(dayHighlightMeaningLabels, "containsObject:", v23), v23, v24) && (-[PGDayHighlightTitleGenerator localizedTitleStringFromMeaningFeature:](self, "localizedTitleStringFromMeaningFeature:", firstObject), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = v25;
  }

  else if ([v8 count] != 1 || (objc_msgSend(v8, "firstObject"), v27 = objc_claimAutoreleasedReturnValue(), -[PGDayHighlightTitleGenerator localizedTitleStringFromHolidayDateFeature:](self, "localizedTitleStringFromHolidayDateFeature:", v27), v26 = objc_claimAutoreleasedReturnValue(), v27, !v26))
  {
    if ([v7 count] != 1 || (objc_msgSend(v7, "firstObject"), v28 = objc_claimAutoreleasedReturnValue(), -[PGDayHighlightTitleGenerator localizedTitleStringFromPublicEventFeature:](self, "localizedTitleStringFromPublicEventFeature:", v28), v26 = objc_claimAutoreleasedReturnValue(), v28, !v26))
    {
      if ([v6 count] != 1 || (objc_msgSend(v6, "firstObject"), v29 = objc_claimAutoreleasedReturnValue(), -[PGDayHighlightTitleGenerator localizedTitleStringFromBusinessFeature:](self, "localizedTitleStringFromBusinessFeature:", v29), v26 = objc_claimAutoreleasedReturnValue(), v29, !v26))
      {
        if ([v4 count] == 1)
        {
          firstObject2 = [v4 firstObject];
          v26 = [(PGDayHighlightTitleGenerator *)self localizedTitleStringFromLocationFeature:firstObject2];
        }

        else
        {
          v26 = 0;
        }
      }
    }
  }

  return v26;
}

- (PGTitleTuple)titleTuple
{
  titleTuple = self->_titleTuple;
  if (!titleTuple)
  {
    v4 = [(PGDayHighlightTitleGenerator *)self localizedTitleStringForSortedSummarizedFeatures:self->_summarizedFeatures];
    if (v4)
    {
      v5 = [PGTitle titleWithString:v4 category:4];
      v6 = [PGTitle titleWithString:&stru_2843F5C58 category:0];
      v7 = [[PGTitleTuple alloc] initWithWithTitle:v5 subtitle:v6];
      v8 = self->_titleTuple;
      self->_titleTuple = v7;
    }

    titleTuple = self->_titleTuple;
  }

  return titleTuple;
}

- (PGDayHighlightTitleGenerator)initWithSummarizedFeatures:(id)features momentNodes:(id)nodes titleGenerationContext:(id)context loggingConnection:(id)connection
{
  featuresCopy = features;
  nodesCopy = nodes;
  contextCopy = context;
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = PGDayHighlightTitleGenerator;
  v15 = [(PGDayHighlightTitleGenerator *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_summarizedFeatures, features);
    objc_storeStrong(&v16->_momentNodes, nodes);
    objc_storeStrong(&v16->_loggingConnection, connection);
    objc_storeStrong(&v16->_titleGenerationContext, context);
  }

  return v16;
}

@end