@interface _PSPhotoUtils
+ (id)assetsWithIdentifiers:(id)identifiers;
+ (id)attachmentsEligibleForPhotoProcessingFromAttachments:(id)attachments;
+ (id)candidateContactsIdentifiersFromPhotoSuggestedPeople:(id)people;
+ (id)candidateLocalIdentifiersFromPhotoSuggestedPeople:(id)people;
+ (id)personIdentifiersForPeopleInPicturesWithIdentifiers:(id)identifiers;
+ (id)sceneAnalysisFromAssets:(id)assets;
+ (id)sceneTagsForPhotosWithIdentifiers:(id)identifiers;
+ (id)sharedMADService;
+ (void)prewarmPhotosFrameworks;
@end

@implementation _PSPhotoUtils

+ (id)sharedMADService
{
  if (sharedMADService__pasOnceToken15 != -1)
  {
    +[_PSPhotoUtils sharedMADService];
  }

  v3 = sharedMADService__pasExprOnceResult;

  return v3;
}

+ (void)prewarmPhotosFrameworks
{
  if (prewarmPhotosFrameworks_prewarmOnce != -1)
  {
    +[_PSPhotoUtils prewarmPhotosFrameworks];
  }
}

+ (id)attachmentsEligibleForPhotoProcessingFromAttachments:(id)attachments
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [attachments _pas_filteredArrayWithTest:&__block_literal_global_215];
  if ([v3 count])
  {
    firstObject = [v3 firstObject];
    v8[0] = firstObject;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    firstObject = +[_PSLogging generalChannel];
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B5ED1000, firstObject, OS_LOG_TYPE_INFO, "No photo attachments in the prediction context for media analysis and scene processing", v7, 2u);
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (id)assetsWithIdentifiers:(id)identifiers
{
  v26[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v4 = getPHFetchOptionsClass_softClass;
  v25 = getPHFetchOptionsClass_softClass;
  if (!getPHFetchOptionsClass_softClass)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getPHFetchOptionsClass_block_invoke;
    v20 = &unk_1E7C23BF0;
    v21 = &v22;
    PhotosLibraryCore(0);
    v23[3] = objc_getClass("PHFetchOptions");
    getPHFetchOptionsClass_softClass = *(v21[1] + 24);
    v4 = v23[3];
  }

  v5 = v4;
  _Block_object_dispose(&v22, 8);
  fetchOptionsWithInclusiveDefaults = [v4 fetchOptionsWithInclusiveDefaults];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v7 = getPHAssetPropertySetSceneAnalysisSymbolLoc_ptr;
  v25 = getPHAssetPropertySetSceneAnalysisSymbolLoc_ptr;
  if (!getPHAssetPropertySetSceneAnalysisSymbolLoc_ptr)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getPHAssetPropertySetSceneAnalysisSymbolLoc_block_invoke;
    v20 = &unk_1E7C23BF0;
    v21 = &v22;
    __getPHAssetPropertySetSceneAnalysisSymbolLoc_block_invoke(&v17);
    v7 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v7)
  {
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v26[0] = *v7;
  v8 = MEMORY[0x1E695DEC8];
  v9 = v26[0];
  v10 = [v8 arrayWithObjects:v26 count:1];

  [fetchOptionsWithInclusiveDefaults setFetchPropertySets:v10];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v11 = getPHAssetClass_softClass;
  v25 = getPHAssetClass_softClass;
  if (!getPHAssetClass_softClass)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getPHAssetClass_block_invoke;
    v20 = &unk_1E7C23BF0;
    v21 = &v22;
    PhotosLibraryCore(0);
    Class = objc_getClass("PHAsset");
    *(v21[1] + 24) = Class;
    getPHAssetClass_softClass = *(v21[1] + 24);
    v11 = v23[3];
  }

  v13 = v11;
  _Block_object_dispose(&v22, 8);
  v14 = [v11 fetchAssetsWithLocalIdentifiers:identifiersCopy options:fetchOptionsWithInclusiveDefaults];
  fetchedObjects = [v14 fetchedObjects];

  return fetchedObjects;
}

+ (id)sceneAnalysisFromAssets:(id)assets
{
  v48 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = MEMORY[0x1E695DEC8];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:@"blacklistedScenes" withExtension:@"plist"];
  v45 = 0;
  v7 = [v4 arrayWithContentsOfURL:v6 error:&v45];
  v8 = v45;

  if (v8)
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_PSPhotoUtils *)v8 sceneAnalysisFromAssets:v9];
    }

    allObjects = MEMORY[0x1E695E0F0];
  }

  else
  {
    v36 = [MEMORY[0x1E695DFA8] set];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = assetsCopy;
    obj = assetsCopy;
    v34 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v34)
    {
      v33 = *v42;
      do
      {
        v11 = 0;
        do
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v11;
          sceneClassifications = [*(*(&v41 + 1) + 8 * v11) sceneClassifications];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v13 = [sceneClassifications countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v38;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(sceneClassifications);
                }

                v17 = *(*(&v37 + 1) + 8 * i);
                [v17 confidence];
                v19 = v18;
                sceneIdentifier = [v17 sceneIdentifier];
                sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
                v22 = [sharedTaxonomy nodeForSceneClassId:sceneIdentifier];

                if (v22)
                {
                  name = [v22 name];
                  v24 = [v7 containsObject:name];

                  if ((v24 & 1) == 0)
                  {
                    [v22 highRecallThreshold];
                    if (v19 >= v25)
                    {
                      [v22 highPrecisionThreshold];
                      v27 = v26;
                      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:sceneIdentifier];
                      stringValue = [v28 stringValue];

                      if (stringValue && v19 >= v27)
                      {
                        [v36 addObject:stringValue];
                      }
                    }
                  }
                }
              }

              v14 = [sceneClassifications countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v14);
          }

          v11 = v35 + 1;
        }

        while (v35 + 1 != v34);
        v34 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v34);
    }

    v9 = v36;
    allObjects = [v36 allObjects];
    v8 = 0;
    assetsCopy = v31;
  }

  return allObjects;
}

