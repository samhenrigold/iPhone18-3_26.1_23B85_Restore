@interface ATXHeuristicReturnCall
- (id)_actionWithCall:(id)call contactDict:(id)dict contactId:(id)id handle:(id)handle service:(id)service;
- (id)_bestContactHandleFromDataSourceWithContact:(id)contact service:(id)service environment:(id)environment;
- (id)_contactsDataSourceWithIdentifiers:(id)identifiers environment:(id)environment;
- (id)_duetInteractionCountFromDataSourceWithHandles:(id)handles date:(id)date environment:(id)environment;
- (id)_interactionCountAfterCall:(id)call contactDict:(id)dict environment:(id)environment;
- (id)_serviceWithCall:(id)call;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (void)_addActionWithContactId:(id)id toActions:(id)actions environment:(id)environment lastCallDict:(id)dict;
@end

@implementation ATXHeuristicReturnCall

- (id)permanentRefreshTriggers
{
  v2 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"com.apple.CallHistoryPluginHelper.launchnotification" type:1];
  v3 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
  keyPathForActiveCall = [MEMORY[0x277CFE338] keyPathForActiveCall];
  v5 = [(ATXInformationHeuristicRefreshContextChangeTrigger *)v3 initWithCDContextualKeyPath:keyPathForActiveCall];

  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, v5, 0}];
  objc_autoreleasePoolPop(v6);

  return v7;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v62 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v4 = [ATXCallHistoryDataSource alloc];
  v40 = environmentCopy;
  heuristicDevice = [environmentCopy heuristicDevice];
  v6 = [(ATXCallHistoryDataSource *)v4 initWithDevice:heuristicDevice];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__15;
  v54 = __Block_byref_object_dispose__15;
  v55 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __57__ATXHeuristicReturnCall_heuristicResultWithEnvironment___block_invoke;
  v49[3] = &unk_278C3D4D8;
  v49[4] = &v50;
  v37 = v6;
  v7 = __atxlog_handle_context_heuristic([(ATXCallHistoryDataSource *)v6 callNewerThan:1 showIncoming:1 showOutgoing:0 missedOnly:v49 callback:3600.0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v51[5] count];
    *buf = 134217984;
    v58 = v8;
    _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment %lu calls", buf, 0xCu);
  }

  v9 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v51[5];
  v10 = [obj countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v10)
  {
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"contactIdentifier"];
        if (v14)
        {
          v15 = [v9 objectForKeyedSubscript:v14];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 objectForKeyedSubscript:@"date"];
            doubleValue = [v13 objectForKeyedSubscript:@"date"];
            v19 = doubleValue;
            if (doubleValue)
            {
              v20 = v17 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              [doubleValue doubleValue];
              v22 = v21;
              doubleValue = [v17 doubleValue];
              if (v22 > v23)
              {
                doubleValue = [v9 setValue:v13 forKey:v14];
              }
            }

            v24 = __atxlog_handle_context_heuristic(doubleValue);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v58 = v14;
              v59 = 2112;
              v60 = v19;
              _os_log_impl(&dword_23E3EA000, v24, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment contactId %@, callDate:%@", buf, 0x16u);
            }
          }

          else
          {
            [v9 setValue:v13 forKey:v14];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v10);
  }

  v25 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = v9;
  v27 = [v26 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v27)
  {
    v28 = *v42;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [(ATXHeuristicReturnCall *)self _addActionWithContactId:*(*(&v41 + 1) + 8 * j) toActions:v25 environment:v40 lastCallDict:v26];
      }

      v27 = [v26 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v27);
  }

  v31 = __atxlog_handle_context_heuristic(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v25 count];
    *buf = 134217984;
    v58 = v32;
    _os_log_impl(&dword_23E3EA000, v31, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment %lu actions", buf, 0xCu);
  }

  v33 = [v25 _pas_mappedArrayWithTransform:&__block_literal_global_10];
  v34 = objc_opt_new();
  v35 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v33 additionalRefreshTriggers:v34];

  _Block_object_dispose(&v50, 8);

  return v35;
}

