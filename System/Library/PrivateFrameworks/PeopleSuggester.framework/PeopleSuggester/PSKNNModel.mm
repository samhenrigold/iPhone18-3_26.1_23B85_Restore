@interface PSKNNModel
@end

@implementation PSKNNModel

uint64_t __116___PSKNNModel_PhoneAutocompleteSuggestions__rankedLabelsFromInteractionsForPhoneCallsWithInteractions_andDistances___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 objectForKeyedSubscript:@"score"];
  v6 = [v4 objectForKeyedSubscript:@"score"];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __94___PSKNNModel_rankedMessagesAutocompleteSuggestionsWithPredictionContext_bundleId_candidates___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = [v7 compare:v8];
  }

  return v11;
}

_PSSuggestion *__79___PSKNNModel_suggestionsByUpdatingGroupNamesFromSuggestions_imCoreTimeBudget___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 56) + 8) + 24) <= 0.0)
  {
    v10 = +[_PSLogging knnChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __79___PSKNNModel_suggestionsByUpdatingGroupNamesFromSuggestions_imCoreTimeBudget___block_invoke_cold_1(v4);
    }

    v11 = v4;
    v12 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v47 = __Block_byref_object_copy__14;
    *(&v47 + 1) = __Block_byref_object_dispose__14;
    v48 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79___PSKNNModel_suggestionsByUpdatingGroupNamesFromSuggestions_imCoreTimeBudget___block_invoke_194;
    block[3] = &unk_1E7C26410;
    v44 = buf;
    v5 = v3;
    v43 = v5;
    v6 = dispatch_block_create(0, block);
    dispatch_async(*(a1 + 32), v6);
    v7 = [MEMORY[0x1E695DF00] now];
    v8 = *(*(*(a1 + 56) + 8) + 24);
    if (v8 <= 0.0)
    {
      v9 = 0;
    }

    else if (v8 <= 9223372040.0)
    {
      v9 = dispatch_time(0, (v8 * 1000000000.0));
    }

    else
    {
      v9 = -1;
    }

    if (dispatch_block_wait(v6, v9))
    {
      v13 = +[_PSLogging knnChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v5 conversationIdentifier];
        __79___PSKNNModel_suggestionsByUpdatingGroupNamesFromSuggestions_imCoreTimeBudget___block_invoke_cold_2(v14, v45, v13);
      }

      v12 = 0;
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    else
    {
      v12 = *(*&buf[8] + 40);
    }

    v15 = [MEMORY[0x1E695DF00] now];
    [v15 timeIntervalSinceDate:v7];
    *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) - v16;

    _Block_object_dispose(buf, 8);
    if ([v12 count])
    {
      v17 = [v12 firstObject];
      v18 = [v17 displayName];

      if ([*(a1 + 40) containsObject:v18])
      {
        v11 = 0;
      }

      else
      {
        if (v18)
        {
          [*(a1 + 40) addObject:v18];
          v19 = v18;
        }

        else
        {
          v19 = [MEMORY[0x1E695DFB0] null];
        }

        v20 = [v5 groupName];
        if (v20)
        {
          v21 = [v19 isEqual:v20];
        }

        else
        {
          v22 = [MEMORY[0x1E695DFB0] null];
          v21 = [v19 isEqual:v22];
        }

        if (!v18)
        {
        }

        v23 = *(a1 + 48);
        v24 = [v12 firstObject];
        v41 = [v23 recipientsForChat:v24];

        v25 = *(a1 + 48);
        v26 = [v5 recipients];
        v27 = [v25 suggestedRecipientHandles:v26 differFromFetchedRecipientHandles:v41];

        v28 = v21 ^ 1;
        if ((v28 | v27))
        {
          v29 = +[_PSLogging knnChannel];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v5 conversationIdentifier];
            *buf = 138478595;
            *&buf[4] = v30;
            *&buf[12] = 2113;
            *&buf[14] = v18;
            *&buf[22] = 1024;
            LODWORD(v47) = v28;
            WORD2(v47) = 1024;
            *(&v47 + 6) = v27;
            _os_log_impl(&dword_1B5ED1000, v29, OS_LOG_TYPE_DEFAULT, "Updating suggestion conversationIdentifier(%{private}@) since groupName(%{private}@) changed: %{BOOL}d or participants changed: %{BOOL}d", buf, 0x22u);
          }

          v31 = [_PSSuggestion alloc];
          v40 = [v5 bundleID];
          v39 = [v5 conversationIdentifier];
          v32 = [v5 derivedIntentIdentifier];
          v33 = [v5 image];
          v34 = [v5 reason];
          v35 = [v5 reasonType];
          v36 = [v5 score];
          v11 = [(_PSSuggestion *)v31 initWithBundleID:v40 conversationIdentifier:v39 groupName:v18 recipients:v41 derivedIntentIdentifier:v32 image:v33 reason:v34 reasonType:v35 score:v36];

          v37 = [v5 messagesGroupIdentifier];
          [(_PSSuggestion *)v11 setMessagesGroupIdentifier:v37];
        }

        else
        {
          v11 = v5;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

void __79___PSKNNModel_suggestionsByUpdatingGroupNamesFromSuggestions_imCoreTimeBudget___block_invoke_194(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationIdentifier];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr_0;
  v13 = getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr_0;
  if (!getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_ptr_0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_block_invoke_0;
    v9[3] = &unk_1E7C23BF0;
    v9[4] = &v10;
    __getIMSPIGetDisplayNameAndParticipantsForChatWithGUIDSymbolLoc_block_invoke_0(v9);
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    [_PSBlockedHandlesCache beginSyncingWithTU];
    v8 = v7;
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  v4 = v3(v2);

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __33___PSKNNModel_contactKeysToFetch__block_invoke()
{
  v58 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v0 = getCNContactNamePrefixKeySymbolLoc_ptr_2;
  v55 = getCNContactNamePrefixKeySymbolLoc_ptr_2;
  if (!getCNContactNamePrefixKeySymbolLoc_ptr_2)
  {
    v1 = ContactsLibrary_5();
    v53[3] = dlsym(v1, "CNContactNamePrefixKey");
    getCNContactNamePrefixKeySymbolLoc_ptr_2 = v53[3];
    v0 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v0)
  {
    goto LABEL_50;
  }

  v2 = *v0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v3 = getCNContactGivenNameKeySymbolLoc_ptr_3;
  v55 = getCNContactGivenNameKeySymbolLoc_ptr_3;
  v56[0] = v2;
  if (!getCNContactGivenNameKeySymbolLoc_ptr_3)
  {
    v4 = ContactsLibrary_5();
    v53[3] = dlsym(v4, "CNContactGivenNameKey");
    getCNContactGivenNameKeySymbolLoc_ptr_3 = v53[3];
    v3 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v3)
  {
    goto LABEL_50;
  }

  v5 = *v3;
  v56[1] = v5;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v6 = getCNContactMiddleNameKeySymbolLoc_ptr_3;
  v55 = getCNContactMiddleNameKeySymbolLoc_ptr_3;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr_3)
  {
    v7 = ContactsLibrary_5();
    v53[3] = dlsym(v7, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr_3 = v53[3];
    v6 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v6)
  {
    goto LABEL_50;
  }

  v8 = *v6;
  v56[2] = v8;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v9 = getCNContactFamilyNameKeySymbolLoc_ptr_3;
  v55 = getCNContactFamilyNameKeySymbolLoc_ptr_3;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr_3)
  {
    v10 = ContactsLibrary_5();
    v53[3] = dlsym(v10, "CNContactFamilyNameKey");
    getCNContactFamilyNameKeySymbolLoc_ptr_3 = v53[3];
    v9 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v9)
  {
    goto LABEL_50;
  }

  v11 = *v9;
  v56[3] = v11;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v12 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr_2;
  v55 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr_2;
  if (!getCNContactPreviousFamilyNameKeySymbolLoc_ptr_2)
  {
    v13 = ContactsLibrary_5();
    v53[3] = dlsym(v13, "CNContactPreviousFamilyNameKey");
    getCNContactPreviousFamilyNameKeySymbolLoc_ptr_2 = v53[3];
    v12 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v12)
  {
    goto LABEL_50;
  }

  v51 = *v12;
  v56[4] = v51;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v14 = getCNContactNameSuffixKeySymbolLoc_ptr_2;
  v55 = getCNContactNameSuffixKeySymbolLoc_ptr_2;
  if (!getCNContactNameSuffixKeySymbolLoc_ptr_2)
  {
    v15 = ContactsLibrary_5();
    v53[3] = dlsym(v15, "CNContactNameSuffixKey");
    getCNContactNameSuffixKeySymbolLoc_ptr_2 = v53[3];
    v14 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v14)
  {
    goto LABEL_50;
  }

  v50 = *v14;
  v56[5] = v50;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v16 = getCNContactNicknameKeySymbolLoc_ptr_3;
  v55 = getCNContactNicknameKeySymbolLoc_ptr_3;
  if (!getCNContactNicknameKeySymbolLoc_ptr_3)
  {
    v17 = ContactsLibrary_5();
    v53[3] = dlsym(v17, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr_3 = v53[3];
    v16 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v16)
  {
    goto LABEL_50;
  }

  v49 = *v16;
  v56[6] = v49;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v18 = getCNContactOrganizationNameKeySymbolLoc_ptr;
  v55 = getCNContactOrganizationNameKeySymbolLoc_ptr;
  if (!getCNContactOrganizationNameKeySymbolLoc_ptr)
  {
    v19 = ContactsLibrary_5();
    v53[3] = dlsym(v19, "CNContactOrganizationNameKey");
    getCNContactOrganizationNameKeySymbolLoc_ptr = v53[3];
    v18 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v18)
  {
    goto LABEL_50;
  }

  v48 = *v18;
  v56[7] = v48;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v20 = getCNContactImageDataKeySymbolLoc_ptr_0;
  v55 = getCNContactImageDataKeySymbolLoc_ptr_0;
  if (!getCNContactImageDataKeySymbolLoc_ptr_0)
  {
    v21 = ContactsLibrary_5();
    v53[3] = dlsym(v21, "CNContactImageDataKey");
    getCNContactImageDataKeySymbolLoc_ptr_0 = v53[3];
    v20 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v20)
  {
    goto LABEL_50;
  }

  v47 = *v20;
  v56[8] = v47;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v22 = getCNContactImageDataAvailableKeySymbolLoc_ptr_0;
  v55 = getCNContactImageDataAvailableKeySymbolLoc_ptr_0;
  if (!getCNContactImageDataAvailableKeySymbolLoc_ptr_0)
  {
    v23 = ContactsLibrary_5();
    v53[3] = dlsym(v23, "CNContactImageDataAvailableKey");
    getCNContactImageDataAvailableKeySymbolLoc_ptr_0 = v53[3];
    v22 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v22)
  {
    goto LABEL_50;
  }

  v46 = *v22;
  v56[9] = v46;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v24 = getCNContactThumbnailImageDataKeySymbolLoc_ptr_0;
  v55 = getCNContactThumbnailImageDataKeySymbolLoc_ptr_0;
  if (!getCNContactThumbnailImageDataKeySymbolLoc_ptr_0)
  {
    v25 = ContactsLibrary_5();
    v53[3] = dlsym(v25, "CNContactThumbnailImageDataKey");
    getCNContactThumbnailImageDataKeySymbolLoc_ptr_0 = v53[3];
    v24 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v24)
  {
    goto LABEL_50;
  }

  v26 = *v24;
  v56[10] = v26;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v27 = getCNContactTypeKeySymbolLoc_ptr_2;
  v55 = getCNContactTypeKeySymbolLoc_ptr_2;
  if (!getCNContactTypeKeySymbolLoc_ptr_2)
  {
    v28 = ContactsLibrary_5();
    v53[3] = dlsym(v28, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr_2 = v53[3];
    v27 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v27)
  {
    goto LABEL_50;
  }

  v29 = *v27;
  v56[11] = v29;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v30 = getCNContactPhoneNumbersKeySymbolLoc_ptr_4;
  v55 = getCNContactPhoneNumbersKeySymbolLoc_ptr_4;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_4)
  {
    v31 = ContactsLibrary_5();
    v53[3] = dlsym(v31, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_4 = v53[3];
    v30 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v30)
  {
    goto LABEL_50;
  }

  v32 = *v30;
  v56[12] = v32;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v33 = getCNContactEmailAddressesKeySymbolLoc_ptr_4;
  v55 = getCNContactEmailAddressesKeySymbolLoc_ptr_4;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_4)
  {
    v34 = ContactsLibrary_5();
    v53[3] = dlsym(v34, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_4 = v53[3];
    v33 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v33)
  {
    goto LABEL_50;
  }

  v35 = *v33;
  v56[13] = v35;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v36 = getCNContactPostalAddressesKeySymbolLoc_ptr_0;
  v55 = getCNContactPostalAddressesKeySymbolLoc_ptr_0;
  if (!getCNContactPostalAddressesKeySymbolLoc_ptr_0)
  {
    v37 = ContactsLibrary_5();
    v53[3] = dlsym(v37, "CNContactPostalAddressesKey");
    getCNContactPostalAddressesKeySymbolLoc_ptr_0 = v53[3];
    v36 = v53[3];
  }

  v45 = v2;
  _Block_object_dispose(&v52, 8);
  if (!v36)
  {
    goto LABEL_50;
  }

  v38 = *v36;
  v56[14] = v38;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v39 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr_0;
  v55 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr_0;
  if (!getCNContactInstantMessageAddressesKeySymbolLoc_ptr_0)
  {
    v40 = ContactsLibrary_5();
    v53[3] = dlsym(v40, "CNContactInstantMessageAddressesKey");
    getCNContactInstantMessageAddressesKeySymbolLoc_ptr_0 = v53[3];
    v39 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (!v39)
  {
LABEL_50:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v57 = *v39;
  v41 = MEMORY[0x1E695DEC8];
  v42 = v57;
  v43 = [v41 arrayWithObjects:v56 count:16];
  v44 = contactKeysToFetch_contactKeysToFetch;
  contactKeysToFetch_contactKeysToFetch = v43;
}

void __99___PSKNNModel_rankedCoRecipientSuggestionsWithPredictionContext_modelConfiguration_maxSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 containsString:@"@"])
  {
    v3 = 1;
    v4 = 48;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];

    v4 = 56;
    if (!v5)
    {
      v4 = 64;
    }

    v3 = 2 * (v5 == 0);
  }

  ++*(*(*(a1 + v4) + 8) + 24);
  v6 = +[_PSContactCache sharedInstance];
  v7 = [v6 getContactForHandle:v9 handleType:v3];

  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E69978B0] normalizedStringFromContactString:v9];
    [*(a1 + 40) addObject:v8];
  }
}

