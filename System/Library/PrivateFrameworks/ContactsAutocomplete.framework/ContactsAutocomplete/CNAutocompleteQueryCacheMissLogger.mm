@interface CNAutocompleteQueryCacheMissLogger
- (CNAutocompleteQueryCacheMissLogger)init;
- (CNAutocompleteQueryCacheMissLogger)initWithLoggers:(id)loggers;
- (void)didReturnCacheFalseNegatives:(id)negatives;
- (void)didReturnCacheFalsePositives:(id)positives;
@end

@implementation CNAutocompleteQueryCacheMissLogger

- (CNAutocompleteQueryCacheMissLogger)init
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(_CNAutocompleteQueryCacheMissOSLogging);
  v4 = objc_alloc_init(_CNAutocompleteQueryCacheMissAggdLogging);
  v8[0] = v3;
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [(CNAutocompleteQueryCacheMissLogger *)self initWithLoggers:v5];

  return v6;
}

- (CNAutocompleteQueryCacheMissLogger)initWithLoggers:(id)loggers
{
  loggersCopy = loggers;
  v10.receiver = self;
  v10.super_class = CNAutocompleteQueryCacheMissLogger;
  v5 = [(CNAutocompleteQueryCacheMissLogger *)&v10 init];
  if (v5)
  {
    v6 = [loggersCopy copy];
    loggers = v5->_loggers;
    v5->_loggers = v6;

    v8 = v5;
  }

  return v5;
}

- (void)didReturnCacheFalseNegatives:(id)negatives
{
  v15 = *MEMORY[0x277D85DE8];
  negativesCopy = negatives;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  loggers = [(CNAutocompleteQueryCacheMissLogger *)self loggers];
  v6 = [loggers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(loggers);
        }

        [*(*(&v10 + 1) + 8 * v9++) didReturnCacheFalseNegatives:negativesCopy];
      }

      while (v7 != v9);
      v7 = [loggers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)didReturnCacheFalsePositives:(id)positives
{
  v15 = *MEMORY[0x277D85DE8];
  positivesCopy = positives;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  loggers = [(CNAutocompleteQueryCacheMissLogger *)self loggers];
  v6 = [loggers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(loggers);
        }

        [*(*(&v10 + 1) + 8 * v9++) didReturnCacheFalsePositives:positivesCopy];
      }

      while (v7 != v9);
      v7 = [loggers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end