- (void)_addActionWithContactId:(id)id toActions:(id)actions environment:(id)environment lastCallDict:(id)dict
{
  v32 = *MEMORY[0x277D85DE8];
  idCopy = id;
  actionsCopy = actions;
  environmentCopy = environment;
  v13 = [dict objectForKeyedSubscript:idCopy];
  v14 = [v13 objectForKeyedSubscript:@"missed"];
  bOOLValue = [v14 BOOLValue];
  if (bOOLValue)
  {
    v16 = [v13 objectForKeyedSubscript:@"remoteParticipantHandles"];
    v17 = [v16 count];
    if (v17 == 1)
    {
      firstObject = [v16 firstObject];
      v19 = [firstObject objectForKeyedSubscript:@"value"];

      v20 = [(ATXHeuristicReturnCall *)self _serviceWithCall:v13];
      if ([v20 length])
      {
        v28 = v20;
        v29 = idCopy;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
        v22 = [(ATXHeuristicReturnCall *)self _contactsDataSourceWithIdentifiers:v21 environment:environmentCopy];

        v23 = [v22 count];
        if (v23 == 1)
        {
          firstObject2 = [v22 firstObject];
          v27 = [(ATXHeuristicReturnCall *)self _interactionCountAfterCall:v13 contactDict:firstObject2 environment:environmentCopy];
          integerValue = [v27 integerValue];
          if (integerValue < 1)
          {
            v26 = [(ATXHeuristicReturnCall *)self _actionWithCall:v13 contactDict:firstObject2 contactId:idCopy handle:v19 service:v28];
            if (v26)
            {
              [actionsCopy addObject:v26];
            }
          }

          else
          {
            v26 = __atxlog_handle_context_heuristic(integerValue);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v27;
              _os_log_impl(&dword_23E3EA000, v26, OS_LOG_TYPE_DEFAULT, "Skipping contact that has already been interacted with %@ times after the missed call", buf, 0xCu);
            }
          }
        }

        else
        {
          firstObject2 = __atxlog_handle_context_heuristic(v23);
          if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = idCopy;
            _os_log_impl(&dword_23E3EA000, firstObject2, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment contactId %@ Could not find exactly 1 CNContact for identifier", buf, 0xCu);
          }
        }

        v20 = v28;
      }
    }

    else
    {
      v19 = __atxlog_handle_context_heuristic(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = idCopy;
        _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment contactId %@ Cannot find exactly 1 remote participant handle", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = __atxlog_handle_context_heuristic(bOOLValue);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = idCopy;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment contactId %@ last call was not missed. Skipping", buf, 0xCu);
    }
  }
}

