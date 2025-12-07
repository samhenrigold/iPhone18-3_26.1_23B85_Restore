@interface PGLongTailSuggester
- (BOOL)_shouldUsePreviousBatchOfCandidateAssets;
- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date;
- (BOOL)isMomentNodeInteresting:(id)interesting withNeighborScoreComputer:(id)computer;
- (_NSRange)_randomRangeWithLocationUpperBound:(unint64_t)bound maxLength:(unint64_t)length;
- (id)_assetUUIDByWeightedProbablisticSamplingFromAssetUUIDS:(id)s weights:(id)weights;
- (id)_assetUUIDsFromAssets:(id)assets atIndices:(id)indices;
- (id)_batchOfRandomAssetsWithCount:(unint64_t)count progress:(id)progress;
- (id)_bestAssetUUIDsFromCandidates:(id)candidates percentile:(unint64_t)percentile;
- (id)_candidateByAssetUUIDsFromAssets:(id)assets;
- (id)_eligibleAssetUUIDsWithProgress:(id)progress;
- (id)_fetchVerifiedPersonUUIDsByAssetUUIds:(id)ids;
- (id)_nextCandidateAssetsWithProgress:(id)progress;
- (id)allInterestingMomentsFromGraph:(id)graph progress:(id)progress;
- (id)highlightedAssetInternalPredicate;
- (id)nextSuggestedAssetWithProgress:(id)progress;
- (id)nextSuggestionWithProgress:(id)progress;
- (id)reasonsForSuggestion:(id)suggestion;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (unint64_t)_longTailScoreWithAsset:(id)asset withAdditionalOptions:(id)options;
- (void)captureInformationFromGraph:(id)graph;
- (void)reset;
- (void)startSuggestingWithOptions:(id)options;
@end

@implementation PGLongTailSuggester

- (_NSRange)_randomRangeWithLocationUpperBound:(unint64_t)bound maxLength:(unint64_t)length
{
  if (bound <= length)
  {
    lengthCopy = bound;
    v5 = 0;
  }

  else
  {
    v5 = [PGLongTailSuggester randomIntegerWithUpperBound:bound - length + 1 seed:self->_randomSeed];
    lengthCopy = length;
  }

  result.length = lengthCopy;
  result.location = v5;
  return result;
}

- (id)_assetUUIDsFromAssets:(id)assets atIndices:(id)indices
{
  v20 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  indicesCopy = indices;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [assetsCopy objectsAtIndexes:{indicesCopy, 0}];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        uuid = [*(*(&v15 + 1) + 8 * i) uuid];
        [v7 addObject:uuid];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)reasonsForSuggestion:(id)suggestion
{
  v12[2] = *MEMORY[0x277D85DE8];
  keyAssets = [suggestion keyAssets];
  firstObject = [keyAssets firstObject];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"score = %lu", -[PGLongTailSuggester _longTailScoreWithAsset:withAdditionalOptions:](self, "_longTailScoreWithAsset:withAdditionalOptions:", firstObject, self->_additionalOptions)];
  v7 = MEMORY[0x277CCACA8];
  [firstObject overallAestheticScore];
  v9 = [v7 stringWithFormat:@"aesthetics = %.3f", v8];
  v12[0] = v6;
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  return v10;
}

