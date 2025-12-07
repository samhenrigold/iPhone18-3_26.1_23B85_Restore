@interface TUContactsDataProvider
+ (id)defaultContactKeyDescriptors;
+ (id)familyNameFirstLocaleCountryCodes;
+ (id)keysByCombiningDefaultKeysWithKeysToFetch:(id)fetch;
+ (id)numberFormatter;
+ (id)unsupportedLocalesForPrefixHint;
- (BOOL)isHandleEligibleForScreenSharingRequests:(id)requests;
- (BOOL)shouldIgnoreHandle:(id)handle withFetchRequest:(id)request;
- (TUContactsDataProvider)init;
- (TUContactsDataProvider)initWithContactsDataSource:(id)source;
- (id)ISOCountryCodeForHandle:(id)handle fetchRequest:(id)request;
- (id)compositeNameForContacts:(id)contacts;
- (id)compositeNameForFetchRequest:(id)request;
- (id)contactLabelForContacts:(id)contacts matchingHandle:(id)handle countryCode:(id)code;
- (id)contactWithIdentifier:(id)identifier keysToFetch:(id)fetch;
- (id)contactsForHandle:(id)handle countryCode:(id)code keysToFetch:(id)fetch prefixHint:(id)hint;
- (id)executeBatchFetchRequests:(id)requests;
- (id)executeFetchRequest:(id)request;
- (id)formattedNameForHandle:(id)handle countryCode:(id)code;
- (id)getDeviceSetupDate;
- (id)labeledHandlesForContactWithIdentifier:(id)identifier;
- (id)labeledHandlesForContacts:(id)contacts;
- (id)localizedCompositeNameForContact:(id)contact secondContact:(id)secondContact;
- (id)nameForContact:(id)contact;
- (id)prefixHintForFetchRequest:(id)request;
- (id)processBatchFetchRequests:(id)requests;
- (id)resultForSingleHandleFetchRequest:(id)request fetchedContacts:(id)contacts;
- (id)unifiedContactsForFetchRequest:(id)request;
- (int)personIDForContact:(id)contact;
@end

@implementation TUContactsDataProvider

+ (id)familyNameFirstLocaleCountryCodes
{
  if (familyNameFirstLocaleCountryCodes_onceToken != -1)
  {
    +[TUContactsDataProvider familyNameFirstLocaleCountryCodes];
  }

  v3 = familyNameFirstLocaleCountryCodes_familyNameFirstLocaleCountryCodes;

  return v3;
}

+ (id)defaultContactKeyDescriptors
{
  if (defaultContactKeyDescriptors_onceToken != -1)
  {
    +[TUContactsDataProvider defaultContactKeyDescriptors];
  }

  v3 = defaultContactKeyDescriptors_defaultContactKeyDescriptors;

  return v3;
}

- (TUContactsDataProvider)init
{
  tu_contactStore = [MEMORY[0x1E695CE18] tu_contactStore];
  v4 = [(TUContactsDataProvider *)self initWithContactsDataSource:tu_contactStore];

  return v4;
}

- (TUContactsDataProvider)initWithContactsDataSource:(id)source
{
  sourceCopy = source;
  v26.receiver = self;
  v26.super_class = TUContactsDataProvider;
  v6 = [(TUContactsDataProvider *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v8 = TUDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(TUContactsDataProvider *)sourceCopy initWithContactsDataSource:v8];
    }

    objc_storeStrong(&v7->_contactsDataSource, source);
    familyNameFirstLocaleCountryCodes = [objc_opt_class() familyNameFirstLocaleCountryCodes];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    countryCode = [currentLocale countryCode];
    lowercaseString = [countryCode lowercaseString];
    v7->_useFamilyNameFirst = [familyNameFirstLocaleCountryCodes containsObject:lowercaseString];

    objc_initWeak(&location, v7);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __53__TUContactsDataProvider_initWithContactsDataSource___block_invoke;
    v23 = &unk_1E7425CF8;
    objc_copyWeak(&v24, &location);
    v13 = _Block_copy(&v20);
    localeSupportsPrefixHintForFetchRequest = v7->_localeSupportsPrefixHintForFetchRequest;
    v7->_localeSupportsPrefixHintForFetchRequest = v13;

    v15 = objc_alloc_init(TUContactsDataProviderAppleCareHandles);
    appleCareHandles = v7->_appleCareHandles;
    v7->_appleCareHandles = v15;

    tu_defaults = [MEMORY[0x1E695E000] tu_defaults];
    userDefaults = v7->_userDefaults;
    v7->_userDefaults = tu_defaults;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v7;
}

uint64_t __53__TUContactsDataProvider_initWithContactsDataSource___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 useNetworkCountryCode])
  {
    v3 = TUNetworkCountryCode();
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = TUHomeCountryCode();
    }

    v6 = v5;

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = TUHomeCountryCode();
    if (!v6)
    {
LABEL_8:
      v7 = [MEMORY[0x1E695DF58] currentLocale];
      v8 = [v7 countryCode];
      v6 = [v8 lowercaseString];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [objc_opt_class() unsupportedLocalesForPrefixHint];
  v11 = [v10 containsObject:v6];

  return v11 ^ 1u;
}

