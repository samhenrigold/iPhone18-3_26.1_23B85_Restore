@interface SFShareSheetInvokedEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFShareSheetInvokedEvent

- (NSDictionary)eventPayload
{
  v23[9] = *MEMORY[0x1E69E9840];
  v19 = objc_alloc(MEMORY[0x1E695DF90]);
  v22[0] = @"sourceApplicationBundleID";
  appBundleId = [(SFShareSheetInvokedEvent *)self appBundleId];
  v21 = appBundleId;
  if (appBundleId)
  {
    v4 = appBundleId;
  }

  else
  {
    v4 = &stru_1F1D30528;
  }

  v23[0] = v4;
  v22[1] = @"numberOfSuggestions";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFShareSheetInvokedEvent numberOfSuggestions](self, "numberOfSuggestions")}];
  v23[1] = v20;
  v22[2] = @"suggestionsHash";
  suggestionsHash = [(SFShareSheetInvokedEvent *)self suggestionsHash];
  v6 = suggestionsHash;
  if (suggestionsHash)
  {
    v7 = suggestionsHash;
  }

  else
  {
    v7 = &stru_1F1D30528;
  }

  v23[2] = v7;
  v22[3] = @"daemonPID";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[SFShareSheetInvokedEvent daemonPID](self, "daemonPID")}];
  v23[3] = v8;
  v22[4] = @"durationInMS";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFShareSheetInvokedEvent durationInMS](self, "durationInMS")}];
  v23[4] = v9;
  v22[5] = @"isDarkMode";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFShareSheetInvokedEvent isDarkMode](self, "isDarkMode")}];
  v23[5] = v10;
  v22[6] = @"cacheFileCount";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFShareSheetInvokedEvent cacheFileCount](self, "cacheFileCount")}];
  v23[6] = v11;
  v22[7] = @"totalCacheAccessCount";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFShareSheetInvokedEvent totalCacheAccessCount](self, "totalCacheAccessCount")}];
  v23[7] = v12;
  v22[8] = @"isCollaborative";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFShareSheetInvokedEvent isCollaborative](self, "isCollaborative")}];
  v23[8] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:9];
  v15 = [v19 initWithDictionary:v14];

  cacheAccessInfo = [(SFShareSheetInvokedEvent *)self cacheAccessInfo];
  [v15 addEntriesFromDictionary:cacheAccessInfo];

  v17 = [v15 copy];

  return v17;
}

- (void)submitEvent
{
  v4 = +[SFShareSheetInvokedEvent eventName];
  eventPayload = [(SFShareSheetInvokedEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end