uint64_t __99___PSKNNModel_rankedCoRecipientSuggestionsWithPredictionContext_modelConfiguration_maxSuggestions___block_invoke_224(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) countForObject:a2];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __89___PSKNNModel_rankedLabelsFromInteractionsMaintainRecipientsArray_andDistances_freqOnly___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:@"score"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 objectForKeyedSubscript:@"score"];
  [v9 doubleValue];
  v11 = v10;

  if (v8 >= v11)
  {
    v13 = [v4 objectForKeyedSubscript:@"score"];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v5 objectForKeyedSubscript:@"score"];
    [v16 doubleValue];
    v18 = v17;

    if (v15 <= v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __119___PSKNNModel_rankedLabelsFromInteractionsSingleRecipientArray_andDistances_freqOnly_contactsOnly_scoreLikeShareSheet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:@"score"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 objectForKeyedSubscript:@"score"];
  [v9 doubleValue];
  v11 = v10;

  if (v8 >= v11)
  {
    v13 = [v4 objectForKeyedSubscript:@"score"];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v5 objectForKeyedSubscript:@"score"];
    [v16 doubleValue];
    v18 = v17;

    if (v15 <= v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __88___PSKNNModel_rankedLabelsFromInteractionsSiriNLWithInteractions_andDistances_freqOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:@"score"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v5 objectForKeyedSubscript:@"score"];
  [v9 doubleValue];
  v11 = v10;

  if (v8 >= v11)
  {
    v13 = [v4 objectForKeyedSubscript:@"score"];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v5 objectForKeyedSubscript:@"score"];
    [v16 doubleValue];
    v18 = v17;

    if (v15 <= v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t __43___PSKNNModel_indexToInsertNeighbor_array___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 distance];
  v7 = v6;
  [v5 distance];
  if (v7 >= v8)
  {
    [v4 distance];
    v11 = v10;
    [v5 distance];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __60___PSKNNModel_rankedMapsShareEtaSuggestions_maxSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60___PSKNNModel_rankedMapsShareEtaSuggestions_maxSuggestions___block_invoke_cold_1(v2);
    }
  }
}

