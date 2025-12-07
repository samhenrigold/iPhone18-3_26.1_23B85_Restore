@interface _CNAPeopleSuggesterResultPrioritizer
+ (id)bundleIdentifierOfCurrentProcess;
+ (id)makeBundleIdentifierOfCurrentProcess;
+ (id)os_log;
- (BOOL)resultIdentifierIsValidMessagesChatGuid:(id)guid;
- (BOOL)resultMatchesPrefix:(id)prefix inNameComponentsOfResult:(id)result;
- (_CNAPeopleSuggesterResultPrioritizer)init;
- (id)applyPriorityOrderToResults:(id)results fetchRequest:(id)request andCompletePriorityResultsPromise:(id)promise;
- (id)partitionCandidatesForRanking:(id)ranking givenPrefixes:(id)prefixes;
@end

@implementation _CNAPeopleSuggesterResultPrioritizer

+ (id)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    +[_CNAPeopleSuggesterResultPrioritizer os_log];
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

- (_CNAPeopleSuggesterResultPrioritizer)init
{
  v7.receiver = self;
  v7.super_class = _CNAPeopleSuggesterResultPrioritizer;
  v2 = [(_CNAPeopleSuggesterResultPrioritizer *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CFBE30]) initWithClassificationQuality:0];
    handleStringClassifier = v2->_handleStringClassifier;
    v2->_handleStringClassifier = v3;

    v5 = v2;
  }

  return v2;
}

