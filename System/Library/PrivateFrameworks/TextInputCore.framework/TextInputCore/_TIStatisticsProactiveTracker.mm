@interface _TIStatisticsProactiveTracker
+ (id)sharedInstance;
- (_TIStatisticsProactiveTracker)init;
- (void)trackEngagementFailureWithDescription:(unsigned __int8)description description:(id)a4 categories:(id)categories locale:(id)locale fieldType:(id)type;
- (void)trackFailureWithDescription:(unsigned __int8)description description:(id)a4 categories:(id)categories locale:(id)locale fieldType:(id)type;
- (void)trackFailureWithSource:(unsigned __int8)source reason:(unsigned __int8)reason categories:(id)categories locale:(id)locale fieldType:(id)type;
- (void)trackPredictionTimeWithSource:(unsigned __int8)source time:(double)time selected:(BOOL)selected categories:(id)categories locale:(id)locale fieldType:(id)type;
- (void)trackSelectedWithSource:(unsigned __int8)source position:(unint64_t)position categories:(id)categories locale:(id)locale fieldType:(id)type;
- (void)trackSuggestedWithSource:(unsigned __int8)source count:(unint64_t)count categories:(id)categories locale:(id)locale fieldType:(id)type;
- (void)trackTriggeredWithSource:(unsigned __int8)source categories:(id)categories locale:(id)locale fieldType:(id)type;
@end

@implementation _TIStatisticsProactiveTracker

- (void)trackEngagementFailureWithDescription:(unsigned __int8)description description:(id)a4 categories:(id)categories locale:(id)locale fieldType:(id)type
{
  descriptionCopy = description;
  v39[4] = *MEMORY[0x277D85DE8];
  v12 = a4;
  categoriesCopy = categories;
  localeCopy = locale;
  typeCopy = type;
  selfCopy = self;
  engagementEventDescriptionTracker = self->_engagementEventDescriptionTracker;
  v18 = descriptionCopy;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:descriptionCopy];
  v39[0] = v19;
  v39[1] = v12;
  v32 = v12;
  v20 = localeCopy;
  v39[2] = localeCopy;
  v39[3] = typeCopy;
  v21 = typeCopy;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [(PETScalarEventTracker *)engagementEventDescriptionTracker trackEventWithPropertyValues:v22];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = categoriesCopy;
  v23 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      v26 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v33 + 1) + 8 * v26);
        engagementCategoryEventDescriptionTracker = selfCopy->_engagementCategoryEventDescriptionTracker;
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
        v37[0] = v29;
        v37[1] = v32;
        v37[2] = v27;
        v37[3] = v20;
        v37[4] = v21;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
        [(PETScalarEventTracker *)engagementCategoryEventDescriptionTracker trackEventWithPropertyValues:v30];

        ++v26;
      }

      while (v24 != v26);
      v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v24);
  }
}

- (void)trackPredictionTimeWithSource:(unsigned __int8)source time:(double)time selected:(BOOL)selected categories:(id)categories locale:(id)locale fieldType:(id)type
{
  selectedCopy = selected;
  sourceCopy = source;
  v42[4] = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  localeCopy = locale;
  typeCopy = type;
  v17 = [MEMORY[0x277CCABB0] numberWithBool:selectedCopy];
  stringValue = [v17 stringValue];

  selfCopy = self;
  timeInPredictionBarEventTracker = self->_timeInPredictionBarEventTracker;
  v21 = sourceCopy;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sourceCopy];
  v42[0] = v22;
  v42[1] = stringValue;
  v23 = stringValue;
  v35 = localeCopy;
  v42[2] = localeCopy;
  v42[3] = typeCopy;
  v24 = typeCopy;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [(PETDistributionEventTracker *)timeInPredictionBarEventTracker trackEventWithPropertyValues:v25 value:time];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = categoriesCopy;
  v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
    do
    {
      v29 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v36 + 1) + 8 * v29);
        timeInPredictionBarCategoryEventTracker = selfCopy->_timeInPredictionBarCategoryEventTracker;
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v21];
        v40[0] = v32;
        v40[1] = v23;
        v40[2] = v30;
        v40[3] = v35;
        v40[4] = v24;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];
        [(PETDistributionEventTracker *)timeInPredictionBarCategoryEventTracker trackEventWithPropertyValues:v33 value:time];

        ++v29;
      }

      while (v27 != v29);
      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }
}