- (id)processBatchFetchRequests:(id)requests
{
  v42 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = requestsCopy;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        handles = [v12 handles];
        v14 = [handles count];

        if (v14 != 1)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fetch request does not contain exactly one handle %@", v12];
          NSLog(&cfstr_TuassertionFai.isa, v15);

          if (_TUAssertShouldCrashApplication())
          {
            handles2 = [v12 handles];
            v17 = [handles2 count];

            if (v17 != 1)
            {
              [(TUContactsDataProvider *)a2 processBatchFetchRequests:v12];
            }
          }
        }

        [v12 removePsuedHandles];
        handles3 = [v12 handles];
        firstObject = [handles3 firstObject];

        if (!firstObject)
        {
          v23 = TUDefaultLog(v20);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v12;
            _os_log_error_impl(&dword_1956FD000, v23, OS_LOG_TYPE_ERROR, "Fetch request did not contain any handles or only contained one pseudonym handle: %@ ", buf, 0xCu);
          }

          goto LABEL_17;
        }

        [dictionary setObject:v12 forKeyedSubscript:firstObject];
        [array2 addObject:firstObject];
        v21 = [(TUContactsDataProvider *)self shouldIgnoreHandle:firstObject withFetchRequest:v12];
        if (v21)
        {
          v22 = TUDefaultLog(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v40 = firstObject;
            _os_log_impl(&dword_1956FD000, v22, OS_LOG_TYPE_DEFAULT, "Not looking up contact for %@ because it is in our apple care handles", buf, 0xCu);
          }
        }

        else
        {
          type = [firstObject type];
          if ((type - 2) >= 2)
          {
            if (type == 1)
            {
              v23 = [(TUContactsDataProvider *)self executeFetchRequest:v12];
              [dictionary2 setObject:v23 forKeyedSubscript:firstObject];
LABEL_17:
            }
          }

          else
          {
            [array addObject:firstObject];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v9);
  }

  v25 = [TUBatchFetchRequestProcessingResult alloc];
  v26 = [dictionary copy];
  v27 = [array copy];
  v28 = [array2 copy];
  v29 = [dictionary2 copy];
  v30 = [(TUBatchFetchRequestProcessingResult *)v25 initWithHandleToFetchRequest:v26 handlesToBatchFetch:v27 allHandlesFromFetchRequests:v28 fetchRequestResults:v29];

  return v30;
}

- (id)executeBatchFetchRequests:(id)requests
{
  v36 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    v5 = [(TUContactsDataProvider *)self processBatchFetchRequests:requestsCopy];
    fetchRequestResults = [v5 fetchRequestResults];
    v30 = [fetchRequestResults mutableCopy];

    v7 = objc_opt_class();
    v27 = requestsCopy;
    firstObject = [requestsCopy firstObject];
    auxiliaryKeysToFetch = [firstObject auxiliaryKeysToFetch];
    v10 = [v7 keysByCombiningDefaultKeysWithKeysToFetch:auxiliaryKeysToFetch];

    selfCopy = self;
    contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
    handlesToBatchFetch = [v5 handlesToBatchFetch];
    v26 = v10;
    v13 = [contactsDataSource tu_contactsForHandles:handlesToBatchFetch keyDescriptors:v10 error:0];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v5;
    obj = [v5 allHandlesFromFetchRequests];
    v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          array = [v13 objectForKeyedSubscript:v19];
          if (!array)
          {
            array = [MEMORY[0x1E695DEC8] array];
          }

          handleToFetchRequest = [v14 handleToFetchRequest];
          v22 = [handleToFetchRequest objectForKeyedSubscript:v19];
          v23 = [(TUContactsDataProvider *)selfCopy resultForSingleHandleFetchRequest:v22 fetchedContacts:array];
          [v30 setObject:v23 forKeyedSubscript:v19];
        }

        v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v16);
    }

    dictionary = [v30 copy];
    requestsCopy = v27;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  return dictionary;
}

