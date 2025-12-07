@interface _PSContactSuggester
+ (id)_cascadeContentForContactPriors;
+ (id)_cascadeContentForPriorsArchive:(id)archive cascadeContactEnumerator:(id)enumerator;
+ (id)_filteredContactDictionaryFromCascadeContent:(id)content forContactIdentifiers:(id)identifiers;
+ (id)contactPriorSuggestionsForText:(id)text;
+ (id)defaultCorrelationsSessionFileForContactPriors;
+ (void)_writeArchiveToCascade:(id)cascade;
- (CNContactStore)contactStore;
- (_CDInteractionStore)interactionStore;
- (_PSContactSuggester)init;
- (float)sigmoid:(float)sigmoid;
- (id)computeContactPriorsForContactIdentifiers:(id)identifiers;
- (id)computeContactPriorsForContactIdentifiers:(id)identifiers withTimeConstant:(int64_t)constant withInteractionMechanisms:(id)mechanisms asOf:(id)of overLookbackOf:(int64_t)lookbackOf;
- (id)contactAndGroupSuggestionsWithMaxSuggestions:(int64_t)suggestions lookBackDays:(int64_t)days interactions:(id)interactions;
- (id)contactKeysToFetch;
- (id)contactPriorsForContactIdentifiers:(id)identifiers;
- (id)contactSuggestionsForPeopleWidgetWithMaxSuggestions:(int64_t)suggestions excludeContactsWithIdentifiers:(id)identifiers;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions contactKeysTofetch:(id)tofetch interactionDomains:(id)domains appleUsersOnly:(BOOL)only;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsByIdentifiers:(id)identifiers;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsByIdentifiers:(id)identifiers interactionHistoryCap:(int64_t)cap;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsByIdentifiers:(id)identifiers lookBackDays:(int64_t)days interactions:(id)interactions modeAvocado:(BOOL)avocado interactionHistoryCap:(int64_t)cap;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsWithIdentifiers:(id)identifiers;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions interactionDomains:(id)domains appleUsersOnly:(BOOL)only;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions interactionDomains:(id)domains referenceDate:(id)date appleUsersOnly:(BOOL)only includeGroups:(BOOL)groups excludeContactsByIdentifiers:(id)identifiers;
- (id)contactsWithMaxSuggestions:(int64_t)suggestions contactKeysTofetch:(id)tofetch interactionDomains:(id)domains referenceDate:(id)date appleUsersOnly:(BOOL)only;
- (id)gameCenterSuggestionsWithMaxSuggestions:(int64_t)suggestions interactionDomains:(id)domains appleUsersOnly:(BOOL)only includeGroupSuggestions:(BOOL)groupSuggestions excludeContactsByIdentifiers:(id)identifiers;
- (id)getDefaultContactPriorForContactId:(id)id withModelName:(id)name withModelVersion:(id)version;
- (id)iMessageDomainIdentifiersForDomainIdentifiers:(id)identifiers;
- (void)computeAndSaveContactPriorArchive;
- (void)dealloc;
- (void)gameCenterSuggestionConsumedWithContactHandle:(id)handle;
- (void)gameCenterSuggestionConsumedWithGroupIdentifier:(id)identifier;
- (void)writeArchive:(id)archive;
@end

@implementation _PSContactSuggester

- (_PSContactSuggester)init
{
  v10.receiver = self;
  v10.super_class = _PSContactSuggester;
  v2 = [(_PSContactSuggester *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = [v4 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = v3->_connection;
    v3->_connection = v5;

    v7 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v3->_connection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)v3->_connection resume];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_computeAndSaveContactPriorArchive name:*MEMORY[0x1E6997A08] object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _PSContactSuggester;
  [(_PSContactSuggester *)&v3 dealloc];
}

- (_CDInteractionStore)interactionStore
{
  os_unfair_lock_lock(&self->_lock);
  interactionStore = self->_interactionStore;
  if (!interactionStore)
  {
    v4 = MEMORY[0x1E69978F8];
    defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    v6 = [v4 storeWithDirectory:defaultDatabaseDirectory readOnly:1];
    v7 = self->_interactionStore;
    self->_interactionStore = v6;

    interactionStore = self->_interactionStore;
  }

  v8 = interactionStore;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_lock);
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(getCNContactStoreClass());
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  v6 = contactStore;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)iMessageDomainIdentifiersForDomainIdentifiers:(id)identifiers
{
  v56 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218243;
    *&buf[4] = [identifiersCopy count];
    *&buf[12] = 2113;
    *&buf[14] = identifiersCopy;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "iMessageDomainIdentifiersForDomainIdentifiers running for %tu domain identifiers: %{private}@", buf, 0x16u);
  }

  v4 = objc_opt_new();
  v32 = [identifiersCopy _pas_leftFoldWithInitialObject:v4 accumulate:&__block_literal_global_6];

  if ([v32 count])
  {
    v5 = qos_class_self();
    if (v5 <= QOS_CLASS_UTILITY)
    {
      v6 = 17;
    }

    else
    {
      v6 = v5;
    }

    v34 = v6;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create("iMessageDomainIdentifiersForDomainIdentifiers", v7);

    v37 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v32, "count")}];
    v35 = dispatch_semaphore_create(0);
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v32 count];
      *buf = 134218243;
      *&buf[4] = v9;
      *&buf[12] = 2113;
      *&buf[14] = v32;
      _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "iMessageDomainIdentifiersForDomainIdentifiers querying IMCore for %tu chat identifiers: %{private}@", buf, 0x16u);
    }

    v46 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    obj = v32;
    v10 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v10)
    {
      v11 = *v44;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v51 = v13;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __69___PSContactSuggester_iMessageDomainIdentifiersForDomainIdentifiers___block_invoke_70;
          v40[3] = &unk_1E7C24330;
          v41 = v37;
          v16 = v35;
          v42 = v16;
          v17 = v15;
          v18 = v36;
          v19 = v40;
          v47 = 0;
          v48 = &v47;
          v49 = 0x2020000000;
          v20 = getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_ptr;
          v50 = getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_ptr;
          if (!getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_block_invoke;
            v54 = &unk_1E7C23BF0;
            v55 = &v47;
            __getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_block_invoke(buf);
            v20 = v48[3];
          }

          _Block_object_dispose(&v47, 8);
          if (!v20)
          {
            [_PSBlockedHandlesCache beginSyncingWithTU];
            __break(1u);
          }

          (v20)(&unk_1F2D8C078, v17, 1, 0, 1, v34, v18, v19);

          v21 = dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL) == 0;
          objc_autoreleasePoolPop(v14);
          if (!v21)
          {

            v24 = objc_opt_new();
            goto LABEL_25;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v22 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v37 count];
      *buf = 134218242;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_DEFAULT, "iMessageDomainIdentifiersForDomainIdentifiers IMCore returned %tu chat identifiers: %@", buf, 0x16u);
    }

    v24 = v37;
LABEL_25:
    v25 = v24;
  }

  else
  {
    v25 = objc_opt_new();
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __69___PSContactSuggester_iMessageDomainIdentifiersForDomainIdentifiers___block_invoke_73;
  v38[3] = &unk_1E7C24358;
  v26 = v25;
  v39 = v26;
  v27 = [identifiersCopy _pas_filteredArrayWithTest:v38];
  v28 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v27 count];
    *buf = 134218243;
    *&buf[4] = v29;
    *&buf[12] = 2113;
    *&buf[14] = v27;
    _os_log_impl(&dword_1B5ED1000, v28, OS_LOG_TYPE_DEFAULT, "_ps_iMessage1on1DomainIdentifiers returning %tu iMessage 1:1 domain identifiers: %{private}@", buf, 0x16u);
  }

  return v27;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  connection = self->_connection;
  if (connection)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_80];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:suggestions];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_82;
    v12[3] = &unk_1E7C243A0;
    v12[4] = &v13;
    [v8 contactSuggestionsWithMaxSuggestions:v9 excludedContactIds:identifiersCopy reply:v12];

    v10 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsByIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = [(_PSContactSuggester *)self contactSuggestionsWithMaxSuggestions:suggestions excludeContactsByIdentifiers:identifiersCopy lookBackDays:+[_PSPrivacyDataRetentionPeriod interactions:"lookbackDurationInDays"]modeAvocado:0, 1];

  return v7;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsByIdentifiers:(id)identifiers interactionHistoryCap:(int64_t)cap
{
  identifiersCopy = identifiers;
  v9 = [(_PSContactSuggester *)self contactSuggestionsWithMaxSuggestions:suggestions excludeContactsByIdentifiers:identifiersCopy lookBackDays:+[_PSPrivacyDataRetentionPeriod interactions:"lookbackDurationInDays"]modeAvocado:0 interactionHistoryCap:1, cap];

  return v9;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions interactionDomains:(id)domains appleUsersOnly:(BOOL)only
{
  onlyCopy = only;
  v83[1] = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  v6 = objc_alloc_init(getCNContactStoreClass());
  v7 = getCNContactIdentifierKey();
  v83[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
  v77 = 0;
  v9 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v77];
  v10 = v77;

  v56 = v10;
  if (v10)
  {
    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
    }
  }

  else if (v9)
  {
    v65 = v9;
    suggestionsCopy2 = suggestions;
    v14 = 1;
    goto LABEL_10;
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
  }

  suggestionsCopy2 = suggestions;

  v14 = 0;
  v65 = 0;
LABEL_10:
  v15 = [_PSContactResolver alloc];
  v16 = getCNContactIdentifierKey();
  v82[0] = v16;
  v17 = getCNContactGivenNameKey();
  v82[1] = v17;
  v18 = getCNContactFamilyNameKey();
  v82[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
  v58 = v6;
  v20 = [(_PSContactResolver *)v15 initWithContactStore:v6 keysToFetch:v19];

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  date = [MEMORY[0x1E695DF00] date];
  v23 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  v64 = orderedSet;
  v24 = suggestionsCopy2;
  if ([orderedSet count] >= suggestionsCopy2)
  {
    v48 = date;
    v27 = orderedSet;
    v26 = v65;
  }

  else
  {
    v25 = (-86400 * v23);
    v67 = v14 ^ 1;
    v27 = orderedSet;
    v26 = v65;
    v59 = v24;
    while (1)
    {
      v28 = [(_PSContactSuggester *)self contactSuggestionsWithMaxSuggestions:v24 interactionDomains:domainsCopy referenceDate:date appleUsersOnly:onlyCopy includeGroups:0, v56];
      if (![v28 count])
      {
        break;
      }

      v63 = date;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = v28;
      v29 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v29)
      {
        v30 = v29;
        v68 = *v74;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v74 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v73 + 1) + 8 * i);
            contactIdentifier = [v32 contactIdentifier];
            v34 = [(_PSContactResolver *)v20 contactWithIdentifier:contactIdentifier];

            if (!v34)
            {
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              handleAndAppFrequencies = [v32 handleAndAppFrequencies];
              v36 = [handleAndAppFrequencies countByEnumeratingWithState:&v69 objects:v80 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v70;
LABEL_21:
                v39 = 0;
                while (1)
                {
                  if (*v70 != v38)
                  {
                    objc_enumerationMutation(handleAndAppFrequencies);
                  }

                  handle = [*(*(&v69 + 1) + 8 * v39) handle];
                  v34 = [(_PSContactResolver *)v20 resolveContactIfPossibleFromContactIdentifierString:handle pickFirstOfMultiple:1];

                  if (v34)
                  {
                    break;
                  }

                  if (v37 == ++v39)
                  {
                    v37 = [handleAndAppFrequencies countByEnumeratingWithState:&v69 objects:v80 count:16];
                    if (v37)
                    {
                      goto LABEL_21;
                    }

                    v34 = 0;
                    break;
                  }
                }

                v27 = v64;
                v26 = v65;
              }

              else
              {
                v34 = 0;
              }
            }

            if (v34)
            {
              v41 = v67;
            }

            else
            {
              v41 = 1;
            }

            if (v41)
            {
              v44 = 1;
            }

            else
            {
              identifier = [v26 identifier];
              identifier2 = [v34 identifier];
              v44 = [identifier isEqualToString:identifier2];
            }

            if (v34)
            {
              v45 = v44 == 0;
            }

            else
            {
              v45 = 1;
            }

            if (!v45)
            {
              givenName = [v34 givenName];
              [v32 setGivenName:givenName];

              familyName = [v34 familyName];
              [v32 setFamilyName:familyName];

              [v27 addObject:v32];
            }
          }

          v30 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v30);
      }

      v48 = [v63 dateByAddingTimeInterval:v25];

      date = v48;
      v24 = v59;
      if ([v27 count] >= v59)
      {
        goto LABEL_48;
      }
    }

    v48 = date;
  }

