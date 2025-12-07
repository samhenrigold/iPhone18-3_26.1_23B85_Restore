@interface _PSFTZKWSuggestionsTransformerFactory
+ (id)getCraftedIdentfierForSuggestion:(id)suggestion;
+ (id)getResultsFromTransformers:(id)transformers suggestions:(id)suggestions;
- (BOOL)isEligibleRecipient:(id)recipient;
- (_PSFTZKWSuggestionsTransformerFactory)initWithInteractionStore:(id)store;
- (id)annotateWithTrialExperimentIdentifiers:(id)identifiers rolloutIdentifiers:(id)rolloutIdentifiers;
- (id)boostPriorityContacts:(id)contacts;
- (id)deduplicateWithMaxSuggestions:(unint64_t)suggestions;
- (id)deduplicateWithSeedRecipients:(id)recipients;
- (id)filterIDSReachable:(BOOL)reachable;
- (id)formatWithBundleIdsForGroupMatching:(id)matching;
- (id)formatWithSuggestion:(id)suggestion bundleIdsForGroupMatching:(id)matching checkForMessagesGroupIdentifier:(BOOL)identifier;
- (id)mapRecipientsToContactsWithUnmapped:(BOOL)unmapped;
@end

@implementation _PSFTZKWSuggestionsTransformerFactory

- (_PSFTZKWSuggestionsTransformerFactory)initWithInteractionStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = _PSFTZKWSuggestionsTransformerFactory;
  v6 = [(_PSFTZKWSuggestionsTransformerFactory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interactionStore, store);
    v8 = +[_PSContactCache sharedInstance];
    contactCache = v7->_contactCache;
    v7->_contactCache = v8;
  }

  return v7;
}

- (id)formatWithSuggestion:(id)suggestion bundleIdsForGroupMatching:(id)matching checkForMessagesGroupIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  v91[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  matchingCopy = matching;
  if (!suggestionCopy)
  {
    v91[0] = 0;
    v12 = MEMORY[0x1E695DEC8];
    v13 = v91;
    goto LABEL_14;
  }

  if (!self->_interactionStore)
  {
    v14 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_PSFTZKWSuggestionsTransformerFactory formatWithSuggestion:v14 bundleIdsForGroupMatching:? checkForMessagesGroupIdentifier:?];
    }

    v90 = suggestionCopy;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v90;
    goto LABEL_14;
  }

  recipients = [suggestionCopy recipients];
  v11 = [recipients count];

  if (v11 <= 1)
  {
    v89 = suggestionCopy;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v89;
LABEL_14:
    v70 = [v12 arrayWithObjects:v13 count:1];
    goto LABEL_15;
  }

  conversationIdentifier = [suggestionCopy conversationIdentifier];
  if ([conversationIdentifier length])
  {
    groupName = [suggestionCopy groupName];
    v17 = [groupName length];

    if (v17)
    {
      if (!identifierCopy || ([suggestionCopy messagesGroupIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v19))
      {
        v88 = suggestionCopy;
        v12 = MEMORY[0x1E695DEC8];
        v13 = &v88;
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

  v21 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [suggestionCopy recipients];
  v22 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v76;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v76 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v75 + 1) + 8 * i);
        contact = [v26 contact];
        if (contact)
        {
          contact2 = [v26 contact];
          identifier = [contact2 identifier];
        }

        else
        {
          identifier = [v26 handle];
        }

        if (!identifier)
        {
          v34 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [_PSFTZKWSuggestionsTransformerFactory formatWithSuggestion:suggestionCopy bundleIdsForGroupMatching:v34 checkForMessagesGroupIdentifier:?];
          }

          v70 = MEMORY[0x1E695E0F0];
          goto LABEL_54;
        }

        [v21 addObject:identifier];
      }

      v23 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  getMeContact = [(_PSContactCache *)self->_contactCache getMeContact];
  interactionStore = [(_PSFTZKWSuggestionsTransformerFactory *)self interactionStore];
  obj = getMeContact;
  identifier2 = [getMeContact identifier];
  v33 = [_PSInteractionStoreUtils mostRecentInteractionWithExactMatchingIdentifiers:v21 store:interactionStore bundleIds:matchingCopy meContactIdentifier:identifier2];

  v34 = v33;
  v35 = +[_PSLogging generalChannel];
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v33)
  {
    v68 = v21;
    if (v36)
    {
      *buf = 138412546;
      v81 = v33;
      v82 = 2112;
      v83 = suggestionCopy;
      _os_log_impl(&dword_1B5ED1000, v35, OS_LOG_TYPE_DEFAULT, "Found group interaction mapping %@ for %@", buf, 0x16u);
    }

    v37 = [_PSInteractionStoreUtils conversationIdFromInteraction:v33 bundleIds:matchingCopy];
    v38 = [_PSSuggestion alloc];
    bundleID = [suggestionCopy bundleID];
    groupName2 = [v34 groupName];
    recipients2 = [suggestionCopy recipients];
    reason = [suggestionCopy reason];
    reasonType = [suggestionCopy reasonType];
    v67 = v37;
    v44 = [(_PSSuggestion *)v38 initWithBundleID:bundleID conversationIdentifier:v37 groupName:groupName2 recipients:recipients2 reason:reason reasonType:reasonType];

    if (formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___pasOnceToken7 != -1)
    {
      [_PSFTZKWSuggestionsTransformerFactory formatWithSuggestion:bundleIdsForGroupMatching:checkForMessagesGroupIdentifier:];
    }

    v45 = formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___pasExprOnceResult;
    bundleId = [v34 bundleId];
    if (bundleId)
    {
      v47 = bundleId;
      bundleId2 = [v34 bundleId];
      v49 = [v45 containsObject:bundleId2];

      if (v49)
      {
        account = [v34 account];
        [(_PSSuggestion *)v44 setMessagesGroupIdentifier:account];
      }
    }

    v79 = v44;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];

