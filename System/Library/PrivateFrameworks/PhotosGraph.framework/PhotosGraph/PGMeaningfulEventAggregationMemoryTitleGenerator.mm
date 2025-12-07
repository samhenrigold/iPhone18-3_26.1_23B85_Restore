@interface PGMeaningfulEventAggregationMemoryTitleGenerator
+ (id)_momentNodesFromMeaningfulEvents:(id)events;
- (PGMeaningfulEventAggregationMemoryTitleGenerator)initWithMeaning:(unint64_t)meaning features:(id)features meaningfulEvents:(id)events titleGenerationContext:(id)context;
- (id)_subtitle;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGMeaningfulEventAggregationMemoryTitleGenerator

- (id)_subtitle
{
  v3 = objc_alloc_init(PGTimeTitleOptions);
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v3 setMomentNodes:momentNodes];

  [(PGTimeTitleOptions *)v3 setAllowedFormats:20];
  [(PGTimeTitleOptions *)v3 setFilterDates:0];
  locale = [(PGTitleGenerator *)self locale];
  [(PGTimeTitleOptions *)v3 setLocale:locale];

  featuredYearNodes = [(PGTitleGenerator *)self featuredYearNodes];
  [(PGTimeTitleOptions *)v3 setFeaturedYearNodes:featuredYearNodes];

  v7 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  v8 = [PGTitle titleWithString:v7 category:5];

  return v8;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  _meaningLabelForTitle = [(PGMeaningfulEventAggregationMemoryTitleGenerator *)self _meaningLabelForTitle];
  v6 = [PGSpecBasedTitleGenerator alloc];
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  features = self->_features;
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  v10 = [(PGSpecBasedTitleGenerator *)v6 initWithMomentNodes:momentNodes features:features meaningLabel:_meaningLabelForTitle isAggregation:1 titleGenerationContext:titleGenerationContext];

  title = [(PGSpecBasedTitleGenerator *)v10 title];
  _subtitle = [(PGMeaningfulEventAggregationMemoryTitleGenerator *)self _subtitle];
  if (!title)
  {
    v13 = +[PGLogging sharedLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_features;
      v16 = 138412546;
      v17 = _meaningLabelForTitle;
      v18 = 2112;
      v19 = v15;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Title for meaningful aggregation nil (meaning: %@, features: %@. Please press Provide Feedback from Memory Detail View.", &v16, 0x16u);
    }
  }

  if (resultCopy)
  {
    resultCopy[2](resultCopy, title, _subtitle);
  }
}

- (PGMeaningfulEventAggregationMemoryTitleGenerator)initWithMeaning:(unint64_t)meaning features:(id)features meaningfulEvents:(id)events titleGenerationContext:(id)context
{
  featuresCopy = features;
  eventsCopy = events;
  contextCopy = context;
  v14 = [objc_opt_class() _momentNodesFromMeaningfulEvents:eventsCopy];
  v17.receiver = self;
  v17.super_class = PGMeaningfulEventAggregationMemoryTitleGenerator;
  v15 = [(PGTitleGenerator *)&v17 initWithMomentNodes:v14 referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:contextCopy];

  if (v15)
  {
    v15->_meaning = meaning;
    objc_storeStrong(&v15->_features, features);
    objc_storeStrong(&v15->_meaningfulEvents, events);
    v15->_unreliableMeaningRatioThresholdForSpecificTitle = 1.0;
  }

  return v15;
}

+ (id)_momentNodesFromMeaningfulEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        eventCollection = [*(*(&v14 + 1) + 8 * i) eventCollection];
        eventMomentNodes = [eventCollection eventMomentNodes];
        temporarySet = [eventMomentNodes temporarySet];
        [v4 unionSet:temporarySet];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end