LABEL_48:
  v49 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
    *buf = 138412290;
    v79 = v50;
    _os_log_impl(&dword_1B5ED1000, v49, OS_LOG_TYPE_INFO, "_PSContactSuggester contacts returned: %@ contacts", buf, 0xCu);
  }

  array = [v27 array];
  v52 = [v27 count];
  if (v52 >= v24)
  {
    v53 = v24;
  }

  else
  {
    v53 = v52;
  }

  v54 = [array subarrayWithRange:{0, v53}];

  return v54;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions contactKeysTofetch:(id)tofetch interactionDomains:(id)domains appleUsersOnly:(BOOL)only
{
  onlyCopy = only;
  v27 = *MEMORY[0x1E69E9840];
  tofetchCopy = tofetch;
  domainsCopy = domains;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  date = [MEMORY[0x1E695DF00] date];
  v14 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  if ([orderedSet count] < suggestions)
  {
    v15 = (-86400 * v14);
    while (1)
    {
      v16 = [(_PSContactSuggester *)self contactsWithMaxSuggestions:suggestions contactKeysTofetch:tofetchCopy interactionDomains:domainsCopy referenceDate:date appleUsersOnly:onlyCopy];
      if (![v16 count])
      {
        break;
      }

      [orderedSet addObjectsFromArray:v16];
      v17 = [date dateByAddingTimeInterval:v15];

      date = v17;
      if ([orderedSet count] >= suggestions)
      {
        goto LABEL_8;
      }
    }
  }

  v17 = date;
LABEL_8:
  v18 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(orderedSet, "count")}];
    v25 = 138412290;
    v26 = v19;
    _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "_PSContactSuggester contacts returned: %@ contacts", &v25, 0xCu);
  }

  array = [orderedSet array];
  v21 = [orderedSet count];
  if (v21 >= suggestions)
  {
    suggestionsCopy = suggestions;
  }

  else
  {
    suggestionsCopy = v21;
  }

  v23 = [array subarrayWithRange:{0, suggestionsCopy}];

  return v23;
}

- (id)contactsWithMaxSuggestions:(int64_t)suggestions contactKeysTofetch:(id)tofetch interactionDomains:(id)domains referenceDate:(id)date appleUsersOnly:(BOOL)only
{
  onlyCopy = only;
  v63[1] = *MEMORY[0x1E69E9840];
  tofetchCopy = tofetch;
  v13 = [(_PSContactSuggester *)self contactSuggestionsWithMaxSuggestions:suggestions interactionDomains:domains referenceDate:date appleUsersOnly:onlyCopy includeGroups:0];
  v14 = objc_alloc_init(getCNContactStoreClass());
  v15 = getCNContactIdentifierKey();
  v63[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
  v60 = 0;
  v17 = [v14 _crossPlatformUnifiedMeContactWithKeysToFetch:v16 error:&v60];
  v18 = v60;

  v45 = v18;
  if (v18)
  {
    v19 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
    }
  }

  else if (v17)
  {
    v21 = 1;
    v22 = v17;
    goto LABEL_10;
  }

  v20 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
  }

  v21 = 0;
  v22 = 0;