+ (id)candidateContactsIdentifiersFromPhotoSuggestedPeople:(id)people
{
  v19 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  array = [MEMORY[0x1E695DF70] array];
  if ([peopleCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = peopleCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{@"contactIdentifier", v14}];

          if (v11)
          {
            v12 = [v10 objectForKeyedSubscript:@"contactIdentifier"];
            [array addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return array;
}

+ (id)candidateLocalIdentifiersFromPhotoSuggestedPeople:(id)people
{
  v19 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  array = [MEMORY[0x1E695DF70] array];
  if ([peopleCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = peopleCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{@"localIdentifier", v14}];

          if (v11)
          {
            v12 = [v10 objectForKeyedSubscript:@"localIdentifier"];
            [array addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return array;
}

+ (id)sceneTagsForPhotosWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (identifiersCopy && [identifiersCopy count])
  {
    v6 = [self assetsWithIdentifiers:v5];
    v7 = [self sceneAnalysisFromAssets:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

+ (id)personIdentifiersForPeopleInPicturesWithIdentifiers:(id)identifiers
{
  v62 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2050000000;
  v4 = getMADPersonIdentificationRequestClass_softClass;
  v54 = getMADPersonIdentificationRequestClass_softClass;
  if (!getMADPersonIdentificationRequestClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMADPersonIdentificationRequestClass_block_invoke;
    v60 = &unk_1E7C23BF0;
    v61 = &v51;
    MediaAnalysisServicesLibraryCore();
    Class = objc_getClass("MADPersonIdentificationRequest");
    *(v61[1] + 24) = Class;
    getMADPersonIdentificationRequestClass_softClass = *(v61[1] + 24);
    v4 = v52[3];
  }

  v6 = v4;
  _Block_object_dispose(&v51, 8);
  v36 = objc_alloc_init(v4);
  [v36 setMaximumFaceCount:4];
  [v36 setAllowOnDemand:1];
  [v36 setAllowUnverifiedIdentity:1];
  [v36 setUseLowResolutionPicture:1];
  [v36 setIncludePets:1];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = identifiersCopy;
  v33 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v33)
  {
    v35 = 0;
    v31 = *v48;
    *&v8 = 138412546;
    v29 = v8;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v48 != v31)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v34 = v9;
        v11 = *(*(&v47 + 1) + 8 * v9);
        sharedMADService = [self sharedMADService];
        v57 = v36;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        systemPhotoLibraryURL = [getPHPhotoLibraryClass() systemPhotoLibraryURL];
        v46 = v35;
        v15 = [sharedMADService performRequests:v13 assetLocalIdentifier:v11 photoLibraryURL:systemPhotoLibraryURL error:&v46];
        v16 = v46;

        v35 = v16;
        if (v15)
        {
          results = [v36 results];
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v17 = [results countByEnumeratingWithState:&v42 objects:v56 count:16];
          if (v17)
          {
            v18 = *v43;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v43 != v18)
                {
                  objc_enumerationMutation(results);
                }

                v20 = *(*(&v42 + 1) + 8 * i);
                v38 = 0u;
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                resultItems = [v20 resultItems];
                v22 = [resultItems countByEnumeratingWithState:&v38 objects:v55 count:16];
                if (v22)
                {
                  v23 = *v39;
                  do
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v39 != v23)
                      {
                        objc_enumerationMutation(resultItems);
                      }

                      personIdentifier = [*(*(&v38 + 1) + 8 * j) personIdentifier];
                      if (personIdentifier)
                      {
                        [v7 addObject:personIdentifier];
                      }
                    }

                    v22 = [resultItems countByEnumeratingWithState:&v38 objects:v55 count:16];
                  }

                  while (v22);
                }
              }

              v17 = [results countByEnumeratingWithState:&v42 objects:v56 count:16];
            }

            while (v17);
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_30;
          }

          results = +[_PSLogging mediaAnalysisChannel];
          if (os_log_type_enabled(results, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v16 localizedDescription];
            *buf = v29;
            *&buf[4] = v11;
            *&buf[12] = 2112;
            *&buf[14] = localizedDescription;
            _os_log_error_impl(&dword_1B5ED1000, results, OS_LOG_TYPE_ERROR, "PhotoId: %@, person identification error: %@", buf, 0x16u);
          }
        }

LABEL_30:
        v9 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
      if (!v33)
      {

        break;
      }
    }
  }

  allObjects = [v7 allObjects];

  return allObjects;
}

+ (void)sceneAnalysisFromAssets:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error loading scene backlist = %@", &v2, 0xCu);
}

@end