- (id)applyPriorityOrderToResults:(id)results fetchRequest:(id)request andCompletePriorityResultsPromise:(id)promise
{
  v122 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  requestCopy = request;
  promiseCopy = promise;
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v9 = v8;

  v11 = CNALoggingContextTriage(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier = [requestCopy triageIdentifier];
    *buf = 138543362;
    *&buf[4] = triageIdentifier;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will sort", buf, 0xCu);
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  searchNames = [requestCopy searchNames];
  v87 = [(_CNAPeopleSuggesterResultPrioritizer *)self partitionCandidatesForRanking:resultsCopy givenPrefixes:searchNames];

  first = [v87 first];
  second = [v87 second];
  v97 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(orderedSet, "count")}];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = first;
  v96 = [obj countByEnumeratingWithState:&v110 objects:v118 count:16];
  if (v96)
  {
    v94 = *v111;
    do
    {
      for (i = 0; i != v96; ++i)
      {
        if (*v111 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v110 + 1) + 8 * i);
        value = [v16 value];
        if ([(_CNAPeopleSuggesterResultPrioritizer *)self resultIdentifierIsValidMessagesChatGuid:v16])
        {
          identifier = [v16 identifier];
          v109 = 0;
          v19 = [v16 members:&v109];
          v20 = v109;
          v21 = v20;
          if (v19)
          {
            v22 = [v19 _cn_compactMap:&__block_literal_global_18_1];
          }

          else
          {
            v27 = CNALoggingContextDebug(v20);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = identifier;
              *&buf[12] = 2112;
              *&buf[14] = v21;
              _os_log_impl(&dword_2155FE000, v27, OS_LOG_TYPE_DEFAULT, "Error retrieving chat recipients from %@ : %@", buf, 0x16u);
            }

            v22 = 0;
          }

          unformattedInternationalStringValue = 0;
        }

        else
        {
          if ([value addressType] == 2)
          {
            v23 = MEMORY[0x277CBDB70];
            address = [value address];
            v25 = [v23 phoneNumberWithStringValue:address];

            unformattedInternationalStringValue = [v25 unformattedInternationalStringValue];
          }

          else
          {
            unformattedInternationalStringValue = [value address];
          }

          v22 = 0;
          identifier = 0;
        }

        if (identifier)
        {
          v28 = identifier;
        }

        else
        {
          v28 = unformattedInternationalStringValue;
        }

        v29 = v28;
        v30 = v29;
        if (v29)
        {
          v29 = [v97 setObject:v16 forKeyedSubscript:v29];
        }

        v31 = objc_alloc(get_PSAutocompleteSuggestionClass(v29));
        displayName = [v16 displayName];
        identifier2 = [v16 identifier];
        v34 = [v31 initWithChatGuid:identifier chatHandles:v22 displayName:displayName handle:unformattedInternationalStringValue contactIdentifier:identifier2 resultSourceType:objc_msgSend(v16 autocompleteResult:{"sourceType"), 0}];

        if (v34)
        {
          [orderedSet addObject:v34];
        }

        else
        {
          os_log = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v16;
            _os_log_error_impl(&dword_2155FE000, os_log, OS_LOG_TYPE_ERROR, "Could not create suggestion from result: %{public}@", buf, 0xCu);
          }
        }
      }

      v96 = [obj countByEnumeratingWithState:&v110 objects:v118 count:16];
    }

    while (v96);
  }

  v37 = CNALoggingContextTriage(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier2 = [requestCopy triageIdentifier];
    *buf = 138543362;
    *&buf[4] = triageIdentifier2;
    _os_log_impl(&dword_2155FE000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will re-rank with PSSuggester", buf, 0xCu);
  }

  bundleIdentifierOfCurrentProcess = [objc_opt_class() bundleIdentifierOfCurrentProcess];
  fetchContext = [requestCopy fetchContext];
  sendingAddressAccountIdentifier = [fetchContext sendingAddressAccountIdentifier];

  if ([requestCopy shouldIncludeGroupResults])
  {
    searchString = [requestCopy searchString];
  }

  else
  {
    searchString = 0;
  }

  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __115___CNAPeopleSuggesterResultPrioritizer_applyPriorityOrderToResults_fetchRequest_andCompletePriorityResultsPromise___block_invoke_20;
  v103[3] = &unk_2781C4CE0;
  v89 = bundleIdentifierOfCurrentProcess;
  v104 = v89;
  v90 = sendingAddressAccountIdentifier;
  v105 = v90;
  v95 = searchString;
  v106 = v95;
  v93 = orderedSet;
  v107 = v93;
  selfCopy = self;
  v43 = v103;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v120 = __Block_byref_object_copy__2;
  *&v121 = __Block_byref_object_dispose__2;
  *(&v121 + 1) = 0;
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __CNResultWithQoS_block_invoke;
  v114[3] = &unk_2781C4D78;
  v116 = buf;
  v44 = v43;
  v115 = v44;
  v45 = v114;
  v46 = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, v45);
  v47 = objc_opt_self();

  v47[2](v47);
  v48 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v50 = CNALoggingContextTriage(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier3 = [requestCopy triageIdentifier];
    *buf = 138543362;
    *&buf[4] = triageIdentifier3;
    _os_log_impl(&dword_2155FE000, v50, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Will convert to autocomplete results", buf, 0xCu);
  }

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet3 = [MEMORY[0x277CBEB40] orderedSet];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v54 = v48;
  v55 = [v54 countByEnumeratingWithState:&v99 objects:v117 count:16];
  if (v55)
  {
    v56 = *v100;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v100 != v56)
        {
          objc_enumerationMutation(v54);
        }

        v58 = *(*(&v99 + 1) + 8 * j);
        chatGuid = [v58 chatGuid];
        v60 = chatGuid;
        if (chatGuid)
        {
          handle = chatGuid;
        }

        else
        {
          handle = [v58 handle];
        }

        v62 = handle;

        v63 = [v97 objectForKeyedSubscript:v62];
        v64 = v63;
        if (v63)
        {
          [v63 setSourceType:{objc_msgSend(v58, "resultSourceType") | objc_msgSend(v63, "sourceType")}];
          [orderedSet2 addObject:v64];
          if (([v64 sourceType] & 0x10) != 0)
          {
            [orderedSet3 addObject:v64];
          }
        }

        else
        {
          os_log2 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v58;
            _os_log_error_impl(&dword_2155FE000, os_log2, OS_LOG_TYPE_ERROR, "Suggestion from PS has no identifier; this result may be ranked lower than it should be: %{public}@", buf, 0xCu);
          }
        }
      }

      v55 = [v54 countByEnumeratingWithState:&v99 objects:v117 count:16];
    }

    while (v55);
  }

  os_log3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log3, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  os_log4 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log4, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  os_log5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log5, OS_LOG_TYPE_DEBUG))
  {
    [_CNAPeopleSuggesterResultPrioritizer applyPriorityOrderToResults:fetchRequest:andCompletePriorityResultsPromise:];
  }

  [orderedSet2 addObjectsFromArray:obj];
  [orderedSet2 addObjectsFromArray:second];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [orderedSet2 array];
  v71 = [(_CNAPeopleSuggesterResultPrioritizer *)self partitionStewieResults:array2];

  first2 = [v71 first];
  [array addObjectsFromArray:first2];

  second2 = [v71 second];
  [array addObjectsFromArray:second2];

  [promiseCopy finishWithResult:orderedSet3];
  defaultProvider2 = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider2 timestamp];
  v76 = v75;

  v77 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v76 - v9];
  v78 = CNALoggingContextTriage(v77);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier4 = [requestCopy triageIdentifier];
    v80 = [array count];
    v81 = [array count];
    v82 = "results";
    *buf = 138544130;
    *&buf[4] = triageIdentifier4;
    *&buf[12] = 2048;
    if (v81 == 1)
    {
      v82 = "result";
    }

    *&buf[14] = v80;
    *&buf[22] = 2080;
    v120 = v82;
    LOWORD(v121) = 2114;
    *(&v121 + 2) = v77;
    _os_log_impl(&dword_2155FE000, v78, OS_LOG_TYPE_DEFAULT, "[%{public}@] PeopleSuggester: Sort complete (%lu %s, %{public}@)", buf, 0x2Au);
  }

  return array;
}