- (void)trackSelectedWithSource:(unsigned __int8)source position:(unint64_t)position categories:(id)categories locale:(id)locale fieldType:(id)type
{
  sourceCopy = source;
  v42[4] = *MEMORY[0x277D85DE8];
  obja = categories;
  localeCopy = locale;
  typeCopy = type;
  selfCopy = self;
  selectedEventTracker = self->_selectedEventTracker;
  v33 = sourceCopy;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sourceCopy];
  v42[0] = v15;
  positionCopy = position;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:position];
  stringValue = [v17 stringValue];
  v42[1] = stringValue;
  v42[2] = localeCopy;
  v35 = localeCopy;
  v19 = typeCopy;
  v42[3] = typeCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [(PETScalarEventTracker *)selectedEventTracker trackEventWithPropertyValues:v20];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = obja;
  v21 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      v24 = 0;
      do
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v36 + 1) + 8 * v24);
        selectedCategoryEventTracker = selfCopy->_selectedCategoryEventTracker;
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33];
        v40[0] = v27;
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:positionCopy];
        stringValue2 = [v28 stringValue];
        v40[1] = stringValue2;
        v40[2] = v25;
        v40[3] = v35;
        v40[4] = v19;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];
        [(PETScalarEventTracker *)selectedCategoryEventTracker trackEventWithPropertyValues:v30];

        ++v24;
      }

      while (v22 != v24);
      v22 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)trackFailureWithSource:(unsigned __int8)source reason:(unsigned __int8)reason categories:(id)categories locale:(id)locale fieldType:(id)type
{
  reasonCopy = reason;
  sourceCopy = source;
  v40[4] = *MEMORY[0x277D85DE8];
  obja = categories;
  localeCopy = locale;
  typeCopy = type;
  selfCopy = self;
  failureEventTracker = self->_failureEventTracker;
  v32 = sourceCopy;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sourceCopy];
  v40[0] = v15;
  v16 = reasonCopy;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:reasonCopy];
  v40[1] = v17;
  v40[2] = localeCopy;
  v18 = localeCopy;
  v19 = typeCopy;
  v40[3] = typeCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  [(PETScalarEventTracker *)failureEventTracker trackEventWithPropertyValues:v20];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = obja;
  v21 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v34 + 1) + 8 * v24);
        failureCategoryEventTracker = selfCopy->_failureCategoryEventTracker;
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v32];
        v38[0] = v27;
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
        v38[1] = v28;
        v38[2] = v25;
        v38[3] = v18;
        v38[4] = v19;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:5];
        [(PETScalarEventTracker *)failureCategoryEventTracker trackEventWithPropertyValues:v29];

        ++v24;
      }

      while (v22 != v24);
      v22 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v22);
  }
}

