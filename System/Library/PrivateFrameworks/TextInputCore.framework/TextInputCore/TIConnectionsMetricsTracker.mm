@interface TIConnectionsMetricsTracker
+ (id)sharedInstance;
- (BOOL)isIgnoredTrigger:(id)trigger;
- (TIConnectionsMetricsTracker)init;
- (void)trackPredictionEngagmentWithConversion:(BOOL)conversion age:(unint64_t)age fieldType:(id)type resultType:(id)resultType fromBundleId:(id)id targetApp:(id)app linguistic:(BOOL)linguistic semantic:(BOOL)self0;
- (void)trackTextFieldEntryWithEmpty:(BOOL)empty fieldType:(id)type linguistic:(BOOL)linguistic semantic:(BOOL)semantic requestType:(id)requestType;
- (void)trackTextFieldEntryWithEmpty:(BOOL)empty fieldType:(id)type trigger:(id)trigger;
@end

@implementation TIConnectionsMetricsTracker

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12345 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_12345, &__block_literal_global_12346);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (void)trackPredictionEngagmentWithConversion:(BOOL)conversion age:(unint64_t)age fieldType:(id)type resultType:(id)resultType fromBundleId:(id)id targetApp:(id)app linguistic:(BOOL)linguistic semantic:(BOOL)self0
{
  conversionCopy = conversion;
  v30[6] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277CCABB0];
  appCopy = app;
  idCopy = id;
  resultTypeCopy = resultType;
  typeCopy = type;
  v21 = [v16 numberWithUnsignedInteger:age];
  v22 = v21;
  v23 = @"null";
  if (typeCopy)
  {
    v24 = typeCopy;
  }

  else
  {
    v24 = @"null";
  }

  v30[0] = v21;
  v30[1] = v24;
  if (resultTypeCopy)
  {
    v25 = resultTypeCopy;
  }

  else
  {
    v25 = @"null";
  }

  if (idCopy)
  {
    v26 = idCopy;
  }

  else
  {
    v26 = @"null";
  }

  v30[2] = v25;
  v30[3] = v26;
  if (appCopy)
  {
    v27 = appCopy;
  }

  else
  {
    v27 = @"null";
  }

  if (semantic)
  {
    v23 = @"semantic";
  }

  if (linguistic)
  {
    v23 = @"linguistic";
  }

  v30[4] = v27;
  v30[5] = v23;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];

  predictionEngagementTracker = self->_predictionEngagementTracker;
  if (conversionCopy)
  {
    [(PETGoalConversionEventTracker *)predictionEngagementTracker trackGoalConversionEventWithPropertyValues:v28];
  }

  else
  {
    [(PETGoalConversionEventTracker *)predictionEngagementTracker trackGoalOpportunityEventWithPropertyValues:v28];
  }
}

- (void)trackTextFieldEntryWithEmpty:(BOOL)empty fieldType:(id)type trigger:(id)trigger
{
  emptyCopy = empty;
  typeCopy = type;
  triggerCopy = trigger;
  if ([(TIConnectionsMetricsTracker *)self isIgnoredTrigger:triggerCopy])
  {

    triggerCopy = 0;
  }

  if ([(TIConnectionsMetricsTracker *)self inputContextDidChange])
  {
    [(TIConnectionsMetricsTracker *)self setInputContextDidChange:0];
    if (triggerCopy)
    {
      if (![triggerCopy triggerSourceType] || objc_msgSend(triggerCopy, "triggerSourceType") == 1)
      {
        attributes = [triggerCopy attributes];
        v10 = [attributes objectForKeyedSubscript:@"field"];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = @"null";
        }

        [(TIConnectionsMetricsTracker *)self trackTextFieldEntryWithEmpty:emptyCopy fieldType:typeCopy linguistic:1 semantic:0 requestType:v12];

        goto LABEL_14;
      }

      v15 = @"null";
      selfCopy2 = self;
      v14 = emptyCopy;
      v16 = 1;
    }

    else
    {
      selfCopy2 = self;
      v14 = emptyCopy;
      v15 = typeCopy;
      v16 = 0;
    }

    [(TIConnectionsMetricsTracker *)selfCopy2 trackTextFieldEntryWithEmpty:v14 fieldType:v15 linguistic:0 semantic:v16 requestType:@"null"];
  }

LABEL_14:
}

- (void)trackTextFieldEntryWithEmpty:(BOOL)empty fieldType:(id)type linguistic:(BOOL)linguistic semantic:(BOOL)semantic requestType:(id)requestType
{
  v17[4] = *MEMORY[0x277D85DE8];
  textFieldEntryTracker = self->_textFieldEntryTracker;
  v9 = @"0";
  if (empty)
  {
    v9 = @"1";
  }

  requestTypeCopy = @"null";
  if (type)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = @"null";
  }

  v17[0] = v9;
  v17[1] = typeCopy;
  v12 = @"semantic";
  if (!semantic)
  {
    v12 = @"null";
  }

  if (linguistic)
  {
    v12 = @"linguistic";
  }

  if (requestType)
  {
    requestTypeCopy = requestType;
  }

  v17[2] = v12;
  v17[3] = requestTypeCopy;
  v13 = MEMORY[0x277CBEA60];
  requestTypeCopy2 = requestType;
  typeCopy2 = type;
  v16 = [v13 arrayWithObjects:v17 count:4];
  [(PETScalarEventTracker *)textFieldEntryTracker trackEventWithPropertyValues:v16];
}

- (BOOL)isIgnoredTrigger:(id)trigger
{
  if (!trigger)
  {
    return 0;
  }

  attributes = [trigger attributes];
  v4 = [attributes objectForKey:*MEMORY[0x277D22F30]];
  null = [MEMORY[0x277CBEB68] null];
  v6 = [v4 isEqual:null];

  return v6;
}

- (TIConnectionsMetricsTracker)init
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = TIConnectionsMetricsTracker;
  v2 = [(TIConnectionsMetricsTracker *)&v20 init];
  if (v2)
  {
    v19 = [MEMORY[0x277D41DA0] propertyWithName:@"empty" possibleValues:&unk_28400B9E8];
    v3 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"field"];
    v4 = [MEMORY[0x277D41DA0] propertyWithName:@"trigger" possibleValues:&unk_28400BA00];
    v18 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"request"];
    v17 = [MEMORY[0x277D41DA0] propertyWithName:@"age" range:0 clampValues:{31536000, 1}];
    v16 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"response"];
    v5 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"fromBundleId"];
    v6 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"targetApp"];
    v7 = objc_alloc(MEMORY[0x277D41DB8]);
    v22[0] = v19;
    v22[1] = v3;
    v22[2] = v4;
    v22[3] = v18;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    v9 = [v7 initWithFeatureId:@"kbd_textcontainer" event:@"reentry" registerProperties:v8];
    textFieldEntryTracker = v2->_textFieldEntryTracker;
    v2->_textFieldEntryTracker = v9;

    v11 = objc_alloc(MEMORY[0x277D41DB0]);
    v21[0] = v17;
    v21[1] = v3;
    v21[2] = v16;
    v21[3] = v5;
    v21[4] = v6;
    v21[5] = v4;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:6];
    v13 = [v11 initWithFeatureId:@"kbd_proactive" opportunityEvent:@"shown" conversionEvent:@"engaged" registerProperties:v12];
    predictionEngagementTracker = v2->_predictionEngagementTracker;
    v2->_predictionEngagementTracker = v13;

    v2->_inputContextDidChange = 0;
  }

  return v2;
}

uint64_t __45__TIConnectionsMetricsTracker_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end