- (id)partitionCandidatesForRanking:(id)ranking givenPrefixes:(id)prefixes
{
  prefixesCopy = prefixes;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke;
  v10[3] = &unk_2781C4D30;
  v10[4] = self;
  v11 = prefixesCopy;
  v7 = prefixesCopy;
  v8 = [ranking _cn_partition:v10];

  return v8;
}

- (BOOL)resultMatchesPrefix:(id)prefix inNameComponentsOfResult:(id)result
{
  prefixCopy = prefix;
  resultCopy = result;
  v7 = resultCopy;
  if (resultCopy)
  {
    firstName = [resultCopy firstName];
    if ([firstName _cn_hasPrefix:prefixCopy])
    {
      v9 = 1;
    }

    else
    {
      lastName = [v7 lastName];
      if ([lastName _cn_hasPrefix:prefixCopy])
      {
        v9 = 1;
      }

      else
      {
        nickname = [v7 nickname];
        if ([nickname _cn_hasPrefix:prefixCopy])
        {
          v9 = 1;
        }

        else
        {
          nameSuffix = [v7 nameSuffix];
          v9 = [nameSuffix _cn_hasPrefix:prefixCopy];
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)resultIdentifierIsValidMessagesChatGuid:(id)guid
{
  guidCopy = guid;
  if ([guidCopy resultType] == 1)
  {
    identifier = [guidCopy identifier];
    if ([identifier containsString:@"iMessage"])
    {
LABEL_5:

LABEL_10:
      v8 = 1;
      goto LABEL_11;
    }

    identifier2 = [guidCopy identifier];
    if ([identifier2 containsString:@"SMS"])
    {

      goto LABEL_5;
    }

    identifier3 = [guidCopy identifier];
    v7 = [identifier3 containsString:@"urn:biz:"];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  if ([guidCopy resultType] == 1 && (objc_msgSend(guidCopy, "sourceType") & 0x10) != 0)
  {
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (id)bundleIdentifierOfCurrentProcess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___CNAPeopleSuggesterResultPrioritizer_bundleIdentifierOfCurrentProcess__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (bundleIdentifierOfCurrentProcess_cn_once_token_20 != -1)
  {
    dispatch_once(&bundleIdentifierOfCurrentProcess_cn_once_token_20, block);
  }

  v2 = bundleIdentifierOfCurrentProcess_cn_once_object_20;

  return v2;
}

+ (id)makeBundleIdentifierOfCurrentProcess
{
  bundleProxyForCurrentProcess = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [bundleProxyForCurrentProcess bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

@end