LABEL_52:
    v21 = v68;
    v51 = v67;
    goto LABEL_53;
  }

  v66 = matchingCopy;
  if (v36)
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v35, OS_LOG_TYPE_DEFAULT, "Could not map group suggestion to group interaction. Flattening.", buf, 2u);
  }

  v70 = objc_opt_new();
  v51 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"handle" ascending:1];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  recipients3 = [suggestionCopy recipients];
  v85 = v51;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v44 = [recipients3 sortedArrayUsingDescriptors:v53];

  v54 = [(_PSSuggestion *)v44 countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v54)
  {
    v55 = v54;
    v67 = v51;
    v68 = v21;
    v56 = *v72;
    do
    {
      v57 = v44;
      for (j = 0; j != v55; ++j)
      {
        if (*v72 != v56)
        {
          objc_enumerationMutation(v57);
        }

        v59 = *(*(&v71 + 1) + 8 * j);
        v60 = [_PSSuggestion alloc];
        bundleID2 = [suggestionCopy bundleID];
        v84 = v59;
        v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
        reason2 = [suggestionCopy reason];
        reasonType2 = [suggestionCopy reasonType];
        v65 = [(_PSSuggestion *)v60 initWithBundleID:bundleID2 conversationIdentifier:0 groupName:0 recipients:v62 reason:reason2 reasonType:reasonType2];

        [v70 addObject:v65];
      }

      v44 = v57;
      v55 = [(_PSSuggestion *)v57 countByEnumeratingWithState:&v71 objects:v86 count:16];
    }

    while (v55);
    v34 = 0;
    matchingCopy = v66;
    goto LABEL_52;
  }

  matchingCopy = v66;
LABEL_53:

LABEL_54:
LABEL_15:

  return v70;
}

- (id)formatWithBundleIdsForGroupMatching:(id)matching
{
  matchingCopy = matching;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___PSFTZKWSuggestionsTransformerFactory_formatWithBundleIdsForGroupMatching___block_invoke;
  v8[3] = &unk_1E7C26180;
  v8[4] = self;
  v9 = matchingCopy;
  v5 = matchingCopy;
  v6 = MEMORY[0x1B8C8C060](v8);

  return v6;
}

- (BOOL)isEligibleRecipient:(id)recipient
{
  v19 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if ([recipientCopy handleType] == 2)
  {
    v5 = +[_PSLogging generalChannel];
    v6 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      handle = [recipientCopy handle];
      v13 = 138412546;
      v14 = handle;
      v15 = 1024;
      v16 = 1;
      _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Recipient %@ is considered reachable and eligible for zkw suggestions %d", &v13, 0x12u);
    }
  }

  else
  {
    contactCache = self->_contactCache;
    handle2 = [recipientCopy handle];
    v10 = [(_PSContactCache *)contactCache getFaceTimeIDSStatusForHandle:handle2 contactType:2];

    v6 = v10 < 2;
    v5 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      handle3 = [recipientCopy handle];
      v13 = 138412802;
      v14 = handle3;
      v15 = 1024;
      v16 = v10 < 2;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Recipient %@ is considered reachable and eligible for zkw suggestions %d with IDS status %ld", &v13, 0x1Cu);
    }
  }

  return v6;
}

