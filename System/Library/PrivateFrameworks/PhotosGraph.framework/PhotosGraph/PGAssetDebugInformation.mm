@interface PGAssetDebugInformation
+ (id)_personDescriptionStringsInAsset:(id)asset;
+ (id)_sceneprintDistanceStringFromAsset:(id)asset toAsset:(id)toAsset;
+ (id)debugInformationForAsset:(id)asset curationContext:(id)context;
@end

@implementation PGAssetDebugInformation

+ (id)_personDescriptionStringsInAsset:(id)asset
{
  v76[2] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"verifiedType" ascending:0];
  v76[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v76[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v8];

  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_284486108];
  [librarySpecificFetchOptions setPersonContext:5];
  v61 = librarySpecificFetchOptions;
  v9 = [MEMORY[0x277CD9938] fetchPersonsInAsset:assetCopy options:librarySpecificFetchOptions];
  if ([v9 count])
  {
    v59 = photoLibrary;
    librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_284486120];
    [librarySpecificFetchOptions2 setIncludeTorsoAndFaceDetectionData:1];
    v60 = assetCopy;
    v57 = librarySpecificFetchOptions2;
    v11 = [MEMORY[0x277CD9868] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions2];
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v71;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v71 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v70 + 1) + 8 * i);
          personLocalIdentifier = [v18 personLocalIdentifier];
          if (personLocalIdentifier)
          {
            [v12 setObject:v18 forKeyedSubscript:personLocalIdentifier];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v15);
    }

    v56 = v13;

    v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v58 = v9;
    obj = v9;
    v65 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v65)
    {
      v63 = *v67;
      v20 = 0x277CCA000uLL;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v67 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v66 + 1) + 8 * j);
          name = [v22 name];
          if (![name length])
          {
            uuid = [v22 uuid];
            v25 = *(v20 + 3240);
            v26 = [uuid substringToIndex:19];
            v27 = [uuid substringFromIndex:19];
            v28 = [v25 stringWithFormat:@"%@\n%@", v26, v27];

            v20 = 0x277CCA000;
            name = v28;
          }

          verifiedType = [v22 verifiedType];
          v30 = @"Unvrfd";
          if (verifiedType == 2)
          {
            v30 = @"Graph";
          }

          if (verifiedType == 1)
          {
            v30 = @"User";
          }

          v31 = v30;
          v32 = objc_alloc_init(MEMORY[0x277CCAB68]);
          detectionType = [v22 detectionType];
          v34 = @"🐶 ";
          if (detectionType == 3 || (v35 = [v22 detectionType], v34 = @"🐱 ", v35 == 4))
          {
            [v32 appendString:v34];
          }

          [v32 appendFormat:@"%@ (%@):\n", name, v31];
          [v22 mergeCandidateConfidence];
          if (v36 > 0.0)
          {
            v37 = v36;
            v38 = [MEMORY[0x277CD9938] fetchMergeCandidateWithConfidencePersonsForPerson:v22 options:v61];
            firstObject = [v38 firstObject];

            name2 = [firstObject name];
            if (![name2 length])
            {
              uuid2 = [firstObject uuid];
              v42 = [uuid2 substringToIndex:8];

              name2 = v42;
            }

            [v32 appendFormat:@"\t-> %@ (%.2f)\n", name2, *&v37];

            v20 = 0x277CCA000uLL;
          }

          localIdentifier = [v22 localIdentifier];
          v44 = [v12 objectForKeyedSubscript:localIdentifier];

          if (v44)
          {
            v45 = @"🙈";
            if ([v44 eyesState] == 2)
            {
              faceExpressionType = [v44 faceExpressionType];
              v45 = @"⁉️";
              if (faceExpressionType <= 6)
              {
                v45 = off_278884FA0[faceExpressionType];
              }
            }

            v47 = *(v20 + 3240);
            [v44 size];
            v49 = v48;
            [v44 quality];
            if (v50 >= 0.0)
            {
              v52 = *(v20 + 3240);
              [v44 quality];
              v54 = [v52 stringWithFormat:@"%.3f", v53];
              v51 = [v47 stringWithFormat:@"s=%.2f, e=%@, q=%@", v49, v45, v54];
            }

            else
            {
              v51 = [v47 stringWithFormat:@"s=%.2f, e=%@, q=%@", v49, v45, @"-"];
            }

            [v32 appendFormat:@"\t%@", v51];
          }

          else
          {
            [v32 appendFormat:@"\tno face"];
          }

          [v64 addObject:v32];
        }

        v65 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v65);
    }

    photoLibrary = v59;
    assetCopy = v60;
    v9 = v58;
  }

  else
  {
    v64 = MEMORY[0x277CBEBF8];
  }

  return v64;
}

