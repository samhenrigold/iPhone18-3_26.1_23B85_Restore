@interface _PSFamilyPhotoSuggestions
+ (id)fetchVerifiedPersonsForFamilyPhotoSuggestionsModel;
+ (id)photosContactsKnowledgeSuggestions;
+ (id)photosRelationshipKnowledgeSuggestions;
+ (void)photosContactsKnowledgeSuggestions;
+ (void)photosRelationshipKnowledgeSuggestions;
@end

@implementation _PSFamilyPhotoSuggestions

+ (id)photosContactsKnowledgeSuggestions
{
  v45 = *MEMORY[0x1E69E9840];
  fetchVerifiedPersonsForFamilyPhotoSuggestionsModel = [objc_opt_class() fetchVerifiedPersonsForFamilyPhotoSuggestionsModel];
  v2 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[(_PSFamilyPhotoSuggestions *)v2];
  }

  v3 = objc_opt_new();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v4 = getGDViewServiceClass_softClass_0;
  v38 = getGDViewServiceClass_softClass_0;
  if (!getGDViewServiceClass_softClass_0)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getGDViewServiceClass_block_invoke_0;
    v43 = &unk_1E7C23BF0;
    v44 = &v35;
    __getGDViewServiceClass_block_invoke_0(&v40);
    v4 = v36[3];
  }

  v5 = v4;
  _Block_object_dispose(&v35, 8);
  clientService = [v4 clientService];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v7 = getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr;
  v38 = getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr;
  if (!getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_block_invoke;
    v43 = &unk_1E7C23BF0;
    v44 = &v35;
    v8 = IntelligencePlatformLibrary();
    v9 = dlsym(v8, "GDAutonamingViewPhotosAutonamingViewName");
    *(v44[1] + 24) = v9;
    getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr = *(v44[1] + 24);
    v7 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v7)
  {
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v10 = *v7;
  v34 = 0;
  v11 = v10;
  v12 = [clientService autonamingViewWithViewName:v11 error:&v34];
  v28 = v34;

  if (v12)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = fetchVerifiedPersonsForFamilyPhotoSuggestionsModel;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v14)
    {
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          localIdentifier = [v17 localIdentifier];
          v19 = [v12 personForIdentifier:localIdentifier];

          if (!v19 || ([v19 contactIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
          {
            contactIdentifier = +[_PSLogging familyRecommenderChannel];
            if (os_log_type_enabled(contactIdentifier, OS_LOG_TYPE_DEBUG))
            {
              [(_PSFamilyPhotoSuggestions *)&v40 photosContactsKnowledgeSuggestions:v17];
            }
          }

          else
          {
            contactIdentifier = [v19 contactIdentifier];
            [v3 addObject:contactIdentifier];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }

    v23 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      +[(_PSFamilyPhotoSuggestions *)v3];
    }

    v24 = v3;
  }

  else
  {
    if (v28)
    {
      v25 = +[_PSLogging familyRecommenderChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[_PSFamilyPhotoSuggestions photosContactsKnowledgeSuggestions];
      }
    }

    v24 = objc_opt_new();
  }

  v26 = v24;

  return v26;
}

+ (id)photosRelationshipKnowledgeSuggestions
{
  v26 = *MEMORY[0x1E69E9840];
  fetchVerifiedPersonsForFamilyPhotoSuggestionsModel = [objc_opt_class() fetchVerifiedPersonsForFamilyPhotoSuggestionsModel];
  v4 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[(_PSFamilyPhotoSuggestions *)v4];
  }

  v5 = [getPHPersonClass() batchFetchRelationshipInferencesForPersons:fetchVerifiedPersonsForFamilyPhotoSuggestionsModel];
  v6 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67___PSFamilyPhotoSuggestions_photosRelationshipKnowledgeSuggestions__block_invoke;
  v22[3] = &unk_1E7C26A88;
  selfCopy = self;
  v7 = v6;
  v23 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v22];
  v8 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[(_PSFamilyPhotoSuggestions *)v7];
  }

  v9 = objc_opt_new();
  v10 = [getPHPersonClass() fetchPersonsWithLocalIdentifiers:v7 options:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        personUri = [*(*(&v18 + 1) + 8 * i) personUri];
        if (personUri)
        {
          [v9 addObject:personUri];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v12);
  }

  v16 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[(_PSFamilyPhotoSuggestions *)v9];
  }

  return v9;
}

+ (id)fetchVerifiedPersonsForFamilyPhotoSuggestionsModel
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getPHPhotoLibraryClass_softClass_0;
  v13 = getPHPhotoLibraryClass_softClass_0;
  if (!getPHPhotoLibraryClass_softClass_0)
  {
    PhotosLibraryCore_0();
    v11[3] = objc_getClass("PHPhotoLibrary");
    getPHPhotoLibraryClass_softClass_0 = v11[3];
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  sharedPhotoLibrary = [v2 sharedPhotoLibrary];
  v5 = sharedPhotoLibrary;
  if (sharedPhotoLibrary)
  {
    librarySpecificFetchOptions = [sharedPhotoLibrary librarySpecificFetchOptions];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@ OR verifiedType = %@", &unk_1F2D8BC70, &unk_1F2D8BC88];
    [librarySpecificFetchOptions setPredicate:v7];

    [librarySpecificFetchOptions setShouldPrefetchCount:1];
    [librarySpecificFetchOptions setFetchLimit:100];
    v8 = [getPHPersonClass() fetchPersonsWithOptions:librarySpecificFetchOptions];
  }

  else
  {
    librarySpecificFetchOptions = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_FAULT))
    {
      +[(_PSFamilyPhotoSuggestions *)librarySpecificFetchOptions];
    }

    v8 = 0;
  }

  return v8;
}

+ (void)photosContactsKnowledgeSuggestions
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_ERROR, "Failed to connect, Error %@", v1, 0xCu);
}

+ (void)photosRelationshipKnowledgeSuggestions
{
  [self count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_8(&dword_1B5ED1000, v1, v2, "photosRelationshipKnowledgeSuggestions: Resolved %lu contact ids", v3, v4, v5, v6);
}

@end