- (id)_assetUUIDByWeightedProbablisticSamplingFromAssetUUIDS:(id)s weights:(id)weights
{
  v27 = *MEMORY[0x277D85DE8];
  sCopy = s;
  weightsCopy = weights;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = sCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [weightsCopy objectForKeyedSubscript:v13];
        score = [v15 score];
        if (score)
        {
          v17 = score;
          do
          {
            [v7 addObject:v13];
            --v17;
          }

          while (v17);
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = [v7 count];
  if (v18)
  {
    v19 = [v7 objectAtIndexedSubscript:{+[PGLongTailSuggester randomIntegerWithUpperBound:seed:](PGLongTailSuggester, "randomIntegerWithUpperBound:seed:", v18, self->_randomSeed)}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_bestAssetUUIDsFromCandidates:(id)candidates percentile:(unint64_t)percentile
{
  v5 = [candidates keysSortedByValueUsingComparator:&__block_literal_global_25908];
  v6 = (percentile / 100.0 * [v5 count]);
  v7 = v5;
  if (v6)
  {
    v7 = v5;
    if ([v5 count] > v6)
    {
      v7 = [v5 subarrayWithRange:{0, v6}];
    }
  }

  return v7;
}

uint64_t __64__PGLongTailSuggester__bestAssetUUIDsFromCandidates_percentile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 score];
  v6 = [v4 score];

  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)_candidateByAssetUUIDsFromAssets:(id)assets
{
  v21 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = assetsCopy;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        uuid = [v9 uuid];
        v12 = [[PGLongTailSuggestionCandidate alloc] initWithAsset:v9 score:[(PGLongTailSuggester *)self _longTailScoreWithAsset:v9 withAdditionalOptions:self->_additionalOptions]];
        if ([(PGLongTailSuggestionCandidate *)v12 isValidWithMeNodeLocalIdentifier:self->_meNodeLocalIdentifier])
        {
          [v14 setValue:v12 forKey:uuid];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v14;
}

- (id)_eligibleAssetUUIDsWithProgress:(id)progress
{
  v90 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v4 = _Block_copy(progressCopy);
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v70[3] >= 0.01)
    {
      v70[3] = Current;
      v81[0] = 0;
      v4[2](v4, v81, 0.0);
      v6 = *(v74 + 24) | v81[0];
      *(v74 + 24) = v6;
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 608;
          LOWORD(v86) = 2080;
          *(&v86 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          v7 = MEMORY[0x277D86220];
LABEL_12:
          _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_59;
        }

        goto LABEL_59;
      }
    }
  }

  if (!self->_eligibleAssetUUIDs)
  {
    session = [(PGAbstractSuggester *)self session];
    selfCopy = self;
    if (session)
    {
      v47 = session;
      loggingConnection = [session loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching all interesting moments", buf, 2u);
      }

      *buf = 0;
      *&v86 = buf;
      *(&v86 + 1) = 0x3032000000;
      v87 = __Block_byref_object_copy__25916;
      v88 = __Block_byref_object_dispose__25917;
      v89 = 0;
      workingContext = [v47 workingContext];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __55__PGLongTailSuggester__eligibleAssetUUIDsWithProgress___block_invoke;
      v63[3] = &unk_278881E40;
      v65 = buf;
      v63[4] = self;
      v49 = v4;
      v64 = v49;
      v66 = &v69;
      v67 = &v73;
      v68 = 0x3F847AE147AE147BLL;
      [workingContext performSynchronousConcurrentGraphReadUsingBlock:v63];

      if (*(v74 + 24) == 1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        *v81 = 67109378;
        v82 = 631;
        v83 = 2080;
        v84 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_19;
      }

      v14 = loggingConnection;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v43 = [*(v86 + 40) count];
        *v81 = 67109120;
        v82 = v43;
        _os_log_debug_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching all interesting moments: %d found", v81, 8u);
      }

      oslog = v14;

      if (v4)
      {
        v15 = CFAbsoluteTimeGetCurrent();
        if (v15 - v70[3] >= 0.01)
        {
          v70[3] = v15;
          v62 = 0;
          v49[2](v49, &v62, 0.2);
          v16 = *(v74 + 24) | v62;
          *(v74 + 24) = v16;
          if (v16)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
LABEL_20:

              _Block_object_dispose(buf, 8);
LABEL_58:

              goto LABEL_59;
            }

            *v81 = 67109378;
            v82 = 635;
            v83 = 2080;
            v84 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            v13 = MEMORY[0x277D86220];
LABEL_19:
            _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v81, 0x12u);
            goto LABEL_20;
          }
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v81 = 0;
        _os_log_debug_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching all UUIDs of assets highlighted in interesting moments in curated library", v81, 2u);
      }

      highlightedAssetInternalPredicate = [(PGLongTailSuggester *)self highlightedAssetInternalPredicate];
      v52 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:highlightedAssetInternalPredicate];

      v80 = *MEMORY[0x277CD9AA8];
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
      [v52 setFetchPropertySets:v18];

      v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
      v79[0] = v19;
      v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
      v79[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
      [v52 setSortDescriptors:v21];

      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v23 = [*(v86 + 40) count];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = *(v86 + 40);
      v24 = [obj countByEnumeratingWithState:&v58 objects:v78 count:16];
      if (v24)
      {
        v26 = 1.0 / v23;
        v51 = *v59;
        v27 = 0.0;
        *&v25 = 67109378;
        v45 = v25;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v59 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v58 + 1) + 8 * i);
            v30 = objc_autoreleasePoolPush();
            if (v4 && (v31 = CFAbsoluteTimeGetCurrent(), v31 - v70[3] >= 0.01) && (v70[3] = v31, v62 = 0, v49[2](v49, &v62, v27 * 0.8 + 0.2), v32 = *(v74 + 24) | v62, *(v74 + 24) = v32, (v32 & 1) != 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *v81 = v45;
                v82 = 650;
                v83 = 2080;
                v84 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v81, 0x12u);
              }

              v33 = 0;
            }

            else
            {
              v34 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v29 options:{v52, v45}];
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v35 = v34;
              v36 = [v35 countByEnumeratingWithState:&v54 objects:v77 count:16];
              if (v36)
              {
                v37 = *v55;
                do
                {
                  for (j = 0; j != v36; ++j)
                  {
                    if (*v55 != v37)
                    {
                      objc_enumerationMutation(v35);
                    }

                    uuid = [*(*(&v54 + 1) + 8 * j) uuid];
                    [v22 addObject:uuid];
                  }

                  v36 = [v35 countByEnumeratingWithState:&v54 objects:v77 count:16];
                }

                while (v36);
              }

              v27 = v26 + v27;
              v33 = 1;
            }

            objc_autoreleasePoolPop(v30);
            if (!v33)
            {

              _Block_object_dispose(buf, 8);
              loggingConnection = oslog;
              goto LABEL_58;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v58 objects:v78 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      objc_storeStrong(&selfCopy->_eligibleAssetUUIDs, v22);
      v40 = oslog;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v44 = [v22 count];
        *v81 = 67109120;
        v82 = v44;
        _os_log_debug_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching all UUIDs of assets highlighted in interesting moments in curated library: %d found", v81, 8u);
      }

      _Block_object_dispose(buf, 8);
      session = v47;
    }

    self = selfCopy;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_56:
    v41 = self->_eligibleAssetUUIDs;
    goto LABEL_60;
  }

  if (!v4)
  {
    goto LABEL_56;
  }