LABEL_10:
  v46 = v14;
  v47 = tofetchCopy;
  v23 = [[_PSContactResolver alloc] initWithContactStore:v14 keysToFetch:tofetchCopy];
  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v25 = v13;
  v51 = [v25 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v51)
  {
    v26 = *v57;
    v50 = v21 ^ 1;
    v48 = *v57;
    v49 = v24;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v57 != v26)
        {
          objc_enumerationMutation(v25);
        }

        v28 = *(*(&v56 + 1) + 8 * i);
        contactIdentifier = [v28 contactIdentifier];
        v30 = [(_PSContactResolver *)v23 contactWithIdentifier:contactIdentifier];

        if (!v30)
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          handleAndAppFrequencies = [v28 handleAndAppFrequencies];
          v32 = [handleAndAppFrequencies countByEnumeratingWithState:&v52 objects:v61 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = v25;
            v35 = v22;
            v36 = *v53;
LABEL_18:
            v37 = 0;
            while (1)
            {
              if (*v53 != v36)
              {
                objc_enumerationMutation(handleAndAppFrequencies);
              }

              handle = [*(*(&v52 + 1) + 8 * v37) handle];
              v30 = [(_PSContactResolver *)v23 resolveContactIfPossibleFromContactIdentifierString:handle pickFirstOfMultiple:1];

              if (v30)
              {
                break;
              }

              if (v33 == ++v37)
              {
                v33 = [handleAndAppFrequencies countByEnumeratingWithState:&v52 objects:v61 count:16];
                if (v33)
                {
                  goto LABEL_18;
                }

                v30 = 0;
                break;
              }
            }

            v22 = v35;
            v25 = v34;
            v26 = v48;
            v24 = v49;
          }

          else
          {
            v30 = 0;
          }
        }

        if (v30)
        {
          v39 = v50;
        }

        else
        {
          v39 = 1;
        }

        if ((v39 & 1) != 0 || ([v22 identifier], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "identifier"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "isEqualToString:", v41), v41, v40, (v42 & 1) == 0))
        {
          if (v30)
          {
            [v24 addObject:v30];
          }
        }
      }

      v51 = [v25 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v51);
  }

  v43 = [v24 copy];

  return v43;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsByIdentifiers:(id)identifiers lookBackDays:(int64_t)days interactions:(id)interactions modeAvocado:(BOOL)avocado interactionHistoryCap:(int64_t)cap
{
  avocadoCopy = avocado;
  v136 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  interactionsCopy = interactions;
  if (!interactionsCopy && avocadoCopy)
  {
    interactionStore = [(_PSContactSuggester *)self interactionStore];
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:(-86400 * days)];
    v16 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C090];
    LOBYTE(v93) = 1;
    interactionsCopy = [_PSInteractionStoreUtils interactionsFromStore:interactionStore referenceDate:v15 withMechanisms:0 withAccount:0 withBundleIds:0 withTargetBundleIds:0 withDirections:v16 singleRecipient:v93 fetchLimit:cap];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  v18 = [MEMORY[0x1E695DFA8] set];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v20 = objc_alloc(MEMORY[0x1E69C5D58]);
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __149___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsByIdentifiers_lookBackDays_interactions_modeAvocado_interactionHistoryCap___block_invoke;
  v126[3] = &unk_1E7C243E8;
  v21 = interactionsCopy;
  v127 = v21;
  selfCopy = self;
  v101 = [v20 initWithBlock:v126];
  v22 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 count];
    *buf = 67109376;
    v133 = avocadoCopy;
    v134 = 2048;
    v135 = v23;
    _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_DEFAULT, "_PSContactSuggester modeAvocado:%d, interactions returned:%tu", buf, 0x12u);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v21;
  v24 = [obj countByEnumeratingWithState:&v122 objects:v131 count:16];
  v103 = dictionary;
  v104 = v18;
  v113 = currentCalendar;
  if (v24)
  {
    v25 = v24;
    v26 = *v123;
    daysCopy = days;
    v95 = *v123;
    do
    {
      v28 = 0;
      v96 = v25;
      do
      {
        if (*v123 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v122 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        if ([v29 mechanism] != 13)
        {
          v98 = v30;
          v99 = v28;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          recipients = [v29 recipients];
          v112 = [recipients countByEnumeratingWithState:&v118 objects:v130 count:16];
          if (v112)
          {
            v32 = v29;
            v110 = v29;
            v111 = *v119;
            v105 = recipients;
            do
            {
              for (i = 0; i != v112; ++i)
              {
                if (*v119 != v111)
                {
                  objc_enumerationMutation(recipients);
                }

                v34 = *(*(&v118 + 1) + 8 * i);
                startDate = [v32 startDate];
                v36 = [currentCalendar startOfDayForDate:startDate];
                [v18 addObject:v36];

                personId = [v34 personId];
                identifier = [v34 identifier];
                if (identifier)
                {
                  v39 = [dictionary objectForKeyedSubscript:identifier];
                  if (v39)
                  {
                  }

                  else if ([v34 personIdType] == 3 && personId != 0)
                  {
                    [dictionary setObject:personId forKeyedSubscript:identifier];
                  }

                  v40 = [dictionary objectForKeyedSubscript:identifier];
                  if (v40 && ([identifiersCopy containsObject:v40] & 1) == 0)
                  {
                    bundleId = [v32 bundleId];
                    v43 = +[_PSConstants messagesBundleId];
                    v44 = [bundleId isEqual:v43];

                    if (v44)
                    {
                      result = [v101 result];
                      domainIdentifier = [v32 domainIdentifier];
                      v47 = [result containsObject:domainIdentifier];

                      if (v47)
                      {
                        [dictionary2 setObject:identifier forKeyedSubscript:v40];
                      }
                    }

                    v48 = [dictionary3 objectForKeyedSubscript:v40];

                    if (!v48)
                    {
                      v49 = objc_alloc_init(_PSContactSuggestion);
                      [dictionary3 setObject:v49 forKeyedSubscript:v40];
                    }

                    bundleId2 = [v110 bundleId];
                    v51 = objc_alloc_init(_PSContactSuggestionHandleAndApp);
                    [(_PSContactSuggestionHandleAndApp *)v51 setHandle:identifier];
                    v107 = bundleId2;
                    [(_PSContactSuggestionHandleAndApp *)v51 setAppBundleId:bundleId2];
                    v52 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v110, "mechanism")}];
                    [(_PSContactSuggestionHandleAndApp *)v51 setInteractionMechanism:v52];

                    v53 = [dictionary3 objectForKeyedSubscript:v40];
                    handleAndAppFrequencies = [v53 handleAndAppFrequencies];
                    dictionary5 = [handleAndAppFrequencies mutableCopy];

                    if (!dictionary5)
                    {
                      dictionary5 = [MEMORY[0x1E695DF90] dictionary];
                    }

                    v56 = MEMORY[0x1E696AD98];
                    v57 = [dictionary5 objectForKeyedSubscript:v51];
                    v58 = [v56 numberWithInteger:{objc_msgSend(v57, "integerValue") + 1}];
                    [dictionary5 setObject:v58 forKeyedSubscript:v51];

                    v59 = [dictionary3 objectForKeyedSubscript:v40];
                    v106 = dictionary5;
                    [v59 setHandleAndAppFrequencies:dictionary5];

                    v60 = [dictionary4 objectForKeyedSubscript:v51];

                    if (!v60)
                    {
                      v61 = [MEMORY[0x1E695DFA8] set];
                      [dictionary4 setObject:v61 forKeyedSubscript:v51];
                    }

                    v62 = [dictionary4 objectForKeyedSubscript:v51];
                    startDate2 = [v110 startDate];
                    v64 = [v113 startOfDayForDate:startDate2];
                    [v62 addObject:v64];

                    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
                    v66 = MEMORY[0x1E696AD98];
                    v67 = [dictionary4 objectForKeyedSubscript:v51];
                    *&v68 = [v67 count] / daysCopy;
                    v69 = [v66 numberWithFloat:v68];
                    [dictionary6 setObject:v69 forKeyedSubscript:v51];

                    v70 = [dictionary3 objectForKeyedSubscript:v40];
                    [v70 setHandleAndAppRegularityScores:dictionary6];

                    v71 = [dictionary3 objectForKeyedSubscript:v40];
                    daysInteracted = [v71 daysInteracted];
                    v73 = [daysInteracted mutableCopy];

                    if (!v73)
                    {
                      v73 = [MEMORY[0x1E695DFA8] set];
                    }

                    startDate3 = [v110 startDate];
                    v75 = [v113 startOfDayForDate:startDate3];
                    [v73 addObject:v75];

                    v76 = [dictionary3 objectForKeyedSubscript:v40];
                    [v76 setDaysInteracted:v73];

                    dictionary = v103;
                    v18 = v104;
                    v32 = v110;
                    recipients = v105;
                  }
                }

                else
                {
                  v40 = 0;
                }

                currentCalendar = v113;
              }

              v112 = [recipients countByEnumeratingWithState:&v118 objects:v130 count:16];
            }

            while (v112);
          }

          v26 = v95;
          v25 = v96;
          v30 = v98;
          v28 = v99;
        }

        objc_autoreleasePoolPop(v30);
        ++v28;
      }

      while (v28 != v25);
      v25 = [obj countByEnumeratingWithState:&v122 objects:v131 count:16];
    }

    while (v25);
  }

  allKeys = [dictionary3 allKeys];
  v78 = [MEMORY[0x1E695DF70] arrayWithCapacity:suggestions];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v79 = allKeys;
  v80 = [v79 countByEnumeratingWithState:&v114 objects:v129 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v115;
LABEL_47:
    v83 = 0;
    while (1)
    {
      if (*v115 != v82)
      {
        objc_enumerationMutation(v79);
      }

      v84 = *(*(&v114 + 1) + 8 * v83);
      v85 = [dictionary3 objectForKeyedSubscript:v84];
      [v85 setContactIdentifier:v84];
      v86 = [dictionary2 objectForKeyedSubscript:v84];
      [v85 setSuggestedHandle:v86];

      handleAndAppFrequencies2 = [v85 handleAndAppFrequencies];
      allValues = [handleAndAppFrequencies2 allValues];
      v89 = [allValues valueForKeyPath:@"@sum.self"];
      [v85 setTotalFrequency:{objc_msgSend(v89, "integerValue")}];

      daysInteracted2 = [v85 daysInteracted];
      v18 = v104;
      [v85 setRegularityScore:{objc_msgSend(daysInteracted2, "count") / objc_msgSend(v104, "count")}];

      [v78 addObject:v85];
      v91 = [v78 count];

      if (v91 >= suggestions)
      {
        break;
      }

      if (v81 == ++v83)
      {
        v81 = [v79 countByEnumeratingWithState:&v114 objects:v129 count:16];
        if (v81)
        {
          goto LABEL_47;
        }

        break;
      }
    }
  }

  return v78;
}

