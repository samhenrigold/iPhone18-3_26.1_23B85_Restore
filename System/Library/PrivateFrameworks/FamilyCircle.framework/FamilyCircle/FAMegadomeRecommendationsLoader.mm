@interface FAMegadomeRecommendationsLoader
+ (id)normalizedPhoneNumbersForPhoneNumbers:(id)numbers;
+ (id)taggingOptions;
- (id)familyHandles;
- (id)megadomePeopleFromScoredEntities:(id)entities inVisualIdentifierView:(id)view;
- (id)megadomeResultsForFamilyTagWithError:(id *)error;
- (id)peopleViewWithError:(id *)error;
@end

@implementation FAMegadomeRecommendationsLoader

+ (id)taggingOptions
{
  v16[18] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:0.7];
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:0.82];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getGDPersonTaggingOptionsClass_softClass;
  v14 = getGDPersonTaggingOptionsClass_softClass;
  if (!getGDPersonTaggingOptionsClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getGDPersonTaggingOptionsClass_block_invoke;
    v10[3] = &unk_1E7CA4F30;
    v10[4] = &v11;
    __getGDPersonTaggingOptionsClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 alloc];
  v15[0] = @"family";
  v15[1] = @"parent";
  v16[0] = v2;
  v16[1] = v2;
  v15[2] = @"father";
  v15[3] = @"mother";
  v16[2] = v2;
  v16[3] = v2;
  v15[4] = @"child";
  v15[5] = @"daughter";
  v16[4] = v2;
  v16[5] = v2;
  v15[6] = @"son";
  v15[7] = @"sibling";
  v16[6] = v2;
  v16[7] = v2;
  v15[8] = @"brother";
  v15[9] = @"sister";
  v16[8] = v2;
  v16[9] = v2;
  v15[10] = @"partner";
  v15[11] = @"husband";
  v16[10] = v3;
  v16[11] = v2;
  v15[12] = @"wife";
  v15[13] = @"friend";
  v16[12] = v2;
  v16[13] = v2;
  v15[14] = @"coworker";
  v15[15] = @"alumni";
  v16[14] = v2;
  v16[15] = v2;
  v15[16] = @"myself";
  v15[17] = @"familyAndFriends";
  v16[16] = v2;
  v16[17] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:18];
  v8 = [v6 initWithTagThresholds:v7];

  return v8;
}

- (id)peopleViewWithError:(id *)error
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__FAMegadomeRecommendationsLoader_peopleViewWithError___block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  aBlock[4] = error;
  v3 = _Block_copy(aBlock);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v4 = getGDViewServiceClass_softClass;
  v19 = getGDViewServiceClass_softClass;
  if (!getGDViewServiceClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getGDViewServiceClass_block_invoke;
    v15[3] = &unk_1E7CA4F30;
    v15[4] = &v16;
    __getGDViewServiceClass_block_invoke(v15);
    v4 = v17[3];
  }

  v5 = v4;
  _Block_object_dispose(&v16, 8);
  clientService = [v4 clientService];
  v13 = 0;
  v7 = [clientService visualIdentifierViewWithError:&v13];
  v8 = v13;

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v11 = _FALogSystem(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FAMegadomeRecommendationsLoader peopleViewWithError:];
    }

    v3[2](v3, v8);
  }

  return v7;
}

void **__55__FAMegadomeRecommendationsLoader_peopleViewWithError___block_invoke(void **result, id a2)
{
  if (result[4])
  {
    v3 = result;
    result = a2;
    *v3[4] = a2;
  }

  return result;
}