LABEL_8:
  v8 = CFAbsoluteTimeGetCurrent();
  if (v8 - v70[3] < 0.01)
  {
    goto LABEL_56;
  }

  v70[3] = v8;
  v81[0] = 0;
  v4[2](v4, v81, 1.0);
  v9 = *(v74 + 24) | v81[0];
  *(v74 + 24) = v9;
  if ((v9 & 1) == 0)
  {
    goto LABEL_56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 667;
    LOWORD(v86) = 2080;
    *(&v86 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
    v7 = MEMORY[0x277D86220];
    goto LABEL_12;
  }

LABEL_59:
  v41 = MEMORY[0x277CBEBF8];
LABEL_60:
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  return v41;
}

void __55__PGLongTailSuggester__eligibleAssetUUIDsWithProgress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__PGLongTailSuggester__eligibleAssetUUIDsWithProgress___block_invoke_2;
    v8[3] = &unk_27888A188;
    v4 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 72);
    v10 = *(a1 + 56);
    v5 = [v4 allInterestingMomentsFromGraph:v3 progress:v8];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __55__PGLongTailSuggester__eligibleAssetUUIDsWithProgress___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)allInterestingMomentsFromGraph:(id)graph progress:(id)progress
{
  v50 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  progressCopy = progress;
  v8 = _Block_copy(progressCopy);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (v8 && (v9 = CFAbsoluteTimeGetCurrent(), v9 - v34[3] >= 0.01) && (v34[3] = v9, LOBYTE(v32[0]) = 0, (*(v8 + 2))(v8, v32, 0.0), v10 = *(v38 + 24) | LOBYTE(v32[0]), *(v38 + 24) = v10, (v10 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x24604000202;
      LOWORD(v46) = 2080;
      *(&v46 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = objc_alloc_init(PGNeighborScoreComputer);
    buf = 0;
    *&v46 = &buf;
    *(&v46 + 1) = 0x3032000000;
    v47 = __Block_byref_object_copy__25916;
    v48 = __Block_byref_object_dispose__25917;
    v49 = [MEMORY[0x277CBEB58] set];
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    momentNodes = [graphCopy momentNodes];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__PGLongTailSuggester_allInterestingMomentsFromGraph_progress___block_invoke;
    v24[3] = &unk_278881E18;
    v27 = v32;
    v14 = v8;
    v31 = 0x3F847AE147AE147BLL;
    v28 = &v33;
    v29 = &v37;
    v26 = v14;
    v24[4] = self;
    v15 = v12;
    v25 = v15;
    p_buf = &buf;
    [momentNodes enumerateNodesUsingBlock:v24];

    if (*(v38 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v41 = 67109378;
        v42 = 596;
        v43 = 2080;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v41, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = *(v46 + 40);
      session = [(PGAbstractSuggester *)self session];
      photoLibrary = [session photoLibrary];
      v19 = [graphCopy momentsForMomentNodes:v16 inPhotoLibrary:photoLibrary sortChronologically:0];

      if (v8 && (Current = CFAbsoluteTimeGetCurrent(), Current - v34[3] >= 0.01) && (v34[3] = Current, v23 = 0, (*(v14 + 2))(v14, &v23, 1.0), v21 = *(v38 + 24) | v23, *(v38 + 24) = v21, (v21 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v41 = 67109378;
          v42 = 600;
          v43 = 2080;
          v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v41, 0x12u);
        }

        v11 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v11 = v19;
      }
    }

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v11;
}

void __63__PGLongTailSuggester_allInterestingMomentsFromGraph_progress___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 24);
  *(v6 + 24) = v7 + 1;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v7, 1) <= 0x1999999999999999uLL && *(a1 + 48) && (Current = CFAbsoluteTimeGetCurrent(), v9 = *(*(a1 + 64) + 8), Current - *(v9 + 24) >= *(a1 + 88)) && (*(v9 + 24) = Current, (*(*(a1 + 48) + 16))(0.5), *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 72) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else if ([*(a1 + 32) isMomentNodeInteresting:v5 withNeighborScoreComputer:*(a1 + 40)])
  {
    [*(*(*(a1 + 80) + 8) + 40) addObject:v5];
  }
}

- (BOOL)isMomentNodeInteresting:(id)interesting withNeighborScoreComputer:(id)computer
{
  interestingCopy = interesting;
  computerCopy = computer;
  if ([interestingCopy isInteresting] & 1) != 0 || (objc_msgSend(interestingCopy, "isSmartInteresting") & 1) != 0 || (objc_msgSend(interestingCopy, "isMeaningful") & 1) != 0 || (objc_msgSend(interestingCopy, "isPartOfTrip") & 1) != 0 || (objc_msgSend(interestingCopy, "isInterestingForMemories"))
  {
    v7 = 1;
  }

  else
  {
    [computerCopy neighborScoreWithMomentNode:interestingCopy];
    v7 = [PGGraphMomentNode breakoutOfRoutineTypeWithNeighborScore:?]!= 0;
  }

  return v7;
}

- (id)highlightedAssetInternalPredicate
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAC30];
  [MEMORY[0x277D3CAA8] legacyAestheticScoreThresholdToBeAestheticallyPrettyGood];
  v4 = [v2 predicateWithFormat:@"highlightBeingExtendedAssets != nil AND overallAestheticScore >= %f AND (kindSubtype & %d) == 0", v3, 1];
  noVideoPredicate = [objc_opt_class() noVideoPredicate];
  v6 = [objc_opt_class() internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:33];
  v7 = MEMORY[0x277CCA920];
  v11[0] = v4;
  v11[1] = noVideoPredicate;
  v11[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  return v9;
}

- (id)_batchOfRandomAssetsWithCount:(unint64_t)count progress:(id)progress
{
  v58 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  session = [(PGAbstractSuggester *)self session];
  if (!session)
  {
    v11 = 0;
    goto LABEL_51;
  }

  v8 = _Block_copy(progressCopy);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v47[3] >= 0.01)
    {
      v47[3] = Current;
      v45 = 0;
      v8[2](v8, &v45, 0.0);
      v10 = *(v51 + 24) | v45;
      *(v51 + 24) = v10;
      if (v10)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v55 = 508;
          v56 = 2080;
          v57 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v11 = MEMORY[0x277CBEBF8];
        goto LABEL_50;
      }
    }
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __62__PGLongTailSuggester__batchOfRandomAssetsWithCount_progress___block_invoke;
  v40[3] = &unk_27888A188;
  v12 = v8;
  v41 = v12;
  v42 = &v46;
  v43 = &v50;
  v44 = 0x3F847AE147AE147BLL;
  v13 = [(PGLongTailSuggester *)self _eligibleAssetUUIDsWithProgress:v40];
  if (*(v51 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v55 = 513;
      v56 = 2080;
      v57 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
      v14 = MEMORY[0x277D86220];
LABEL_11:
      _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    if (!v8 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v47[3] < 0.01) || (v47[3] = v15, v45 = 0, v12[2](v12, &v45, 0.5), v16 = *(v51 + 24) | v45, *(v51 + 24) = v16, (v16 & 1) == 0))
    {
      oslog = [session loggingConnection];
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "Long Tail: Selecting random batch of assets", buf, 2u);
      }

      v17 = [v13 count];
      if (v17)
      {
        v18 = [(PGLongTailSuggester *)self _randomRangeWithLocationUpperBound:v17 maxLength:count];
        v20 = v19;
        if (v8 && (v21 = CFAbsoluteTimeGetCurrent(), v21 - v47[3] >= 0.01) && (v47[3] = v21, v45 = 0, v12[2](v12, &v45, 0.7), v22 = *(v51 + 24) | v45, *(v51 + 24) = v22, (v22 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v55 = 529;
            v56 = 2080;
            v57 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v11 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v23 = MEMORY[0x277CBEB98];
          v24 = [v13 subarrayWithRange:{v18, v20}];
          v25 = [v23 setWithArray:v24];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEBUG, "Long Tail: Fetching selected random batch of assets with curation properties", buf, 2u);
          }

          v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(uuid IN %@)", v25];
          v26 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:?];
          v27 = +[PGCurationManager assetPropertySetsForCuration];
          [v26 setFetchPropertySets:v27];

          v38 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v26];
          if (v8 && (v28 = CFAbsoluteTimeGetCurrent(), v28 - v47[3] >= 0.01) && (v47[3] = v28, v45 = 0, v12[2](v12, &v45, 0.8), v29 = *(v51 + 24) | v45, *(v51 + 24) = v29, (v29 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v55 = 542;
              v56 = 2080;
              v57 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v11 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v30 = MEMORY[0x277CD97A8];
            clsPrefetchOptionsForKeyAsset = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
            curationContext = [session curationContext];
            v33 = [v30 clsAllAssetsFromFetchResult:v38 prefetchOptions:clsPrefetchOptionsForKeyAsset curationContext:curationContext];

            if (v8 && (v34 = CFAbsoluteTimeGetCurrent(), v34 - v47[3] >= 0.01) && (v47[3] = v34, v45 = 0, v12[2](v12, &v45, 1.0), v35 = *(v51 + 24) | v45, *(v51 + 24) = v35, (v35 & 1) != 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v55 = 546;
                v56 = 2080;
                v57 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v11 = MEMORY[0x277CBEBF8];
            }

            else
            {
              v11 = v33;
            }
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Fetch of all highighted assets return empty results.", buf, 2u);
        }

        v11 = 0;
      }

      goto LABEL_49;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v55 = 515;
      v56 = 2080;
      v57 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
      v14 = MEMORY[0x277D86220];
      goto LABEL_11;
    }
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_49:

LABEL_50:
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

LABEL_51:

  return v11;
}