- (id)filterIDSReachable:(BOOL)reachable
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60___PSFTZKWSuggestionsTransformerFactory_filterIDSReachable___block_invoke;
  v5[3] = &unk_1E7C261A8;
  reachableCopy = reachable;
  v5[4] = self;
  v3 = MEMORY[0x1B8C8C060](v5, a2);

  return v3;
}

+ (id)getCraftedIdentfierForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  recipients = [suggestionCopy recipients];
  v5 = [recipients count];

  if (v5)
  {
    recipients2 = [suggestionCopy recipients];
    v7 = [recipients2 _pas_mappedArrayWithTransform:&__block_literal_global_35];

    v8 = [v7 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v9 = [v8 componentsJoinedByString:@"|"];
  }

  else
  {
    v9 = &stru_1F2D6CE98;
  }

  return v9;
}

- (id)deduplicateWithSeedRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___PSFTZKWSuggestionsTransformerFactory_deduplicateWithSeedRecipients___block_invoke;
  v7[3] = &unk_1E7C261F0;
  v8 = recipientsCopy;
  v4 = recipientsCopy;
  v5 = MEMORY[0x1B8C8C060](v7);

  return v5;
}

- (id)deduplicateWithMaxSuggestions:(unint64_t)suggestions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71___PSFTZKWSuggestionsTransformerFactory_deduplicateWithMaxSuggestions___block_invoke;
  v5[3] = &__block_descriptor_40_e26___NSArray_16__0__NSArray_8l;
  v5[4] = suggestions;
  v3 = MEMORY[0x1B8C8C060](v5, a2);

  return v3;
}

- (id)mapRecipientsToContactsWithUnmapped:(BOOL)unmapped
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke;
  v5[3] = &unk_1E7C261A8;
  v5[4] = self;
  unmappedCopy = unmapped;
  v3 = MEMORY[0x1B8C8C060](v5, a2);

  return v3;
}

- (id)annotateWithTrialExperimentIdentifiers:(id)identifiers rolloutIdentifiers:(id)rolloutIdentifiers
{
  identifiersCopy = identifiers;
  rolloutIdentifiersCopy = rolloutIdentifiers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99___PSFTZKWSuggestionsTransformerFactory_annotateWithTrialExperimentIdentifiers_rolloutIdentifiers___block_invoke;
  v11[3] = &unk_1E7C26180;
  v12 = identifiersCopy;
  v13 = rolloutIdentifiersCopy;
  v7 = rolloutIdentifiersCopy;
  v8 = identifiersCopy;
  v9 = MEMORY[0x1B8C8C060](v11);

  return v9;
}

- (id)boostPriorityContacts:(id)contacts
{
  contactsCopy = contacts;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___PSFTZKWSuggestionsTransformerFactory_boostPriorityContacts___block_invoke;
  v7[3] = &unk_1E7C261F0;
  v8 = contactsCopy;
  v4 = contactsCopy;
  v5 = MEMORY[0x1B8C8C060](v7);

  return v5;
}

+ (id)getResultsFromTransformers:(id)transformers suggestions:(id)suggestions
{
  transformersCopy = transformers;
  suggestionsCopy = suggestions;
  if ([transformersCopy count] && objc_msgSend(suggestionsCopy, "count"))
  {
    if (getResultsFromTransformers_suggestions___pasOnceToken20 != -1)
    {
      +[_PSFTZKWSuggestionsTransformerFactory getResultsFromTransformers:suggestions:];
    }

    v7 = getResultsFromTransformers_suggestions___pasExprOnceResult;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__11;
    v18 = __Block_byref_object_dispose__11;
    v19 = suggestionsCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80___PSFTZKWSuggestionsTransformerFactory_getResultsFromTransformers_suggestions___block_invoke_71;
    v11[3] = &unk_1E7C262F0;
    v12 = transformersCopy;
    v13 = &v14;
    v8 = suggestionsCopy;
    v9 = v7;
    dispatch_sync(v9, v11);
    suggestionsCopy = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return suggestionsCopy;
}

- (void)formatWithSuggestion:(uint64_t)a1 bundleIdsForGroupMatching:(NSObject *)a2 checkForMessagesGroupIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Group suggestion %@ has recipient without any identifier. Proceeding to filter out entire suggestion", &v2, 0xCu);
}

@end