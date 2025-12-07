@interface _PSContactSuggesterForPeopleWidget
- (_PSContactSuggesterForPeopleWidget)init;
- (id)allEmailAndPhoneNumberHandlesForContact:(id)contact;
- (id)contactKeysToFetch;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsWithIdentifiers:(id)identifiers;
- (id)familyMemberContactHandles;
- (id)familyRecommendedContacts;
- (id)favoritedContacts;
- (id)iCloudFamilyMembers;
- (id)interactionBasedRecommendedContacts;
- (void)familyMemberContactHandles;
- (void)familyRecommendedContacts;
- (void)interactionBasedRecommendedContacts;
- (void)processFamilyMember:(id)member toFillContactArray:(id)array;
@end

@implementation _PSContactSuggesterForPeopleWidget

- (_PSContactSuggesterForPeopleWidget)init
{
  v12.receiver = self;
  v12.super_class = _PSContactSuggesterForPeopleWidget;
  v2 = [(_PSContactSuggesterForPeopleWidget *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [v3 initWithGuardedData:v4];
    candidateContacts = v2->_candidateContacts;
    v2->_candidateContacts = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    priorityFamilyMembers = v2->_priorityFamilyMembers;
    v2->_priorityFamilyMembers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    nonpriorityFamilyMembers = v2->_nonpriorityFamilyMembers;
    v2->_nonpriorityFamilyMembers = v9;
  }

  return v2;
}

- (id)allEmailAndPhoneNumberHandlesForContact:(id)contact
{
  v23 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  phoneNumbers = [contactCopy phoneNumbers];
  v5 = [phoneNumbers valueForKey:@"value"];

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        unformattedInternationalStringValue = [v12 unformattedInternationalStringValue];

        if (unformattedInternationalStringValue)
        {
          unformattedInternationalStringValue2 = [v12 unformattedInternationalStringValue];
          [array addObject:unformattedInternationalStringValue2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  emailAddresses = [contactCopy emailAddresses];
  v16 = [emailAddresses valueForKey:@"value"];

  [array addObjectsFromArray:v16];

  return array;
}

- (id)contactKeysToFetch
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = getCNContactIdentifierKey_3();
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v2 = getCNContactPhoneNumbersKeySymbolLoc_ptr_5;
  v39 = getCNContactPhoneNumbersKeySymbolLoc_ptr_5;
  v40[0] = v35;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_5)
  {
    v3 = ContactsLibrary_6();
    v37[3] = dlsym(v3, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_5 = v37[3];
    v2 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v2)
  {
    goto LABEL_34;
  }

  v34 = *v2;
  v40[1] = v34;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v4 = getCNContactEmailAddressesKeySymbolLoc_ptr_5;
  v39 = getCNContactEmailAddressesKeySymbolLoc_ptr_5;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_5)
  {
    v5 = ContactsLibrary_6();
    v37[3] = dlsym(v5, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_5 = v37[3];
    v4 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v4)
  {
    goto LABEL_34;
  }

  v6 = *v4;
  v40[2] = v6;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v7 = getCNContactGivenNameKeySymbolLoc_ptr_4;
  v39 = getCNContactGivenNameKeySymbolLoc_ptr_4;
  if (!getCNContactGivenNameKeySymbolLoc_ptr_4)
  {
    v8 = ContactsLibrary_6();
    v37[3] = dlsym(v8, "CNContactGivenNameKey");
    getCNContactGivenNameKeySymbolLoc_ptr_4 = v37[3];
    v7 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v7)
  {
    goto LABEL_34;
  }

  v9 = *v7;
  v40[3] = v9;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v10 = getCNContactFamilyNameKeySymbolLoc_ptr_4;
  v39 = getCNContactFamilyNameKeySymbolLoc_ptr_4;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr_4)
  {
    v11 = ContactsLibrary_6();
    v37[3] = dlsym(v11, "CNContactFamilyNameKey");
    getCNContactFamilyNameKeySymbolLoc_ptr_4 = v37[3];
    v10 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v10)
  {
    goto LABEL_34;
  }

  v12 = *v10;
  v40[4] = v12;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v13 = getCNContactMiddleNameKeySymbolLoc_ptr_4;
  v39 = getCNContactMiddleNameKeySymbolLoc_ptr_4;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr_4)
  {
    v14 = ContactsLibrary_6();
    v37[3] = dlsym(v14, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr_4 = v37[3];
    v13 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v13)
  {
    goto LABEL_34;
  }

  v15 = *v13;
  v40[5] = v15;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v16 = getCNContactNameSuffixKeySymbolLoc_ptr_3;
  v39 = getCNContactNameSuffixKeySymbolLoc_ptr_3;
  if (!getCNContactNameSuffixKeySymbolLoc_ptr_3)
  {
    v17 = ContactsLibrary_6();
    v37[3] = dlsym(v17, "CNContactNameSuffixKey");
    getCNContactNameSuffixKeySymbolLoc_ptr_3 = v37[3];
    v16 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v16)
  {
    goto LABEL_34;
  }

  v18 = *v16;
  v40[6] = v18;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v19 = getCNContactNamePrefixKeySymbolLoc_ptr_3;
  v39 = getCNContactNamePrefixKeySymbolLoc_ptr_3;
  if (!getCNContactNamePrefixKeySymbolLoc_ptr_3)
  {
    v20 = ContactsLibrary_6();
    v37[3] = dlsym(v20, "CNContactNamePrefixKey");
    getCNContactNamePrefixKeySymbolLoc_ptr_3 = v37[3];
    v19 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v19)
  {
    goto LABEL_34;
  }

  v21 = *v19;
  v40[7] = v21;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v22 = getCNContactOrganizationNameKeySymbolLoc_ptr_0;
  v39 = getCNContactOrganizationNameKeySymbolLoc_ptr_0;
  if (!getCNContactOrganizationNameKeySymbolLoc_ptr_0)
  {
    v23 = ContactsLibrary_6();
    v37[3] = dlsym(v23, "CNContactOrganizationNameKey");
    getCNContactOrganizationNameKeySymbolLoc_ptr_0 = v37[3];
    v22 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v22)
  {
    goto LABEL_34;
  }

  v24 = *v22;
  v40[8] = v24;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v25 = getCNContactNicknameKeySymbolLoc_ptr_4;
  v39 = getCNContactNicknameKeySymbolLoc_ptr_4;
  if (!getCNContactNicknameKeySymbolLoc_ptr_4)
  {
    v26 = ContactsLibrary_6();
    v37[3] = dlsym(v26, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr_4 = v37[3];
    v25 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v25)
  {
    goto LABEL_34;
  }

  v27 = *v25;
  v40[9] = v27;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v28 = getCNContactTypeKeySymbolLoc_ptr_3;
  v39 = getCNContactTypeKeySymbolLoc_ptr_3;
  if (!getCNContactTypeKeySymbolLoc_ptr_3)
  {
    v29 = ContactsLibrary_6();
    v37[3] = dlsym(v29, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr_3 = v37[3];
    v28 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v28)
  {
LABEL_34:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v41 = *v28;
  v30 = MEMORY[0x1E695DEC8];
  v31 = v41;
  v32 = [v30 arrayWithObjects:v40 count:11];

  return v32;
}

- (void)processFamilyMember:(id)member toFillContactArray:(id)array
{
  memberCopy = member;
  arrayCopy = array;
  if (([memberCopy isMe] & 1) == 0)
  {
    contact = [memberCopy contact];

    if (contact)
    {
      v7 = [_PSContact alloc];
      contact2 = [memberCopy contact];
      v9 = -[_PSContact initWithCNContact:isChild:](v7, "initWithCNContact:isChild:", contact2, [memberCopy isChildAccount]);

      [arrayCopy addObject:v9];
    }
  }
}

- (id)familyMemberContactHandles
{
  *buf = 0;
  v37 = buf;
  v38 = 0x2050000000;
  v3 = getFAFetchFamilyCircleRequestClass_softClass_0;
  v39 = getFAFetchFamilyCircleRequestClass_softClass_0;
  if (!getFAFetchFamilyCircleRequestClass_softClass_0)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getFAFetchFamilyCircleRequestClass_block_invoke_0;
    v33 = &unk_1E7C23BF0;
    v34 = buf;
    __getFAFetchFamilyCircleRequestClass_block_invoke_0(&v30);
    v3 = *(v37 + 3);
  }

  v4 = v3;
  _Block_object_dispose(buf, 8);
  v5 = objc_alloc_init(v3);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__16;
  v34 = __Block_byref_object_dispose__16;
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke;
  v27[3] = &unk_1E7C25020;
  v27[4] = self;
  v29 = &v30;
  v7 = v6;
  v28 = v7;
  [v5 startRequestWithCompletionHandler:v27];
  v8 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "Timeout in FAFetchFamilyCircleRequest", buf, 2u);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = *(v31 + 40);
    *(v31 + 40) = v10;
  }

  if (![*(v31 + 40) count])
  {
    [v5 setCachePolicy:1];
    v12 = dispatch_semaphore_create(0);

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke_38;
    v23 = &unk_1E7C25020;
    selfCopy = self;
    v26 = &v30;
    v7 = v12;
    v25 = v7;
    [v5 startRequestWithCompletionHandler:&v20];
    v13 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v7, v13))
    {
      v14 = [_PSLogging generalChannel:v20];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "Timeout in FAFetchFamilyCircleRequest with cachePolicy=YES", buf, 2u);
      }

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = *(v31 + 40);
      *(v31 + 40) = v15;
    }
  }

  v17 = [_PSLogging generalChannel:v20];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [(_PSContactSuggesterForPeopleWidget *)&v31 familyMemberContactHandles];
  }

  v18 = [*(v31 + 40) copy];
  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)iCloudFamilyMembers
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_PSContactSuggesterForPeopleWidget *)self familyMemberContactHandles];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v27;
    *&v5 = 138412290;
    v23 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        cnContact = [v9 cnContact];
        identifier = [cnContact identifier];

        if (identifier)
        {
          if ([v9 isChild])
          {
            [(_PSContactSuggesterForPeopleWidget *)self priorityFamilyMembers];
          }

          else
          {
            [(_PSContactSuggesterForPeopleWidget *)self nonpriorityFamilyMembers];
          }
          v12 = ;
          cnContact2 = [v9 cnContact];
          identifier2 = [cnContact2 identifier];
          [v12 addObject:identifier2];

          cnContact3 = [v9 cnContact];
          identifier3 = [cnContact3 identifier];
          [v3 addObject:identifier3];

          v17 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = v23;
            v31 = v9;
            _os_log_debug_impl(&dword_1B5ED1000, v17, OS_LOG_TYPE_DEBUG, "i-Cloud family member contact fetched: %@", buf, 0xCu);
          }

          candidateContacts = self->_candidateContacts;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __57___PSContactSuggesterForPeopleWidget_iCloudFamilyMembers__block_invoke;
          v25[3] = &unk_1E7C26768;
          v25[4] = v9;
          [(_PASLock *)candidateContacts runWithLockAcquired:v25];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v6);
  }

  v19 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    *buf = 138412290;
    v31 = v20;
    _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_DEFAULT, "ICloudFamilyMembers count: %@", buf, 0xCu);
  }

  v21 = [v3 copy];

  return v21;
}