void __62__PGLongTailSuggester__batchOfRandomAssetsWithCount_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)_fetchVerifiedPersonUUIDsByAssetUUIds:(id)ids
{
  idsCopy = ids;
  session = [(PGAbstractSuggester *)self session];
  v6 = session;
  if (session)
  {
    photoLibrary = [session photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"personForFace.type", -1];
    [librarySpecificFetchOptions setInternalPredicate:v9];

    v10 = [MEMORY[0x277CD9938] fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:idsCopy options:librarySpecificFetchOptions];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_longTailScoreWithAsset:(id)asset withAdditionalOptions:(id)options
{
  assetCopy = asset;
  optionsCopy = options;
  if ([assetCopy isFavorite])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 + [assetCopy isIncludedInCloudFeeds];
  if ([assetCopy clsShareCount])
  {
    ++v9;
  }

  if ([assetCopy clsPeopleCount])
  {
    ++v9;
  }

  session = [(PGAbstractSuggester *)self session];
  [session topTierAestheticScore];
  v12 = v11;

  if (v12 != 0.0)
  {
    [assetCopy clsAestheticScore];
    if (v13 >= v12)
    {
      v9 += [optionsCopy topTierAestheticScoreValue];
    }
  }

  verifiedPersonUUIDsByAssetUUIds = self->_verifiedPersonUUIDsByAssetUUIds;
  uuid = [assetCopy uuid];
  v16 = [(NSDictionary *)verifiedPersonUUIDsByAssetUUIds objectForKeyedSubscript:uuid];

  if ([v16 count])
  {
    v9 += [optionsCopy verifiedPersonScoreValue];
  }

  return v9;
}

- (id)nextSuggestedAssetWithProgress:(id)progress
{
  v65 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v4 = _Block_copy(progressCopy);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  if (!v4 || (v5 = CFAbsoluteTimeGetCurrent(), v5 - v53[3] < 0.01) || (v53[3] = v5, v51 = 0, (*(v4 + 2))(v4, &v51, 0.0), v6 = *(v57 + 24) | v51, *(v57 + 24) = v6, (v6 & 1) == 0))
  {
    ++self->_randomSeed;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__PGLongTailSuggester_nextSuggestedAssetWithProgress___block_invoke;
    v46[3] = &unk_27888A188;
    v8 = v4;
    v47 = v8;
    v48 = &v52;
    v49 = &v56;
    v50 = 0x3F847AE147AE147BLL;
    v9 = [(PGLongTailSuggester *)self _nextCandidateAssetsWithProgress:v46];
    v10 = v9;
    if (*(v57 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_17:
        v7 = 0;
LABEL_63:

        goto LABEL_64;
      }

      *buf = 67109378;
      v62 = 394;
      v63 = 2080;
      v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
      v11 = MEMORY[0x277D86220];
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_17;
    }

    if (![v9 count])
    {
      goto LABEL_17;
    }

    if (v4)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v53[3] >= 0.01)
      {
        v53[3] = Current;
        v51 = 0;
        (*(v8 + 2))(v8, &v51, 0.2);
        v13 = *(v57 + 24) | v51;
        *(v57 + 24) = v13;
        if (v13)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          *buf = 67109378;
          v62 = 401;
          v63 = 2080;
          v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          v11 = MEMORY[0x277D86220];
          goto LABEL_10;
        }
      }
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v42 objects:v60 count:16];
    v40 = v10;
    if (v16)
    {
      v17 = *v43;
      do
      {
        v18 = 0;
        v19 = v14;
        do
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v15);
          }

          uuid = [*(*(&v42 + 1) + 8 * v18) uuid];
          v14 = [v19 arrayByAddingObject:uuid];

          ++v18;
          v19 = v14;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v42 objects:v60 count:16];
      }

      while (v16);
    }

    v21 = [(PGLongTailSuggester *)self _fetchVerifiedPersonUUIDsByAssetUUIds:v14];
    v22 = v40;
    verifiedPersonUUIDsByAssetUUIds = self->_verifiedPersonUUIDsByAssetUUIds;
    self->_verifiedPersonUUIDsByAssetUUIds = v21;

    if (v4)
    {
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v53[3] >= 0.01)
      {
        v53[3] = v24;
        v51 = 0;
        (*(v8 + 2))(v8, &v51, 0.4);
        v25 = *(v57 + 24) | v51;
        *(v57 + 24) = v25;
        if (v25)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v62 = 410;
            v63 = 2080;
            v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = 0;
          goto LABEL_62;
        }
      }
    }

    v26 = [(PGLongTailSuggester *)self _candidateByAssetUUIDsFromAssets:v15, v40];
    if (v4)
    {
      v27 = CFAbsoluteTimeGetCurrent();
      if (v27 - v53[3] >= 0.01)
      {
        v53[3] = v27;
        v51 = 0;
        (*(v8 + 2))(v8, &v51, 0.6);
        v28 = *(v57 + 24) | v51;
        *(v57 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v62 = 415;
            v63 = 2080;
            v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = 0;
          goto LABEL_61;
        }
      }
    }

    v29 = [(PGLongTailSuggester *)self _bestAssetUUIDsFromCandidates:v26 percentile:[(PGLongTailAdditionalOptions *)self->_additionalOptions qualityPercentile]];
    if (![v29 count])
    {
      goto LABEL_43;
    }

    if (v4)
    {
      v30 = CFAbsoluteTimeGetCurrent();
      if (v30 - v53[3] >= 0.01)
      {
        v53[3] = v30;
        v51 = 0;
        (*(v8 + 2))(v8, &v51, 0.8);
        v31 = *(v57 + 24) | v51;
        *(v57 + 24) = v31;
        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v62 = 424;
            v63 = 2080;
            v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_43:
          v7 = 0;
LABEL_60:

LABEL_61:
LABEL_62:

          v10 = v22;
          goto LABEL_63;
        }
      }
    }

    v32 = [(PGLongTailSuggester *)self _assetUUIDByWeightedProbablisticSamplingFromAssetUUIDS:v29 weights:v26];
    if (v32)
    {
      if (!v4 || (v33 = CFAbsoluteTimeGetCurrent(), v33 - v53[3] < 0.01) || (v53[3] = v33, v51 = 0, (*(v8 + 2))(v8, &v51, 0.9), v34 = *(v57 + 24) | v51, *(v57 + 24) = v34, (v34 & 1) == 0))
      {
        v35 = [v26 objectForKeyedSubscript:v32];
        asset = [v35 asset];
        [(NSMutableSet *)self->_suggestedAssetsFromPreviousBatch addObject:asset];
        ++self->_numberOfGeneratedSuggestions;
        if (v4 && (v37 = CFAbsoluteTimeGetCurrent(), v37 - v53[3] >= 0.01) && (v53[3] = v37, v51 = 0, (*(v8 + 2))(v8, &v51, 1.0), v38 = *(v57 + 24) | v51, *(v57 + 24) = v38, (v38 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v62 = 442;
            v63 = 2080;
            v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = 0;
        }

        else
        {
          v7 = asset;
        }

        goto LABEL_59;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v62 = 433;
        v63 = 2080;
        v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    v7 = 0;
LABEL_59:

    goto LABEL_60;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v62 = 386;
    v63 = 2080;
    v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v7 = 0;
LABEL_64:
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  return v7;
}

void __54__PGLongTailSuggester_nextSuggestedAssetWithProgress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)_nextCandidateAssetsWithProgress:(id)progress
{
  progressCopy = progress;
  [(NSMutableSet *)self->_candidateAssetsFromPreviousBatch minusSet:self->_suggestedAssetsFromPreviousBatch];
  if ([(PGLongTailSuggester *)self _shouldUsePreviousBatchOfCandidateAssets])
  {
    allObjects = [(NSMutableSet *)self->_candidateAssetsFromPreviousBatch allObjects];
  }

  else
  {
    allObjects = [(PGLongTailSuggester *)self _batchOfRandomAssetsWithCount:200 progress:progressCopy];
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:allObjects];
    candidateAssetsFromPreviousBatch = self->_candidateAssetsFromPreviousBatch;
    self->_candidateAssetsFromPreviousBatch = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    suggestedAssetsFromPreviousBatch = self->_suggestedAssetsFromPreviousBatch;
    self->_suggestedAssetsFromPreviousBatch = v8;
  }

  return allObjects;
}

- (BOOL)_shouldUsePreviousBatchOfCandidateAssets
{
  LODWORD(v3) = [(PGAbstractSuggester *)self lastSuggestionWasColliding];
  if (v3)
  {
    v3 = [(NSMutableSet *)self->_candidateAssetsFromPreviousBatch count];
    if (v3)
    {
      LOBYTE(v3) = [(NSMutableSet *)self->_suggestedAssetsFromPreviousBatch count]< 0x14;
    }
  }

  return v3;
}

- (void)reset
{
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: Resetting", v11, 2u);
  }

  [(PGAbstractSuggester *)self setLastSuggestionWasColliding:0];
  localToday = [(PGSuggestionOptions *)self->_options localToday];
  [localToday timeIntervalSince1970];
  self->_randomSeed = v6;

  self->_numberOfGeneratedSuggestions = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  suggestedAssetsFromPreviousBatch = self->_suggestedAssetsFromPreviousBatch;
  self->_suggestedAssetsFromPreviousBatch = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  candidateAssetsFromPreviousBatch = self->_candidateAssetsFromPreviousBatch;
  self->_candidateAssetsFromPreviousBatch = v9;
}