void __60___PSKNNModel_rankedMapsShareEtaSuggestions_maxSuggestions___block_invoke_357(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [v3 startLocationId];

    if (v5)
    {
      v6 = [v3 startLocationId];
      v7 = [MEMORY[0x1E69979A8] navigationStartLocationIdentifier];
      [v4 setObject:v6 forKeyedSubscript:v7];
    }

    v8 = [v3 endLocationId];

    if (v8)
    {
      v9 = [v3 endLocationId];
      v10 = [MEMORY[0x1E69979A8] navigationEndLocationIdentifier];
      [v4 setObject:v9 forKeyedSubscript:v10];
    }

    v11 = [v3 contactId];

    if (v11)
    {
      v12 = [v3 contactId];
      v13 = [MEMORY[0x1E69979A8] contactId];
      [v4 setObject:v12 forKeyedSubscript:v13];
    }

    v14 = MEMORY[0x1E695DF00];
    [v27 timestamp];
    v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
    v16 = MEMORY[0x1E695DF00];
    [v27 timestamp];
    v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
    v18 = objc_alloc(MEMORY[0x1E69979E0]);
    v19 = [v3 identifier];
    v20 = [v3 bundleId];
    v21 = [v3 groupId];
    v22 = [v18 initWithIdentifier:v19 bundleIdentifier:v20 itemIdentifier:0 groupIdentifier:v21 deviceIdentifier:0 userIdentifier:0];

    v23 = MEMORY[0x1E6997960];
    v24 = [MEMORY[0x1E6997970] eventStreamWithName:@"/mapsShareEta/feedback"];
    v25 = [v3 handle];
    v26 = [v23 eventWithStream:v24 source:v22 startDate:v15 endDate:v17 identifierStringValue:v25 metadata:v4];

    [*(a1 + 32) addObject:v26];
  }
}

uint64_t __64___PSKNNModel_mapsShareEtaDefaultKnnSuggestions_maxSuggestions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) countForObject:a2];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __84___PSKNNModel_extractNearestNeighborsForMapsQueryResult_andNeighbors_frequencyOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 >= v8)
  {
    [v4 doubleValue];
    v11 = v10;
    [v5 doubleValue];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void __79___PSKNNModel_suggestionsByUpdatingGroupNamesFromSuggestions_imCoreTimeBudget___block_invoke_cold_1(void *a1)
{
  v1 = [a1 conversationIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1B5ED1000, v2, v3, "Skipping IMCore groupName fetch for conversation identifier %{private}@ (no more time budget)", v4, v5, v6, v7);
}

void __79___PSKNNModel_suggestionsByUpdatingGroupNamesFromSuggestions_imCoreTimeBudget___block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_ERROR, "Timed out during IMCore groupName fetch for conversation identifier %{private}@", buf, 0xCu);
}

void __60___PSKNNModel_rankedMapsShareEtaSuggestions_maxSuggestions___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1B5ED1000, v2, v3, "Finalizing local events failed: %@", v4, v5, v6, v7);
}

@end