- (id)executeFetchRequest:(id)request
{
  v88 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v87 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Executing fetch request: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(TUContactsDataProviderResult);
  [requestCopy removePsuedHandles];
  if ([requestCopy isConversation])
  {
    handles = [requestCopy handles];
    v8 = [handles count];

    if (v8 >= 2)
    {
      v62 = v6;
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      handles2 = [requestCopy handles];
      v11 = [handles2 countByEnumeratingWithState:&v78 objects:v85 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v79;
        v65 = handles2;
        v66 = requestCopy;
        v64 = *v79;
        do
        {
          v14 = 0;
          v70 = v12;
          do
          {
            if (*v79 != v13)
            {
              objc_enumerationMutation(handles2);
            }

            v72 = v14;
            v15 = *(*(&v78 + 1) + 8 * v14);
            value = [v15 value];
            destinationIdIsPseudonym = [value destinationIdIsPseudonym];

            if ((destinationIdIsPseudonym & 1) == 0)
            {
              v18 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v15 fetchRequest:requestCopy];
              defaultContactKeyDescriptors = [objc_opt_class() defaultContactKeyDescriptors];
              v20 = [(TUContactsDataProvider *)self contactsForHandle:v15 countryCode:v18 keysToFetch:defaultContactKeyDescriptors prefixHint:0];

              v21 = v20;
              if ([v20 count])
              {
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v22 = v20;
                v23 = [v22 countByEnumeratingWithState:&v74 objects:v84 count:16];
                if (v23)
                {
                  v24 = v23;
                  v68 = v21;
                  v69 = v18;
                  v25 = *v75;
                  do
                  {
                    for (i = 0; i != v24; ++i)
                    {
                      if (*v75 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v27 = *(*(&v74 + 1) + 8 * i);
                      v83 = v27;
                      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
                      v29 = [(TUContactsDataProvider *)self compositeNameForContacts:v28];

                      if (v29)
                      {
                        givenName = [v27 givenName];
                        [array addObject:givenName];
                      }
                    }

                    v24 = [v22 countByEnumeratingWithState:&v74 objects:v84 count:16];
                  }

                  while (v24);
                  handles2 = v65;
                  requestCopy = v66;
                  v13 = v64;
                  v21 = v68;
                  v18 = v69;
                }
              }

              else
              {
                v22 = [(TUContactsDataProvider *)self formattedNameForHandle:v15 countryCode:v18];
                [(TUContactsDataProviderResult *)array2 addObject:v22];
              }

              v12 = v70;
            }

            v14 = v72 + 1;
          }

          while (v72 + 1 != v12);
          v12 = [handles2 countByEnumeratingWithState:&v78 objects:v85 count:16];
        }

        while (v12);
      }

      [array sortUsingComparator:&__block_literal_global_22];
      v6 = array2;
      [(TUContactsDataProviderResult *)array2 sortUsingComparator:&__block_literal_global_55_0];
      v31 = [MEMORY[0x1E695DF70] arrayWithArray:array];
      [v31 addObjectsFromArray:array2];
      v32 = TUBundle();
      v33 = [v32 localizedStringForKey:@"UNKNOWN" value:&stru_1F098C218 table:@"TelephonyUtilities"];

      if ([v31 count] == 1)
      {
        v34 = [v31 objectAtIndexedSubscript:0];
        goto LABEL_41;
      }

      if ([v31 count] == 2)
      {
        v40 = MEMORY[0x1E696AEC0];
        v41 = TUBundle();
        v42 = [v41 localizedStringForKey:@"%@_AND_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        [v31 objectAtIndexedSubscript:0];
        v44 = v43 = requestCopy;
        v45 = [v31 objectAtIndexedSubscript:1];
        v34 = [v40 stringWithFormat:v42, v44, v45];

        requestCopy = v43;
      }

      else
      {
        if ([v31 count] == 3)
        {
          v46 = MEMORY[0x1E696AEC0];
          v47 = TUBundle();
          v41 = v47;
          v48 = @"%@_%@_AND_%@";
        }

        else
        {
          if ([v31 count] != 4)
          {
            if ([v31 count] < 5)
            {
              v39 = v62;
              goto LABEL_42;
            }

            numberFormatter = [objc_opt_class() numberFormatter];
            v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v31, "count") - 3}];
            v71 = [numberFormatter stringFromNumber:v55];

            v56 = MEMORY[0x1E696AEC0];
            v73 = TUBundle();
            v57 = [v73 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHERS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
            v58 = [v31 objectAtIndexedSubscript:0];
            v59 = [v31 objectAtIndexedSubscript:1];
            [v31 objectAtIndexedSubscript:2];
            v61 = v60 = requestCopy;
            v34 = [v56 stringWithFormat:v57, v58, v59, v61, v71];

            requestCopy = v60;
            v6 = array2;
            v33 = v71;
LABEL_41:
            v39 = v62;

            v33 = v34;
LABEL_42:
            [v39 setLocalizedName:v33];

            goto LABEL_43;
          }

          v46 = MEMORY[0x1E696AEC0];
          v47 = TUBundle();
          v41 = v47;
          v48 = @"%@_%@_%@_AND_ONE_OTHER";
        }

        [v47 localizedStringForKey:v48 value:&stru_1F098C218 table:@"TelephonyUtilities"];
        v49 = v67 = requestCopy;
        v50 = [v31 objectAtIndexedSubscript:0];
        v51 = [v31 objectAtIndexedSubscript:1];
        v52 = [v31 objectAtIndexedSubscript:2];
        v34 = [v46 stringWithFormat:v49, v50, v51, v52];

        requestCopy = v67;
      }

      v33 = v41;
      v6 = array2;
      goto LABEL_41;
    }
  }

  contactIdentifier = [requestCopy contactIdentifier];

  if (!contactIdentifier || ([requestCopy contactIdentifier], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestCopy, "auxiliaryKeysToFetch"), v37 = objc_claimAutoreleasedReturnValue(), -[TUContactsDataProvider contactWithIdentifier:keysToFetch:](self, "contactWithIdentifier:keysToFetch:", v36, v37), v38 = objc_claimAutoreleasedReturnValue(), v37, v36, !v38) || (v82 = v38, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v82, 1), array = objc_claimAutoreleasedReturnValue(), v38, !array))
  {
    array = [(TUContactsDataProvider *)self unifiedContactsForFetchRequest:requestCopy];
  }

  v39 = [(TUContactsDataProvider *)self resultForSingleHandleFetchRequest:requestCopy fetchedContacts:array];
LABEL_43:

  return v39;
}

