@interface ATXHeuristicBirthdayContact
- (id)_spotlightActionWithName:(id)name email:(id)email identifier:(id)identifier startDate:(id)date endDate:(id)endDate subtitle:(id)subtitle;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicBirthdayContact

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v3 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v2 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v3, 0}];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v64 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v4 = [ATXBirthdaysDataSource alloc];
  v35 = environmentCopy;
  heuristicDevice = [environmentCopy heuristicDevice];
  v6 = [(ATXBirthdaysDataSource *)v4 initWithDevice:heuristicDevice];

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__3;
  v58 = __Block_byref_object_dispose__3;
  v59 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__3;
  v52[4] = __Block_byref_object_dispose__3;
  v53 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __62__ATXHeuristicBirthdayContact_heuristicResultWithEnvironment___block_invoke;
  v51[3] = &unk_278C3CDA8;
  v51[4] = &v54;
  v51[5] = v52;
  v7 = __atxlog_handle_context_heuristic([(ATXBirthdaysDataSource *)v6 birthdaysWithCallback:v51]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v55[5] count];
    *buf = 134217984;
    v63 = v8;
    _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXHeuristicBirthdayContact: heuristicResultWithEnvironment %lu birthdays", buf, 0xCu);
  }

  v34 = v6;

  v36 = objc_opt_new();
  v40 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v55[5];
  v9 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v9)
  {
    v39 = *v48;
    do
    {
      v41 = v9;
      for (i = 0; i != v41; ++i)
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"birthdayContact"];
        v13 = [v11 objectForKeyedSubscript:@"EKEvent"];
        v42 = [v12 objectForKeyedSubscript:@"emailAddresses"];
        v14 = [v13 obj];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = [v13 obj];
          v17 = [v12 objectForKeyedSubscript:@"fullName"];
          firstObject = [v42 firstObject];
          v19 = [v12 objectForKeyedSubscript:@"identifier"];
          startDate = [v16 startDate];
          endDate = [v16 endDate];
          v22 = [(ATXHeuristicBirthdayContact *)self _spotlightActionWithName:v17 email:firstObject identifier:v19 startDate:startDate endDate:endDate subtitle:0];

          if (v22)
          {
            [v36 addObject:v22];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v9);
  }

  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"CONTEXT_TITLE_BIRTHDAYS" value:&stru_2850AD368 table:0];
  if ([v36 count] == 1)
  {
    v25 = [v23 localizedStringForKey:@"CONTEXT_TITLE_BIRTHDAY" value:&stru_2850AD368 table:0];

    v24 = v25;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v36;
  v27 = [v26 countByEnumeratingWithState:&v43 objects:v60 count:16];
  if (v27)
  {
    v28 = *v44;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:*(*(&v43 + 1) + 8 * j) predictionReasons:0x20000000 localizedReason:v24 score:0 dateInterval:40.0];
        [v40 addObject:v30];
      }

      v27 = [v26 countByEnumeratingWithState:&v43 objects:v60 count:16];
    }

    while (v27);
  }

  v31 = objc_opt_new();
  v32 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v40 additionalRefreshTriggers:v31];

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);

  return v32;
}

void __62__ATXHeuristicBirthdayContact_heuristicResultWithEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_spotlightActionWithName:(id)name email:(id)email identifier:(id)identifier startDate:(id)date endDate:(id)endDate subtitle:(id)subtitle
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  emailCopy = email;
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  subtitleCopy = subtitle;
  v19 = __atxlog_handle_context_heuristic(subtitleCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138740995;
    v26 = nameCopy;
    v27 = 2117;
    v28 = emailCopy;
    v29 = 2112;
    v30 = identifierCopy;
    v31 = 2117;
    v32 = dateCopy;
    v33 = 2117;
    v34 = endDateCopy;
    _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, "ATXHeuristicBirthdayContact: _spotlightActionWithName name %{sensitive}@, email %{sensitive}@, identifier %@, startDate %{sensitive}@, endDate %{sensitive}@", &v25, 0x34u);
  }

  v20 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:dateCopy endDate:endDateCopy lockScreenEligible:0 predicate:0];
  v21 = v20;
  if (nameCopy && identifierCopy)
  {
    v22 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:nameCopy contactIdentifier:identifierCopy subtitle:subtitleCopy criteria:v20];
    goto LABEL_14;
  }

  if (nameCopy && emailCopy)
  {
    v22 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:nameCopy contactEmail:emailCopy subtitle:subtitleCopy criteria:v20];
    if (v22)
    {
      goto LABEL_14;
    }

    v23 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "Updated api to create participant using email not available", &v25, 2u);
    }
  }

  else
  {
    v23 = __atxlog_handle_context_heuristic(v20);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicBirthdayContact _spotlightActionWithName:v23 email:? identifier:? startDate:? endDate:? subtitle:?];
    }
  }

  v22 = 0;
LABEL_14:

  return v22;
}

@end