+ (id)_sceneprintDistanceStringFromAsset:(id)asset toAsset:(id)toAsset
{
  assetCopy = asset;
  toAssetCopy = toAsset;
  v7 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
  [v7 distanceBetweenItem:assetCopy andItem:toAssetCopy];
  v9 = v8;
  if (v8 >= 1.79769313e308)
  {
    clsSceneprint = [toAssetCopy clsSceneprint];
    if (clsSceneprint)
    {
      sceneAnalysisProperties = [assetCopy sceneAnalysisProperties];
      sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];

      sceneAnalysisProperties2 = [toAssetCopy sceneAnalysisProperties];
      sceneAnalysisVersion2 = [sceneAnalysisProperties2 sceneAnalysisVersion];

      if (sceneAnalysisVersion == sceneAnalysisVersion2)
      {
        v21 = @"Error in computation";
      }

      else
      {
        v23 = sceneAnalysisVersion;
        v24 = sceneAnalysisVersion2;
        v21 = @"%hd != %hd";
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:v21, v23, v24];
    }

    else
    {
      v15 = @"No sceneprint";
    }
  }

  else
  {
    clsSimilarityModelVersion = [assetCopy clsSimilarityModelVersion];
    [v7 distanceThresholdForSimilarity:0 withSimilarityModelVersion:clsSimilarityModelVersion];
    v12 = v11;
    [v7 distanceThresholdForSimilarity:2 withSimilarityModelVersion:clsSimilarityModelVersion];
    v13 = @"-";
    if (v9 <= v14)
    {
      v13 = @"Sem.";
    }

    if (v9 <= v12)
    {
      v13 = @"Id.";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.5f (%@)", *&v9, v13];
  }

  return v15;
}

