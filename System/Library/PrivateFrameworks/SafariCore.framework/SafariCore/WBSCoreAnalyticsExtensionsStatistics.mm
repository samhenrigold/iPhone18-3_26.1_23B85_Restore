@interface WBSCoreAnalyticsExtensionsStatistics
- (WBSCoreAnalyticsExtensionsStatistics)initWithExtensionsList:(id)list extractDeveloperIdentifier:(id)identifier extractComposedIdentifier:(id)composedIdentifier extensionTelemetryDataPredicate:(id)predicate;
@end

@implementation WBSCoreAnalyticsExtensionsStatistics

- (WBSCoreAnalyticsExtensionsStatistics)initWithExtensionsList:(id)list extractDeveloperIdentifier:(id)identifier extractComposedIdentifier:(id)composedIdentifier extensionTelemetryDataPredicate:(id)predicate
{
  v33 = *MEMORY[0x1E69E9840];
  listCopy = list;
  identifierCopy = identifier;
  predicateCopy = predicate;
  v31.receiver = self;
  v31.super_class = WBSCoreAnalyticsExtensionsStatistics;
  v26 = [(WBSCoreAnalyticsExtensionsStatistics *)&v31 init];
  if (v26)
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = listCopy;
    v10 = 0;
    v11 = 0;
    v12 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v12)
    {
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = identifierCopy[2](identifierCopy, v15);
          if ([v16 length])
          {
            v17 = predicateCopy[2](predicateCopy, v15);
            enabled = [v17 enabled];
            if (!v26->_hasExtensionThatCanOverrideNewTabPage && [v17 canOverrideNewTabPage])
            {
              v26->_hasExtensionThatCanOverrideNewTabPage = 1;
            }

            [(NSArray *)array addObject:v17, listCopy];

            v10 += enabled;
            v11 += enabled ^ 1;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    v26->_enabledCount = v10;
    v26->_disabledCount = v11;
    telemetryDataForExtensions = v26->_telemetryDataForExtensions;
    v26->_telemetryDataForExtensions = array;

    v20 = v26;
  }

  return v26;
}

@end