- (id)nextSuggestionWithProgress:(id)progress
{
  v19 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  if (self->_numberOfGeneratedSuggestions < 0x65)
  {
    session = [(PGAbstractSuggester *)self session];
    v7 = session;
    if (session)
    {
      loggingConnection = [session loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: nextSuggestion", &v15, 2u);
      }

      v9 = [(PGLongTailSuggester *)self nextSuggestedAssetWithProgress:progressCopy];
      if (v9 && (v10 = [[PGSingleAssetSuggestion alloc] initWithType:5 subtype:502 asset:v9]) != 0)
      {
        v5 = v10;
        if ([(PGSuggestionOptions *)self->_options computeReasons])
        {
          v11 = [(PGLongTailSuggester *)self reasonsForSuggestion:v5];
          [(PGSingleAssetSuggestion *)v5 setReasons:v11];
        }

        v12 = loggingConnection;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          reasons = [(PGSingleAssetSuggestion *)v5 reasons];
          v15 = 138478083;
          v16 = v5;
          v17 = 2112;
          v18 = reasons;
          _os_log_debug_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: Suggesting %{private}@ with reasons: %@", &v15, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v15) = 0;
          _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: Nothing to suggest", &v15, 2u);
        }

        v5 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        LOWORD(v15) = 0;
        _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Long Tail Suggester: Needs a session!", &v15, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Long Tail Suggester: All suggestion trials have been used.", &v15, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)startSuggestingWithOptions:(id)options
{
  optionsCopy = options;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "Long Tail Suggester: Starting suggestion", buf, 2u);
  }

  [(PGAbstractSuggester *)self setLastSuggestionWasColliding:0];
  options = self->_options;
  self->_options = optionsCopy;
  v8 = optionsCopy;

  maximumNumberOfSuggestions = [(PGSuggestionOptions *)self->_options maximumNumberOfSuggestions];
  if (maximumNumberOfSuggestions)
  {
    v10 = maximumNumberOfSuggestions;
  }

  else
  {
    v10 = -1;
  }

  self->_maximumNumberOfSuggestions = v10;
  self->_numberOfGeneratedSuggestions = 0;
  localToday = [(PGSuggestionOptions *)v8 localToday];
  [localToday timeIntervalSince1970];
  self->_randomSeed = v12;

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  suggestedAssetsFromPreviousBatch = self->_suggestedAssetsFromPreviousBatch;
  self->_suggestedAssetsFromPreviousBatch = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  candidateAssetsFromPreviousBatch = self->_candidateAssetsFromPreviousBatch;
  self->_candidateAssetsFromPreviousBatch = v15;

  v17 = [PGLongTailAdditionalOptions alloc];
  additionalOptions = [(PGSuggestionOptions *)v8 additionalOptions];
  v19 = [(PGLongTailAdditionalOptions *)v17 initWithDictionary:additionalOptions];
  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = v19;

  workingContext = [session workingContext];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__PGLongTailSuggester_startSuggestingWithOptions___block_invoke;
  v22[3] = &unk_27888A3B8;
  v22[4] = self;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v22];
}