+ (id)debugInformationForAsset:(id)asset curationContext:(id)context
{
  v221[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v8 = [PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:1];
  [librarySpecificFetchOptions setFetchPropertySets:v8];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v9 = MEMORY[0x277CD97A8];
  localIdentifier = [assetCopy localIdentifier];

  v221[0] = localIdentifier;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:1];
  v12 = [v9 fetchAssetsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];

  v13 = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:v12 prefetchOptions:31 curationContext:contextCopy];
  firstObject = [v13 firstObject];

  v15 = objc_opt_new();
  v16 = MEMORY[0x277D3C7A0];
  v212[0] = MEMORY[0x277D85DD0];
  v212[1] = 3221225472;
  v212[2] = __68__PGAssetDebugInformation_debugInformationForAsset_curationContext___block_invoke;
  v212[3] = &unk_278884F80;
  v188 = v15;
  v213 = v188;
  [v16 enumerateSignalsFromAsset:firstObject fullHierarchyName:1 usingBlock:v212];
  v219[0] = @"latest";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277D26840]];
  v219[1] = @"current";
  v220[0] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(firstObject, "faceAnalysisVersion")}];
  v220[1] = v18;
  v187 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:2];

  v217[0] = @"latest";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277D26848]];
  v217[1] = @"current";
  v218[0] = v19;
  v20 = MEMORY[0x277CCABB0];
  sceneAnalysisProperties = [firstObject sceneAnalysisProperties];
  v22 = [v20 numberWithShort:{objc_msgSend(sceneAnalysisProperties, "sceneAnalysisVersion")}];
  v218[1] = v22;
  v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v218 forKeys:v217 count:2];

  curationModel = [firstObject curationModel];
  [curationModel scoreWithAsset:firstObject inContext:0];
  v25 = v24;

  photoLibrary2 = [firstObject photoLibrary];
  [PGGraphBuilder topTierAestheticScoreForRatio:photoLibrary2 inPhotoLibrary:0.01];
  v28 = v27;

  v29 = objc_autoreleasePoolPush();
  v30 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:firstObject withType:3 options:0];
  firstObject2 = [v30 firstObject];

  v32 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions setFetchPropertySets:v32];

  v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v216[0] = v33;
  v34 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v216[1] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v216 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v35];

  v180 = librarySpecificFetchOptions;
  v36 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:firstObject2 options:librarySpecificFetchOptions];
  fetchedObjects = [v36 fetchedObjects];

  v182 = contextCopy;
  curationSession = [contextCopy curationSession];
  [curationSession prepareAssets:fetchedObjects];

  v39 = [MEMORY[0x277D3C7A0] scoringContextWithAssets:fetchedObjects aestheticScoreThresholdToBeAwesome:v28];
  curationModel2 = [firstObject curationModel];
  [curationModel2 scoreWithAsset:firstObject inContext:v39];
  v42 = v41;

  v43 = [PGMemoryGenerationHelper scoringContextForMemoriesWithAssets:fetchedObjects withTopTierAestheticScore:v28];
  curationModel3 = [firstObject curationModel];
  [curationModel3 scoreWithAsset:firstObject inContext:v43];
  v46 = v45;

  clsSceneprint = [firstObject clsSceneprint];
  if (clsSceneprint)
  {
    v48 = [fetchedObjects indexOfObject:firstObject];
    v49 = v48;
    if (v48)
    {
      v50 = [fetchedObjects objectAtIndexedSubscript:v48 - 1];
      v185 = [self _sceneprintDistanceStringFromAsset:firstObject toAsset:v50];
    }

    else
    {
      v185 = @"No asset";
    }

    if (v49 >= [fetchedObjects count] - 1)
    {
      v184 = @"No asset";
    }

    else
    {
      v51 = [fetchedObjects objectAtIndexedSubscript:v49 + 1];
      v184 = [self _sceneprintDistanceStringFromAsset:firstObject toAsset:v51];
    }
  }

  else
  {
    v184 = @"-";
    v185 = @"-";
  }

  objc_autoreleasePoolPop(v29);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v53 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(firstObject, "clsIsBlurry")}];
  [dictionary setObject:v53 forKeyedSubscript:@"isBlurryMedia"];

  v54 = MEMORY[0x277CCABB0];
  curationModel4 = [firstObject curationModel];
  mediaPreAnalysisModel = [curationModel4 mediaPreAnalysisModel];
  sharpnessNode = [mediaPreAnalysisModel sharpnessNode];
  [sharpnessNode highRecallOperatingPoint];
  v58 = [v54 numberWithDouble:?];
  [dictionary setObject:v58 forKeyedSubscript:@"sharpnessThreshold"];

  [dictionary setObject:v187 forKeyedSubscript:@"faceAnalysisVersions"];
  [dictionary setObject:v186 forKeyedSubscript:@"sceneAnalysisVersions"];
  curationModel5 = [firstObject curationModel];
  sceneModel = [curationModel5 sceneModel];
  identifier = [sceneModel identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"sceneTaxonomyDigest"];

  [dictionary setObject:v188 forKeyedSubscript:@"classification"];
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
  [dictionary setObject:v62 forKeyedSubscript:@"curationScoreWithContext"];

  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  [dictionary setObject:v63 forKeyedSubscript:@"curationScoreWithoutContext"];

  v64 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
  [dictionary setObject:v64 forKeyedSubscript:@"curationScoreForMemories"];

  v65 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  [dictionary setObject:v65 forKeyedSubscript:@"libraryTopTierAestheticScore"];

  v66 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(firstObject, "clsIsUtility")}];
  [dictionary setObject:v66 forKeyedSubscript:@"isUtility"];

  v67 = MEMORY[0x277CCABB0];
  curationModel6 = [firstObject curationModel];
  userFeedbackCalculator = [v182 userFeedbackCalculator];
  v70 = [v67 numberWithBool:{objc_msgSend(curationModel6, "isUtilityForMemoriesWithAsset:userFeedbackCalculator:blockSocialMediaImportedAssets:", firstObject, userFeedbackCalculator, 0)}];
  [dictionary setObject:v70 forKeyedSubscript:@"isUtilityForMemories"];

  v71 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(firstObject, "clsIsTragicFailure")}];
  [dictionary setObject:v71 forKeyedSubscript:@"isTragicFailure"];

  v211 = 0;
  v72 = [firstObject clsAvoidIfPossibleAsKeyItemForMemories:0 allowGuestAsset:0 reason:&v211];
  v73 = v211;
  v74 = [MEMORY[0x277CCABB0] numberWithBool:v72];
  [dictionary setObject:v74 forKeyedSubscript:@"avoidForKeyAsset"];

  if (v72)
  {
    if (v73)
    {
      v75 = v73;
    }

    else
    {
      v75 = @"Unknown";
    }

    [dictionary setObject:v75 forKeyedSubscript:@"avoidForKeyAssetReason"];
  }

  v76 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(firstObject, "clsAvoidIfPossibleAsKeyItemForMemories:allowGuestAsset:", 1, 0)}];
  [dictionary setObject:v76 forKeyedSubscript:@"avoidForMemoryKeyAsset"];

  v77 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3C7C0], "assetIsSafeForWidgetDisplay:", firstObject)}];
  [dictionary setObject:v77 forKeyedSubscript:@"isSafeForWidgetDisplay"];

  v78 = [self _personDescriptionStringsInAsset:firstObject];
  [dictionary setObject:v78 forKeyedSubscript:@"peopleNames"];

  [dictionary setObject:v185 forKeyedSubscript:@"sceneprintDistanceToPreviousAsset"];
  [dictionary setObject:v184 forKeyedSubscript:@"sceneprintDistanceToNextAsset"];
  v79 = MEMORY[0x277CCABB0];
  [firstObject clsSquareCropScore];
  v80 = [v79 numberWithDouble:?];
  [dictionary setObject:v80 forKeyedSubscript:@"squareCropScore"];

  [firstObject cropScoreForTargetAspectRatio:1 forFaces:0.75];
  v81 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [dictionary setObject:v81 forKeyedSubscript:@"3x4CropScore"];

  [firstObject cropScoreForTargetAspectRatio:1 forFaces:1.5];
  v82 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [dictionary setObject:v82 forKeyedSubscript:@"3x2CropScore"];

  v83 = MEMORY[0x277CCABB0];
  v210 = v73;
  v84 = [(PGPeopleWallpaperSuggester *)PGTopPeopleWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v210];
  v85 = v210;

  v86 = [v83 numberWithBool:v84];
  [dictionary setObject:v86 forKeyedSubscript:@"WSTopPeoplePortraitPass"];

  [dictionary setObject:v85 forKeyedSubscript:@"WSTopPeoplePortraitReason"];
  v87 = MEMORY[0x277CCABB0];
  v209 = v85;
  v88 = [(PGPeopleWallpaperSuggester *)PGTopPeopleWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v209];
  v89 = v209;

  v90 = [v87 numberWithBool:v88];
  [dictionary setObject:v90 forKeyedSubscript:@"WSTopPeopleLandscapePass"];

  [dictionary setObject:v89 forKeyedSubscript:@"WSTopPeopleLandscapeReason"];
  v91 = MEMORY[0x277CCABB0];
  v208 = v89;
  v92 = [(PGPetWallpaperSuggester *)PGTopPetWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v208];
  v93 = v208;

  v94 = [v91 numberWithBool:v92];
  [dictionary setObject:v94 forKeyedSubscript:@"WSTopPetPortraitPass"];

  [dictionary setObject:v93 forKeyedSubscript:@"WSTopPetPortraitReason"];
  v95 = MEMORY[0x277CCABB0];
  v207 = v93;
  v96 = [(PGPetWallpaperSuggester *)PGTopPetWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v207];
  v97 = v207;

  v98 = [v95 numberWithBool:v96];
  [dictionary setObject:v98 forKeyedSubscript:@"WSTopPetLandscapePass"];

  [dictionary setObject:v97 forKeyedSubscript:@"WSTopPetLandscapeReason"];
  v99 = MEMORY[0x277CCABB0];
  v206 = v97;
  v100 = [(PGLandscapeWallpaperSuggester *)PGTopLandscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v206];
  v101 = v206;

  v102 = [v99 numberWithBool:v100];
  [dictionary setObject:v102 forKeyedSubscript:@"WSTopNaturePortraitPass"];

  [dictionary setObject:v101 forKeyedSubscript:@"WSTopNaturePortraitReason"];
  v103 = MEMORY[0x277CCABB0];
  v205 = v101;
  v104 = [(PGLandscapeWallpaperSuggester *)PGTopLandscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v205];
  v105 = v205;

  v106 = [v103 numberWithBool:v104];
  [dictionary setObject:v106 forKeyedSubscript:@"WSTopNatureLandscapePass"];

  [dictionary setObject:v105 forKeyedSubscript:@"WSTopNatureLandscapeReason"];
  v107 = MEMORY[0x277CCABB0];
  v204 = v105;
  v108 = [(PGCityscapeWallpaperSuggester *)PGTopCityscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v204];
  v109 = v204;

  v110 = [v107 numberWithBool:v108];
  [dictionary setObject:v110 forKeyedSubscript:@"WSTopCityscapePortraitPass"];

  [dictionary setObject:v109 forKeyedSubscript:@"WSTopCityscapePortraitReason"];
  v111 = MEMORY[0x277CCABB0];
  v203 = v109;
  v112 = [(PGCityscapeWallpaperSuggester *)PGTopCityscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v203];
  v113 = v203;

  v114 = [v111 numberWithBool:v112];
  [dictionary setObject:v114 forKeyedSubscript:@"WSTopCityscapeLandscapePass"];

  [dictionary setObject:v113 forKeyedSubscript:@"WSTopCityscapeLandscapeReason"];
  v115 = MEMORY[0x277CCABB0];
  v202 = v113;
  v116 = [PGPeopleWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v202];
  v117 = v202;

  v118 = [v115 numberWithBool:v116];
  [dictionary setObject:v118 forKeyedSubscript:@"WSPeoplePortraitPass"];

  [dictionary setObject:v117 forKeyedSubscript:@"WSPeoplePortraitReason"];
  v119 = MEMORY[0x277CCABB0];
  v201 = v117;
  v120 = [PGPeopleWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v201];
  v121 = v201;

  v122 = [v119 numberWithBool:v120];
  [dictionary setObject:v122 forKeyedSubscript:@"WSPeopleLandscapePass"];

  [dictionary setObject:v121 forKeyedSubscript:@"WSPeopleLandscapeReason"];
  v123 = MEMORY[0x277CCABB0];
  v200 = v121;
  v124 = [PGPetWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v200];
  v125 = v200;

  v126 = [v123 numberWithBool:v124];
  [dictionary setObject:v126 forKeyedSubscript:@"WSPetPortraitPass"];

  [dictionary setObject:v125 forKeyedSubscript:@"WSPetPortraitReason"];
  v127 = MEMORY[0x277CCABB0];
  v199 = v125;
  v128 = [PGPetWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v199];
  v129 = v199;

  v130 = [v127 numberWithBool:v128];
  [dictionary setObject:v130 forKeyedSubscript:@"WSPetLandscapePass"];

  [dictionary setObject:v129 forKeyedSubscript:@"WSPetLandscapeReason"];
  v131 = MEMORY[0x277CCABB0];
  v198 = v129;
  v132 = [PGLandscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v198];
  v133 = v198;

  v134 = [v131 numberWithBool:v132];
  [dictionary setObject:v134 forKeyedSubscript:@"WSNaturePortraitPass"];

  [dictionary setObject:v133 forKeyedSubscript:@"WSNaturePortraitReason"];
  v135 = MEMORY[0x277CCABB0];
  v197 = v133;
  v136 = [PGLandscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v197];
  v137 = v197;

  v138 = [v135 numberWithBool:v136];
  [dictionary setObject:v138 forKeyedSubscript:@"WSNatureLandscapePass"];

  [dictionary setObject:v137 forKeyedSubscript:@"WSNatureLandscapeReason"];
  v139 = MEMORY[0x277CCABB0];
  v196 = v137;
  v140 = [PGCityscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v196];
  v141 = v196;

  v142 = [v139 numberWithBool:v140];
  [dictionary setObject:v142 forKeyedSubscript:@"WSCityscapePortraitPass"];

  [dictionary setObject:v141 forKeyedSubscript:@"WSCityscapePortraitReason"];
  v143 = MEMORY[0x277CCABB0];
  v195 = v141;
  v144 = [PGCityscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v195];
  v145 = v195;

  v146 = [v143 numberWithBool:v144];
  [dictionary setObject:v146 forKeyedSubscript:@"WSCityscapeLandscapePass"];

  [dictionary setObject:v145 forKeyedSubscript:@"WSCityscapeLandscapeReason"];
  v147 = MEMORY[0x277CCABB0];
  v194 = v145;
  v148 = [PGSettlingEffectWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v194];
  v149 = v194;

  v150 = [v147 numberWithBool:v148];
  [dictionary setObject:v150 forKeyedSubscript:@"WSSettlingEffectPortraitPass"];

  [dictionary setObject:v149 forKeyedSubscript:@"WSSettlingEffectPortraitReason"];
  v151 = MEMORY[0x277CCABB0];
  v193 = v149;
  v152 = [PGSettlingEffectWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v193];
  v153 = v193;

  v154 = [v151 numberWithBool:v152];
  [dictionary setObject:v154 forKeyedSubscript:@"WSSettlingEffectLandscapePass"];

  [dictionary setObject:v153 forKeyedSubscript:@"WSSettlingEffectLandscapeReason"];
  v155 = MEMORY[0x277CCABB0];
  v192 = v153;
  v156 = [(PGPeopleWallpaperSuggester *)PGMeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:1 reason:&v192];
  v157 = v192;

  v158 = [v155 numberWithBool:v156];
  [dictionary setObject:v158 forKeyedSubscript:@"WSMePortraitPass"];

  [dictionary setObject:v157 forKeyedSubscript:@"WSMePortraitReason"];
  v159 = MEMORY[0x277CCABB0];
  v191 = v157;
  v160 = [(PGPeopleWallpaperSuggester *)PGMeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:v182 orientation:2 reason:&v191];
  v161 = v191;

  v162 = [v159 numberWithBool:v160];
  [dictionary setObject:v162 forKeyedSubscript:@"WSMeLandscapePass"];

  [dictionary setObject:v161 forKeyedSubscript:@"WSMeLandscapeReason"];
  photoAnalysisWallpaperProperties = [firstObject photoAnalysisWallpaperProperties];
  v214[0] = @"current";
  v164 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{+[PGWallpaperSuggestionAssetGater currentWallpaperPropertiesVersion](PGWallpaperSuggestionAssetGater, "currentWallpaperPropertiesVersion")}];
  v214[1] = @"persisted";
  v215[0] = v164;
  v165 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(photoAnalysisWallpaperProperties, "wallpaperPropertiesVersion")}];
  v215[1] = v165;
  v166 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:2];
  [dictionary setObject:v166 forKeyedSubscript:@"NSWallpaperPropertiesVersions"];

  wallpaperPropertiesTimestamp = [photoAnalysisWallpaperProperties wallpaperPropertiesTimestamp];
  if (wallpaperPropertiesTimestamp)
  {
    v168 = MEMORY[0x277CCA968];
    wallpaperPropertiesTimestamp2 = [photoAnalysisWallpaperProperties wallpaperPropertiesTimestamp];
    v170 = [v168 localizedStringFromDate:wallpaperPropertiesTimestamp2 dateStyle:1 timeStyle:1];
    [dictionary setObject:v170 forKeyedSubscript:@"NSWallpaperPropertiesTimestamp"];
  }

  else
  {
    [dictionary setObject:@"Never computed" forKeyedSubscript:@"NSWallpaperPropertiesTimestamp"];
  }

  wallpaperPropertiesData = [photoAnalysisWallpaperProperties wallpaperPropertiesData];

  if (wallpaperPropertiesData)
  {
    v172 = MEMORY[0x277CCAC58];
    wallpaperPropertiesData2 = [photoAnalysisWallpaperProperties wallpaperPropertiesData];
    v190 = 0;
    v174 = [v172 propertyListWithData:wallpaperPropertiesData2 options:0 format:0 error:&v190];
    v175 = v190;
  }

  else
  {
    v176 = [PGWallpaperSuggestionAssetGater alloc];
    wallpaperPropertiesData2 = [(PGWallpaperSuggestionAssetGater *)v176 initWithType:1 loggingConnection:MEMORY[0x277D86220]];
    [(PGWallpaperSuggestionAssetGater *)wallpaperPropertiesData2 setIsUserInitiated:1];
    v189 = 0;
    v174 = [(PGWallpaperSuggestionAssetGater *)wallpaperPropertiesData2 requestWallpaperPropertiesForAsset:firstObject progressBlock:&__block_literal_global_47611 error:&v189];
    v175 = v189;
  }

  v177 = v175;

  if (v174)
  {
    [dictionary setObject:v174 forKeyedSubscript:@"NSWallpaperProperties"];
  }

  else
  {
    v178 = [v177 description];
    [dictionary setObject:v178 forKeyedSubscript:@"NSWallpaperProperties"];
  }

  return dictionary;
}