- (void)trackSuggestedWithSource:(unsigned __int8)source count:(unint64_t)count categories:(id)categories locale:(id)locale fieldType:(id)type
{
  sourceCopy = source;
  v42[4] = *MEMORY[0x277D85DE8];
  obja = categories;
  localeCopy = locale;
  typeCopy = type;
  selfCopy = self;
  suggestedEventTracker = self->_suggestedEventTracker;
  v33 = sourceCopy;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sourceCopy];
  v42[0] = v15;
  countCopy = count;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  stringValue = [v17 stringValue];
  v42[1] = stringValue;
  v42[2] = localeCopy;
  v35 = localeCopy;
  v19 = typeCopy;
  v42[3] = typeCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [(PETScalarEventTracker *)suggestedEventTracker trackEventWithPropertyValues:v20];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = obja;
  v21 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      v24 = 0;
      do
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v36 + 1) + 8 * v24);
        suggestedCategoryEventTracker = selfCopy->_suggestedCategoryEventTracker;
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33];
        v40[0] = v27;
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:countCopy];
        stringValue2 = [v28 stringValue];
        v40[1] = stringValue2;
        v40[2] = v25;
        v40[3] = v35;
        v40[4] = v19;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];
        [(PETScalarEventTracker *)suggestedCategoryEventTracker trackEventWithPropertyValues:v30];

        ++v24;
      }

      while (v22 != v24);
      v22 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)trackFailureWithDescription:(unsigned __int8)description description:(id)a4 categories:(id)categories locale:(id)locale fieldType:(id)type
{
  descriptionCopy = description;
  v39[4] = *MEMORY[0x277D85DE8];
  v12 = a4;
  categoriesCopy = categories;
  localeCopy = locale;
  typeCopy = type;
  selfCopy = self;
  failureEventDescriptionTracker = self->_failureEventDescriptionTracker;
  v18 = descriptionCopy;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:descriptionCopy];
  v39[0] = v19;
  v39[1] = v12;
  v32 = v12;
  v20 = localeCopy;
  v39[2] = localeCopy;
  v39[3] = typeCopy;
  v21 = typeCopy;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [(PETScalarEventTracker *)failureEventDescriptionTracker trackEventWithPropertyValues:v22];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = categoriesCopy;
  v23 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      v26 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v33 + 1) + 8 * v26);
        failureCategoryEventDescriptionTracker = selfCopy->_failureCategoryEventDescriptionTracker;
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
        v37[0] = v29;
        v37[1] = v32;
        v37[2] = v27;
        v37[3] = v20;
        v37[4] = v21;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
        [(PETScalarEventTracker *)failureCategoryEventDescriptionTracker trackEventWithPropertyValues:v30];

        ++v26;
      }

      while (v24 != v26);
      v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v24);
  }
}

- (void)trackTriggeredWithSource:(unsigned __int8)source categories:(id)categories locale:(id)locale fieldType:(id)type
{
  sourceCopy = source;
  v31[3] = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  localeCopy = locale;
  typeCopy = type;
  triggeredEventTracker = self->_triggeredEventTracker;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sourceCopy];
  v31[0] = v14;
  v31[1] = localeCopy;
  v31[2] = typeCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  [(PETScalarEventTracker *)triggeredEventTracker trackEventWithPropertyValues:v15];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = categoriesCopy;
  v16 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v25 + 1) + 8 * v19);
        triggeredCategoryEventTracker = self->_triggeredCategoryEventTracker;
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:sourceCopy];
        v29[0] = v22;
        v29[1] = v20;
        v29[2] = localeCopy;
        v29[3] = typeCopy;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
        [(PETScalarEventTracker *)triggeredCategoryEventTracker trackEventWithPropertyValues:v23];

        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v17);
  }
}