- (id)resultForSingleHandleFetchRequest:(id)request fetchedContacts:(id)contacts
{
  v40 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contactsCopy = contacts;
  v8 = objc_alloc_init(TUContactsDataProviderResult);
  if ([contactsCopy count])
  {
    firstObject = [contactsCopy firstObject];
    [(TUContactsDataProviderResult *)v8 setLegacyAddressBookIdentifier:[(TUContactsDataProvider *)self personIDForContact:firstObject]];
  }

  if ([contactsCopy count])
  {
    v10 = [(TUContactsDataProvider *)self compositeNameForContacts:contactsCopy];
    [(TUContactsDataProviderResult *)v8 setLocalizedName:v10];

    handles = [requestCopy handles];
    v12 = [handles count];

    if (v12 == 1)
    {
      handles2 = [requestCopy handles];
      firstObject2 = [handles2 firstObject];

      v15 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject2 fetchRequest:requestCopy];
      v16 = [(TUContactsDataProvider *)self contactLabelForContacts:contactsCopy matchingHandle:firstObject2 countryCode:v15];
      [(TUContactsDataProviderResult *)v8 setContactLabel:v16];
    }

    if ([contactsCopy count] == 1)
    {
      firstObject3 = [contactsCopy firstObject];
      organizationName = [firstObject3 organizationName];
      [(TUContactsDataProviderResult *)v8 setCompanyName:organizationName];
    }
  }

  localizedName = [(TUContactsDataProviderResult *)v8 localizedName];

  if (!localizedName)
  {
    v21 = TUDefaultLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      handles3 = [requestCopy handles];
      *v39 = 138412290;
      *&v39[4] = handles3;
      _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "Finding the appropriate localized name to use for handles: %@", v39, 0xCu);
    }

    v23 = [(TUContactsDataProvider *)self compositeNameForFetchRequest:requestCopy];
    if (v23)
    {
      v24 = TUDefaultLog([(TUContactsDataProviderResult *)v8 setLocalizedName:v23]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        localizedName2 = [(TUContactsDataProviderResult *)v8 localizedName];
        *v39 = 138412290;
        *&v39[4] = localizedName2;
        v26 = "     - using formatted destination ID '%@'";
LABEL_22:
        _os_log_impl(&dword_1956FD000, v24, OS_LOG_TYPE_DEFAULT, v26, v39, 0xCu);
      }
    }

    else if ([requestCopy isEmergency])
    {
      v27 = TUBundle();
      v28 = [v27 localizedStringForKey:@"EMERGENCY_SERVICES" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      [(TUContactsDataProviderResult *)v8 setLocalizedName:v28];

      v24 = TUDefaultLog(v29);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        localizedName2 = [(TUContactsDataProviderResult *)v8 localizedName];
        *v39 = 138412290;
        *&v39[4] = localizedName2;
        v26 = "     - call is to emergency services, we'll use the emergency services string: '%@'";
        goto LABEL_22;
      }
    }

    else
    {
      isBlocked = [requestCopy isBlocked];
      v31 = TUBundle();
      v32 = v31;
      if (isBlocked)
      {
        v33 = [v31 localizedStringForKey:@"BLOCKED" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        [(TUContactsDataProviderResult *)v8 setLocalizedName:v33];

        v24 = TUDefaultLog(v34);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          localizedName2 = [(TUContactsDataProviderResult *)v8 localizedName];
          *v39 = 138412290;
          *&v39[4] = localizedName2;
          v26 = "     - call is blocked, we'll use the blocked string: '%@'";
          goto LABEL_22;
        }
      }

      else
      {
        v35 = [v31 localizedStringForKey:@"UNKNOWN" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        [(TUContactsDataProviderResult *)v8 setLocalizedName:v35];

        v24 = TUDefaultLog(v36);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          localizedName2 = [(TUContactsDataProviderResult *)v8 localizedName];
          *v39 = 138412290;
          *&v39[4] = localizedName2;
          v26 = "     - falling back to the unknown string: '%@'";
          goto LABEL_22;
        }
      }
    }
  }

  v37 = TUDefaultLog([(TUContactsDataProviderResult *)v8 setContacts:contactsCopy, *v39, *&v39[8]]);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 138412290;
    *&v39[4] = v8;
    _os_log_impl(&dword_1956FD000, v37, OS_LOG_TYPE_DEFAULT, "Determined dataProviderResult: %@", v39, 0xCu);
  }

  return v8;
}

- (id)contactLabelForContacts:(id)contacts matchingHandle:(id)handle countryCode:(id)code
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  codeCopy = code;
  [(TUContactsDataProvider *)self labeledHandlesForContacts:contacts];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v21 = 0u;
  label = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (label)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != label; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        handle = [v14 handle];
        v16 = [handle isCanonicallyEqualToHandle:handleCopy isoCountryCode:codeCopy];

        if (v16)
        {
          label = [v14 label];
          goto LABEL_11;
        }
      }

      label = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (label)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return label;
}

- (id)labeledHandlesForContactWithIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E0F0];
  v5 = [(TUContactsDataProvider *)self contactWithIdentifier:identifier keysToFetch:MEMORY[0x1E695E0F0]];
  v6 = v5;
  if (v5)
  {
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v4 = [(TUContactsDataProvider *)self labeledHandlesForContacts:v7];
  }

  return v4;
}

- (id)labeledHandlesForContacts:(id)contacts
{
  v58 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  array = [MEMORY[0x1E695DF70] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = contactsCopy;
  v40 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v40)
  {
    v39 = *v52;
    do
    {
      v5 = 0;
      do
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v51 + 1) + 8 * v5);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v41 = v6;
        v42 = v5;
        phoneNumbers = [v6 phoneNumbers];
        v8 = [phoneNumbers countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v48;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v48 != v10)
              {
                objc_enumerationMutation(phoneNumbers);
              }

              v12 = *(*(&v47 + 1) + 8 * i);
              v13 = [TUHandle alloc];
              value = [v12 value];
              unformattedInternationalStringValue = [value unformattedInternationalStringValue];
              v16 = [(TUHandle *)v13 initWithType:2 value:unformattedInternationalStringValue];

              v17 = [TULabeledHandle alloc];
              v18 = MEMORY[0x1E695CEE0];
              label = [v12 label];
              v20 = [v18 localizedStringForLabel:label];
              v21 = -[TULabeledHandle initWithHandle:label:isSuggested:](v17, "initWithHandle:label:isSuggested:", v16, v20, [v12 tuIsSuggested]);

              [array addObject:v21];
            }

            v9 = [phoneNumbers countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v9);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        emailAddresses = [v41 emailAddresses];
        v23 = [emailAddresses countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v44;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v44 != v25)
              {
                objc_enumerationMutation(emailAddresses);
              }

              v27 = *(*(&v43 + 1) + 8 * j);
              v28 = [TUHandle alloc];
              value2 = [v27 value];
              v30 = [(TUHandle *)v28 initWithType:3 value:value2];

              v31 = [TULabeledHandle alloc];
              v32 = MEMORY[0x1E695CEE0];
              label2 = [v27 label];
              v34 = [v32 localizedStringForLabel:label2];
              v35 = -[TULabeledHandle initWithHandle:label:isSuggested:](v31, "initWithHandle:label:isSuggested:", v30, v34, [v27 tuIsSuggested]);

              [array addObject:v35];
            }

            v24 = [emailAddresses countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v24);
        }

        v5 = v42 + 1;
      }

      while (v42 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v40);
  }

  v36 = [array copy];

  return v36;
}