- (id)familyRecommendedContacts
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(_PSFamilyRecommender);
  v3 = [(_PSFamilyRecommender *)v24 familyRecommendationSuggestionsForShareSheetWithPredictionContext:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        recipients = [v10 recipients];
        v12 = [recipients count];

        if (v12)
        {
          recipients2 = [v10 recipients];
          firstObject = [recipients2 firstObject];

          contact = [firstObject contact];

          if (contact)
          {
            contact2 = [firstObject contact];
            identifier = [contact2 identifier];
            [v4 addObject:identifier];

            v18 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              [(_PSContactSuggesterForPeopleWidget *)v33 familyRecommendedContacts:firstObject];
            }

            candidateContacts = self->_candidateContacts;
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __63___PSContactSuggesterForPeopleWidget_familyRecommendedContacts__block_invoke;
            v25[3] = &unk_1E7C26768;
            v26 = firstObject;
            [(_PASLock *)candidateContacts runWithLockAcquired:v25];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v20 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138412290;
    v32 = v21;
    _os_log_impl(&dword_1B5ED1000, v20, OS_LOG_TYPE_DEFAULT, "familyRecommendedContacts count: %@", buf, 0xCu);
  }

  v22 = [v4 copy];

  return v22;
}

- (id)interactionBasedRecommendedContacts
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(_PSContactSuggester);
  v3 = [(_PSContactSuggester *)v2 contactSuggestionsWithMaxSuggestions:50 excludeContactsByIdentifiers:MEMORY[0x1E695E0F0] interactionHistoryCap:1000];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_34];
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v67 = v4;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Interaction based suggestions before contact resolution %{private}@", buf, 0xCu);
  }

  v6 = objc_alloc_init(getCNContactStoreClass_0());
  v7 = getCNContactIdentifierKey_3();
  v65 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  v62 = 0;
  v9 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v62];
  v10 = v62;

  v45 = v3;
  v46 = v2;
  v43 = v10;
  if (v10)
  {
    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggesterForPeopleWidget interactionBasedRecommendedContacts];
    }
  }

  else if (v9)
  {
    v48 = v9;
    v13 = 1;
    goto LABEL_12;
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_PSContactSuggesterForPeopleWidget interactionBasedRecommendedContacts];
  }

  v13 = 0;
  v48 = 0;
