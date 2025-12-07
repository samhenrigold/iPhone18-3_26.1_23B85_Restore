@interface ATXHeuristicContactPhoneNumber
- (BOOL)_containsPhonePunctuation:(id)punctuation;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (id)phonesFromDataDetectorResults:(id)results;
@end

@implementation ATXHeuristicContactPhoneNumber

- (id)permanentRefreshTriggers
{
  v2 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXLocalPasteboardDidChangeNotification" type:0];
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, 0}];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v42 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = [ATXHeuristicClipboardUtilities alloc];
  heuristicDevice = [environmentCopy heuristicDevice];

  v7 = [(ATXHeuristicClipboardUtilities *)v5 initWithDevice:heuristicDevice];
  [(ATXHeuristicClipboardUtilities *)v7 fetchContents];
  dataDetectors = [(ATXHeuristicClipboardUtilities *)v7 dataDetectors];
  v9 = objc_opt_new();
  telephonyCapability = [v9 telephonyCapability];
  if (telephonyCapability)
  {
    v11 = [(ATXHeuristicContactPhoneNumber *)self phonesFromDataDetectorResults:dataDetectors];
    v12 = __atxlog_handle_context_heuristic(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v11;
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: phones:%@", buf, 0xCu);
    }

    v13 = [v11 count];
    if (v13 == 1)
    {
      firstObject = [v11 firstObject];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = dataDetectors;
      v16 = MEMORY[0x277CCACA8];
      v17 = v15;
      v18 = [v15 localizedStringForKey:@"CALL_CLIPBOARD_NUMBER_TITLE" value:&stru_2850AD368 table:0];
      [v16 localizedStringWithFormat:v18, firstObject];
      v19 = v37 = v11;

      v20 = MEMORY[0x277CCACA8];
      v21 = v17;
      v36 = v17;
      v22 = [v17 localizedStringForKey:@"MESSAGE_CLIPBOARD_NUMBER_TITLE" value:&stru_2850AD368 table:0];
      v23 = [v20 localizedStringWithFormat:v22, firstObject];

      v24 = MEMORY[0x277CCACA8];
      v25 = [v21 localizedStringForKey:@"CLIPBOARD_NUMBER_SUBTITLE" value:&stru_2850AD368 table:0];
      appName = [(ATXHeuristicClipboardUtilities *)v7 appName];
      v27 = [v24 localizedStringWithFormat:v25, appName];

      v28 = [MEMORY[0x277CEB2C8] atx_startAudioCallActionWithTitle:v19 subtitle:v27 recipientName:0 recipientHandle:firstObject callService:@"phone" contactIdentifier:0 eventIdentifier:0 heuristicName:@"contactPhoneNumber"];
      v29 = [MEMORY[0x277CEB2C8] atx_sendMessageActionWithTitle:v23 subtitle:v27 recipientName:0 recipientHandle:firstObject text:0 contactIdentifier:0 conversationIdentifier:0 eventIdentifier:0 heuristicName:@"contactPhoneNumber"];
      v39[0] = v28;
      v39[1] = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      v31 = [(ATXHeuristicClipboardUtilities *)v7 resultWithActions:v30 predictionReasons:0x10000000];

      dataDetectors = v38;
      v11 = v37;
    }

    else
    {
      v33 = __atxlog_handle_context_heuristic(v13);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v11 count];
        *buf = 134217984;
        v41 = v34;
        _os_log_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Required exactly 1 phone number, but found %lu numbers.", buf, 0xCu);
      }

      v31 = objc_opt_new();
    }
  }

  else
  {
    v32 = __atxlog_handle_context_heuristic(telephonyCapability);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v32, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Suppressing prediction to contact copied phone number because device does not support telephony.", buf, 2u);
    }

    v31 = objc_opt_new();
  }

  return v31;
}

- (id)phonesFromDataDetectorResults:(id)results
{
  v21 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v14 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = resultsCopy;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"value", v14}];
        v11 = [v9 objectForKeyedSubscript:@"type"];
        if ([v11 isEqualToString:@"PhoneNumber"])
        {
          v12 = [(ATXHeuristicContactPhoneNumber *)self _containsPhonePunctuation:v10];

          if (v12)
          {
            [v14 addObject:v10];
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v14;
}

- (BOOL)_containsPhonePunctuation:(id)punctuation
{
  v3 = MEMORY[0x277CCA900];
  punctuationCopy = punctuation;
  v5 = [v3 characterSetWithCharactersInString:{@" (), -."}];
  v6 = [punctuationCopy componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 count];
  return v7 > 2;
}

@end