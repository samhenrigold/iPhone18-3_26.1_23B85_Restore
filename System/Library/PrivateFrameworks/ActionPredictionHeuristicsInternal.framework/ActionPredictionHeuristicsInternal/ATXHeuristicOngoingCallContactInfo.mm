@interface ATXHeuristicOngoingCallContactInfo
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicOngoingCallContactInfo

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
  keyPathForActiveCall = [MEMORY[0x277CFE338] keyPathForActiveCall];
  v4 = [(ATXInformationHeuristicRefreshContextChangeTrigger *)v2 initWithCDContextualKeyPath:keyPathForActiveCall];

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v4, 0}];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = __atxlog_handle_context_heuristic(environmentCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "ATXOngoingCall: producing ongoing call suggestions", buf, 2u);
  }

  v5 = objc_opt_new();
  keyPathForActiveCall = [MEMORY[0x277CFE338] keyPathForActiveCall];
  v7 = [v5 fetchDataDictionaryForKeyPath:keyPathForActiveCall];

  calleeContactIDsKey = [MEMORY[0x277CFE338] calleeContactIDsKey];
  v9 = [v7 valueForKey:calleeContactIDsKey];

  v10 = objc_opt_new();
  v11 = [v9 count];
  if (v11)
  {
    v12 = __atxlog_handle_context_heuristic(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXOngoingCall: Found a donation in the context store on an active call where either calleeContactIDsKey or calleeHandlesKey is set", v19, 2u);
    }

    v13 = [[ATXOngoingCallSuggestionProducer alloc] initWithEnvironment:environmentCopy];
    v14 = [(ATXOngoingCallSuggestionProducer *)v13 suggestionsForOngoingCall:v9];

    v10 = v14;
  }

  v15 = [ATXContextHeuristicResult alloc];
  v16 = [MEMORY[0x277CBEB98] set];
  v17 = [(ATXContextHeuristicResult *)v15 initWithSuggestions:v10 additionalRefreshTriggers:v16];

  return v17;
}

@end