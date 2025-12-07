@interface PGTripKeyAssetQuestionFactory
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
- (void)_enumerateTrips:(id)trips;
@end

@implementation PGTripKeyAssetQuestionFactory

- (void)_enumerateTrips:(id)trips
{
  v84[3] = *MEMORY[0x277D85DE8];
  tripsCopy = trips;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(type = %d OR type = %d) AND enrichmentState == %d", 1, 2, 4];
  [librarySpecificFetchOptions setPredicate:v7];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v84[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:1];
  v84[1] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v84[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
  [librarySpecificFetchOptions setSortDescriptors:v11];

  v49 = librarySpecificFetchOptions;
  v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:librarySpecificFetchOptions];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  v83 = *MEMORY[0x277CD9AA8];
  v14 = v83;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  v57 = librarySpecificFetchOptions2;
  [librarySpecificFetchOptions2 setFetchPropertySets:v15];

  v50 = photoLibrary;
  librarySpecificFetchOptions3 = [photoLibrary librarySpecificFetchOptions];
  v82 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v53 = librarySpecificFetchOptions3;
  [librarySpecificFetchOptions3 setFetchPropertySets:v17];

  v75 = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v12;
  v55 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (v55)
  {
    v54 = *v72;
    v18 = 0x277CD9000uLL;
    while (2)
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v72 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v71 + 1) + 8 * i);
        v21 = [*(v18 + 1960) fetchKeyCuratedAssetInAssetCollection:v20 referenceAsset:0 options:v57];
        firstObject = [v21 firstObject];

        if (firstObject)
        {
          buf[0] = 0;
          tripsCopy[2](tripsCopy, v20, firstObject, 1, buf, &v75);
          if (v75)
          {

            goto LABEL_26;
          }

          v23 = MEMORY[0x277CCAC30];
          objectID = [v20 objectID];
          v25 = [v23 predicateWithFormat:@"highlightBeingKeyAssetPrivate.parentDayGroupPhotosHighlight == %@", objectID];
          [v53 setInternalPredicate:v25];

          v26 = v18;
          v27 = [*(v18 + 1960) fetchAssetsWithOptions:v53];
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v29 = v27;
          v30 = [v29 countByEnumeratingWithState:&v67 objects:v80 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v68;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v68 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v67 + 1) + 8 * j);
                if (([v34 isEqual:firstObject] & 1) == 0)
                {
                  [v28 addObject:v34];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v67 objects:v80 count:16];
            }

            while (v31);
          }

          if ([v28 count])
          {
            [strongToStrongObjectsMapTable setObject:v28 forKey:v20];
          }

          v18 = v26;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v79 = v20;
          _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected nil key asset for trip %@", buf, 0xCu);
        }
      }

      v55 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      if (v55)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  if ((v75 & 1) == 0)
  {
    v35 = 0uLL;
    while (1)
    {
      v65 = v35;
      v66 = v35;
      v63 = v35;
      v64 = v35;
      keyEnumerator = [strongToStrongObjectsMapTable keyEnumerator];
      v37 = [keyEnumerator countByEnumeratingWithState:&v63 objects:v77 count:16];
      if (!v37)
      {
        break;
      }

      v38 = v37;
      v39 = *v64;
      v56 = 1;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v64 != v39)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v41 = *(*(&v63 + 1) + 8 * k);
          v42 = [strongToStrongObjectsMapTable objectForKey:v41];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v43 = v42;
          v44 = [v43 countByEnumeratingWithState:&v59 objects:v76 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v60;
            while (2)
            {
              for (m = 0; m != v45; ++m)
              {
                if (*v60 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v59 + 1) + 8 * m);
                buf[0] = 0;
                tripsCopy[2](tripsCopy, v41, v48, 0, buf, &v75);
                if (v75 == 1)
                {

                  goto LABEL_49;
                }

                if (buf[0])
                {
                  v56 = 0;
                  goto LABEL_44;
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v59 objects:v76 count:16];
              if (v45)
              {
                continue;
              }

              break;
            }
          }

LABEL_44:
        }

        v38 = [keyEnumerator countByEnumeratingWithState:&v63 objects:v77 count:16];
      }

      while (v38);

      v35 = 0uLL;
      if (v56)
      {
        goto LABEL_50;
      }
    }