void __50__PGLongTailSuggester_startSuggestingWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 graph];
  [v2 captureInformationFromGraph:v3];
}

- (void)captureInformationFromGraph:(id)graph
{
  v12 = *MEMORY[0x277D85DE8];
  meNodeWithFallbackInferredMeNode = [graph meNodeWithFallbackInferredMeNode];
  localIdentifier = [meNodeWithFallbackInferredMeNode localIdentifier];
  meNodeLocalIdentifier = self->_meNodeLocalIdentifier;
  self->_meNodeLocalIdentifier = localIdentifier;

  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    v9 = self->_meNodeLocalIdentifier;
    v10 = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "Long Tail: meNode local identifier is: %@", &v10, 0xCu);
  }
}

- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date
{
  assetCopy = asset;
  dateCopy = date;
  session = [(PGAbstractSuggester *)self session];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  photoLibrary = [session photoLibrary];
  workingContext = [session workingContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__PGLongTailSuggester_canGenerateSuggestionWithAsset_onDate___block_invoke;
  v14[3] = &unk_278889308;
  v14[4] = self;
  v11 = assetCopy;
  v15 = v11;
  v12 = photoLibrary;
  v16 = v12;
  v17 = &v18;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v14];

  LOBYTE(workingContext) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return workingContext;
}