LABEL_12:
  v14 = [_PSContactResolver alloc];
  selfCopy2 = self;
  contactKeysToFetch = [(_PSContactSuggesterForPeopleWidget *)self contactKeysToFetch];
  v44 = v6;
  v17 = [(_PSContactResolver *)v14 initWithContactStore:v6 keysToFetch:contactKeysToFetch];

  v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v4;
  v18 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  v19 = 0x1E7C23000uLL;
  if (v18)
  {
    v20 = v18;
    v51 = *v59;
    v21 = v13 ^ 1;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v59 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v58 + 1) + 8 * i);
        contactIdentifier = [v23 contactIdentifier];
        v25 = [(_PSContactResolver *)v17 contactWithIdentifier:contactIdentifier];

        if (!v25)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          handleAndAppFrequencies = [v23 handleAndAppFrequencies];
          v27 = [handleAndAppFrequencies countByEnumeratingWithState:&v54 objects:v63 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v55;
LABEL_20:
            v30 = 0;
            while (1)
            {
              if (*v55 != v29)
              {
                objc_enumerationMutation(handleAndAppFrequencies);
              }

              handle = [*(*(&v54 + 1) + 8 * v30) handle];
              v25 = [(_PSContactResolver *)v17 resolveContactIfPossibleFromContactIdentifierString:handle pickFirstOfMultiple:1];

              if (v25)
              {
                break;
              }

              if (v28 == ++v30)
              {
                v28 = [handleAndAppFrequencies countByEnumeratingWithState:&v54 objects:v63 count:16];
                if (v28)
                {
                  goto LABEL_20;
                }

                v25 = 0;
                break;
              }
            }

            selfCopy2 = self;
            v19 = 0x1E7C23000;
          }

          else
          {
            v25 = 0;
          }
        }

        if (v25)
        {
          v32 = v21;
        }

        else
        {
          v32 = 1;
        }

        if ((v32 & 1) != 0 || ([v48 identifier], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "identifier"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToString:", v34), v34, v33, (v35 & 1) == 0))
        {
          if (v25)
          {
            generalChannel = [*(v19 + 1360) generalChannel];
            if (os_log_type_enabled(generalChannel, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v67 = v25;
              _os_log_debug_impl(&dword_1B5ED1000, generalChannel, OS_LOG_TYPE_DEBUG, "Interaction model suggested contact fetched: %@", buf, 0xCu);
            }

            identifier = [v25 identifier];
            [v49 addObject:identifier];

            candidateContacts = selfCopy2->_candidateContacts;
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __73___PSContactSuggesterForPeopleWidget_interactionBasedRecommendedContacts__block_invoke_45;
            v52[3] = &unk_1E7C26768;
            v53 = v25;
            [(_PASLock *)candidateContacts runWithLockAcquired:v52];
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v20);
  }

  generalChannel2 = [*(v19 + 1360) generalChannel];
  if (os_log_type_enabled(generalChannel2, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v49, "count")}];
    *buf = 138412290;
    v67 = v40;
    _os_log_impl(&dword_1B5ED1000, generalChannel2, OS_LOG_TYPE_DEFAULT, "interactionBasedRecommendedContacts count: %@", buf, 0xCu);
  }

  v41 = [v49 copy];

  return v41;
}