- (_TIStatisticsProactiveTracker)init
{
  v106[3] = *MEMORY[0x277D85DE8];
  v88.receiver = self;
  v88.super_class = _TIStatisticsProactiveTracker;
  v2 = [(_TIStatisticsProactiveTracker *)&v88 init];
  if (v2)
  {
    v3 = MEMORY[0x277D41DA0];
    v105[0] = &unk_28400BC88;
    v105[1] = &unk_28400BCA0;
    v106[0] = @"LanguageModeling";
    v106[1] = @"ResponseKit";
    v105[2] = &unk_28400BCB8;
    v106[2] = @"TaggedTextField";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];
    v5 = [v3 propertyWithName:@"source" enumMapping:v4];

    v6 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"locale"];
    v7 = TIStatisticsCategoryToLegacyCategoryDictionary();
    allKeys = [v7 allKeys];

    v8 = TIStatisticsDescriptionToLegacyDescriptionDictionary();
    allKeys2 = [v8 allKeys];

    v9 = TIStatisticsEngagementDescriptionToLegacyDescriptionDictionary();
    allKeys3 = [v9 allKeys];

    v83 = [MEMORY[0x277D41DA0] propertyWithName:@"category" possibleValues:allKeys];
    v84 = [MEMORY[0x277D41DA0] propertyWithName:@"count" possibleValues:&unk_28400B928];
    v10 = MEMORY[0x277D41DA0];
    v103[0] = &unk_28400BCA0;
    v103[1] = &unk_28400BCB8;
    v104[0] = @"NoResult";
    v104[1] = @"Error";
    v103[2] = &unk_28400BCD0;
    v104[2] = @"Timeout";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:3];
    v85 = [v10 propertyWithName:@"reason" enumMapping:v11];

    v12 = [MEMORY[0x277D41DA0] propertyWithName:@"description" possibleValues:allKeys2];
    v87 = [MEMORY[0x277D41DA0] propertyWithName:@"description" possibleValues:allKeys3];
    v86 = [MEMORY[0x277D41DA0] propertyWithName:@"position" possibleValues:&unk_28400B940];
    v79 = [MEMORY[0x277D41DA0] propertyWithName:@"position" possibleValues:&unk_28400B958];
    v13 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"fieldType"];
    v14 = objc_alloc(MEMORY[0x277D41DB8]);
    v102[0] = v5;
    v102[1] = v12;
    v102[2] = v6;
    v102[3] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:4];
    v16 = [v14 initWithFeatureId:@"quicktype" event:@"zeroSuggDesc" registerProperties:v15];
    failureEventDescriptionTracker = v2->_failureEventDescriptionTracker;
    v2->_failureEventDescriptionTracker = v16;

    v18 = objc_alloc(MEMORY[0x277D41DB8]);
    v101[0] = v5;
    v101[1] = v12;
    v101[2] = v83;
    v101[3] = v6;
    v101[4] = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:5];
    v20 = [v18 initWithFeatureId:@"quicktype" event:@"zeroSuggDesc_category" registerProperties:v19];
    failureCategoryEventDescriptionTracker = v2->_failureCategoryEventDescriptionTracker;
    v2->_failureCategoryEventDescriptionTracker = v20;

    v22 = objc_alloc(MEMORY[0x277D41DB8]);
    v100[0] = v5;
    v100[1] = v87;
    v100[2] = v6;
    v100[3] = v13;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:4];
    v24 = [v22 initWithFeatureId:@"quicktype" event:@"zeroEngageDesc" registerProperties:v23];
    engagementEventDescriptionTracker = v2->_engagementEventDescriptionTracker;
    v2->_engagementEventDescriptionTracker = v24;

    v26 = objc_alloc(MEMORY[0x277D41DB8]);
    v99[0] = v5;
    v99[1] = v87;
    v99[2] = v83;
    v99[3] = v6;
    v99[4] = v13;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:5];
    v28 = [v26 initWithFeatureId:? event:? registerProperties:?];
    engagementCategoryEventDescriptionTracker = v2->_engagementCategoryEventDescriptionTracker;
    v2->_engagementCategoryEventDescriptionTracker = v28;

    v30 = objc_alloc(MEMORY[0x277D41DB8]);
    v98[0] = v5;
    v98[1] = v6;
    v98[2] = v13;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:3];
    v32 = [v30 initWithFeatureId:@"quicktype" event:@"triggered" registerProperties:v31];
    triggeredEventTracker = v2->_triggeredEventTracker;
    v2->_triggeredEventTracker = v32;

    v34 = objc_alloc(MEMORY[0x277D41DB8]);
    v97[0] = v5;
    v97[1] = v83;
    v97[2] = v6;
    v97[3] = v13;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:4];
    v36 = [v34 initWithFeatureId:@"quicktype" event:@"triggered_category" registerProperties:v35];
    triggeredCategoryEventTracker = v2->_triggeredCategoryEventTracker;
    v2->_triggeredCategoryEventTracker = v36;

    v38 = objc_alloc(MEMORY[0x277D41DB8]);
    v96[0] = v5;
    v96[1] = v84;
    v96[2] = v6;
    v96[3] = v13;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
    v40 = [v38 initWithFeatureId:@"quicktype" event:@"suggested" registerProperties:v39];
    suggestedEventTracker = v2->_suggestedEventTracker;
    v2->_suggestedEventTracker = v40;

    v42 = objc_alloc(MEMORY[0x277D41DB8]);
    v95[0] = v5;
    v95[1] = v84;
    v95[2] = v83;
    v95[3] = v6;
    v95[4] = v13;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:5];
    v44 = [v42 initWithFeatureId:@"quicktype" event:@"suggested_category" registerProperties:v43];
    suggestedCategoryEventTracker = v2->_suggestedCategoryEventTracker;
    v2->_suggestedCategoryEventTracker = v44;

    v46 = objc_alloc(MEMORY[0x277D41DB8]);
    v94[0] = v5;
    v94[1] = v85;
    v94[2] = v6;
    v94[3] = v13;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:4];
    v48 = [v46 initWithFeatureId:@"quicktype" event:@"failure" registerProperties:v47];
    failureEventTracker = v2->_failureEventTracker;
    v2->_failureEventTracker = v48;

    v50 = objc_alloc(MEMORY[0x277D41DB8]);
    v93[0] = v5;
    v93[1] = v85;
    v93[2] = v83;
    v93[3] = v6;
    v93[4] = v13;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:5];
    v52 = [v50 initWithFeatureId:@"quicktype" event:@"failure_category" registerProperties:v51];
    failureCategoryEventTracker = v2->_failureCategoryEventTracker;
    v2->_failureCategoryEventTracker = v52;

    v54 = objc_alloc(MEMORY[0x277D41DB8]);
    v92[0] = v5;
    v92[1] = v86;
    v92[2] = v6;
    v92[3] = v13;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
    v56 = [v54 initWithFeatureId:@"quicktype" event:@"selected" registerProperties:v55];
    selectedEventTracker = v2->_selectedEventTracker;
    v2->_selectedEventTracker = v56;

    v58 = objc_alloc(MEMORY[0x277D41DB8]);
    v91[0] = v5;
    v91[1] = v86;
    v91[2] = v83;
    v91[3] = v6;
    v91[4] = v13;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:5];
    v60 = [v58 initWithFeatureId:@"quicktype" event:@"selected_category" registerProperties:v59];
    selectedCategoryEventTracker = v2->_selectedCategoryEventTracker;
    v2->_selectedCategoryEventTracker = v60;

    v62 = objc_alloc(MEMORY[0x277D41D98]);
    v90[0] = v5;
    v90[1] = v79;
    v90[2] = v6;
    v90[3] = v13;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
    v64 = [v62 initWithFeatureId:@"quicktype" event:@"timing" registerProperties:v63];
    timeInPredictionBarEventTracker = v2->_timeInPredictionBarEventTracker;
    v2->_timeInPredictionBarEventTracker = v64;

    v66 = objc_alloc(MEMORY[0x277D41D98]);
    v89[0] = v5;
    v89[1] = v79;
    v89[2] = v83;
    v89[3] = v6;
    v89[4] = v13;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:5];
    v68 = [v66 initWithFeatureId:@"quicktype" event:@"timing_category" registerProperties:v67];
    timeInPredictionBarCategoryEventTracker = v2->_timeInPredictionBarCategoryEventTracker;
    v2->_timeInPredictionBarCategoryEventTracker = v68;

    v70 = objc_alloc(MEMORY[0x277D41DB8]);
    v71 = MEMORY[0x277CBEBF8];
    v72 = [v70 initWithFeatureId:@"quicktype" event:@"pers_word_accept" registerProperties:MEMORY[0x277CBEBF8]];
    personalizationWordAcceptanceTracker = v2->_personalizationWordAcceptanceTracker;
    v2->_personalizationWordAcceptanceTracker = v72;

    v74 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"quicktype" event:@"pers_offer" registerProperties:v71];
    personalizationOfferTracker = v2->_personalizationOfferTracker;
    v2->_personalizationOfferTracker = v74;

    v76 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"quicktype" event:@"pers_engage" registerProperties:v71];
    personalizationEngagementTracker = v2->_personalizationEngagementTracker;
    v2->_personalizationEngagementTracker = v76;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3210 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3210, &__block_literal_global_350);
  }

  v3 = sharedInstance_instance;

  return v3;
}

@end