- (id)contactWithIdentifier:(id)identifier keysToFetch:(id)fetch
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  fetchCopy = fetch;
  contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
  v9 = [objc_opt_class() keysByCombiningDefaultKeysWithKeysToFetch:fetchCopy];

  v17 = 0;
  v10 = [contactsDataSource unifiedContactWithIdentifier:identifierCopy keysToFetch:v9 error:&v17];
  v11 = v17;

  if (v10)
  {
    domain = TUDefaultLog(v12);
    if (os_log_type_enabled(domain, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&dword_1956FD000, domain, OS_LOG_TYPE_DEFAULT, "Found contact: %@ for contactIdentifier %@: ", buf, 0x16u);
    }
  }

  else
  {
    domain = [v11 domain];
    if ([domain isEqualToString:*MEMORY[0x1E695C448]])
    {
      code = [v11 code];

      if (code == 200)
      {
        goto LABEL_9;
      }

      domain = TUDefaultLog(v15);
      if (os_log_type_enabled(domain, OS_LOG_TYPE_ERROR))
      {
        [TUContactsDataProvider contactWithIdentifier:keysToFetch:];
      }
    }
  }

LABEL_9:

  return v10;
}

- (id)unifiedContactsForFetchRequest:(id)request
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  array = [MEMORY[0x1E695DF70] array];
  v5 = objc_opt_class();
  auxiliaryKeysToFetch = [requestCopy auxiliaryKeysToFetch];
  v24 = [v5 keysByCombiningDefaultKeysWithKeysToFetch:auxiliaryKeysToFetch];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  handles = [requestCopy handles];
  v8 = [handles countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 138412546;
    v22 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(handles);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [(TUContactsDataProvider *)self shouldIgnoreHandle:v13 withFetchRequest:requestCopy, v22];
        if (v14)
        {
          v15 = TUDefaultLog(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Not looking up contact for %@ because it is in our apple care handles", buf, 0xCu);
          }
        }

        else
        {
          v15 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:v13 fetchRequest:requestCopy];
          v16 = [(TUContactsDataProvider *)self prefixHintForFetchRequest:requestCopy];
          v17 = [(TUContactsDataProvider *)self contactsForHandle:v13 countryCode:v15 keysToFetch:v24 prefixHint:v16];

          if (v17)
          {
            [array addObjectsFromArray:v17];
          }

          else
          {
            v19 = TUDefaultLog(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v30 = v13;
              v31 = 2112;
              v32 = 0;
              _os_log_error_impl(&dword_1956FD000, v19, OS_LOG_TYPE_ERROR, "Error while fetching contacts for handle %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v10 = [handles countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  v20 = [array copy];

  return v20;
}

- (id)contactsForHandle:(id)handle countryCode:(id)code keysToFetch:(id)fetch prefixHint:(id)hint
{
  handleCopy = handle;
  codeCopy = code;
  fetchCopy = fetch;
  hintCopy = hint;
  type = [handleCopy type];
  switch(type)
  {
    case 1:
      v24 = objc_alloc(MEMORY[0x1E695CFA0]);
      value = [handleCopy value];
      contactsDataSource2 = [v24 initWithUrlString:0 username:value userIdentifier:0 service:0];

      contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
      v18 = [MEMORY[0x1E695CD58] predicateForContactsMatchingSocialProfile:contactsDataSource2];
      defaultContactKeyDescriptors = [objc_opt_class() defaultContactKeyDescriptors];
      v29 = 0;
      v19 = [contactsDataSource unifiedContactsMatchingPredicate:v18 keysToFetch:defaultContactKeyDescriptors error:&v29];
      v23 = v29;

LABEL_8:
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    case 2:
      v21 = MEMORY[0x1E695CF50];
      value2 = [handleCopy value];
      contactsDataSource2 = [v21 phoneNumberWithDigits:value2 countryCode:codeCopy];

      contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
      v18 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:contactsDataSource2 prefixHint:hintCopy];
      v30 = 0;
      v19 = [contactsDataSource unifiedContactsMatchingPredicate:v18 keysToFetch:fetchCopy error:&v30];
      v20 = v30;
      goto LABEL_6;
    case 3:
      contactsDataSource2 = [(TUContactsDataProvider *)self contactsDataSource];
      v16 = MEMORY[0x1E695CD58];
      contactsDataSource = [handleCopy value];
      v18 = [v16 predicateForContactsMatchingEmailAddress:contactsDataSource];
      v31 = 0;
      v19 = [contactsDataSource2 unifiedContactsMatchingPredicate:v18 keysToFetch:fetchCopy error:&v31];
      v20 = v31;
LABEL_6:
      v23 = v20;
      goto LABEL_8;
  }

  v23 = 0;
LABEL_11:
  v27 = TUDefaultLog(type);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [TUContactsDataProvider contactsForHandle:countryCode:keysToFetch:prefixHint:];
  }

  v19 = MEMORY[0x1E695E0F0];
LABEL_14:

  return v19;
}

- (id)nameForContact:(id)contact
{
  contactCopy = contact;
  if ([(TUContactsDataProvider *)self shouldUseGivenName])
  {
    [contactCopy givenName];
  }

  else
  {
    [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  }
  v5 = ;

  return v5;
}

- (id)localizedCompositeNameForContact:(id)contact secondContact:(id)secondContact
{
  contactCopy = contact;
  secondContactCopy = secondContact;
  givenName = [contactCopy givenName];
  if (!givenName)
  {
    goto LABEL_12;
  }

  v9 = givenName;
  familyName = [contactCopy familyName];
  if (!familyName)
  {
    goto LABEL_11;
  }

  v11 = familyName;
  givenName2 = [secondContactCopy givenName];
  if (!givenName2)
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v23 = [(TUContactsDataProvider *)self nameForContact:contactCopy];
    v28 = [(TUContactsDataProvider *)self nameForContact:secondContactCopy];
    v24 = v28;
    if (!v23 || !v28)
    {
      if (v23)
      {
        v31 = v23;
      }

      else
      {
        v31 = v28;
      }

      v30 = v31;
      goto LABEL_21;
    }

    v29 = MEMORY[0x1E696AEC0];
    familyName5 = TUBundle();
    givenName5 = [familyName5 localizedStringForKey:@"%@_OR_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v27 = [v29 stringWithFormat:givenName5, v23, v24];
    goto LABEL_15;
  }

  v13 = givenName2;
  familyName2 = [secondContactCopy familyName];
  if (!familyName2)
  {

    goto LABEL_10;
  }

  v15 = familyName2;
  familyName3 = [secondContactCopy familyName];
  familyName4 = [contactCopy familyName];
  v18 = [familyName3 localizedCaseInsensitiveCompare:familyName4];

  if (v18)
  {
    goto LABEL_12;
  }

  givenName3 = [secondContactCopy givenName];
  givenName4 = [contactCopy givenName];
  v21 = [givenName3 localizedCaseInsensitiveCompare:givenName4];

  if (v21)
  {
    if (![(TUContactsDataProvider *)self shouldUseGivenName])
    {
      shouldUseFamilyNameFirst = [(TUContactsDataProvider *)self shouldUseFamilyNameFirst];
      v34 = MEMORY[0x1E696AEC0];
      if (shouldUseFamilyNameFirst)
      {
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v23 = TUBundle();
        v24 = [v23 localizedStringForKey:@"%@_%@_OR_%@_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        familyName5 = [secondContactCopy familyName];
        givenName5 = [contactCopy givenName];
        familyName6 = [secondContactCopy familyName];
        givenName6 = [secondContactCopy givenName];
        v30 = [v35 initWithFormat:v24, familyName5, givenName5, familyName6, givenName6];
      }

      else
      {
        v23 = TUBundle();
        v24 = [v23 localizedStringForKey:@"%@_OR_%@_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
        familyName5 = [contactCopy givenName];
        givenName5 = [secondContactCopy givenName];
        familyName6 = [secondContactCopy familyName];
        v30 = [v34 stringWithFormat:v24, familyName5, givenName5, familyName6];
      }

      goto LABEL_16;
    }

    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = TUBundle();
    v24 = [v23 localizedStringForKey:@"%@_OR_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    familyName5 = [contactCopy givenName];
    givenName5 = [secondContactCopy givenName];
    v27 = [v22 initWithFormat:v24, familyName5, givenName5];
LABEL_15:
    v30 = v27;
LABEL_16:

LABEL_21:
    goto LABEL_22;
  }

  v30 = [(TUContactsDataProvider *)self nameForContact:contactCopy];
LABEL_22:

  return v30;
}

- (id)compositeNameForContacts:(id)contacts
{
  v33 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  firstObject = [contactsCopy firstObject];
  if ([contactsCopy count] == 1)
  {
    v6 = [(TUContactsDataProvider *)self nameForContact:firstObject];
    v7 = v6;
  }

  else if ([contactsCopy count] == 2)
  {
    v8 = [contactsCopy objectAtIndexedSubscript:1];
    v7 = [(TUContactsDataProvider *)self localizedCompositeNameForContact:firstObject secondContact:v8];
  }

  else
  {
    v6 = [contactsCopy count];
    if (v6 >= 3)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = contactsCopy;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [(TUContactsDataProvider *)self nameForContact:*(*(&v24 + 1) + 8 * i)];
            if (v14)
            {
              v15 = v14;

              v16 = MEMORY[0x1E696AEC0];
              v17 = TUBundle();
              v18 = [v17 localizedStringForKey:@"%@_OR_%@_OTHERS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
              numberFormatter = [objc_opt_class() numberFormatter];
              v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count") - 1}];
              v21 = [numberFormatter stringFromNumber:v20];
              v7 = [v16 stringWithFormat:v18, v15, v21, v24];

              goto LABEL_17;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    v7 = 0;
  }

LABEL_17:
  v22 = TUDefaultLog(v6);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = contactsCopy;
    _os_log_impl(&dword_1956FD000, v22, OS_LOG_TYPE_DEFAULT, "Determined compositeName: %@ for contacts: %@", buf, 0x16u);
  }

  return v7;
}

- (id)compositeNameForFetchRequest:(id)request
{
  requestCopy = request;
  handles = [requestCopy handles];
  if ([handles count] == 1)
  {
    firstObject = [handles firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject fetchRequest:requestCopy];
    firstObject2 = [handles firstObject];
    v9 = [(TUContactsDataProvider *)self formattedNameForHandle:firstObject2 countryCode:v7];
LABEL_7:

    goto LABEL_8;
  }

  if ([handles count] == 2)
  {
    firstObject = [handles firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject fetchRequest:requestCopy];
    handles2 = [requestCopy handles];
    firstObject2 = [handles2 lastObject];

    v20 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject2 fetchRequest:requestCopy];
    v22 = MEMORY[0x1E696AEC0];
    v11 = TUBundle();
    v12 = [v11 localizedStringForKey:@"%@_AND_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v13 = [(TUContactsDataProvider *)self formattedNameForHandle:firstObject countryCode:v7];
    v14 = [(TUContactsDataProvider *)self formattedNameForHandle:firstObject2 countryCode:v20];
    v9 = [v22 stringWithFormat:v12, v13, v14];

    goto LABEL_7;
  }

  if ([handles count] >= 3)
  {
    firstObject = [handles firstObject];
    v7 = [(TUContactsDataProvider *)self ISOCountryCodeForHandle:firstObject fetchRequest:requestCopy];
    v23 = MEMORY[0x1E696AEC0];
    firstObject2 = TUBundle();
    v21 = [firstObject2 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v19 = [(TUContactsDataProvider *)self formattedNameForHandle:firstObject countryCode:v7];
    numberFormatter = [objc_opt_class() numberFormatter];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(handles, "count") - 1}];
    v17 = [numberFormatter stringFromNumber:v16];
    v9 = [v23 stringWithFormat:v21, v19, v17];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)formattedNameForHandle:(id)handle countryCode:(id)code
{
  v19 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  codeCopy = code;
  value = [handleCopy value];
  if (![value length])
  {
    normalizedValue = [handleCopy normalizedValue];

    value = normalizedValue;
  }

  type = [handleCopy type];
  v10 = TUDefaultLog(type);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (type == 2)
  {
    if (v11)
    {
      v15 = 138412546;
      v16 = value;
      v17 = 2112;
      v18 = codeCopy;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v15, 0x16u);
    }

    v12 = TUFormattedPhoneNumber(value, codeCopy);
  }

  else
  {
    if (v11)
    {
      v15 = 138412290;
      v16 = value;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v15, 0xCu);
    }

    v12 = value;
  }

  v13 = v12;

  return v13;
}

- (BOOL)shouldIgnoreHandle:(id)handle withFetchRequest:(id)request
{
  handleCopy = handle;
  requestCopy = request;
  if ([requestCopy isIncoming] && (objc_msgSend(requestCopy, "isVerified") & 1) == 0)
  {
    appleCareHandles = [(TUContactsDataProvider *)self appleCareHandles];
    v8 = [appleCareHandles contains:handleCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getDeviceSetupDate
{
  v20 = *MEMORY[0x1E69E9840];
  deviceSetupDate = [(TUContactsDataProvider *)self deviceSetupDate];

  if (deviceSetupDate)
  {
    deviceSetupDate2 = [(TUContactsDataProvider *)self deviceSetupDate];
    goto LABEL_12;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getBYSetupUserDispositionClass_softClass;
  v15 = getBYSetupUserDispositionClass_softClass;
  if (!getBYSetupUserDispositionClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v17 = __getBYSetupUserDispositionClass_block_invoke;
    v18 = &unk_1E7424CD8;
    v19 = &v12;
    __getBYSetupUserDispositionClass_block_invoke(&buf);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  current = [v5 current];
  date = [current date];

  v10 = TUDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = date;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "BYSetupUserDisposition: %@", &buf, 0xCu);
  }

  if (date)
  {
    deviceSetupDate2 = date;
LABEL_10:
    [(TUContactsDataProvider *)self setDeviceSetupDate:deviceSetupDate2];
    goto LABEL_11;
  }

  deviceSetupDate2 = CFPreferencesCopyValue(@"SetupLastExit", @"com.apple.purplebuddy", @"mobile", *MEMORY[0x1E695E898]);
  if (deviceSetupDate2)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:

  return deviceSetupDate2;
}

- (BOOL)isHandleEligibleForScreenSharingRequests:(id)requests
{
  v53 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  if (_TUIsInternalInstall() && (-[TUContactsDataProvider userDefaults](self, "userDefaults"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 BOOLForKey:@"ignoreContactCreationDateKey"], v5, v6))
  {
    v8 = TUDefaultLog(v7);
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, &v8->super, OS_LOG_TYPE_DEFAULT, "Handle is eligible for screen sharing because ignoreContactCreationDateKey is YES", buf, 2u);
    }

    v9 = 1;
  }

  else
  {
    v8 = [[TUContactsDataProviderFetchRequest alloc] initWithHandle:requestsCopy];
    [(TUContactsDataProviderFetchRequest *)v8 setAuxiliaryKeysToFetch:&unk_1F09C6358];
    v10 = [(TUContactsDataProvider *)self executeFetchRequest:v8];
    v11 = TUDefaultLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      contacts = [v10 contacts];
      *buf = 138412290;
      v49 = contacts;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Found contacts %@", buf, 0xCu);
    }

    contacts2 = [v10 contacts];
    v14 = [contacts2 count];

    if (v14)
    {
      date = [MEMORY[0x1E695DF00] date];
      v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v16 setDay:-1];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v18 = [currentCalendar dateByAddingComponents:v16 toDate:date options:0];
      getDeviceSetupDate = [(TUContactsDataProvider *)self getDeviceSetupDate];
      v20 = TUDefaultLog(getDeviceSetupDate);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = getDeviceSetupDate;
        _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "Got device setup date %@", buf, 0xCu);
      }

      if (getDeviceSetupDate && [getDeviceSetupDate compare:v18] == 1)
      {
        v9 = 1;
      }

      else
      {
        v39 = currentCalendar;
        v40 = v16;
        v41 = date;
        v43 = requestsCopy;
        v21 = MEMORY[0x1E695DF70];
        contacts3 = [v10 contacts];
        v23 = [v21 arrayWithCapacity:{objc_msgSend(contacts3, "count")}];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = v10;
        contacts4 = [v10 contacts];
        v25 = [contacts4 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v45;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v45 != v27)
              {
                objc_enumerationMutation(contacts4);
              }

              v29 = *(*(&v44 + 1) + 8 * i);
              creationDate = [v29 creationDate];
              [v23 addObject:creationDate];

              creationDate2 = [v29 creationDate];
              v32 = [creationDate2 compare:v18];

              if (v32 == -1)
              {
                v35 = TUDefaultLog(v33);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  creationDate3 = [v29 creationDate];
                  *buf = 138412546;
                  v49 = v29;
                  v50 = 2112;
                  v51 = creationDate3;
                  _os_log_impl(&dword_1956FD000, v35, OS_LOG_TYPE_DEFAULT, "Found contact %@ with creation date %@", buf, 0x16u);
                }

                v9 = 1;
                goto LABEL_29;
              }
            }

            v26 = [contacts4 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        contacts4 = TUDefaultLog(v34);
        if (os_log_type_enabled(contacts4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v23;
          _os_log_impl(&dword_1956FD000, contacts4, OS_LOG_TYPE_DEFAULT, "No contact had a creation date > 24 hours ago. Creation dates: %@", buf, 0xCu);
        }

        v9 = 0;
LABEL_29:
        v10 = v42;
        requestsCopy = v43;
        v16 = v40;
        date = v41;
        getDeviceSetupDate = v38;

        currentCalendar = v39;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (int)personIDForContact:(id)contact
{
  v13 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  contactsDataSource = [(TUContactsDataProvider *)self contactsDataSource];
  v6 = [contactsDataSource personFromContact:contactCopy];

  if (v6)
  {
    RecordID = ABRecordGetRecordID(v6);
  }

  else
  {
    v9 = TUDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = contactCopy;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not look up legacy ABPerson for contact: %@", &v11, 0xCu);
    }

    RecordID = -1;
  }

  return RecordID;
}

+ (id)keysByCombiningDefaultKeysWithKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  if ([fetchCopy count])
  {
    v4 = MEMORY[0x1E695DFD8];
    defaultContactKeyDescriptors = [objc_opt_class() defaultContactKeyDescriptors];
    v6 = [defaultContactKeyDescriptors arrayByAddingObjectsFromArray:fetchCopy];
    v7 = [v4 setWithArray:v6];
    allObjects = [v7 allObjects];
  }

  else
  {
    allObjects = [objc_opt_class() defaultContactKeyDescriptors];
  }

  return allObjects;
}

+ (id)numberFormatter
{
  if (numberFormatter_onceToken_0 != -1)
  {
    +[TUContactsDataProvider numberFormatter];
  }

  v3 = numberFormatter_numberFormatter_0;

  return v3;
}

uint64_t __41__TUContactsDataProvider_numberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = numberFormatter_numberFormatter_0;
  numberFormatter_numberFormatter_0 = v0;

  v2 = numberFormatter_numberFormatter_0;

  return [v2 setNumberStyle:1];
}

void __54__TUContactsDataProvider_defaultContactKeyDescriptors__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:1];
  v5[0] = v0;
  v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v2 = *MEMORY[0x1E695C330];
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = *MEMORY[0x1E695C208];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v4 = defaultContactKeyDescriptors_defaultContactKeyDescriptors;
  defaultContactKeyDescriptors_defaultContactKeyDescriptors = v3;
}

