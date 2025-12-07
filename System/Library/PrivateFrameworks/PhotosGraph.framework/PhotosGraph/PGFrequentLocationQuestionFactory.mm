@interface PGFrequentLocationQuestionFactory
- (BOOL)_addIfNeededFrequentLocationQuestionForAsset:(id)asset withLocationTypeName:(id)name toQuestions:(id)questions;
- (PHFetchResult)existingFrequentLocationQuestions;
- (id)_selectedAssetFromMomentNodes:(id)nodes closeToCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block;
@end

@implementation PGFrequentLocationQuestionFactory

- (id)_selectedAssetFromMomentNodes:(id)nodes closeToCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v32[1] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  photoLibrary = [workingContext photoLibrary];

  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"locationData != nil"];
  [librarySpecificFetchOptions setInternalPredicate:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v32[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v13];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__51381;
  v30 = __Block_byref_object_dispose__51382;
  v31 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0x7FEFFFFFFFFFFFFFLL;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__PGFrequentLocationQuestionFactory__selectedAssetFromMomentNodes_closeToCoordinate___block_invoke;
  v18[3] = &unk_278885710;
  v14 = photoLibrary;
  v19 = v14;
  v15 = librarySpecificFetchOptions;
  v23 = latitude;
  v24 = longitude;
  v20 = v15;
  v21 = v25;
  v22 = &v26;
  [nodesCopy enumerateNodesUsingBlock:v18];
  v16 = v27[5];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);

  return v16;
}

void __85__PGFrequentLocationQuestionFactory__selectedAssetFromMomentNodes_closeToCoordinate___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CD97A8];
  v6 = [v3 fetchAssetCollectionInPhotoLibrary:a1[4]];
  v7 = [v5 fetchAssetsInAssetCollection:v6 options:a1[5]];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 locationCoordinate];
        v18 = v14;
        v19 = v15;
        CLLocationCoordinate2DGetDistanceFrom();
        v17 = v16;
        if (v16 < *(*(a1[6] + 8) + 24))
        {
          objc_storeStrong((*(a1[7] + 8) + 40), v13);
          *(*(a1[6] + 8) + 24) = v17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:{16, v18, v19}];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v4);
}

- (BOOL)_addIfNeededFrequentLocationQuestionForAsset:(id)asset withLocationTypeName:(id)name toQuestions:(id)questions
{
  v77 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  nameCopy = name;
  questionsCopy = questions;
  v62 = assetCopy;
  location = [assetCopy location];
  [location coordinate];
  v10 = v9;
  v12 = v11;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = questionsCopy;
  v13 = [(PGFrequentLocationQuestion *)obj countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v72;
    v16 = *MEMORY[0x277D3C920];
    v17 = *MEMORY[0x277D3C908];
    v18 = *MEMORY[0x277D3C910];
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v71 + 1) + 8 * i);
        additionalInfo = [v20 additionalInfo];
        v22 = [additionalInfo objectForKeyedSubscript:v16];
        v23 = [v22 isEqualToString:nameCopy];

        if (v23)
        {
          additionalInfo2 = [v20 additionalInfo];
          v25 = [additionalInfo2 objectForKeyedSubscript:v17];
          [v25 doubleValue];
          v27 = v26;

          additionalInfo3 = [v20 additionalInfo];
          v29 = [additionalInfo3 objectForKeyedSubscript:v18];
          [v29 doubleValue];
          v31 = v30;

          v32 = CLLocationCoordinate2DMake(v27, v31);
          if ([(PGFrequentLocationQuestionFactory *)self _distanceTooCloseBetweenCoordinate:v10 otherCoordinate:v12, v32.latitude, v32.longitude])
          {
            v59 = 0;
            v58 = obj;
            v33 = obj;
            v56 = location;
            v54 = v62;
            goto LABEL_23;
          }
        }
      }

      v14 = [(PGFrequentLocationQuestion *)obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  [(PGFrequentLocationQuestionFactory *)self existingFrequentLocationQuestions];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v33 = v70 = 0u;
  v34 = [(PGFrequentLocationQuestion *)v33 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v68;
    v37 = *MEMORY[0x277D3C920];
    v63 = *MEMORY[0x277D3C908];
    v38 = *MEMORY[0x277D3C910];
    while (2)
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v68 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v40 = *(*(&v67 + 1) + 8 * j);
        additionalInfo4 = [v40 additionalInfo];
        v42 = [additionalInfo4 objectForKeyedSubscript:v37];
        v43 = [v42 isEqualToString:nameCopy];

        if (v43)
        {
          additionalInfo5 = [v40 additionalInfo];
          v45 = [additionalInfo5 objectForKeyedSubscript:v63];
          [v45 doubleValue];
          v47 = v46;

          additionalInfo6 = [v40 additionalInfo];
          v49 = [additionalInfo6 objectForKeyedSubscript:v38];
          [v49 doubleValue];
          v51 = v50;

          v52 = CLLocationCoordinate2DMake(v47, v51);
          if ([(PGFrequentLocationQuestionFactory *)self _distanceTooCloseBetweenCoordinate:v10 otherCoordinate:v12, v52.latitude, v52.longitude])
          {
            v59 = 0;
            v57 = v33;
            v56 = location;
            v54 = v62;
            v58 = obj;
            goto LABEL_22;
          }
        }
      }

      v35 = [(PGFrequentLocationQuestion *)v33 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v53 = [PGFrequentLocationQuestion alloc];
  v54 = v62;
  uuid = [v62 uuid];
  v56 = location;
  v57 = [(PGFrequentLocationQuestion *)v53 initWithAssetUUID:uuid location:location locationTypeName:nameCopy];

  v58 = obj;
  [(PGFrequentLocationQuestion *)obj addObject:v57];
  v59 = 1;
LABEL_22:

LABEL_23:
  return v59;
}

- (id)generateQuestionsWithLimit:(unint64_t)limit progressBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEB58] set];
  workingContext = [(PGSurveyQuestionFactory *)self workingContext];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __78__PGFrequentLocationQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke;
  v16 = &unk_27888A2F8;
  v19 = blockCopy;
  limitCopy = limit;
  v17 = v7;
  selfCopy = self;
  v9 = v7;
  v10 = blockCopy;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:&v13];

  allObjects = [v9 allObjects];

  return allObjects;
}

