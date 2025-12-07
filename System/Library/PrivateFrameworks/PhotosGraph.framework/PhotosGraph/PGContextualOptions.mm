@interface PGContextualOptions
- (PGContextualOptions)initWithGraph:(id)graph photoLibrary:(id)library curationManager:(id)manager options:(id)options loggingConnection:(id)connection;
- (id)availableContextualRules;
@end

@implementation PGContextualOptions

- (id)availableContextualRules
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_contextualRules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 canProvideContextualKeyAssetsWithOptions:{self, v11}])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (PGContextualOptions)initWithGraph:(id)graph photoLibrary:(id)library curationManager:(id)manager options:(id)options loggingConnection:(id)connection
{
  v35[4] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  libraryCopy = library;
  managerCopy = manager;
  optionsCopy = options;
  connectionCopy = connection;
  v34.receiver = self;
  v34.super_class = PGContextualOptions;
  v17 = [(PGContextualOptions *)&v34 init];
  if (v17)
  {
    v18 = [[PGBirthdayContextualRule alloc] initWithGraph:graphCopy photoLibrary:libraryCopy curationManager:managerCopy loggingConnection:connectionCopy];
    v35[0] = v18;
    v19 = [[PGHolidayContextualRule alloc] initWithGraph:graphCopy photoLibrary:libraryCopy loggingConnection:connectionCopy];
    v35[1] = v19;
    v20 = [[PGPublicEventContextualRule alloc] initWithGraph:graphCopy photoLibrary:libraryCopy loggingConnection:connectionCopy];
    v35[2] = v20;
    v21 = objc_alloc_init(PGOnThisDayContextualRule);
    v35[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    contextualRules = v17->_contextualRules;
    v17->_contextualRules = v22;

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v25 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D3AE28]];
    if (v25)
    {
      objc_storeStrong(&v17->_localToday, v25);
      timeZone = [currentCalendar timeZone];
    }

    else
    {
      currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
      localToday = v17->_localToday;
      v17->_localToday = currentLocalDate;

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:v17->_localToday];
      timeZone = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v30];
    }

    v31 = [currentCalendar componentsInTimeZone:timeZone fromDate:v17->_localToday];
    localTodayComponents = v17->_localTodayComponents;
    v17->_localTodayComponents = v31;
  }

  return v17;
}

@end