- (id)prefixHintForFetchRequest:(id)request
{
  requestCopy = request;
  localeSupportsPrefixHintForFetchRequest = [(TUContactsDataProvider *)self localeSupportsPrefixHintForFetchRequest];
  if ((localeSupportsPrefixHintForFetchRequest)[2](localeSupportsPrefixHintForFetchRequest, requestCopy))
  {
    phoneNumberPrefixHint = [requestCopy phoneNumberPrefixHint];
  }

  else
  {
    phoneNumberPrefixHint = 0;
  }

  return phoneNumberPrefixHint;
}

+ (id)unsupportedLocalesForPrefixHint
{
  if (unsupportedLocalesForPrefixHint_onceToken != -1)
  {
    +[TUContactsDataProvider unsupportedLocalesForPrefixHint];
  }

  v3 = unsupportedLocalesForPrefixHint_unsupportedLocalesForPrefixHint;

  return v3;
}

uint64_t __57__TUContactsDataProvider_unsupportedLocalesForPrefixHint__block_invoke()
{
  unsupportedLocalesForPrefixHint_unsupportedLocalesForPrefixHint = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F09C6370];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __59__TUContactsDataProvider_familyNameFirstLocaleCountryCodes__block_invoke()
{
  familyNameFirstLocaleCountryCodes_familyNameFirstLocaleCountryCodes = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F09C6388];

  return MEMORY[0x1EEE66BB8]();
}

- (id)ISOCountryCodeForHandle:(id)handle fetchRequest:(id)request
{
  requestCopy = request;
  isoCountryCode = [handle isoCountryCode];
  if (![isoCountryCode length])
  {
    isoCountryCode2 = [requestCopy isoCountryCode];

    if ([isoCountryCode2 length])
    {
      isoCountryCode = isoCountryCode2;
    }

    else
    {
      if ([requestCopy useNetworkCountryCode])
      {
        v8 = TUNetworkCountryCode();
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = TUHomeCountryCode();
        }

        isoCountryCode = v10;
      }

      else
      {
        isoCountryCode = TUHomeCountryCode();
        v9 = isoCountryCode2;
      }
    }
  }

  return isoCountryCode;
}

- (void)initWithContactsDataSource:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "TUContactsDataProvider: source is a '%{public}@'", &v5, 0xCu);
}

- (void)processBatchFetchRequests:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"TUContactsDataProvider.m" lineNumber:99 description:{@"Fetch request does not contain exactly one handle %@", a3}];
}

@end