- (id)megadomeResultsForFamilyTagWithError:(id *)error
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__FAMegadomeRecommendationsLoader_megadomeResultsForFamilyTagWithError___block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  aBlock[4] = error;
  v3 = _Block_copy(aBlock);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v4 = getGDConfigurationClass_softClass;
  v31 = getGDConfigurationClass_softClass;
  if (!getGDConfigurationClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getGDConfigurationClass_block_invoke;
    v26 = &unk_1E7CA4F30;
    v27 = &v28;
    __getGDConfigurationClass_block_invoke(&v23);
    v4 = v29[3];
  }

  v5 = v4;
  _Block_object_dispose(&v28, 8);
  v6 = objc_alloc_init(v4);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v7 = getGDEntityTaggingServiceClass_softClass;
  v31 = getGDEntityTaggingServiceClass_softClass;
  if (!getGDEntityTaggingServiceClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getGDEntityTaggingServiceClass_block_invoke;
    v26 = &unk_1E7CA4F30;
    v27 = &v28;
    __getGDEntityTaggingServiceClass_block_invoke(&v23);
    v7 = v29[3];
  }

  v8 = v7;
  _Block_object_dispose(&v28, 8);
  v21 = 0;
  v9 = [[v7 alloc] initWithConfig:v6 error:&v21];
  v10 = v21;
  v11 = v10;
  if (v9)
  {
    v12 = +[FAMegadomeRecommendationsLoader taggingOptions];
    v20 = 0;
    v13 = [v9 entitiesForTag:4 options:v12 error:&v20];
    v14 = v20;
    v15 = v14;
    if (v13)
    {
      v3[2](v3, 0);
      v16 = v13;
    }

    else
    {
      v18 = _FALogSystem(v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [FAMegadomeRecommendationsLoader megadomeResultsForFamilyTagWithError:];
      }

      (v3)[2](v3, v15);
    }
  }

  else
  {
    v17 = _FALogSystem(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FAMegadomeRecommendationsLoader megadomeResultsForFamilyTagWithError:];
    }

    (v3)[2](v3, v11);
    v13 = 0;
  }

  return v13;
}

void **__72__FAMegadomeRecommendationsLoader_megadomeResultsForFamilyTagWithError___block_invoke(void **result, id a2)
{
  if (result[4])
  {
    v3 = result;
    result = a2;
    *v3[4] = a2;
  }

  return result;
}

- (id)megadomePeopleFromScoredEntities:(id)entities inVisualIdentifierView:(id)view
{
  v25 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  viewCopy = view;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = entitiesCopy;
  v8 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(obj);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(*(*(&v18 + 1) + 8 * i), "idValue")];
        v13 = [viewCopy personForIdentifier:v12];
        if (v13)
        {
          v14 = [[FAMegadomePerson alloc] initWithVisualIdentifierViewPerson:v13];
          [v7 addObject:v14];
        }

        else
        {
          v14 = _FALogSystem(0);
          if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v12;
            _os_log_impl(&dword_1B70B0000, &v14->super, OS_LOG_TYPE_DEFAULT, "Did not find megadome person with identifier %@. Skipping recommendation.", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [v7 copy];

  return v15;
}

- (id)familyHandles
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v21 = objc_alloc_init(FAFetchFamilyCircleRequest);
  v2 = [(FAFetchFamilyCircleRequest *)v21 fetchFamilyCircleWithError:&v26];
  v3 = v26;
  v4 = v3;
  if (v3)
  {
    v5 = _FALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FAMegadomeRecommendationsLoader familyHandles];
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  members = [v2 members];
  v8 = [members countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(members);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        appleID = [v12 appleID];

        if (appleID)
        {
          appleID2 = [v12 appleID];
          [v6 addObject:appleID2];
        }

        memberPhoneNumbers = [v12 memberPhoneNumbers];

        if (memberPhoneNumbers)
        {
          memberPhoneNumbers2 = [v12 memberPhoneNumbers];
          v17 = [memberPhoneNumbers2 componentsSeparatedByString:{@", "}];

          v18 = [FAMegadomeRecommendationsLoader normalizedPhoneNumbersForPhoneNumbers:v17];
          [v6 addObjectsFromArray:v18];
        }
      }

      v9 = [members countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v19 = [v6 copy];

  return v19;
}

+ (id)normalizedPhoneNumbersForPhoneNumbers:(id)numbers
{
  v25 = *MEMORY[0x1E69E9840];
  numbersCopy = numbers;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = numbersCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:{v11, v17, v18}];
        formattedStringValue = [v12 formattedStringValue];
        if (formattedStringValue)
        {
          [v4 addObject:formattedStringValue];
        }

        else
        {
          v14 = _FALogSystem(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v23 = v11;
            _os_log_error_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_ERROR, "Could not normalize phone number %@.", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [v4 copy];

  return v15;
}

@end