void __68__PGAssetDebugInformation_debugInformationForAsset_curationContext___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, void *a9)
{
  v16 = a9;
  v26 = v16;
  if (a6 * a7 <= 0.0)
  {
    v22 = v16;
    if (a3 > 0.0)
    {
      v23 = @"<";
      if (a2 >= a3)
      {
        v23 = @"≥";
      }

      v24 = v23;
      v25 = v26;
      v20 = v24;
      goto LABEL_15;
    }

LABEL_13:
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\r\t\t confidence: (%.2f)", v22, *&a2];
    goto LABEL_17;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%.2f, %.2f  %.2f x %.2f]", a6 * a7, *&a4, *&a5, *&a6, *&a7];
  v18 = v17;
  if (a3 <= 0.0)
  {
    v22 = v26;
    if (v17)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\r\t\t confidence: (%.2f), \r\t\t boundingBox: %@", v26, *&a2, v17];

      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v19 = @"<";
  if (a2 >= a3)
  {
    v19 = @"≥";
  }

  v20 = v19;
  if (!v18)
  {
    v25 = v26;
LABEL_15:
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\r\t\t confidence: (%.2f%@%.2f)", v25, *&a2, v20, *&a3];
    goto LABEL_16;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\r\t\t confidence: (%.2f%@%.2f), \r\t\t boundingBox: %@", v26, *&a2, v20, *&a3, v18];

LABEL_16:
LABEL_17:
  [*(a1 + 32) addObject:v21];
}

@end