- (id)gameCenterSuggestionsWithMaxSuggestions:(int64_t)suggestions interactionDomains:(id)domains appleUsersOnly:(BOOL)only includeGroupSuggestions:(BOOL)groupSuggestions excludeContactsByIdentifiers:(id)identifiers
{
  onlyCopy = only;
  groupSuggestionsCopy = groupSuggestions;
  v180 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  identifiersCopy = identifiers;
  v101 = objc_alloc_init(getCNContactStoreClass());
  v8 = getCNContactIdentifierKey();
  v175 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
  v158 = 0;
  v112 = [v101 _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v158];
  v100 = v158;

  if (v100)
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
    }

    goto LABEL_5;
  }

  if (!v112)
  {
LABEL_5:
    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
    }

    v12 = 0;
    v112 = 0;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:
  v13 = [_PSContactResolver alloc];
  v14 = getCNContactIdentifierKey();
  v174[0] = v14;
  v15 = getCNContactGivenNameKey();
  v174[1] = v15;
  v16 = getCNContactFamilyNameKey();
  v174[2] = v16;
  v17 = getCNContactPhoneNumbersKey();
  v174[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:4];
  v125 = [(_PSContactResolver *)v13 initWithContactStore:v101 keysToFetch:v18];

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  date = [MEMORY[0x1E695DF00] date];
  v19 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = __Block_byref_object_copy__0;
  v156 = __Block_byref_object_dispose__0;
  v157 = [MEMORY[0x1E695DFA8] set];
  v20 = BiomeLibrary();
  gameCenter = [v20 GameCenter];
  suggestionFeedback = [gameCenter SuggestionFeedback];

  v98 = [suggestionFeedback publisherWithUseCase:@"GameCenterSuggestionFeedback"];
  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_114;
  v151[3] = &unk_1E7C24430;
  v151[4] = &v152;
  v22 = [v98 sinkWithCompletion:&__block_literal_global_113 receiveInput:v151];
  v23 = (-86400 * v19);
  v114 = v12 ^ 1;
  do
  {
    if ([orderedSet2 count] >= suggestions)
    {
      break;
    }

    *&v169 = 0;
    *(&v169 + 1) = &v169;
    v170 = 0x3032000000;
    v171 = __Block_byref_object_copy__0;
    v172 = __Block_byref_object_dispose__0;
    v173 = 0;
    connection = self->_connection;
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_2;
    v150[3] = &unk_1E7C24458;
    v150[4] = &v169;
    v25 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v150];
    v149[0] = MEMORY[0x1E69E9820];
    v149[1] = 3221225472;
    v149[2] = __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_117;
    v149[3] = &unk_1E7C243A0;
    v149[4] = &v169;
    [v25 contactSuggestionsWithMaxSuggestions:suggestions interactionDomains:domainsCopy referenceDate:date appleUsersOnly:onlyCopy includeGroups:groupSuggestionsCopy excludeContactsByIdentifiers:identifiersCopy reply:v149];

    v106 = [*(*(&v169 + 1) + 40) count];
    if (!v106)
    {
      goto LABEL_67;
    }

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    obj = *(*(&v169 + 1) + 40);
    v117 = [obj countByEnumeratingWithState:&v145 objects:v168 count:16];
    if (!v117)
    {
      goto LABEL_66;
    }

    v116 = *v146;
    do
    {
      for (i = 0; i != v117; ++i)
      {
        if (*v146 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v145 + 1) + 8 * i);
        contactIdentifier = [v26 contactIdentifier];
        v119 = v26;
        groupIdentifier = [v26 groupIdentifier];
        if (contactIdentifier)
        {
          suggestedHandle = [v26 suggestedHandle];
          v28 = [(_PSContactResolver *)v125 contactWithIdentifier:contactIdentifier];
          if (!v28)
          {
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            handleAndAppFrequencies = [v26 handleAndAppFrequencies];
            v30 = [handleAndAppFrequencies countByEnumeratingWithState:&v141 objects:v167 count:16];
            if (v30)
            {
              v31 = *v142;
LABEL_22:
              v32 = 0;
              while (1)
              {
                if (*v142 != v31)
                {
                  objc_enumerationMutation(handleAndAppFrequencies);
                }

                handle = [*(*(&v141 + 1) + 8 * v32) handle];
                v28 = [(_PSContactResolver *)v125 resolveContactIfPossibleFromContactIdentifierString:handle pickFirstOfMultiple:1];

                if (v28)
                {
                  break;
                }

                if (v30 == ++v32)
                {
                  v30 = [handleAndAppFrequencies countByEnumeratingWithState:&v141 objects:v167 count:16];
                  if (v30)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_28;
                }
              }
            }

            else
            {
LABEL_28:
              v28 = 0;
            }
          }

          if (v28)
          {
            v34 = v114;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            if (!v28)
            {
LABEL_63:

              goto LABEL_64;
            }
          }

          else
          {
            identifier = [v112 identifier];
            identifier2 = [(_PSSuggestion *)v28 identifier];
            v37 = [identifier isEqualToString:identifier2];

            if (v37)
            {
              goto LABEL_63;
            }
          }

          v58 = [_PSRecipient alloc];
          identifier3 = [(_PSSuggestion *)v28 identifier];
          v60 = [(_PSRecipient *)v58 initWithIdentifier:identifier3 handle:suggestedHandle contact:0];

          givenName = [(_PSSuggestion *)v28 givenName];
          [(_PSRecipient *)v60 setGivenName:givenName];

          familyName = [(_PSSuggestion *)v28 familyName];
          [(_PSRecipient *)v60 setFamilyName:familyName];

          v63 = [_PSSuggestion alloc];
          v166 = v60;
          v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v166 count:1];
          v65 = [(_PSSuggestion *)v63 initWithBundleID:0 conversationIdentifier:0 groupName:0 recipients:v64];

          v66 = orderedSet2;
          if (suggestedHandle)
          {
            if ([v153[5] containsObject:suggestedHandle])
            {
              v66 = orderedSet;
            }

            else
            {
              v66 = orderedSet2;
            }
          }

          [v66 addObject:v65];

          goto LABEL_63;
        }

        if (groupIdentifier)
        {
          groupRecipients = [v26 groupRecipients];
          v39 = [groupRecipients count] == 0;

          if (!v39)
          {
            v40 = MEMORY[0x1E695DF70];
            groupRecipients2 = [v119 groupRecipients];
            suggestedHandle = [v40 arrayWithCapacity:{objc_msgSend(groupRecipients2, "count")}];

            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            groupRecipients3 = [v119 groupRecipients];
            v43 = [groupRecipients3 countByEnumeratingWithState:&v137 objects:v165 count:16];
            if (v43)
            {
              v44 = *v138;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v138 != v44)
                  {
                    objc_enumerationMutation(groupRecipients3);
                  }

                  v46 = *(*(&v137 + 1) + 8 * j);
                  v47 = [_PSRecipient alloc];
                  personId = [v46 personId];
                  identifier4 = [v46 identifier];
                  displayName = [v46 displayName];
                  v51 = [(_PSRecipient *)v47 initWithIdentifier:personId handle:identifier4 displayName:displayName contact:0];

                  [suggestedHandle addObject:v51];
                }

                v43 = [groupRecipients3 countByEnumeratingWithState:&v137 objects:v165 count:16];
              }

              while (v43);
            }

            v52 = [_PSSuggestion alloc];
            groupName = [v119 groupName];
            v28 = [(_PSSuggestion *)v52 initWithBundleID:0 conversationIdentifier:groupIdentifier groupName:groupName recipients:suggestedHandle];

            imageURL = [v119 imageURL];
            if (imageURL)
            {
              v159 = 0;
              v160 = &v159;
              v161 = 0x2050000000;
              v55 = getINImageClass_softClass;
              v162 = getINImageClass_softClass;
              if (!getINImageClass_softClass)
              {
                *&buf = MEMORY[0x1E69E9820];
                *(&buf + 1) = 3221225472;
                v177 = __getINImageClass_block_invoke;
                v178 = &unk_1E7C23BF0;
                v179 = &v159;
                __getINImageClass_block_invoke(&buf);
                v55 = v160[3];
              }

              v56 = v55;
              _Block_object_dispose(&v159, 8);
              imageURL2 = [v119 imageURL];
              v109 = [v55 imageWithURL:imageURL2];
              v57 = v109;
            }

            else
            {
              v57 = 0;
            }

            [(_PSSuggestion *)v28 setImage:v57];
            if (imageURL)
            {
            }

            messagesGroupIdentifier = [v119 messagesGroupIdentifier];
            [(_PSSuggestion *)v28 setMessagesGroupIdentifier:messagesGroupIdentifier];

            v68 = [v153[5] containsObject:groupIdentifier];
            v69 = orderedSet2;
            if (v68)
            {
              v70 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = groupIdentifier;
                _os_log_impl(&dword_1B5ED1000, v70, OS_LOG_TYPE_INFO, "Boosting Game Center suggestion with groupIdentifier: %@ due to previous feedback", &buf, 0xCu);
              }

              v69 = orderedSet;
            }

            [v69 addObject:v28];
            goto LABEL_63;
          }
        }

LABEL_64:
      }

      v117 = [obj countByEnumeratingWithState:&v145 objects:v168 count:16];
    }

    while (v117);
LABEL_66:

    v71 = [date dateByAddingTimeInterval:v23];

    date = v71;
LABEL_67:
    _Block_object_dispose(&v169, 8);
  }

  while (v106);
  array = [orderedSet2 array];
  [orderedSet addObjectsFromArray:array];

  v73 = objc_opt_new();
  v74 = objc_opt_new();
  reverseObjectEnumerator = [orderedSet reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v134[0] = MEMORY[0x1E69E9820];
  v134[1] = 3221225472;
  v134[2] = __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_120;
  v134[3] = &unk_1E7C24480;
  v77 = v73;
  v135 = v77;
  v78 = v74;
  v136 = v78;
  v79 = [allObjects _pas_filteredArrayWithTest:v134];

  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v124 = v79;
  v80 = [v124 countByEnumeratingWithState:&v130 objects:v164 count:16];
  if (v80)
  {
    v81 = *v131;
    do
    {
      for (k = 0; k != v80; ++k)
      {
        if (*v131 != v81)
        {
          objc_enumerationMutation(v124);
        }

        v83 = *(*(&v130 + 1) + 8 * k);
        recipients = [v83 recipients];
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v85 = recipients;
        v86 = [v85 countByEnumeratingWithState:&v126 objects:v163 count:16];
        if (v86)
        {
          v87 = *v127;
          while (2)
          {
            for (m = 0; m != v86; ++m)
            {
              if (*v127 != v87)
              {
                objc_enumerationMutation(v85);
              }

              identifier5 = [*(*(&v126 + 1) + 8 * m) identifier];
              v90 = [identifiersCopy containsObject:identifier5];

              if (v90)
              {

                goto LABEL_83;
              }
            }

            v86 = [v85 countByEnumeratingWithState:&v126 objects:v163 count:16];
            if (v86)
            {
              continue;
            }

            break;
          }
        }

        [orderedSet3 addObject:v83];
LABEL_83:
      }

      v80 = [v124 countByEnumeratingWithState:&v130 objects:v164 count:16];
    }

    while (v80);
  }

  v91 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(orderedSet3, "count")}];
    LODWORD(v169) = 138412290;
    *(&v169 + 4) = v92;
    _os_log_impl(&dword_1B5ED1000, v91, OS_LOG_TYPE_INFO, "_PSContactSuggester contacts returned: %@ contacts/groups", &v169, 0xCu);
  }

  array2 = [orderedSet3 array];
  v94 = [orderedSet3 count];
  if (v94 >= suggestions)
  {
    suggestionsCopy = suggestions;
  }

  else
  {
    suggestionsCopy = v94;
  }

  v96 = [array2 subarrayWithRange:{0, suggestionsCopy}];

  _Block_object_dispose(&v152, 8);

  return v96;
}

- (void)gameCenterSuggestionConsumedWithContactHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy)
  {
    v4 = [objc_alloc(getBMGameCenterSuggestionFeedbackClass()) initWithIdentifier:handleCopy];
    v5 = BiomeLibrary();
    gameCenter = [v5 GameCenter];
    suggestionFeedback = [gameCenter SuggestionFeedback];

    source = [suggestionFeedback source];
    [source sendEvent:v4];
  }

  else
  {
    v4 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester gameCenterSuggestionConsumedWithContactHandle:];
    }
  }
}

- (void)gameCenterSuggestionConsumedWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = [objc_alloc(getBMGameCenterSuggestionFeedbackClass()) initWithIdentifier:identifierCopy];
    v5 = BiomeLibrary();
    gameCenter = [v5 GameCenter];
    suggestionFeedback = [gameCenter SuggestionFeedback];

    source = [suggestionFeedback source];
    [source sendEvent:v4];
  }

  else
  {
    v4 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester gameCenterSuggestionConsumedWithGroupIdentifier:];
    }
  }
}