void __78__PGFrequentLocationQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (!v4)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v28[3] >= 0.01)
  {
    v28[3] = Current;
    v26 = 0;
    v4[2](v4, &v26, 0.0);
    v6 = *(v32 + 24) | v26;
    *(v32 + 24) = v6;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v36 = 60;
        v37 = 2080;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/FrequentLocation/PGFrequentLocationQuestionFactory.m";
        v7 = MEMORY[0x277D86220];
LABEL_11:
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  if (*(a1 + 56))
  {
LABEL_13:
    v10 = [v3 graph];
    v11 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v10];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__PGFrequentLocationQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_225;
    v18[3] = &unk_2788856E8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v19 = v12;
    v24 = v13;
    v14 = v4;
    v25 = 0x3F847AE147AE147BLL;
    v22 = &v27;
    v23 = &v31;
    v20 = *(a1 + 40);
    v21 = v14;
    [v11 enumerateIdentifiersAsCollectionsWithBlock:v18];
    if (*(v32 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_22:

        goto LABEL_23;
      }

      *buf = 67109378;
      v36 = 93;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/FrequentLocation/PGFrequentLocationQuestionFactory.m";
      v15 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v4)
      {
        goto LABEL_22;
      }

      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v28[3] < 0.01)
      {
        goto LABEL_22;
      }

      v28[3] = v16;
      v26 = 0;
      v14[2](v14, &v26, 1.0);
      v17 = *(v32 + 24) | v26;
      *(v32 + 24) = v17;
      if ((v17 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      *buf = 67109378;
      v36 = 95;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/FrequentLocation/PGFrequentLocationQuestionFactory.m";
      v15 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_22;
  }

  v8 = CFAbsoluteTimeGetCurrent();
  if (v8 - v28[3] >= 0.01)
  {
    v28[3] = v8;
    v26 = 0;
    v4[2](v4, &v26, 1.0);
    v9 = *(v32 + 24) | v26;
    *(v32 + 24) = v9;
    if ((v9 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v36 = 64;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Questions/Survey/FrequentLocation/PGFrequentLocationQuestionFactory.m";
      v7 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

LABEL_23:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
}

void __78__PGFrequentLocationQuestionFactory_generateQuestionsWithLimit_progressBlock___block_invoke_225(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [*(a1 + 32) count];
  if (*(a1 + 48) && (v8 = v7, v9 = *(a1 + 72), Current = CFAbsoluteTimeGetCurrent(), v11 = *(*(a1 + 56) + 8), Current - *(v11 + 24) >= *(a1 + 80)) && (*(v11 + 24) = Current, (*(*(a1 + 48) + 16))(v8 / v9), *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v12 = [v6 addressNodes];
    v13 = *(a1 + 40);
    v14 = [v12 momentNodes];
    v15 = [v12 anyNode];
    [v15 coordinate];
    v16 = [v13 _selectedAssetFromMomentNodes:v14 closeToCoordinate:?];

    if (!v16 || ([v16 location], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17) || objc_msgSend(*(a1 + 40), "_addIfNeededFrequentLocationQuestionForAsset:withLocationTypeName:toQuestions:", v16, @"FrequentLocation", *(a1 + 32)) && objc_msgSend(*(a1 + 32), "count") >= *(a1 + 72))
    {
      *a4 = 1;
    }
  }
}

- (PHFetchResult)existingFrequentLocationQuestions
{
  existingFrequentLocationQuestions = self->_existingFrequentLocationQuestions;
  if (!existingFrequentLocationQuestions)
  {
    fetchExistingQuestions = [(PGSurveyQuestionFactory *)self fetchExistingQuestions];
    v5 = self->_existingFrequentLocationQuestions;
    self->_existingFrequentLocationQuestions = fetchExistingQuestions;

    existingFrequentLocationQuestions = self->_existingFrequentLocationQuestions;
  }

  return existingFrequentLocationQuestions;
}

@end