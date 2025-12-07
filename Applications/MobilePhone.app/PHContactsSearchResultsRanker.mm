@interface PHContactsSearchResultsRanker
- (PHContactsSearchResultsRanker)init;
- (id)autocompleteSuggestionForContact:(id)contact phoneNumber:(id)number;
- (id)rankContactSearchResults:(id)results;
@end

@implementation PHContactsSearchResultsRanker

- (PHContactsSearchResultsRanker)init
{
  v10.receiver = self;
  v10.super_class = PHContactsSearchResultsRanker;
  v2 = [(PHContactsSearchResultsRanker *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PSPredictionContext);
    context = v2->_context;
    v2->_context = v3;

    [(_PSPredictionContext *)v2->_context setBundleID:@"com.apple.InCallService"];
    v5 = +[_PSSuggesterConfiguration defaultConfiguration];
    configuration = v2->_configuration;
    v2->_configuration = v5;

    v7 = objc_alloc_init(_PSEnsembleModel);
    model = v2->_model;
    v2->_model = v7;
  }

  return v2;
}

- (id)rankContactSearchResults:(id)results
{
  resultsCopy = results;
  v5 = +[NSMutableArray array];
  v6 = PHDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v53 = [resultsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ContactsSearchResultsRanker] Received request to rank %lu contacts", buf, 0xCu);
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = resultsCopy;
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    v38 = v8;
    v39 = v7;
    v37 = *v49;
    do
    {
      v12 = 0;
      v40 = v10;
      do
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v48 + 1) + 8 * v12);
        contact = [v13 contact];
        identifier = [contact identifier];
        [v7 setObject:v13 forKeyedSubscript:identifier];

        preferredPhoneNumber = [v13 preferredPhoneNumber];

        if (preferredPhoneNumber)
        {
          preferredPhoneNumber2 = [v13 preferredPhoneNumber];
          phoneNumbers = [(PHContactsSearchResultsRanker *)self autocompleteSuggestionForContact:contact phoneNumber:preferredPhoneNumber2];

          [v5 addObject:phoneNumbers];
        }

        else
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          phoneNumbers = [contact phoneNumbers];
          v19 = [phoneNumbers countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = 0;
            v22 = *v45;
LABEL_12:
            v23 = 0;
            while (1)
            {
              if (*v45 != v22)
              {
                objc_enumerationMutation(phoneNumbers);
              }

              v24 = [(PHContactsSearchResultsRanker *)self autocompleteSuggestionForContact:contact phoneNumber:*(*(&v44 + 1) + 8 * v23)];
              [v5 addObject:v24];

              if (v21 == 4)
              {
                break;
              }

              v23 = v23 + 1;
              ++v21;
              if (v20 == v23)
              {
                v20 = [phoneNumbers countByEnumeratingWithState:&v44 objects:v56 count:16];
                if (v20)
                {
                  goto LABEL_12;
                }

                break;
              }
            }

            v8 = v38;
            v7 = v39;
            v11 = v37;
            v10 = v40;
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v10);
  }

  v26 = PHDefaultLog(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v5 count];
    v28 = [v8 count];
    *buf = 134218240;
    v53 = v27;
    v54 = 2048;
    v55 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[ContactsSearchResultsRanker] Created %lu candidates from %lu contacts", buf, 0x16u);
  }

  model = [(PHContactsSearchResultsRanker *)self model];
  context = [(PHContactsSearchResultsRanker *)self context];
  v31 = [model rankedAutocompleteSuggestionsFromContext:context candidates:v5];

  v32 = objc_alloc_init(NSMutableArray);
  v33 = [v31 count];
  if (v33)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __58__PHContactsSearchResultsRanker_rankContactSearchResults___block_invoke;
    v41[3] = &unk_100285A20;
    v42 = v7;
    v43 = v32;
    [v31 enumerateObjectsUsingBlock:v41];
  }

  v34 = PHDefaultLog(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v32 count];
    *buf = 134217984;
    v53 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[ContactsSearchResultsRanker] After ranking, rankedContactSearchResults = %lu", buf, 0xCu);
  }

  return v32;
}

void __58__PHContactsSearchResultsRanker_rankContactSearchResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v5 = [v3 contactIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v6 contact];
    v8 = [v12 handle];
    v9 = [CDSearchUtilities matchedPhoneNumberFor:v7 searchText:v8 allowMatchingLastFour:1];
    [v6 setPreferredPhoneNumber:v9];

    [*(a1 + 40) addObject:v6];
    v10 = *(a1 + 32);
    v11 = [v12 contactIdentifier];
    [v10 removeObjectForKey:v11];
  }
}

- (id)autocompleteSuggestionForContact:(id)contact phoneNumber:(id)number
{
  contactCopy = contact;
  value = [number value];
  unformattedInternationalStringValue = [value unformattedInternationalStringValue];

  v8 = [_PSAutocompleteSuggestion alloc];
  displayName = [contactCopy displayName];
  identifier = [contactCopy identifier];

  v11 = [v8 initWithChatGuid:0 chatHandles:0 displayName:displayName handle:unformattedInternationalStringValue contactIdentifier:identifier resultSourceType:16 autocompleteResult:0 recipients:0];

  return v11;
}

@end