- (id)contactAndGroupSuggestionsWithMaxSuggestions:(int64_t)suggestions lookBackDays:(int64_t)days interactions:(id)interactions
{
  v159 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  dictionary6 = [MEMORY[0x1E695DF90] dictionary];
  dictionary7 = [MEMORY[0x1E695DF90] dictionary];
  v132 = [MEMORY[0x1E695DFA8] set];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = objc_alloc(MEMORY[0x1E69C5D58]);
  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = __94___PSContactSuggester_contactAndGroupSuggestionsWithMaxSuggestions_lookBackDays_interactions___block_invoke;
  v153[3] = &unk_1E7C243E8;
  v12 = interactionsCopy;
  v154 = v12;
  selfCopy = self;
  v127 = [v11 initWithBlock:v153];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v13 = v12;
  v14 = dictionary6;
  v15 = v13;
  v129 = dictionary;
  v138 = currentCalendar;
  v121 = v13;
  v124 = [v13 countByEnumeratingWithState:&v149 objects:v158 count:16];
  if (v124)
  {
    v16 = *v150;
    daysCopy = days;
    v18 = 0x1E696A000uLL;
    v122 = *v150;
    do
    {
      for (i = 0; i != v124; ++i)
      {
        if (*v150 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v149 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if ([v20 mechanism] != 13)
        {
          v123 = i;
          bundleId = [v20 bundleId];
          v22 = +[_PSConstants messagesBundleId];
          if ([bundleId isEqualToString:v22])
          {
            [v20 recipients];
            v24 = v23 = v14;
            v25 = [v24 count];

            v14 = v23;
            if (v25 != 1)
            {
              startDate = [v20 startDate];
              v27 = [currentCalendar startOfDayForDate:startDate];
              [v132 addObject:v27];

              domainIdentifier = [v20 domainIdentifier];
              bundleId2 = [v20 bundleId];
              v30 = +[_PSConstants mobileMessagesBundleId];
              v31 = [bundleId2 isEqualToString:v30];

              if (v31)
              {
                account = [v20 account];
              }

              else
              {
                account = 0;
              }

              v78 = [dictionary2 objectForKeyedSubscript:domainIdentifier];

              v79 = v23;
              if (!v78)
              {
                recipients = [v20 recipients];
                [dictionary2 setObject:recipients forKeyedSubscript:domainIdentifier];

                groupName = [v20 groupName];
                [dictionary3 setObject:groupName forKeyedSubscript:domainIdentifier];

                contentURL = [v20 contentURL];
                [dictionary4 setObject:contentURL forKeyedSubscript:domainIdentifier];
              }

              v83 = [v23 objectForKeyedSubscript:domainIdentifier];

              v140 = account;
              if (v83)
              {
                v84 = [v23 objectForKeyedSubscript:domainIdentifier];
                v85 = [(_PSContactSuggestion *)v84 totalFrequency]+ 1;
                v86 = v84;
              }

              else
              {
                v84 = objc_alloc_init(_PSContactSuggestion);
                [(_PSContactSuggestion *)v84 setGroupIdentifier:domainIdentifier];
                [(_PSContactSuggestion *)v84 setMessagesGroupIdentifier:account];
                v87 = [dictionary3 objectForKeyedSubscript:domainIdentifier];
                [(_PSContactSuggestion *)v84 setGroupName:v87];

                v88 = [dictionary2 objectForKeyedSubscript:domainIdentifier];
                [(_PSContactSuggestion *)v84 setGroupRecipients:v88];

                v89 = [dictionary4 objectForKeyedSubscript:domainIdentifier];
                [(_PSContactSuggestion *)v84 setImageURL:v89];

                v79 = v23;
                v86 = v84;
                v85 = 1;
              }

              [(_PSContactSuggestion *)v86 setTotalFrequency:v85];
              [v79 setObject:v84 forKeyedSubscript:domainIdentifier];

              [v79 objectForKeyedSubscript:domainIdentifier];
              v91 = v90 = v79;
              [v91 daysInteracted];
              v92 = recipients2 = domainIdentifier;
              v93 = [v92 mutableCopy];

              if (!v93)
              {
                v93 = [MEMORY[0x1E695DFA8] set];
              }

              startDate2 = [v20 startDate];
              v95 = [currentCalendar startOfDayForDate:startDate2];
              [v93 addObject:v95];

              v96 = [v90 objectForKeyedSubscript:recipients2];
              [v96 setDaysInteracted:v93];

              v14 = v90;
LABEL_47:

              v16 = v122;
              i = v123;
              goto LABEL_48;
            }
          }

          else
          {
          }

          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          recipients2 = [v20 recipients];
          v134 = [recipients2 countByEnumeratingWithState:&v145 objects:v157 count:16];
          if (v134)
          {
            v133 = *v146;
            obj = recipients2;
            v131 = v20;
            do
            {
              for (j = 0; j != v134; ++j)
              {
                v35 = v14;
                if (*v146 != v133)
                {
                  objc_enumerationMutation(obj);
                }

                v36 = *(*(&v145 + 1) + 8 * j);
                startDate3 = [v20 startDate];
                v38 = [currentCalendar startOfDayForDate:startDate3];
                [v132 addObject:v38];

                personId = [v36 personId];
                identifier = [v36 identifier];
                v40 = [dictionary objectForKeyedSubscript:?];
                if (v40 || [v36 personIdType] != 3)
                {

                  v14 = v35;
                }

                else
                {
                  v14 = v35;
                  if (personId)
                  {
                    [dictionary setObject:personId forKeyedSubscript:identifier];
                  }
                }

                v41 = [dictionary objectForKeyedSubscript:identifier];
                if (v41)
                {
                  bundleId3 = [v20 bundleId];
                  v43 = +[_PSConstants messagesBundleId];
                  v44 = [bundleId3 isEqual:v43];

                  if (v44)
                  {
                    result = [v127 result];
                    domainIdentifier2 = [v20 domainIdentifier];
                    v47 = [result containsObject:domainIdentifier2];

                    if (v47)
                    {
                      [dictionary5 setObject:identifier forKeyedSubscript:v41];
                    }
                  }

                  v137 = personId;
                  v48 = [v14 objectForKeyedSubscript:v41];

                  if (!v48)
                  {
                    v49 = objc_alloc_init(_PSContactSuggestion);
                    [v14 setObject:v49 forKeyedSubscript:v41];
                  }

                  bundleId4 = [v20 bundleId];
                  v51 = objc_alloc_init(_PSContactSuggestionHandleAndApp);
                  [(_PSContactSuggestionHandleAndApp *)v51 setHandle:identifier];
                  v136 = bundleId4;
                  [(_PSContactSuggestionHandleAndApp *)v51 setAppBundleId:bundleId4];
                  v52 = v20;
                  v53 = [*(v18 + 3480) numberWithInteger:{objc_msgSend(v20, "mechanism")}];
                  [(_PSContactSuggestionHandleAndApp *)v51 setInteractionMechanism:v53];

                  v54 = [v14 objectForKeyedSubscript:v41];
                  handleAndAppFrequencies = [v54 handleAndAppFrequencies];
                  dictionary8 = [handleAndAppFrequencies mutableCopy];

                  if (!dictionary8)
                  {
                    dictionary8 = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v57 = *(v18 + 3480);
                  v58 = [dictionary8 objectForKeyedSubscript:v51];
                  v59 = [v57 numberWithInteger:{objc_msgSend(v58, "integerValue") + 1}];
                  [dictionary8 setObject:v59 forKeyedSubscript:v51];

                  v60 = [v14 objectForKeyedSubscript:v41];
                  v135 = dictionary8;
                  [v60 setHandleAndAppFrequencies:dictionary8];

                  v61 = [dictionary7 objectForKeyedSubscript:v51];

                  if (!v61)
                  {
                    v62 = [MEMORY[0x1E695DFA8] set];
                    [dictionary7 setObject:v62 forKeyedSubscript:v51];
                  }

                  v63 = [dictionary7 objectForKeyedSubscript:v51];
                  startDate4 = [v52 startDate];
                  v65 = [v138 startOfDayForDate:startDate4];
                  [v63 addObject:v65];

                  dictionary9 = [MEMORY[0x1E695DF90] dictionary];
                  v67 = *(v18 + 3480);
                  v68 = [dictionary7 objectForKeyedSubscript:v51];
                  *&v69 = [v68 count] / daysCopy;
                  v70 = [v67 numberWithFloat:v69];
                  [dictionary9 setObject:v70 forKeyedSubscript:v51];

                  v71 = [v14 objectForKeyedSubscript:v41];
                  [v71 setHandleAndAppRegularityScores:dictionary9];

                  v72 = [v14 objectForKeyedSubscript:v41];
                  daysInteracted = [v72 daysInteracted];
                  v74 = [daysInteracted mutableCopy];

                  if (!v74)
                  {
                    v74 = [MEMORY[0x1E695DFA8] set];
                  }

                  v20 = v131;
                  startDate5 = [v131 startDate];
                  v76 = [v138 startOfDayForDate:startDate5];
                  [v74 addObject:v76];

                  v77 = [v14 objectForKeyedSubscript:v41];
                  [v77 setDaysInteracted:v74];

                  dictionary = v129;
                  currentCalendar = v138;
                  v18 = 0x1E696A000;
                  personId = v137;
                }
              }

              recipients2 = obj;
              v134 = [obj countByEnumeratingWithState:&v145 objects:v157 count:16];
            }

            while (v134);
            v15 = v121;
          }

          goto LABEL_47;
        }

LABEL_48:
        objc_autoreleasePoolPop(context);
      }

      v124 = [v15 countByEnumeratingWithState:&v149 objects:v158 count:16];
    }

    while (v124);
  }

  v97 = v14;
  allKeys = [v14 allKeys];
  v99 = [MEMORY[0x1E695DF70] arrayWithCapacity:suggestions];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v100 = allKeys;
  v101 = [v100 countByEnumeratingWithState:&v141 objects:v156 count:16];
  v102 = dictionary7;
  if (v101)
  {
    v103 = v101;
    v104 = *v142;
LABEL_52:
    v105 = 0;
    while (1)
    {
      if (*v142 != v104)
      {
        objc_enumerationMutation(v100);
      }

      v106 = *(*(&v141 + 1) + 8 * v105);
      v107 = v97;
      v108 = [v97 objectForKeyedSubscript:v106];
      groupIdentifier = [v108 groupIdentifier];

      if (!groupIdentifier)
      {
        [v108 setContactIdentifier:v106];
        v110 = [dictionary5 objectForKeyedSubscript:v106];
        [v108 setSuggestedHandle:v110];

        handleAndAppFrequencies2 = [v108 handleAndAppFrequencies];
        allValues = [handleAndAppFrequencies2 allValues];
        v113 = [allValues valueForKeyPath:@"@sum.self"];
        [v108 setTotalFrequency:{objc_msgSend(v113, "integerValue")}];
      }

      daysInteracted2 = [v108 daysInteracted];
      [v108 setRegularityScore:{objc_msgSend(daysInteracted2, "count") / objc_msgSend(v132, "count")}];

      [v99 addObject:v108];
      v115 = [v99 count];

      v97 = v107;
      v102 = dictionary7;
      v15 = v121;
      if (v115 >= suggestions)
      {
        break;
      }

      if (v103 == ++v105)
      {
        v103 = [v100 countByEnumeratingWithState:&v141 objects:v156 count:16];
        if (v103)
        {
          goto LABEL_52;
        }

        break;
      }
    }
  }

  return v99;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions interactionDomains:(id)domains referenceDate:(id)date appleUsersOnly:(BOOL)only includeGroups:(BOOL)groups excludeContactsByIdentifiers:(id)identifiers
{
  groupsCopy = groups;
  onlyCopy = only;
  v116 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  dateCopy = date;
  identifiersCopy = identifiers;
  v15 = objc_autoreleasePoolPush();
  v16 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  v17 = [MEMORY[0x1E695DFA8] set];
  v93 = v17;
  context = v15;
  v88 = domainsCopy;
  v89 = v16;
  v90 = dateCopy;
  suggestionsCopy = suggestions;
  v85 = groupsCopy;
  v94 = onlyCopy;
  if (onlyCopy)
  {
    v18 = &unk_1F2D8B0D0;
LABEL_21:
    [v17 addObject:v18];
    goto LABEL_22;
  }

  if (![domainsCopy count])
  {
    [v17 addObject:&unk_1F2D8B0D0];
    [v17 addObject:&unk_1F2D8B0E8];
    [v17 addObject:&unk_1F2D8B100];
    [v17 addObject:&unk_1F2D8B118];
    [v17 addObject:&unk_1F2D8B130];
    v18 = &unk_1F2D8B0A0;
    goto LABEL_21;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v19 = domainsCopy;
  v20 = [v19 countByEnumeratingWithState:&v106 objects:v115 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v107;
LABEL_6:
    v23 = 0;
    while (1)
    {
      if (*v107 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v106 + 1) + 8 * v23);
      if (![v24 integerValue])
      {
        v17 = v93;
        [v93 addObject:&unk_1F2D8B0D0];
        [v93 addObject:&unk_1F2D8B0E8];
        [v93 addObject:&unk_1F2D8B100];
        [v93 addObject:&unk_1F2D8B118];
        [v93 addObject:&unk_1F2D8B130];
        [v93 addObject:&unk_1F2D8B0A0];

        goto LABEL_19;
      }

      integerValue = [v24 integerValue];
      v26 = &unk_1F2D8B0D0;
      if (integerValue == 1)
      {
        goto LABEL_14;
      }

      if ([v24 integerValue] == 2)
      {
        break;
      }

      integerValue2 = [v24 integerValue];
      v26 = &unk_1F2D8B0A0;
      if (integerValue2 == 3)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v106 objects:v115 count:16];
        if (v21)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    [v93 addObject:&unk_1F2D8B0E8];
    [v93 addObject:&unk_1F2D8B100];
    [v93 addObject:&unk_1F2D8B118];
    v26 = &unk_1F2D8B130;
LABEL_14:
    [v93 addObject:v26];
    goto LABEL_15;
  }

LABEL_17:

  v17 = v93;
LABEL_19:
  v16 = v89;
LABEL_22:
  interactionStore = [(_PSContactSuggester *)self interactionStore];
  v28 = [dateCopy dateByAddingTimeInterval:(-86400 * v16)];
  v79 = [v17 copy];
  v29 = dateCopy;
  v30 = MEMORY[0x1E695DFD8];
  v83 = +[_PSConstants mobileMessagesBundleId];
  v114[0] = v83;
  v82 = +[_PSConstants macMessagesBundleId];
  v114[1] = v82;
  v81 = +[_PSConstants mobileMailBundleId];
  v114[2] = v81;
  v31 = +[_PSConstants macMailBundleId];
  v114[3] = v31;
  v32 = +[_PSConstants mobilePhoneBundleId];
  v114[4] = v32;
  v33 = +[_PSConstants mobileFacetimeBundleId];
  v114[5] = v33;
  v34 = +[_PSConstants macFacetimeBundleId];
  v114[6] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:7];
  v36 = [v30 setWithArray:v35];
  v37 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C0A8];
  LOBYTE(v78) = 0;
  v91 = [_PSInteractionStoreUtils interactionsFromStore:interactionStore startDate:v28 tillDate:v29 withMechanisms:v79 withAccount:0 withBundleIds:v36 withTargetBundleIds:0 withDirections:v37 singleRecipient:v78 fetchLimit:3000];

  v38 = 0x1E7C23000uLL;
  v39 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v91, "count")}];
    *buf = 138412290;
    v113 = v40;
    _os_log_impl(&dword_1B5ED1000, v39, OS_LOG_TYPE_INFO, "_PSContactSuggester: interactions returned: %@", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v42 = array;
  if (v94)
  {
    v95 = array;
    v43 = [v91 _pas_mappedArrayWithTransform:&__block_literal_global_138];
    v44 = objc_alloc(MEMORY[0x1E695DFD8]);
    v84 = v43;
    v45 = [(_PSContactSuggester *)self iMessageDomainIdentifiersForDomainIdentifiers:v43];
    v46 = [v44 initWithArray:v45];

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v47 = v91;
    v48 = [v47 countByEnumeratingWithState:&v102 objects:v111 count:16];
    v49 = identifiersCopy;
    if (v48)
    {
      v50 = v48;
      v51 = *v103;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v103 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = *(*(&v102 + 1) + 8 * i);
          bundleId = [v53 bundleId];
          v55 = +[_PSConstants messagesBundleId];
          if ([bundleId isEqual:v55])
          {
            domainIdentifier = [v53 domainIdentifier];
            v57 = [v46 containsObject:domainIdentifier];

            v49 = identifiersCopy;
            if (v57)
            {
              [v95 addObject:v53];
            }
          }

          else
          {
          }
        }

        v50 = [v47 countByEnumeratingWithState:&v102 objects:v111 count:16];
      }

      while (v50);
    }

    v58 = v89;
    v59 = v90;
    v60 = suggestionsCopy;
    selfCopy2 = self;
    v62 = v85;
    v63 = v95;
    v38 = 0x1E7C23000;
    v42 = v84;
  }

  else
  {
    v63 = [v91 copy];
    v49 = identifiersCopy;
    v60 = suggestionsCopy;
    v62 = v85;
    v58 = v89;
    v59 = v90;
    selfCopy2 = self;
  }

  generalChannel = [*(v38 + 1360) generalChannel];
  if (os_log_type_enabled(generalChannel, OS_LOG_TYPE_INFO))
  {
    v65 = [v63 count];
    *buf = 134217984;
    v113 = v65;
    _os_log_impl(&dword_1B5ED1000, generalChannel, OS_LOG_TYPE_INFO, "_PSContactSuggester: Filtered interactions returned: %tu", buf, 0xCu);
  }

  if (v62)
  {
    v66 = objc_opt_new();
    v67 = [(_PSContactSuggester *)selfCopy2 contactAndGroupSuggestionsWithMaxSuggestions:v60 lookBackDays:v58 interactions:v63];
    if ([v49 count])
    {
      v96 = v63;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v68 = v66;
      v69 = [v68 countByEnumeratingWithState:&v98 objects:v110 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v99;
        do
        {
          for (j = 0; j != v70; ++j)
          {
            if (*v99 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v98 + 1) + 8 * j);
            contactIdentifier = [v73 contactIdentifier];
            v75 = [v49 containsObject:contactIdentifier];

            if ((v75 & 1) == 0)
            {
              [v68 addObject:v73];
            }
          }

          v70 = [v68 countByEnumeratingWithState:&v98 objects:v110 count:16];
        }

        while (v70);
      }

      v66 = v68;
      v67 = v66;
      v63 = v96;
    }
  }

  else
  {
    v66 = [v63 copy];
    v67 = [(_PSContactSuggester *)selfCopy2 contactSuggestionsWithMaxSuggestions:v60 excludeContactsByIdentifiers:v49 lookBackDays:v58 interactions:v66 modeAvocado:0];
  }

  v76 = [v67 sortedArrayUsingComparator:&__block_literal_global_142];

  objc_autoreleasePoolPop(context);

  return v76;
}

