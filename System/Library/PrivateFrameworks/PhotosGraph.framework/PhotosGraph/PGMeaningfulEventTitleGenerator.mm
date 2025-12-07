@interface PGMeaningfulEventTitleGenerator
- (PGMeaningfulEventTitleGenerator)initWithCollection:(id)collection meaningLabel:(id)label meaningIsReliable:(BOOL)reliable titleGenerationContext:(id)context featureNodes:(id)nodes;
- (id)_meaningLabelForTitle;
- (id)_timeTitle;
- (id)_title;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGMeaningfulEventTitleGenerator

- (id)_timeTitle
{
  v3 = objc_alloc_init(PGTimeTitleOptions);
  if ([(NSString *)self->_meaningLabel isEqualToString:@"Birthday"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [(PGTimeTitleOptions *)v3 setAllowedFormats:v4];
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v3 setMomentNodes:momentNodes];

  usedLocationNodes = [(PGTitleGenerator *)self usedLocationNodes];
  [(PGTimeTitleOptions *)v3 setLocationNodes:usedLocationNodes];

  v7 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  v8 = [PGTitle titleWithString:v7 category:5];

  return v8;
}

- (id)_meaningLabelForTitle
{
  v3 = self->_meaningLabel;
  if ([(NSString *)v3 isEqualToString:@"AmusementPark"]|| [(NSString *)v3 isEqualToString:@"Festival"]|| [(NSString *)v3 isEqualToString:@"Museum"])
  {
    v4 = kPGGraphNodeMeaningEntertainment;
  }

  else
  {
    if (![(NSString *)v3 isEqualToString:@"Concert"]&& ![(NSString *)v3 isEqualToString:@"Theater"]&& ![(NSString *)v3 isEqualToString:@"Dance"])
    {
      goto LABEL_6;
    }

    v4 = kPGGraphNodeMeaningPerformance;
  }

  v5 = *v4;

  v3 = v5;
LABEL_6:
  if (self->_meaningIsReliable)
  {
    goto LABEL_7;
  }

  if (_meaningLabelForTitle_onceToken2 != -1)
  {
    dispatch_once(&_meaningLabelForTitle_onceToken2, &__block_literal_global_63248);
  }

  v6 = [_meaningLabelForTitle_meaningLabelToUnreliableMeaningLabel objectForKeyedSubscript:v3];
  if (!v6)
  {
LABEL_7:
    v6 = v3;
  }

  if ([(NSString *)v3 isEqualToString:@"Wedding"])
  {
    v7 = @"Celebration";

    v6 = @"Celebration";
  }

  return v6;
}

void __56__PGMeaningfulEventTitleGenerator__meaningLabelForTitle__block_invoke()
{
  v3[14] = *MEMORY[0x277D85DE8];
  v2[0] = @"Wedding";
  v2[1] = @"AmusementPark";
  v3[0] = @"Celebration";
  v3[1] = @"Entertainment";
  v2[2] = @"Performance";
  v2[3] = @"Concert";
  v3[2] = @"Entertainment";
  v3[3] = @"Entertainment";
  v2[4] = @"Festival";
  v2[5] = @"Theater";
  v3[4] = @"Entertainment";
  v3[5] = @"Entertainment";
  v2[6] = @"Dance";
  v2[7] = @"Museum";
  v3[6] = @"Entertainment";
  v3[7] = @"Entertainment";
  v2[8] = @"NightOut";
  v2[9] = @"SportEvent";
  v3[8] = @"Entertainment";
  v3[9] = @"Entertainment";
  v2[10] = @"WinterSport";
  v2[11] = @"Diving";
  v3[10] = @"Activity";
  v3[11] = @"Activity";
  v2[12] = @"Hiking";
  v2[13] = @"Climbing";
  v3[12] = @"Activity";
  v3[13] = @"Activity";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:14];
  v1 = _meaningLabelForTitle_meaningLabelToUnreliableMeaningLabel;
  _meaningLabelForTitle_meaningLabelToUnreliableMeaningLabel = v0;
}

- (id)_title
{
  _meaningLabelForTitle = [(PGMeaningfulEventTitleGenerator *)self _meaningLabelForTitle];
  if (-[MAElementCollection count](self->_featureNodes, "count") && [_meaningLabelForTitle isEqualToString:@"HolidayEvent"])
  {
    v4 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection subsetInCollection:self->_featureNodes];
    if ([v4 count])
    {
      localizedHolidayNames = [v4 localizedHolidayNames];
      anyObject = [localizedHolidayNames anyObject];

      title = [PGTitle titleWithString:anyObject category:5];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGMeaningfulEventTitleGenerator.m] MeaningfulEvent memory of type kPGGraphNodeMeaningHolidayEvent has no featureNode of type PGGraphHolidayNode.", v13, 2u);
      }

      title = 0;
    }
  }

  else
  {
    v8 = [PGSpecBasedTitleGenerator alloc];
    momentNodes = [(PGTitleGenerator *)self momentNodes];
    titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
    v11 = [(PGSpecBasedTitleGenerator *)v8 initWithMomentNodes:momentNodes meaningLabel:_meaningLabelForTitle titleGenerationContext:titleGenerationContext];

    [(PGSpecBasedTitleGenerator *)v11 setLineBreakBehavior:[(PGTitleGenerator *)self lineBreakBehavior]];
    title = [(PGSpecBasedTitleGenerator *)v11 title];
  }

  return title;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  _title = [(PGMeaningfulEventTitleGenerator *)self _title];
  _timeTitle = [(PGMeaningfulEventTitleGenerator *)self _timeTitle];
  stringValue = [_title stringValue];
  v8 = [stringValue length];

  if (v8)
  {
    resultCopy[2](resultCopy, _title, _timeTitle);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PGMeaningfulEventTitleGenerator;
    [(PGTitleGenerator *)&v9 _generateTitleAndSubtitleWithResult:resultCopy];
  }
}

- (PGMeaningfulEventTitleGenerator)initWithCollection:(id)collection meaningLabel:(id)label meaningIsReliable:(BOOL)reliable titleGenerationContext:(id)context featureNodes:(id)nodes
{
  labelCopy = label;
  nodesCopy = nodes;
  v18.receiver = self;
  v18.super_class = PGMeaningfulEventTitleGenerator;
  v15 = [(PGDefaultCollectionTitleGenerator *)&v18 initWithCollection:collection keyAsset:0 curatedAssetCollection:0 titleGenerationContext:context];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_meaningLabel, label);
    v16->_meaningIsReliable = reliable;
    objc_storeStrong(&v16->_featureNodes, nodes);
  }

  return v16;
}

@end