- (id)_serviceWithCall:(id)call
{
  v3 = [call objectForKeyedSubscript:@"serviceProvider"];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (([v3 isEqualToString:@"com.apple.Telephony"] & 1) == 0)
  {
    v6 = [v4 isEqualToString:@"com.apple.FaceTime"];
    if (v6)
    {
      v5 = @"facetime";
      goto LABEL_10;
    }

    v7 = __atxlog_handle_context_heuristic(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "Suppressing action since third party calls are not supported", v9, 2u);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = @"phone";
LABEL_10:

  return v5;
}

- (id)_duetInteractionCountFromDataSourceWithHandles:(id)handles date:(id)date environment:(id)environment
{
  handlesCopy = handles;
  dateCopy = date;
  environmentCopy = environment;
  if ([handlesCopy count])
  {
    v10 = [ATXDuetInteractionDataSource alloc];
    heuristicDevice = [environmentCopy heuristicDevice];
    v12 = [(ATXDuetInteractionDataSource *)v10 initWithDevice:heuristicDevice];

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__15;
    v29 = __Block_byref_object_dispose__15;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__15;
    v23 = __Block_byref_object_dispose__15;
    v24 = 0;
    v13 = [MEMORY[0x277CBEB98] setWithArray:handlesCopy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__ATXHeuristicReturnCall__duetInteractionCountFromDataSourceWithHandles_date_environment___block_invoke;
    v18[3] = &unk_278C3CDD0;
    v18[4] = &v25;
    v18[5] = &v19;
    [(ATXDuetInteractionDataSource *)v12 duetInteractionCountForHandles:v13 sinceDate:dateCopy callback:v18];

    if (v20[5])
    {
      v15 = __atxlog_handle_context_heuristic(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicReturnCall _duetInteractionCountFromDataSourceWithHandles:date:environment:];
      }

      v16 = 0;
    }

    else
    {
      v16 = v26[5];
    }

    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __90__ATXHeuristicReturnCall__duetInteractionCountFromDataSourceWithHandles_date_environment___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_contactsDataSourceWithIdentifiers:(id)identifiers environment:(id)environment
{
  identifiersCopy = identifiers;
  environmentCopy = environment;
  v7 = [ATXContactsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v9 = [(ATXContactsDataSource *)v7 initWithDevice:heuristicDevice];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__15;
  v19 = __Block_byref_object_dispose__15;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__ATXHeuristicReturnCall__contactsDataSourceWithIdentifiers_environment___block_invoke;
  v14[3] = &unk_278C3CDA8;
  v14[4] = &v21;
  v14[5] = &v15;
  v10 = [(ATXContactsDataSource *)v9 contactsWithIdentifiers:identifiersCopy callback:v14];
  if (v16[5])
  {
    v11 = __atxlog_handle_context_heuristic(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicReturnCall _contactsDataSourceWithIdentifiers:environment:];
    }

    v12 = 0;
  }

  else
  {
    v12 = v22[5];
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __73__ATXHeuristicReturnCall__contactsDataSourceWithIdentifiers_environment___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_interactionCountAfterCall:(id)call contactDict:(id)dict environment:(id)environment
{
  callCopy = call;
  environmentCopy = environment;
  v10 = [dict objectForKeyedSubscript:@"CNContact"];
  v11 = [(ATXHeuristicReturnCall *)self _bestContactHandleFromDataSourceWithContact:v10 service:*MEMORY[0x277D18698] environment:environmentCopy];
  v12 = [(ATXHeuristicReturnCall *)self _bestContactHandleFromDataSourceWithContact:v10 service:*MEMORY[0x277D18690] environment:environmentCopy];
  v13 = [(ATXHeuristicReturnCall *)self _bestContactHandleFromDataSourceWithContact:v10 service:*MEMORY[0x277D186B0] environment:environmentCopy];
  v14 = objc_opt_new();
  v15 = v14;
  if (v11)
  {
    [v14 addObject:v11];
  }

  if (v12)
  {
    [v15 addObject:v12];
  }

  if (v13)
  {
    [v15 addObject:v13];
  }

  v16 = [callCopy objectForKeyedSubscript:@"date"];
  v17 = MEMORY[0x277CBEAA8];
  [v16 doubleValue];
  v19 = [v17 dateWithTimeIntervalSinceReferenceDate:v18 + 1.0];
  v20 = [(ATXHeuristicReturnCall *)self _duetInteractionCountFromDataSourceWithHandles:v15 date:v19 environment:environmentCopy];

  return v20;
}

- (id)_bestContactHandleFromDataSourceWithContact:(id)contact service:(id)service environment:(id)environment
{
  contactCopy = contact;
  serviceCopy = service;
  environmentCopy = environment;
  v10 = environmentCopy;
  if (contactCopy && serviceCopy)
  {
    v11 = [ATXBestContactHandleForServiceDataSource alloc];
    heuristicDevice = [v10 heuristicDevice];
    v13 = [(ATXBestContactHandleForServiceDataSource *)v11 initWithDevice:heuristicDevice];

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__15;
    v29 = __Block_byref_object_dispose__15;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__15;
    v23 = __Block_byref_object_dispose__15;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__ATXHeuristicReturnCall__bestContactHandleFromDataSourceWithContact_service_environment___block_invoke;
    v18[3] = &unk_278C3D2D0;
    v18[4] = &v25;
    v18[5] = &v19;
    v14 = [v13 bestHandleForContact:contactCopy service:serviceCopy callback:v18];
    if (v20[5])
    {
      v15 = __atxlog_handle_context_heuristic(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicReturnCall _bestContactHandleFromDataSourceWithContact:service:environment:];
      }

      v16 = 0;
    }

    else
    {
      v16 = v26[5];
    }

    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v13 = __atxlog_handle_context_heuristic(environmentCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicReturnCall _bestContactHandleFromDataSourceWithContact:contactCopy service:serviceCopy environment:v13];
    }

    v16 = 0;
  }

  return v16;
}

void __90__ATXHeuristicReturnCall__bestContactHandleFromDataSourceWithContact_service_environment___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_actionWithCall:(id)call contactDict:(id)dict contactId:(id)id handle:(id)handle service:(id)service
{
  v56 = *MEMORY[0x277D85DE8];
  callCopy = call;
  idCopy = id;
  handleCopy = handle;
  serviceCopy = service;
  v15 = MEMORY[0x277CCA8D8];
  dictCopy = dict;
  v17 = [v15 bundleForClass:objc_opt_class()];
  v18 = [dictCopy objectForKeyedSubscript:@"displayName"];

  if ([v18 length])
  {
    v45 = idCopy;
    v19 = MEMORY[0x277CCACA8];
    [v17 localizedStringForKey:@"RETURN_CALL_TITLE" value:&stru_2850AD368 table:0];
    v20 = v47 = callCopy;
    v44 = v18;
    v21 = [v19 localizedStringWithFormat:v20, v18];

    v22 = [v47 objectForKeyedSubscript:@"date"];
    v23 = MEMORY[0x277CBEAA8];
    v43 = v22;
    [v22 doubleValue];
    v24 = [v23 dateWithTimeIntervalSinceReferenceDate:?];
    v25 = [MEMORY[0x277CCA968] localizedStringFromDate:v24 dateStyle:0 timeStyle:1];
    v26 = [ATXHeuristicEventUtilities isEventAtOneWithDate:v24];
    v27 = MEMORY[0x277CCACA8];
    if (v26)
    {
      v28 = @"RETURN_CALL_SUBTITLE_(hour is 1)";
    }

    else
    {
      v28 = @"RETURN_CALL_SUBTITLE";
    }

    v46 = v17;
    v29 = [v17 localizedStringForKey:v28 value:&stru_2850AD368 table:0];
    v42 = v25;
    v30 = [v27 localizedStringWithFormat:v29, v25];

    v32 = __atxlog_handle_context_heuristic(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413059;
      v49 = handleCopy;
      v50 = 2112;
      v51 = serviceCopy;
      v52 = 2117;
      v53 = v21;
      v54 = 2112;
      v55 = v30;
      _os_log_impl(&dword_23E3EA000, v32, OS_LOG_TYPE_DEFAULT, "Action with handle %@ service %@ title %{sensitive}@, subtitle %@", buf, 0x2Au);
    }

    v33 = MEMORY[0x277CEB2C8];
    v34 = [v47 objectForKeyedSubscript:@"mediaType"];
    v18 = v44;
    v35 = [v33 atx_startCallActionWithTitle:v21 subtitle:v30 recipientName:v44 recipientHandle:handleCopy callService:serviceCopy contactIdentifier:v45 eventIdentifier:0 heuristicName:@"returnCall" mediaType:v34];

    v36 = [v24 dateByAddingTimeInterval:120.0];
    v37 = [v36 dateByAddingTimeInterval:1800.0];
    v38 = v24;
    v39 = v30;
    v40 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v36 endDate:v37 lockScreenEligible:0 predicate:0];
    [v35 setCriteria:v40];

    idCopy = v45;
    callCopy = v47;

    v17 = v46;
  }

  else
  {
    v21 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall _actionWithCall null recipient name dropping action", buf, 2u);
    }

    v35 = 0;
  }

  return v35;
}

- (void)_duetInteractionCountFromDataSourceWithHandles:date:environment:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_23E3EA000, v0, v1, "_duetInteractionCountFromDataSourceWithHandles error querying data source %@: %@");
}

- (void)_contactsDataSourceWithIdentifiers:environment:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_23E3EA000, v0, v1, "_contactsDataSourceWithIdentifiers error querying contacts data source %@: %@");
}

- (void)_bestContactHandleFromDataSourceWithContact:(uint64_t)a1 service:(uint64_t)a2 environment:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_23E3EA000, a2, a3, "Contact %@ or service %@ from is invalid", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_bestContactHandleFromDataSourceWithContact:service:environment:.cold.2()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_23E3EA000, v0, v1, "_bestContactHandleFromDataSourceWithContact Error querying data source %@: %@");
}

@end