- (id)computeContactPriorsForContactIdentifiers:(id)identifiers withTimeConstant:(int64_t)constant withInteractionMechanisms:(id)mechanisms asOf:(id)of overLookbackOf:(int64_t)lookbackOf
{
  v103 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  mechanismsCopy = mechanisms;
  ofCopy = of;
  interactionStore = [(_PSContactSuggester *)self interactionStore];
  v15 = [ofCopy dateByAddingTimeInterval:(-86400 * lookbackOf)];
  v71 = mechanismsCopy;
  v16 = [mechanismsCopy copy];
  v17 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C0C0];
  LOBYTE(v70) = 0;
  v80 = ofCopy;
  v18 = [_PSInteractionStoreUtils interactionsFromStore:interactionStore startDate:v15 tillDate:ofCopy withMechanisms:v16 withAccount:0 withBundleIds:0 withTargetBundleIds:0 withDirections:v17 singleRecipient:v70 fetchLimit:3000];

  v19 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    *buf = 138412290;
    v102 = v20;
    _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_INFO, "_PSContactSuggester: interactions returned: %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v18;
  v75 = [obj countByEnumeratingWithState:&v93 objects:v100 count:16];
  if (v75)
  {
    v74 = *v94;
    constantCopy = constant;
    do
    {
      v23 = 0;
      do
      {
        if (*v94 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v79 = v23;
        v24 = *(*(&v93 + 1) + 8 * v23);
        context = objc_autoreleasePoolPush();
        sender = [v24 sender];
        personId = [sender personId];
        if (personId)
        {
          v26 = [dictionary objectForKeyedSubscript:personId];

          if (!v26)
          {
            v27 = [(_PSContactSuggester *)self getDefaultContactPriorForContactId:personId withModelName:@"PSContactSuggester" withModelVersion:@"0"];
            [dictionary setObject:v27 forKeyedSubscript:personId];
          }

          v28 = [dictionary objectForKeyedSubscript:personId];
          startDate = [v24 startDate];
          [(_PSContactSuggester *)self decayForReferenceDate:startDate relativeTo:v80 withTimeConstant:constantCopy];
          v31 = v30;
          [v28 priorScore];
          *&v33 = v31 + v32;
          [v28 setPriorScore:v33];
        }

        v76 = personId;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        recipients = [v24 recipients];
        v35 = [recipients countByEnumeratingWithState:&v89 objects:v99 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v90;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v90 != v37)
              {
                objc_enumerationMutation(recipients);
              }

              personId2 = [*(*(&v89 + 1) + 8 * i) personId];
              if (personId2)
              {
                v40 = [dictionary objectForKeyedSubscript:personId2];

                if (!v40)
                {
                  v41 = [(_PSContactSuggester *)self getDefaultContactPriorForContactId:personId2 withModelName:@"PSContactSuggester" withModelVersion:@"0"];
                  [dictionary setObject:v41 forKeyedSubscript:personId2];
                }

                v42 = [dictionary objectForKeyedSubscript:personId2];
                startDate2 = [v24 startDate];
                [(_PSContactSuggester *)self decayForReferenceDate:startDate2 relativeTo:v80 withTimeConstant:constantCopy];
                v45 = v44;
                [v42 priorScore];
                *&v47 = v45 + v46;
                [v42 setPriorScore:v47];
              }
            }

            v36 = [recipients countByEnumeratingWithState:&v89 objects:v99 count:16];
          }

          while (v36);
        }

        objc_autoreleasePoolPop(context);
        v23 = v79 + 1;
      }

      while (v79 + 1 != v75);
      v75 = [obj countByEnumeratingWithState:&v93 objects:v100 count:16];
    }

    while (v75);
  }

  v48 = [dictionary keysSortedByValueUsingComparator:&__block_literal_global_156];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v49 = [v48 countByEnumeratingWithState:&v85 objects:v98 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v86;
    v52 = 1;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v86 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v54 = *(*(&v85 + 1) + 8 * j);
        v55 = [dictionary objectForKeyedSubscript:v54];
        [v55 priorScore];
        v57 = v56;

        if (v57 != 0.0)
        {
          v58 = [dictionary objectForKeyedSubscript:v54];
          [v58 setRank:v52];

          v52 = (v52 + 1);
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v85 objects:v98 count:16];
    }

    while (v50);
  }

  v59 = identifiersCopy;
  if ([identifiersCopy count])
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v61 = identifiersCopy;
    v62 = [v61 countByEnumeratingWithState:&v81 objects:v97 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v82;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v82 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v81 + 1) + 8 * k);
          v67 = [dictionary objectForKeyedSubscript:v66];
          if (!v67)
          {
            v67 = [(_PSContactSuggester *)self getDefaultContactPriorForContactId:v66 withModelName:@"PSContactSuggester" withModelVersion:@"0"];
          }

          [dictionary2 setObject:v67 forKeyedSubscript:v66];
        }

        v63 = [v61 countByEnumeratingWithState:&v81 objects:v97 count:16];
      }

      while (v63);
    }

    v68 = [dictionary2 copy];
    v59 = identifiersCopy;
  }

  else
  {
    v68 = [dictionary copy];
  }

  return v68;
}