- (id)favoritedContacts
{
  v3 = objc_opt_new();
  mEMORY[0x1E69978A8] = [MEMORY[0x1E69978A8] sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55___PSContactSuggesterForPeopleWidget_favoritedContacts__block_invoke;
  v8[3] = &unk_1E7C24330;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [mEMORY[0x1E69978A8] accessFavoriteContactEntriesWithBlock:v8];

  v6 = v5;
  return v5;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)suggestions excludeContactsWithIdentifiers:(id)identifiers
{
  v178[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  selfCopy = self;
  iCloudFamilyMembers = [(_PSContactSuggesterForPeopleWidget *)self iCloudFamilyMembers];
  interactionBasedRecommendedContacts = [(_PSContactSuggesterForPeopleWidget *)self interactionBasedRecommendedContacts];
  favoritedContacts = [(_PSContactSuggesterForPeopleWidget *)self favoritedContacts];
  v130 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v117 = objc_alloc_init(getCNContactStoreClass_0());
  v6 = getCNContactIdentifierKey_3();
  v178[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:1];
  v167 = 0;
  v135 = [v117 _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:&v167];
  v119 = v167;

  if (v119)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggesterForPeopleWidget interactionBasedRecommendedContacts];
    }

    goto LABEL_5;
  }

  if (!v135)
  {
LABEL_5:
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggesterForPeopleWidget interactionBasedRecommendedContacts];
    }

    v135 = 0;
  }

  v134 = objc_opt_new();
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  obj = iCloudFamilyMembers;
  v10 = [obj countByEnumeratingWithState:&v163 objects:v177 count:16];
  if (v10)
  {
    v11 = *v164;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v164 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v163 + 1) + 8 * i);
        identifier = [v135 identifier];
        v15 = [identifier isEqualToString:v13];

        if ((v15 & 1) == 0)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v174 = __Block_byref_object_copy__16;
          v175 = __Block_byref_object_dispose__16;
          v176 = 0;
          candidateContacts = selfCopy->_candidateContacts;
          v162[0] = MEMORY[0x1E69E9820];
          v162[1] = 3221225472;
          v162[2] = __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke;
          v162[3] = &unk_1E7C24808;
          v162[5] = buf;
          v162[4] = v13;
          [(_PASLock *)candidateContacts runWithLockAcquired:v162];
          v17 = MEMORY[0x1E695DFD8];
          v18 = [(_PSContactSuggesterForPeopleWidget *)selfCopy allEmailAndPhoneNumberHandlesForContact:*(*&buf[8] + 40)];
          v19 = [v17 setWithArray:v18];

          if ([v19 intersectsSet:v134])
          {
            allObjects = [v19 allObjects];
            [v134 addObjectsFromArray:allObjects];
          }

          else
          {
            identifier2 = [*(*&buf[8] + 40) identifier];
            v22 = [v130 objectForKey:identifier2];

            if (v22)
            {
              identifier3 = [*(*&buf[8] + 40) identifier];
              v24 = [v130 objectForKey:identifier3];

              [(_PSContactSuggestion *)v24 peopleWidgetScore];
              [(_PSContactSuggestion *)v24 setPeopleWidgetScore:v25 + 4.0];
              identifier4 = [*(*&buf[8] + 40) identifier];
              [v130 setObject:v24 forKeyedSubscript:identifier4];
            }

            else
            {
              v27 = [_PSContactSuggestion alloc];
              v24 = [(_PSContactSuggestion *)v27 initWithContact:*(*&buf[8] + 40) andScore:4.0];
              identifier4 = [*(*&buf[8] + 40) identifier];
              [v130 setValue:v24 forKey:identifier4];
            }

            allObjects = [v19 allObjects];
            [v134 addObjectsFromArray:allObjects];
          }

          _Block_object_dispose(buf, 8);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v163 objects:v177 count:16];
    }

    while (v10);
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v121 = favoritedContacts;
  v28 = [v121 countByEnumeratingWithState:&v158 objects:v172 count:16];
  if (v28)
  {
    v29 = *v159;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v159 != v29)
        {
          objc_enumerationMutation(v121);
        }

        v31 = *(*(&v158 + 1) + 8 * j);
        identifier5 = [v135 identifier];
        v33 = [identifier5 isEqualToString:v31];

        if ((v33 & 1) == 0)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v174 = __Block_byref_object_copy__16;
          v175 = __Block_byref_object_dispose__16;
          v176 = 0;
          v34 = selfCopy->_candidateContacts;
          v157[0] = MEMORY[0x1E69E9820];
          v157[1] = 3221225472;
          v157[2] = __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_2;
          v157[3] = &unk_1E7C24808;
          v157[4] = v31;
          v157[5] = buf;
          [(_PASLock *)v34 runWithLockAcquired:v157];
          v35 = MEMORY[0x1E695DFD8];
          v36 = [(_PSContactSuggesterForPeopleWidget *)selfCopy allEmailAndPhoneNumberHandlesForContact:*(*&buf[8] + 40)];
          v37 = [v35 setWithArray:v36];

          if ([v37 intersectsSet:v134])
          {
            allObjects2 = [v37 allObjects];
            [v134 addObjectsFromArray:allObjects2];
          }

          else
          {
            identifier6 = [*(*&buf[8] + 40) identifier];
            v40 = [v130 objectForKey:identifier6];

            if (v40)
            {
              identifier7 = [*(*&buf[8] + 40) identifier];
              v42 = [v130 objectForKey:identifier7];

              [(_PSContactSuggestion *)v42 peopleWidgetScore];
              [(_PSContactSuggestion *)v42 setPeopleWidgetScore:v43 + 3.0];
              identifier8 = [*(*&buf[8] + 40) identifier];
              [v130 setObject:v42 forKeyedSubscript:identifier8];
            }

            else
            {
              v45 = [_PSContactSuggestion alloc];
              v42 = [(_PSContactSuggestion *)v45 initWithContact:*(*&buf[8] + 40) andScore:3.0];
              identifier8 = [*(*&buf[8] + 40) identifier];
              [v130 setValue:v42 forKey:identifier8];
            }

            allObjects2 = [v37 allObjects];
            [v134 addObjectsFromArray:allObjects2];
          }

          _Block_object_dispose(buf, 8);
        }
      }

      v28 = [v121 countByEnumeratingWithState:&v158 objects:v172 count:16];
    }

    while (v28);
  }

  if ([interactionBasedRecommendedContacts count])
  {
    v46 = 0;
    v125 = MEMORY[0x1E69E9820];
    v47 = 10;
    do
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v174 = __Block_byref_object_copy__16;
      v175 = __Block_byref_object_dispose__16;
      v176 = 0;
      v48 = selfCopy->_candidateContacts;
      v153[0] = v125;
      v153[1] = 3221225472;
      v153[2] = __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_3;
      v153[3] = &unk_1E7C26790;
      v155 = buf;
      v49 = interactionBasedRecommendedContacts;
      v154 = v49;
      v156 = v46;
      [(_PASLock *)v48 runWithLockAcquired:v153];
      identifier9 = [v135 identifier];
      identifier10 = [*(*&buf[8] + 40) identifier];
      v52 = [identifier9 isEqualToString:identifier10];

      if ((v52 & 1) == 0)
      {
        v53 = MEMORY[0x1E695DFD8];
        v54 = [(_PSContactSuggesterForPeopleWidget *)selfCopy allEmailAndPhoneNumberHandlesForContact:*(*&buf[8] + 40)];
        v55 = [v53 setWithArray:v54];

        if ([v55 intersectsSet:v134])
        {
          allObjects3 = [v55 allObjects];
          [v134 addObjectsFromArray:allObjects3];
        }

        else
        {
          identifier11 = [*(*&buf[8] + 40) identifier];
          v58 = [v130 objectForKey:identifier11];

          if (v58)
          {
            identifier12 = [*(*&buf[8] + 40) identifier];
            v60 = [v130 objectForKey:identifier12];

            [(_PSContactSuggestion *)v60 peopleWidgetScore];
            [(_PSContactSuggestion *)v60 setPeopleWidgetScore:v61 + ((v47 / 10.0) + (v47 / 10.0))];
            identifier13 = [*(*&buf[8] + 40) identifier];
            [v130 setObject:v60 forKeyedSubscript:identifier13];
          }

          else
          {
            v63 = [_PSContactSuggestion alloc];
            v60 = [(_PSContactSuggestion *)v63 initWithContact:*(*&buf[8] + 40) andScore:((v47 / 10.0) + (v47 / 10.0))];
            identifier13 = [*(*&buf[8] + 40) identifier];
            [v130 setValue:v60 forKey:identifier13];
          }

          allObjects3 = [v55 allObjects];
          [v134 addObjectsFromArray:allObjects3];
        }
      }

      _Block_object_dispose(buf, 8);
      v64 = [v49 count];
      if (v46 > 8)
      {
        break;
      }

      ++v46;
      --v47;
    }

    while (v64 > v46);
  }

  v65 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v65, OS_LOG_TYPE_INFO, "Suggestion scoring done", buf, 2u);
  }

  v129 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v131 = v130;
  v66 = [v131 countByEnumeratingWithState:&v149 objects:v171 count:16];
  if (v66)
  {
    v67 = *v150;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v150 != v67)
        {
          objc_enumerationMutation(v131);
        }

        v69 = [v131 objectForKeyedSubscript:*(*(&v149 + 1) + 8 * k)];
        [v129 addObject:v69];
      }

      v66 = [v131 countByEnumeratingWithState:&v149 objects:v171 count:16];
    }

    while (v66);
  }

  v70 = [v129 sortedArrayUsingComparator:&__block_literal_global_53_0];
  v71 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v71, OS_LOG_TYPE_INFO, "Suggestion ranking based on score done", buf, 2u);
  }

  v126 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v127 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v123 = v70;
  v72 = [v123 countByEnumeratingWithState:&v145 objects:v170 count:16];
  if (v72)
  {
    v73 = *v146;
    do
    {
      for (m = 0; m != v72; ++m)
      {
        if (*v146 != v73)
        {
          objc_enumerationMutation(v123);
        }

        v75 = *(*(&v145 + 1) + 8 * m);
        priorityFamilyMembers = [(_PSContactSuggesterForPeopleWidget *)selfCopy priorityFamilyMembers];
        contact = [v75 contact];
        identifier14 = [contact identifier];
        if (![priorityFamilyMembers containsObject:identifier14])
        {

          goto LABEL_75;
        }

        if (!identifiersCopy || ![identifiersCopy count])
        {

LABEL_74:
          [v126 addObject:v75];
          priorityFamilyMembers = [v75 contact];
          contact = [priorityFamilyMembers identifier];
          [v127 addObject:contact];
          --suggestions;
LABEL_75:

          continue;
        }

        contact2 = [v75 contact];
        identifier15 = [contact2 identifier];
        v81 = [identifiersCopy containsObject:identifier15];

        if ((v81 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v72 = [v123 countByEnumeratingWithState:&v145 objects:v170 count:16];
    }

    while (v72);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v124 = v123;
  v82 = [v124 countByEnumeratingWithState:&v141 objects:v169 count:16];
  if (!v82)
  {
    goto LABEL_94;
  }

  v83 = *v142;
  do
  {
    for (n = 0; n != v82; ++n)
    {
      if (*v142 != v83)
      {
        objc_enumerationMutation(v124);
      }

      v85 = *(*(&v141 + 1) + 8 * n);
      nonpriorityFamilyMembers = [(_PSContactSuggesterForPeopleWidget *)selfCopy nonpriorityFamilyMembers];
      contact3 = [v85 contact];
      identifier16 = [contact3 identifier];
      if (![nonpriorityFamilyMembers containsObject:identifier16])
      {

        goto LABEL_91;
      }

      if (!identifiersCopy || ![identifiersCopy count])
      {

LABEL_90:
        [v126 addObject:v85];
        nonpriorityFamilyMembers = [v85 contact];
        contact3 = [nonpriorityFamilyMembers identifier];
        [v127 addObject:contact3];
        --suggestions;
LABEL_91:

        continue;
      }

      contact4 = [v85 contact];
      identifier17 = [contact4 identifier];
      v91 = [identifiersCopy containsObject:identifier17];

      if ((v91 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    v82 = [v124 countByEnumeratingWithState:&v141 objects:v169 count:16];
  }

  while (v82);
LABEL_94:

  if (suggestions >= 1)
  {
    v92 = 0;
    do
    {
      if ([v124 count] <= v92)
      {
        break;
      }

      if (identifiersCopy && ([v124 objectAtIndexedSubscript:v92], v93 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v93, "contact"), v94 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v94, "identifier"), v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(identifiersCopy, "containsObject:", v95), v95, v94, v93, v96) || (objc_msgSend(v124, "objectAtIndexedSubscript:", v92), v97 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v97, "contact"), v98 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v98, "identifier"), v99 = objc_claimAutoreleasedReturnValue(), v100 = objc_msgSend(v127, "containsObject:", v99), v99, v98, v97, v100))
      {
        suggestionsCopy = suggestions + 1;
      }

      else
      {
        v102 = [v124 objectAtIndexedSubscript:v92];
        [v126 addObject:v102];

        v103 = [v124 objectAtIndexedSubscript:v92];
        contact5 = [v103 contact];
        identifier18 = [contact5 identifier];
        [v127 addObject:identifier18];

        suggestionsCopy = suggestions;
      }

      ++v92;
      suggestions = suggestionsCopy;
    }

    while (suggestionsCopy > v92);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v106 = v126;
  v107 = [v106 countByEnumeratingWithState:&v137 objects:v168 count:16];
  if (v107)
  {
    v108 = *v138;
    do
    {
      for (ii = 0; ii != v107; ++ii)
      {
        if (*v138 != v108)
        {
          objc_enumerationMutation(v106);
        }

        v110 = *(*(&v137 + 1) + 8 * ii);
        v111 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          contact6 = [v110 contact];
          givenName = [contact6 givenName];
          v114 = MEMORY[0x1E696AD98];
          [v110 peopleWidgetScore];
          v115 = [v114 numberWithDouble:?];
          *buf = 138478083;
          *&buf[4] = givenName;
          *&buf[12] = 2112;
          *&buf[14] = v115;
          _os_log_impl(&dword_1B5ED1000, v111, OS_LOG_TYPE_DEFAULT, "Suggestions: %{private}@, score: %@", buf, 0x16u);
        }
      }

      v107 = [v106 countByEnumeratingWithState:&v137 objects:v168 count:16];
    }

    while (v107);
  }

  return v106;
}

- (void)familyMemberContactHandles
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*self + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "familyMembers %@", &v3, 0xCu);
}

- (void)familyRecommendedContacts
{
  contact = [a2 contact];
  *self = 138412290;
  *a3 = contact;
  _os_log_debug_impl(&dword_1B5ED1000, a4, OS_LOG_TYPE_DEBUG, "Family-recommender suggested contact fetched: %@", self, 0xCu);
}

- (void)interactionBasedRecommendedContacts
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end