LABEL_49:
  }

LABEL_50:
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = _Block_copy(blockCopy);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v33[3] >= 0.01)
    {
      v33[3] = Current;
      v31 = 0;
      v7[2](v7, &v31, 0.0);
      v9 = *(v37 + 24) | v31;
      *(v37 + 24) = v9;
      if (v9)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_19:
          allObjects = MEMORY[0x277CBEBF8];
          goto LABEL_22;
        }

        *buf = 67109378;
        v41 = 34;
        v42 = 2080;
        v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripKeyAsset/PGTripKeyAssetQuestionFactory.m";
        v10 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_19;
      }
    }

    if (!limit)
    {
      v11 = CFAbsoluteTimeGetCurrent();
      if (v11 - v33[3] < 0.01)
      {
        goto LABEL_19;
      }

      v33[3] = v11;
      v31 = 0;
      v7[2](v7, &v31, 1.0);
      v12 = *(v37 + 24) | v31;
      *(v37 + 24) = v12;
      if ((v12 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 67109378;
      v41 = 38;
      v42 = 2080;
      v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripKeyAsset/PGTripKeyAssetQuestionFactory.m";
      v10 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

  else if (!limit)
  {
    goto LABEL_19;
  }

  v13 = [MEMORY[0x277CBEB58] set];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __74__PGTripKeyAssetQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v23 = &unk_27887F378;
  selfCopy = self;
  v14 = v13;
  v25 = v14;
  limitCopy = limit;
  v15 = v7;
  v26 = v15;
  v27 = &v32;
  v30 = 0x3F847AE147AE147BLL;
  v28 = &v36;
  [(PGTripKeyAssetQuestionFactory *)self _enumerateTrips:&v20];
  if (v7 && (v16 = CFAbsoluteTimeGetCurrent(), v16 - v33[3] >= 0.01) && (v33[3] = v16, v31 = 0, v15[2](v15, &v31, 1.0), v17 = *(v37 + 24) | v31, *(v37 + 24) = v17, (v17 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v41 = 68;
      v42 = 2080;
      v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/TripKeyAsset/PGTripKeyAssetQuestionFactory.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    allObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    allObjects = [v14 allObjects];
  }

LABEL_22:
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return allObjects;
}

void __74__PGTripKeyAssetQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, int a4, _BYTE *a5, _BYTE *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = objc_autoreleasePoolPush();
  v14 = MEMORY[0x277CCACA8];
  v15 = [v11 localizedTitle];
  v16 = [v11 localizedSubtitle];
  v17 = [v14 stringWithFormat:@"%@ (%@)", v15, v16];

  v18 = [v11 type] == 1;
  if (a4)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.5;
  }

  v20 = [PGTripKeyAssetQuestion alloc];
  v21 = [v12 uuid];
  v22 = [(PGTripKeyAssetQuestion *)v20 initWithKeyAssetUUID:v21 tripName:v17 isLongTrip:v18 localFactoryScore:v19];

  if ([*(a1 + 32) shouldAddQuestion:v22 toAlreadyGeneratedQuestions:*(a1 + 40)] && (objc_msgSend(*(a1 + 40), "addObject:", v22), *a5 = 1, objc_msgSend(*(a1 + 40), "count") >= *(a1 + 72)))
  {
    *a6 = 1;
  }

  else
  {
    v23 = [*(a1 + 40) count];
    if (*(a1 + 48))
    {
      v24 = v23;
      v25 = *(a1 + 72);
      Current = CFAbsoluteTimeGetCurrent();
      v27 = *(*(a1 + 56) + 8);
      if (Current - *(v27 + 24) >= *(a1 + 80))
      {
        *(v27 + 24) = Current;
        (*(*(a1 + 48) + 16))(v24 / v25);
        *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          *a6 = 1;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v13);
}

@end