- (void)computeAndSaveContactPriorArchive
{
  standardInstance = [MEMORY[0x1E69979F0] standardInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56___PSContactSuggester_computeAndSaveContactPriorArchive__block_invoke;
  v4[3] = &unk_1E7C24268;
  v4[4] = self;
  [standardInstance performNoMoreOftenInSecondsThan:@"com.apple.coreduetd.contactPriorGeneration" name:v4 activityBlock:21600.0];
}

- (id)computeContactPriorsForContactIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x1E695DFA8];
  identifiersCopy = identifiers;
  v6 = [v4 set];
  [v6 addObject:&unk_1F2D8B0D0];
  [v6 addObject:&unk_1F2D8B0E8];
  [v6 addObject:&unk_1F2D8B100];
  [v6 addObject:&unk_1F2D8B118];
  [v6 addObject:&unk_1F2D8B130];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [(_PSContactSuggester *)self computeContactPriorsForContactIdentifiers:identifiersCopy withTimeConstant:43200 withInteractionMechanisms:v6 asOf:date overLookbackOf:+[_PSPrivacyDataRetentionPeriod lookbackDurationInDays]];

  return v8;
}

+ (id)_cascadeContentForContactPriors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [MEMORY[0x1E6993A50] setEnumeratorWithUseCase:@"PeopleSuggesterContactPriors"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___PSContactSuggester__cascadeContentForContactPriors__block_invoke;
  v5[3] = &unk_1E7C24510;
  v5[4] = &v6;
  [v2 enumerateAllSets:0 itemType:40568 usingBlock:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)_filteredContactDictionaryFromCascadeContent:(id)content forContactIdentifiers:(id)identifiers
{
  contentCopy = content;
  identifiersCopy = identifiers;
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = [identifiersCopy _pas_mappedArrayWithTransform:&__block_literal_global_173];
  v9 = [v7 initWithArray:v8];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  sourceSharedIdentifier = [contentCopy sourceSharedIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90___PSContactSuggester__filteredContactDictionaryFromCascadeContent_forContactIdentifiers___block_invoke_2;
  v22[3] = &unk_1E7C24558;
  v12 = v9;
  v23 = v12;
  v13 = v10;
  v24 = v13;
  v25 = &v26;
  [sourceSharedIdentifier enumerateInt64ValuesWithBlock:v22];

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
  if ([v13 count])
  {
    *(v27 + 6) = 0;
    priorScore = [contentCopy priorScore];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90___PSContactSuggester__filteredContactDictionaryFromCascadeContent_forContactIdentifiers___block_invoke_3;
    v17[3] = &unk_1E7C24580;
    v18 = v13;
    v21 = &v26;
    v19 = v14;
    v20 = contentCopy;
    [priorScore enumerateFloatValuesWithBlock:v17];
  }

  _Block_object_dispose(&v26, 8);

  return v14;
}

- (id)contactPriorsForContactIdentifiers:(id)identifiers
{
  v44 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = _os_activity_create(&dword_1B5ED1000, "CoreDuet: _PSContactSuggester Prior Generation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  interactionSignpost = [MEMORY[0x1E6997908] interactionSignpost];
  if (os_signpost_enabled(interactionSignpost))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, interactionSignpost, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSContactPriorsForContactIdentifiers", " enableTelemetry=YES ", &state, 2u);
  }

  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  defaultCorrelationsSessionFileForContactPriors = [objc_opt_class() defaultCorrelationsSessionFileForContactPriors];
  v41 = 0;
  v9 = [v7 initWithContentsOfFile:defaultCorrelationsSessionFileForContactPriors options:1 error:&v41];
  v10 = v41;

  if (v10)
  {
    archiveDate = 0;
    contactPriorDictionary = 0;
LABEL_5:
    v13 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactPriorsForContactIdentifiers:];
    }

    if ([identifiersCopy count])
    {
      v14 = identifiersCopy;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(_PSContactSuggester *)self computeContactPriorsForContactIdentifiers:v14];

    goto LABEL_11;
  }

  v40 = 0;
  v17 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v40];
  v10 = v40;
  contactPriorDictionary = [v17 contactPriorDictionary];
  archiveDate = [v17 archiveDate];

  if (!contactPriorDictionary || !archiveDate)
  {
    goto LABEL_5;
  }

  if (identifiersCopy)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __58___PSContactSuggester_contactPriorsForContactIdentifiers___block_invoke_182;
    v38[3] = &unk_1E7C242D0;
    v39 = contactPriorDictionary;
    v18 = [identifiersCopy _pas_filteredArrayWithTest:v38];

    identifiersCopy = v18;
  }

  else
  {
    identifiersCopy = [contactPriorDictionary allKeys];
  }

  v19 = objc_alloc(MEMORY[0x1E695DF20]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __58___PSContactSuggester_contactPriorsForContactIdentifiers___block_invoke_2;
  v36[3] = &unk_1E7C245A8;
  v20 = contactPriorDictionary;
  v37 = v20;
  v21 = [identifiersCopy _pas_mappedArrayWithTransform:v36];
  v22 = [v19 initWithObjects:v21 forKeys:identifiersCopy];

  date = [MEMORY[0x1E695DF00] date];
  [(_PSContactSuggester *)self decayForReferenceDate:archiveDate relativeTo:date withTimeConstant:43200.0];
  v25 = v24;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v22;
  v26 = [v10 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v26)
  {
    v27 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v10);
        }

        v29 = [v10 objectForKeyedSubscript:{*(*(&v32 + 1) + 8 * i), v32}];
        [v29 priorScore];
        *&v31 = v25 * v30;
        [(_PSContactSuggester *)self sigmoid:v31];
        [v29 setPriorScore:?];
      }

      v26 = [v10 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v26);
  }

  v15 = v10;
LABEL_11:

  __58___PSContactSuggester_contactPriorsForContactIdentifiers___block_invoke();

  return v15;
}

- (id)contactSuggestionsForPeopleWidgetWithMaxSuggestions:(int64_t)suggestions excludeContactsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(_PSContactSuggesterForPeopleWidget);
  v7 = [(_PSContactSuggesterForPeopleWidget *)v6 contactSuggestionsWithMaxSuggestions:suggestions excludeContactsWithIdentifiers:identifiersCopy];

  return v7;
}