void __61__PGLongTailSuggester_canGenerateSuggestionWithAsset_onDate___block_invoke(uint64_t a1, void *a2)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  [*(a1 + 32) captureInformationFromGraph:v3];
  v4 = [*(a1 + 32) highlightedAssetInternalPredicate];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 40) uuid];
  v7 = [v5 predicateWithFormat:@"uuid == %@", v6];

  v8 = MEMORY[0x277CCA920];
  v40[0] = v4;
  v40[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = [*(a1 + 32) defaultAssetFetchOptionsWithInternalPredicate:v10];
  v12 = +[PGCurationManager assetPropertySetsForCuration];
  [v11 setFetchPropertySets:v12];

  [v11 setFetchLimit:1];
  v13 = MEMORY[0x277CD97A8];
  v14 = [*(a1 + 40) uuid];
  v39 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v16 = [v13 fetchAssetsWithUUIDs:v15 options:v11];

  if ([v16 count])
  {
    v36 = v7;
    v37 = v4;
    v17 = [*(a1 + 48) librarySpecificFetchOptions];
    v18 = MEMORY[0x277CD98F8];
    v19 = [*(a1 + 40) uuid];
    v38 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v35 = v17;
    v21 = [v18 fetchMomentUUIDByAssetUUIDForAssetUUIDs:v20 options:v17];
    v22 = [v21 allValues];
    v23 = [v22 firstObject];

    if (v23)
    {
      v24 = objc_alloc_init(PGNeighborScoreComputer);
      v25 = [PGGraphMomentNodeCollection momentNodeForUUID:v23 inGraph:v3];
      v26 = [v25 anyNode];

      if (v26 && [*(a1 + 32) isMomentNodeInteresting:v26 withNeighborScoreComputer:v24])
      {
        v34 = v24;
        v27 = MEMORY[0x277CD97A8];
        v28 = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
        v33 = [*(a1 + 32) session];
        v29 = [v33 curationContext];
        v30 = [v27 clsAllAssetsFromFetchResult:v16 prefetchOptions:v28 curationContext:v29];
        v31 = [v30 firstObject];

        if (v31)
        {
          v32 = -[PGLongTailSuggestionCandidate initWithAsset:score:]([PGLongTailSuggestionCandidate alloc], "initWithAsset:score:", v31, [*(a1 + 32) _longTailScoreWithAsset:v31 withAdditionalOptions:*(*(a1 + 32) + 56)]);
          *(*(*(a1 + 56) + 8) + 24) = [(PGLongTailSuggestionCandidate *)v32 isValidWithMeNodeLocalIdentifier:*(*(a1 + 32) + 120)];
        }

        v24 = v34;
      }
    }

    v7 = v36;
    v4 = v37;
  }
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v48 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  aBlock = progress;
  session = [(PGAbstractSuggester *)self session];
  if (session)
  {
    v6 = _Block_copy(aBlock);
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    if (v6 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v37[3] >= 0.01) && (v37[3] = v7, v35 = 0, (*(v6 + 2))(v6, &v35, 0.0), v8 = *(v41 + 24) | v35, *(v41 + 24) = v8, (v8 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v45 = 192;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      [(PGLongTailSuggester *)self startSuggestingWithOptions:optionsCopy];
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = 0;
      v11 = 1.0 / self->_maximumNumberOfSuggestions;
      v12 = 0.0;
      v13 = MEMORY[0x277D86220];
      while (v10 < self->_maximumNumberOfSuggestions)
      {
        v14 = objc_autoreleasePoolPush();
        if (v6 && (Current = CFAbsoluteTimeGetCurrent(), Current - v37[3] >= 0.01) && (v37[3] = Current, v35 = 0, (*(v6 + 2))(v6, &v35, v12), v16 = *(v41 + 24) | v35, *(v41 + 24) = v16, (v16 & 1) != 0))
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v45 = 202;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
            _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v17 = 1;
        }

        else
        {
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __55__PGLongTailSuggester_suggestionsWithOptions_progress___block_invoke;
          v28[3] = &unk_278886858;
          v29 = v6;
          v30 = &v36;
          v33 = v12;
          v34 = v11;
          v32 = 0x3F847AE147AE147BLL;
          v31 = &v40;
          v18 = [(PGLongTailSuggester *)self nextSuggestionWithProgress:v28];
          v19 = v18;
          if (*(v41 + 24) == 1)
          {
            v17 = 1;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v45 = 207;
              v46 = 2080;
              v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
              _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }

          else if (v18)
          {
            [v25 addObject:v18];
            v17 = 0;
            ++v10;
            v12 = v11 + v12;
          }

          else
          {
            v17 = 3;
          }
        }

        objc_autoreleasePoolPop(v14);
        if (v17)
        {
          if (v17 != 3)
          {
            v9 = MEMORY[0x277CBEBF8];
            v20 = v25;
            goto LABEL_34;
          }

          break;
        }
      }

      v20 = v25;
      if (v6 && (v21 = CFAbsoluteTimeGetCurrent(), v21 - v37[3] >= 0.01) && (v37[3] = v21, v35 = 0, (*(v6 + 2))(v6, &v35, 1.0), v22 = *(v41 + 24) | v35, *(v41 + 24) = v22, (v22 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v45 = 217;
          v46 = 2080;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Long Tail Suggester/PGLongTailSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v9 = v25;
      }

LABEL_34:
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

void __55__PGLongTailSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + *(a1 + 72) * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end