@interface CNAutocompletePeopleSuggesterPredictionSearchStrategyTask
@end

@implementation CNAutocompletePeopleSuggesterPredictionSearchStrategyTask

NSObject *__76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v8 = [v3 recipients];
    v7 = [v8 firstObject];

    v9 = [v7 displayName];
    v10 = v9;
    if (!v9 || (v9 = [v9 length]) == 0)
    {
      v12 = CNALoggingContextDebug(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v3;
        _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Predictions: Invalid result: no display name for %@", buf, 0xCu);
      }

      v21 = 0;
      goto LABEL_31;
    }

    v11 = [v7 handle];
    v12 = v11;
    if (v11 && (v11 = [v11 length]) != 0)
    {
      v13 = [objc_opt_class() _addressTypeFromHandle:v12];
      if (v13)
      {
        v14 = v13;
        v15 = [*(a1 + 40) containsObject:v12];
        if (!v15)
        {
          [*(a1 + 40) addObject:v12];
          v30 = objc_alloc_init(CNAutocompleteResultValue);
          [(CNAutocompleteResultValue *)v30 setAddress:v12];
          [(CNAutocompleteResultValue *)v30 setAddressType:v14];
          v31 = [*(a1 + 48) duetResultWithDisplayName:v10 value:v30 contactIdentifier:0];
          [v31 setPsSuggestion:v3];
          v32 = [v7 contact];
          v16 = v32;
          if (v32)
          {
            v33 = [v32 identifier];
            v40 = v31;
            v34 = *(*(a1 + 32) + 32);
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_79;
            v48[3] = &unk_2781C4DA0;
            v49 = v34;
            v50 = v33;
            v35 = v33;
            v36 = v34;
            [v40 setContactProvider:v48];

            v31 = v40;
          }

          v37 = CNALoggingContextDebug(v32);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v52 = v10;
            v53 = 2112;
            v54 = v12;
            v55 = 2112;
            v56 = v31;
            _os_log_impl(&dword_2155FE000, v37, OS_LOG_TYPE_DEFAULT, "Predictions: %@ <%@>: %@", buf, 0x20u);
          }

          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_81;
          v44[3] = &unk_2781C4F28;
          v47 = *(a1 + 64);
          v45 = *(a1 + 56);
          v46 = v30;
          v38 = v30;
          [v31 addDiagnosticLog:v44];
          v39 = v46;
          v21 = v31;

          goto LABEL_30;
        }

        v16 = CNALoggingContextDebug(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v52 = v12;
          v53 = 2112;
          v54 = v3;
          v17 = "Predictions: Duplicate identifier %@. Skipping %@.";
          v18 = v16;
          v19 = 22;
LABEL_28:
          _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        }

LABEL_29:
        v21 = 0;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      v16 = CNALoggingContextDebug(0);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v52 = v3;
      v17 = "Predictions: Invalid result: no handle type for %@";
    }

    else
    {
      v16 = CNALoggingContextDebug(v11);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v52 = v3;
      v17 = "Predictions: Invalid result: no handle for %@";
    }

    v18 = v16;
    v19 = 12;
    goto LABEL_28;
  }

  if (!v5)
  {
    v7 = CNALoggingContextDebug(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v7, OS_LOG_TYPE_DEFAULT, "Predictions: No recipient included in returned _PSSuggestion", buf, 2u);
    }

    goto LABEL_24;
  }

  v7 = [objc_opt_class() _identifierForGroupResultSuggestion:v3];
  v20 = [*(a1 + 40) containsObject:v7];
  if (v20)
  {
    v10 = CNALoggingContextDebug(v20);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v52 = v7;
      v53 = 2112;
      v54 = v3;
      _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Predictions: Duplicate group identifier %@. Skipping %@.", buf, 0x16u);
    }

    v21 = 0;
  }

  else
  {
    [*(a1 + 40) addObject:v7];
    if (![*(*(a1 + 32) + 24) shouldIncludeGroupResults])
    {
LABEL_24:
      v21 = 0;
      goto LABEL_33;
    }

    v22 = objc_opt_class();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_108;
    aBlock[3] = &unk_2781C4F50;
    v23 = v3;
    v42 = v23;
    v43 = v22;
    v24 = _Block_copy(aBlock);
    v25 = *(a1 + 48);
    v26 = [v23 groupName];
    v21 = [v25 duetResultWithDisplayName:v26 value:0 contactIdentifier:0];

    [v21 setResultType:1];
    [v21 setIdentifier:v7];
    [v21 setMembersProvider:v24];
    v27 = CNALoggingContextDebug([v21 setPsSuggestion:v23]);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v23 groupName];
      *buf = 138412802;
      v52 = v21;
      v53 = 2112;
      v54 = v28;
      v55 = 2112;
      v56 = v7;
      _os_log_impl(&dword_2155FE000, v27, OS_LOG_TYPE_DEFAULT, "Predictions: %@ for displayName:%@ and identifier %@", buf, 0x20u);
    }

    v10 = v42;
  }

LABEL_32:

LABEL_33:

  return v21;
}

id __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_81(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendString:@"=== Important Instructions for Collecting Duet Logs ===\n"];
  [v2 appendString:@"This result includes predictive information contributed by CoreDuet. To collect information on why this result was predicted:\n\n"];
  [v2 appendString:@"1. Run the following command on the machine that has the issue:\n\n"];
  if (*(a1 + 48) == 1)
  {
    [v2 appendFormat:@"pstool zkw_suggestion -b %@\n\n", *(a1 + 32)];
  }

  else
  {
    v3 = [*(a1 + 40) address];
    v4 = [*(a1 + 40) address];
    [v2 appendFormat:@"cdinteracttool query -predicate sender.identifier == '%@' OR (ANY recipients.identifier == '%@')\n\n", v3, v4];
  }

  [v2 appendString:{@"2. Review the output of this command, checking for any privacy concerns.\n\n"}];
  [v2 appendString:{@"3. If there are no privacy concerns with the output, attach it to a radar filed against CoreDuet | PeopleSuggester (rdar://new/problem/component=CoreDuet&version=PeopleSuggester).\n"}];
  [v2 appendString:@"=======================================================\n"];

  return v2;
}

id __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke_108(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [*(a1 + 32) recipients];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 displayName];
        v10 = *(a1 + 40);
        v11 = [v8 handle];
        v12 = [v10 _addressTypeFromHandle:v11];

        if (v12)
        {
          v14 = [v8 handle];
          v15 = [CNAutocompleteResult messagesResultWithAddress:v14 displayName:v9 nameComponents:0 resultType:0 addressType:v12 identifier:0 contactProvider:0 groupMembersProvider:0 userInfo:0];

          [v2 addObject:v15];
        }

        else
        {
          v15 = CNALoggingContextDebug(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v8 handle];
            *buf = 138412290;
            v23 = v16;
            _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "Predictions: Unknown addressType for groupMember handle: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  return v2;
}

@end