+ (id)contactPriorSuggestionsForText:(id)text
{
  v45 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v3 = getSEMTokenizerClass_softClass;
  v40 = getSEMTokenizerClass_softClass;
  if (!getSEMTokenizerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSEMTokenizerClass_block_invoke;
    v43 = &unk_1E7C23BF0;
    v44 = &v37;
    SiriEntityMatcherLibraryCore();
    Class = objc_getClass("SEMTokenizer");
    *(v44[1] + 24) = Class;
    getSEMTokenizerClass_softClass = *(v44[1] + 24);
    v3 = v38[3];
  }

  v5 = v3;
  _Block_object_dispose(&v37, 8);
  v6 = [v3 alloc];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v36 = 0;
  v8 = [v6 initWithTokenizerLocale:currentLocale error:&v36];
  v30 = v36;

  if (v8)
  {
    v9 = [v8 queryFromText:textCopy];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v10 = getSEMCascadeItemTypeFilterClass_softClass;
    v40 = getSEMCascadeItemTypeFilterClass_softClass;
    if (!getSEMCascadeItemTypeFilterClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSEMCascadeItemTypeFilterClass_block_invoke;
      v43 = &unk_1E7C23BF0;
      v44 = &v37;
      SiriEntityMatcherLibraryCore();
      v11 = objc_getClass("SEMCascadeItemTypeFilter");
      *(v44[1] + 24) = v11;
      getSEMCascadeItemTypeFilterClass_softClass = *(v44[1] + 24);
      v10 = v38[3];
    }

    v12 = v10;
    _Block_object_dispose(&v37, 8);
    v35 = 0;
    v13 = [[v10 alloc] initWithItemType:19668 error:&v35];
    v29 = v35;
    if (v13)
    {
      v41 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      [v9 setEntityFilters:v14];
    }

    else
    {
      v14 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[_PSContactSuggester contactPriorSuggestionsForText:];
      }
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v16 = getSEMSpanMatcherClass_softClass;
    v40 = getSEMSpanMatcherClass_softClass;
    if (!getSEMSpanMatcherClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSEMSpanMatcherClass_block_invoke;
      v43 = &unk_1E7C23BF0;
      v44 = &v37;
      SiriEntityMatcherLibraryCore();
      v17 = objc_getClass("SEMSpanMatcher");
      *(v44[1] + 24) = v17;
      getSEMSpanMatcherClass_softClass = *(v44[1] + 24);
      v16 = v38[3];
    }

    v18 = v16;
    _Block_object_dispose(&v37, 8);
    indexMatcher = [v16 indexMatcher];
    v34 = 0;
    v20 = [indexMatcher matchSpans:v9 error:&v34];
    v21 = v34;
    if ([v20 count])
    {
      v22 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        *&buf[4] = textCopy;
        *&buf[12] = 2113;
        *&buf[14] = v20;
        _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_INFO, "For text %{private}@ found spans %{private}@", buf, 0x16u);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __54___PSContactSuggester_contactPriorSuggestionsForText___block_invoke;
      v32[3] = &unk_1E7C245F8;
      v33 = textCopy;
      v23 = [v20 _pas_mappedArrayWithTransform:v32];
      v24 = objc_opt_new();
      v25 = [v23 _pas_leftFoldWithInitialObject:v24 accumulate:&__block_literal_global_194];

      if ([v25 count])
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v15 = v26;

      v27 = v33;
    }

    else
    {
      if (v20)
      {
        v15 = 0;
        goto LABEL_25;
      }

      v27 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[_PSContactSuggester contactPriorSuggestionsForText:];
      }

      v15 = 0;
    }

LABEL_25:
    goto LABEL_26;
  }

  v9 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[_PSContactSuggester contactPriorSuggestionsForText:];
  }

  v15 = 0;
LABEL_26:

  return v15;
}

- (float)sigmoid:(float)sigmoid
{
  if (sigmoid >= 0.0)
  {
    v4 = exp(-sigmoid);
    v5 = 1.0;
  }

  else
  {
    v3 = exp(sigmoid);
    v4 = v3;
    v5 = v4;
  }

  return v5 / (v4 + 1.0);
}

+ (id)defaultCorrelationsSessionFileForContactPriors
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];

  v4 = [firstObject stringByAppendingPathComponent:@"PeopleSuggester/contactpriors.archive"];

  return v4;
}

+ (id)_cascadeContentForPriorsArchive:(id)archive cascadeContactEnumerator:(id)enumerator
{
  v44 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  enumeratorCopy = enumerator;
  v31 = archiveCopy;
  contactPriorDictionary = [archiveCopy contactPriorDictionary];
  v8 = malloc_type_calloc([contactPriorDictionary count], 0x10uLL, 0x1000040D9A13B51uLL);
  if (!v8)
  {
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v30);
  }

  v9 = v8;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __80___PSContactSuggester__cascadeContentForPriorsArchive_cascadeContactEnumerator___block_invoke;
  v42[3] = &__block_descriptor_40_e5_v8__0l;
  v42[4] = v8;
  v10 = MEMORY[0x1B8C8C060](v42);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __80___PSContactSuggester__cascadeContentForPriorsArchive_cascadeContactEnumerator___block_invoke_2;
  v34[3] = &unk_1E7C24640;
  v11 = contactPriorDictionary;
  v36 = &v38;
  v37 = v9;
  v35 = v11;
  enumeratorCopy[2](enumeratorCopy, v34);
  qsort_b(v9, v39[3], 0x10uLL, &__block_literal_global_205);
  v12 = objc_opt_new();
  if (v39[3])
  {
    v13 = 0;
    v14 = v9;
    do
    {
      v15 = *v14;
      v14 += 2;
      [v12 appendInt64Value:v15];
      ++v13;
    }

    while (v13 < v39[3]);
  }

  v16 = objc_opt_new();
  if (v39[3])
  {
    v18 = 0;
    v19 = v9 + 2;
    do
    {
      LODWORD(v17) = *v19;
      [v16 appendFloatValue:v17];
      ++v18;
      v19 += 4;
    }

    while (v18 < v39[3]);
  }

  memset(v33, 0, sizeof(v33));
  v20 = v11;
  if ([v20 countByEnumeratingWithState:v33 objects:v43 count:16])
  {
    v21 = [v20 objectForKeyedSubscript:**(&v33[0] + 1)];
    modelName = [v21 modelName];
    modelVersion = [v21 modelVersion];
  }

  else
  {
    modelName = 0;
    modelVersion = 0;
  }

  v24 = objc_alloc(MEMORY[0x1E69AA740]);
  v25 = MEMORY[0x1E696AD98];
  archiveDate = [v31 archiveDate];
  [archiveDate timeIntervalSinceReferenceDate];
  v27 = [v25 numberWithDouble:?];
  v32 = 0;
  v28 = [v24 initWithVersion:&unk_1F2D8B160 minVersion:&unk_1F2D8B160 sourceSharedIdentifier:v12 priorScore:v16 modelName:modelName modelVersion:modelVersion referenceDate:v27 error:&v32];

  _Block_object_dispose(&v38, 8);
  if (v10)
  {
    v10[2](v10);
  }

  return v28;
}

+ (void)_writeArchiveToCascade:(id)cascade
{
  v3 = [_PSContactSuggester _cascadeContentForPriorsArchive:cascade];
  v13 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69AA748]) initWithSourceItemIdentifier:@"priors_v0" error:&v13];
  v5 = v13;
  v12 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69939F8]) initWithContent:v3 metaContent:v4 error:&v12];
  v7 = v12;
  v8 = MEMORY[0x1E6993A80];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___PSContactSuggester__writeArchiveToCascade___block_invoke;
  v10[3] = &unk_1E7C246D8;
  v11 = v6;
  v9 = v6;
  [v8 fullSetDonationWithItemType:40568 descriptors:MEMORY[0x1E695E0F0] completion:v10];
}

- (void)writeArchive:(id)archive
{
  v16 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  [_PSContactSuggester _writeArchiveToCascade:archiveCopy];
  defaultCorrelationsSessionFileForContactPriors = [objc_opt_class() defaultCorrelationsSessionFileForContactPriors];
  if (archiveCopy)
  {
    v13 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:archiveCopy requiringSecureCoding:1 error:&v13];
    v6 = v13;
    if (!v6)
    {
      stringByDeletingLastPathComponent = [defaultCorrelationsSessionFileForContactPriors stringByDeletingLastPathComponent];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v12 = 0;
      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v12];
      v6 = v12;

      if (!v6)
      {
        v11 = 0;
        [v5 writeToFile:defaultCorrelationsSessionFileForContactPriors options:1073741825 error:&v11];
        v6 = v11;
        v9 = +[_PSLogging generalChannel];
        v10 = v9;
        if (v6)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [_PSContactSuggester writeArchive:];
          }
        }

        else
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v15 = defaultCorrelationsSessionFileForContactPriors;
            _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_INFO, "Successfully persisted contact prior scores to file: %@", buf, 0xCu);
          }

          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester writeArchive:];
    }
  }
}

- (id)getDefaultContactPriorForContactId:(id)id withModelName:(id)name withModelVersion:(id)version
{
  versionCopy = version;
  nameCopy = name;
  idCopy = id;
  v10 = objc_alloc_init(_PSContactPrior);
  [(_PSContactPrior *)v10 setContactIdentifier:idCopy];

  [(_PSContactPrior *)v10 setPriorScore:0.0];
  [(_PSContactPrior *)v10 setRank:0xFFFFFFFFLL];
  [(_PSContactPrior *)v10 setModelName:nameCopy];

  [(_PSContactPrior *)v10 setModelVersion:versionCopy];

  return v10;
}

- (id)contactKeysToFetch
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getCNContactIdentifierKey();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = getCNContactRelationsKeySymbolLoc_ptr;
  v24 = getCNContactRelationsKeySymbolLoc_ptr;
  v25[0] = v2;
  if (!getCNContactRelationsKeySymbolLoc_ptr)
  {
    v4 = ContactsLibrary();
    v22[3] = dlsym(v4, "CNContactRelationsKey");
    getCNContactRelationsKeySymbolLoc_ptr = v22[3];
    v3 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = *v3;
  v25[1] = v5;
  v6 = getCNContactGivenNameKey();
  v25[2] = v6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v7 = getCNContactMiddleNameKeySymbolLoc_ptr;
  v24 = getCNContactMiddleNameKeySymbolLoc_ptr;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr)
  {
    v8 = ContactsLibrary();
    v22[3] = dlsym(v8, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr = v22[3];
    v7 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v7)
  {
    goto LABEL_16;
  }

  v9 = *v7;
  v25[3] = v9;
  v10 = getCNContactFamilyNameKey();
  v25[4] = v10;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v11 = getCNContactNicknameKeySymbolLoc_ptr;
  v24 = getCNContactNicknameKeySymbolLoc_ptr;
  if (!getCNContactNicknameKeySymbolLoc_ptr)
  {
    v12 = ContactsLibrary();
    v22[3] = dlsym(v12, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr = v22[3];
    v11 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v11)
  {
    goto LABEL_16;
  }

  v13 = *v11;
  v25[5] = v13;
  v14 = getCNContactPhoneNumbersKey();
  v25[6] = v14;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v15 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  v24 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr)
  {
    v16 = ContactsLibrary();
    v22[3] = dlsym(v16, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr = v22[3];
    v15 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v15)
  {
LABEL_16:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v26 = *v15;
  v17 = MEMORY[0x1E695DEC8];
  v18 = v26;
  v19 = [v17 arrayWithObjects:v25 count:8];

  return v19;
}

- (void)contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)gameCenterSuggestionConsumedWithContactHandle:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)gameCenterSuggestionConsumedWithGroupIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)contactPriorsForContactIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)contactPriorSuggestionsForText:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)contactPriorSuggestionsForText:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1B5ED1000, v1, OS_LOG_TYPE_ERROR, "For text %{private}@ got SEMSpanMatcher error %@", v2, 0x16u);
}

+ (void)contactPriorSuggestionsForText:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeArchive:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeArchive:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end