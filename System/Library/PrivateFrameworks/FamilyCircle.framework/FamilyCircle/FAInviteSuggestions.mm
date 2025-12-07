@interface FAInviteSuggestions
- (FAInviteSuggestions)init;
- (FAInviteSuggestions)initWithSuggesters:(id)suggesters;
- (id)fetchFamilyMemberSuggestions:(int64_t *)suggestions useSuggester:(id)suggester;
- (id)initForOneTapInvite;
- (id)recommendedSuggester:(id)suggester;
- (int64_t)fetchSuggestedInviteTransportForContactId:(id)id contactHandles:(id)handles;
@end

@implementation FAInviteSuggestions

- (FAInviteSuggestions)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(FAFamilyPeopleSuggesterSuggester);
  [v3 addObject:v4];
  v5 = [v3 copy];
  v6 = [(FAInviteSuggestions *)self initWithSuggesters:v5];

  return v6;
}

- (id)initForOneTapInvite
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(FAFamilyMegadomeSuggester);
  [v3 addObject:v4];
  v5 = objc_alloc_init(FAFamilyPeopleSuggesterSuggester);
  [v3 addObject:v5];
  v6 = [v3 copy];
  v7 = [(FAInviteSuggestions *)self initWithSuggesters:v6];

  return v7;
}

- (FAInviteSuggestions)initWithSuggesters:(id)suggesters
{
  suggestersCopy = suggesters;
  v9.receiver = self;
  v9.super_class = FAInviteSuggestions;
  v6 = [(FAInviteSuggestions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggesters, suggesters);
  }

  return v7;
}

- (id)recommendedSuggester:(id)suggester
{
  v27 = *MEMORY[0x1E69E9840];
  suggesterCopy = suggester;
  v5 = suggesterCopy;
  if (suggesterCopy)
  {
    v6 = _FALogSystem(suggesterCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to use recommended suggester: %@", buf, 0xCu);
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    lowercaseString = [v8 lowercaseString];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_suggesters;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if ([lowercaseString isEqual:{@"megadome", v20}] && objc_msgSend(v15, "proactiveModel") == 3)
          {
            v17 = _FALogSystem(3);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v18 = "Recommended suggester matches megadome";
              goto LABEL_21;
            }

LABEL_22:

            v16 = v15;
            goto LABEL_23;
          }

          if ([lowercaseString isEqual:@"proactive"] && objc_msgSend(v15, "proactiveModel") == 2)
          {
            v17 = _FALogSystem(2);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v18 = "Recommended suggester matches proactive";
LABEL_21:
              _os_log_impl(&dword_1B70B0000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
            }

            goto LABEL_22;
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_23:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)fetchFamilyMemberSuggestions:(int64_t *)suggestions useSuggester:(id)suggester
{
  v56 = *MEMORY[0x1E69E9840];
  suggesterCopy = suggester;
  v7 = _FALogSystem(suggesterCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Trying to get family recommendations", buf, 2u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(FAInviteSuggestions *)self recommendedSuggester:suggesterCopy];
  suggesters = [(FAInviteSuggestions *)self suggesters];
  v11 = suggesters;
  if (v9)
  {
    v12 = [suggesters mutableCopy];

    [v12 insertObject:v9 atIndex:0];
    v11 = [v12 copy];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    selfCopy = self;
    v39 = v9;
    v40 = v8;
    suggestionsCopy = suggestions;
    v42 = suggesterCopy;
    v16 = *v46;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_21:
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = _FALogSystem(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v50 = v26;
            _os_log_impl(&dword_1B70B0000, v27, OS_LOG_TYPE_DEFAULT, "Attempting to get Family suggestions from suggester %@", buf, 0xCu);
          }

          v43 = 0;
          v44 = 0;
          v28 = [v18 getFamilyRecommendationsWithContext:&v44 error:&v43];
          v29 = v44;
          v30 = v43;
          v31 = _FALogSystem(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v50 = v26;
            v51 = 2112;
            v52 = v30;
            v53 = 2112;
            v54 = v28;
            _os_log_impl(&dword_1B70B0000, v31, OS_LOG_TYPE_DEFAULT, "Finished getting family suggestions for suggester class %@. error: %@, recommendations: %@", buf, 0x20u);
          }

          if (v30)
          {
            v33 = _FALogSystem(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [v28 count];
              *buf = 138412802;
              v50 = v26;
              v51 = 2048;
              v52 = v34;
              v53 = 2112;
              v54 = v30;
              _os_log_impl(&dword_1B70B0000, v33, OS_LOG_TYPE_DEFAULT, "Suggester class %@ returned %lu suggestions and encountered an error: %@", buf, 0x20u);
            }
          }

          [(FAInviteSuggestions *)selfCopy setFeedbackContext:v29];
          proactiveModel = [v18 proactiveModel];
          v8 = v40;
          v35 = _FALogSystem([v40 addObjectsFromArray:v28]);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v50 = v26;
            v51 = 2112;
            v52 = v28;
            _os_log_impl(&dword_1B70B0000, v35, OS_LOG_TYPE_DEFAULT, "Using family suggestions for suggester class %@: recommendations: %@", buf, 0x16u);
          }

          suggestions = suggestionsCopy;
          suggesterCopy = v42;
          v9 = v39;
          goto LABEL_32;
        }

        v19 = +[FAFamilyFeatureFlag megadomeAdoption];
        if ([v19 isEnabled])
        {
          v20 = +[FAServerBagFlag megadomeKillSwitch];
          v21 = [v20 isEnabledWithForceRefresh:1];

          if (!v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        v23 = _FALogSystem(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B70B0000, v23, OS_LOG_TYPE_DEFAULT, "Megadome is not enabled. Falling back to the next priorty suggestions model.", buf, 2u);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    suggestions = suggestionsCopy;
    suggesterCopy = v42;
    v9 = v39;
    v8 = v40;
  }

  proactiveModel = 1;
LABEL_32:

  if (suggestions)
  {
    *suggestions = proactiveModel;
  }

  v36 = [v8 copy];

  return v36;
}

- (int64_t)fetchSuggestedInviteTransportForContactId:(id)id contactHandles:(id)handles
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69978D8];
  handlesCopy = handles;
  idCopy = id;
  interactionAdvisor = [v5 interactionAdvisor];
  interactionAdvisorSettingsDefault = [MEMORY[0x1E69978E0] interactionAdvisorSettingsDefault];
  [interactionAdvisorSettingsDefault setResultLimit:5];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:idCopy];

  [interactionAdvisorSettingsDefault setConstrainPersonIds:v10];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:handlesCopy];

  [interactionAdvisorSettingsDefault setConstrainIdentifiers:v11];
  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2F3BA30, &unk_1F2F3BA48, &unk_1F2F3BA60, &unk_1F2F3BA78, 0}];
  [interactionAdvisorSettingsDefault setConstrainMechanisms:v12];

  v13 = [interactionAdvisor adviseInteractionsUsingSettings:interactionAdvisorSettingsDefault];
  firstObject = [v13 firstObject];
  bundleId = [firstObject bundleId];
  v16 = _FALogSystem(bundleId);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = bundleId;
    _os_log_impl(&dword_1B70B0000, v16, OS_LOG_TYPE_DEFAULT, "Suggested transport type for contact is %@", buf, 0xCu);
  }

  if ([bundleId isEqualToString:@"com.apple.MobileSMS"])
  {
    v17 = 1;
  }

  else if ([bundleId isEqualToString:@"com.apple.mobilemail"])
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  return v17;
}

@end