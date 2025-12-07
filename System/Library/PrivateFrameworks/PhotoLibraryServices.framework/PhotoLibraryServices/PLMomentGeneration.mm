@interface PLMomentGeneration
+ (id)dateIntervalsAroundSortedDates:(id)dates minimumIntervalDuration:(double)duration;
- (BOOL)_hasWorkWorkRemainingWithCompletionBlocks:(id *)blocks;
- (BOOL)_isAsset:(id)asset identicalToAssetForMoments:(id)moments;
- (BOOL)_writeDetails:(id)details toFilepath:(id)filepath withDefaultFilename:(id)filename;
- (BOOL)regenerateMonthHighlightTitlesWithManager:(id)manager error:(id *)error;
- (PLMomentGeneration)initWithMomentGenerationDataManager:(id)manager bundle:(id)bundle locale:(id)locale;
- (PLMomentGenerationDataManagement)momentGenerationDataManager;
- (id)_detailsForAsset:(id)asset simpleOnly:(BOOL)only;
- (id)_detailsForMoment:(id)moment;
- (id)_highlightGenerator;
- (id)_logEntryForAssets:(id)assets isBatchUpdate:(BOOL)update;
- (id)_newPublicGlobalUUIDsToAssetsMappingWithAssets:(id)assets;
- (id)allAssetMetadataWriteToFile:(id)file;
- (id)allMomentsMetadataWriteToFile:(id)file;
- (id)momentGenerationStatus;
- (id)newFrequentLocationManager;
- (id)newLocalCreationDateCreator;
- (void)_appendAssetsToReplayLog:(id)log forBatchUpdate:(BOOL)update;
- (void)_clearReplayLog;
- (void)_runIncrementalGenerationPassWithCompletionHandler:(id)handler;
- (void)_runIncrementalMomentGenerationIfItemsArePendingWithCompletion:(id)completion;
- (void)_runMomentAndHighlightGenerationForAssets:(id)assets hiddenAssets:(id)hiddenAssets updatedAssetIDsForHighlights:(id)highlights updatedMomentIDsForHighlights:(id)forHighlights affectedMoments:(id)moments highlightsWithDeletedMoments:(id)deletedMoments sharedAssetContainerIncrementalChanges:(id)changes insertedOrUpdatedMoments:(id *)self0;
- (void)cleanupEmptyHighlightsWithCompletionBlock:(id)block;
- (void)generateWithAssetInsertsAndUpdates:(id)updates assetDeletes:(id)deletes assetUpdatesForHighlights:(id)highlights momentUpdatesForHighlights:(id)forHighlights completionHandler:(id)handler;
- (void)generateWithIncrementalDataCompletionHandler:(id)handler;
- (void)invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale:(BOOL)locale completionBlock:(id)block;
- (void)locationOfInterestUpdateWithCompletionBlock:(id)block;
- (void)processRecentHighlightsWithCompletionBlock:(id)block;
- (void)processUnprocessedMomentLocationsWithCompletionBlock:(id)block;
- (void)rebuildAllHighlightsWithOptions:(id)options completionHandler:(id)handler;
- (void)rebuildAllMomentsWithOptions:(id)options completionHandler:(id)handler;
- (void)releaseMemoryIntensiveObjects;
- (void)saveChangesForAssetInsertsAndUpdates:(id)updates assetDeletes:(id)deletes assetUpdatesForHighlights:(id)highlights momentUpdatesForHighlights:(id)forHighlights sharedAssetContainerIncrementalChangesByAssetID:(id)d;
- (void)updateHighlightTitlesWithCompletionBlock:(id)block;
- (void)validateLibraryWithCompletionBlock:(id)block;
@end

@implementation PLMomentGeneration

- (PLMomentGenerationDataManagement)momentGenerationDataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);

  return WeakRetained;
}

- (BOOL)regenerateMonthHighlightTitlesWithManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__108963;
  v23 = __Block_byref_object_dispose__108964;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PLMomentGeneration_regenerateMonthHighlightTitlesWithManager_error___block_invoke;
  v10[3] = &unk_1E7578898;
  v7 = managerCopy;
  v13 = &v15;
  v14 = &v19;
  v11 = v7;
  selfCopy = self;
  [v7 performDataTransaction:v10 synchronously:1 completionHandler:0];
  if (error)
  {
    *error = v20[5];
  }

  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

void __70__PLMomentGeneration_regenerateMonthHighlightTitlesWithManager_error___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Re-generating month highlight titles.", buf, 2u);
  }

  v3 = a1[4];
  v8 = 0;
  v4 = [v3 allPhotosHighlightsOfKind:1 error:&v8];
  v5 = v8;
  v6 = v8;
  if (v4)
  {
    [PLPhotosHighlightGenerator updateTitleForHighlights:v4 forKind:1 forceUpdateLocale:0 dateRangeTitleGenerator:*(a1[5] + 104)];
  }

  else
  {
    v7 = PLMomentsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Fetching Months failed: %@", buf, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = 0;
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

- (void)validateLibraryWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(PLMomentGeneration *)self isGenerationPassInProgress])
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
    if (([momentGenerationDataManager shouldPerformLightweightValidation] & 1) != 0 && (v6 = +[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion"), v7 = objc_msgSend(momentGenerationDataManager, "previousValidatedModelVersion"), v8 = objc_msgSend(momentGenerationDataManager, "previousValidationSucceeded"), v7 < v6))
    {
      v9 = v8;
      v10 = PLMomentGenerationGetLog();
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x2020000000;
      v36 = 1;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x3032000000;
      v33[3] = __Block_byref_object_copy__108963;
      v33[4] = __Block_byref_object_dispose__108964;
      array = [MEMORY[0x1E695DF70] array];
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x3032000000;
      v31[3] = __Block_byref_object_copy__108963;
      v31[4] = __Block_byref_object_dispose__108964;
      array2 = [MEMORY[0x1E695DF70] array];
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = __Block_byref_object_copy__108963;
      v29[4] = __Block_byref_object_dispose__108964;
      array3 = [MEMORY[0x1E695DF70] array];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __57__PLMomentGeneration_validateLibraryWithCompletionBlock___block_invoke;
      v21[3] = &unk_1E7576B18;
      v11 = v10;
      v22 = v11;
      v25 = v35;
      v26 = v33;
      v23 = momentGenerationDataManager;
      selfCopy = self;
      v27 = v31;
      v28 = v29;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__PLMomentGeneration_validateLibraryWithCompletionBlock___block_invoke_272;
      v12[3] = &unk_1E7576B40;
      v20 = v9;
      v15 = v35;
      v16 = v33;
      v17 = v31;
      v18 = v29;
      v13 = v23;
      v19 = v6;
      v14 = blockCopy;
      [v13 performDataTransaction:v21 synchronously:0 completionHandler:v12];

      _Block_object_dispose(v29, 8);
      _Block_object_dispose(v31, 8);

      _Block_object_dispose(v33, 8);
      _Block_object_dispose(v35, 8);
    }

    else if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }
}

void __57__PLMomentGeneration_validateLibraryWithCompletionBlock___block_invoke(uint64_t a1)
{
  v126 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = os_signpost_id_generate(v2);
  info = 0;
  mach_timebase_info(&info);
  v4 = v2;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ValidateAssetsPerBatch", "", buf, 2u);
  }

  v7 = mach_absolute_time();
  v8 = *(a1 + 40);
  v117 = 0;
  v9 = [v8 allInvalidAssetsWithError:&v117];
  v10 = v117;
  if (!v9)
  {
    v13 = PLBackendGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v122 = v10;
    v20 = "[MomentsGeneration.Validation] Could not fetch invalid assets with error:%@";
    v21 = v13;
    v22 = OS_LOG_TYPE_ERROR;
    v23 = 12;
LABEL_23:
    _os_log_impl(&dword_19BF1F000, v21, v22, v20, buf, v23);
    goto LABEL_24;
  }

  if (!objc_msgSend_count(v9))
  {
    v13 = PLMomentsGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v20 = "[MomentsGeneration.Validation] All assets valid";
    v21 = v13;
    v22 = OS_LOG_TYPE_DEFAULT;
    v23 = 2;
    goto LABEL_23;
  }

  v98 = v3 - 1;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_msgSend_count(v9);
    *buf = 134217984;
    v122 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Detected %lu invalid assets", buf, 0xCu);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v113 objects:v125 count:16];
  if (v14)
  {
    v15 = v14;
    v89 = v7;
    v92 = v3;
    v95 = v10;
    v16 = *v114;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v114 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v113 + 1) + 8 * i) uuid];
        [*(*(*(a1 + 64) + 8) + 40) addObject:v18];
        v19 = PLBackendGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v122 = v18;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Invalid asset with identifier:%@", buf, 0xCu);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v113 objects:v125 count:16];
    }

    while (v15);
    v7 = v89;
    v3 = v92;
    v10 = v95;
  }

  v6 = v98;
LABEL_24:

  v24 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v27 = v5;
  v28 = v27;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, v3, "ValidateAssetsPerBatch", "", buf, 2u);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v122 = "ValidateAssetsPerBatch";
    v123 = 2048;
    v124 = ((((v24 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v29 = *(a1 + 32);
  v30 = os_signpost_id_generate(v29);
  v112 = 0;
  mach_timebase_info(&v112);
  v31 = v29;
  v32 = v31;
  v99 = v30 - 1;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "ValidateMomentsPerBatch", "", buf, 2u);
  }

  v33 = mach_absolute_time();
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 112));
  v111 = v10;
  v35 = [WeakRetained allInvalidMomentsWithError:&v111];
  v36 = v111;

  v96 = v33;
  if (!v35)
  {
    v39 = PLBackendGetLog();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 138412290;
    v122 = v36;
    v46 = "[MomentsGeneration.Validation] Could not fetch invalid moments with error:%@";
    v47 = v39;
    v48 = OS_LOG_TYPE_ERROR;
    v49 = 12;
LABEL_50:
    _os_log_impl(&dword_19BF1F000, v47, v48, v46, buf, v49);
    goto LABEL_51;
  }

  if (!objc_msgSend_count(v35))
  {
    v39 = PLMomentsGetLog();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v46 = "[MomentsGeneration.Validation] All moments valid";
    v47 = v39;
    v48 = OS_LOG_TYPE_DEFAULT;
    v49 = 2;
    goto LABEL_50;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v37 = PLBackendGetLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = objc_msgSend_count(v35);
    *buf = 134217984;
    v122 = v38;
    _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Detected %lu invalid moments", buf, 0xCu);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v85 = v35;
  v39 = v35;
  v40 = [v39 countByEnumeratingWithState:&v107 objects:v120 count:16];
  if (v40)
  {
    v41 = v40;
    v90 = v30;
    v93 = v36;
    v87 = v9;
    v42 = *v108;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v108 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v107 + 1) + 8 * j) uuid];
        [*(*(*(a1 + 72) + 8) + 40) addObject:v44];
        v45 = PLBackendGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v122 = v44;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Invalid moment with identifier:%@", buf, 0xCu);
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v107 objects:v120 count:16];
    }

    while (v41);
    v35 = v85;
    v9 = v87;
    v30 = v90;
    v36 = v93;
  }

LABEL_51:

  v50 = mach_absolute_time();
  v52 = v112.numer;
  v51 = v112.denom;
  v53 = v32;
  v54 = v53;
  if (v99 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v54, OS_SIGNPOST_INTERVAL_END, v30, "ValidateMomentsPerBatch", "", buf, 2u);
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v122 = "ValidateMomentsPerBatch";
    v123 = 2048;
    v124 = ((((v50 - v96) * v52) / v51) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v55 = *(a1 + 32);
  v56 = os_signpost_id_generate(v55);
  v106 = 0;
  mach_timebase_info(&v106);
  v57 = v55;
  v58 = v57;
  v97 = v56 - 1;
  if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v56, "ValidateHighlightsPerBatch", "", buf, 2u);
  }

  v94 = v58;

  v91 = mach_absolute_time();
  v59 = objc_loadWeakRetained((*(a1 + 48) + 112));
  v105 = v36;
  v60 = [v59 allInvalidPhotosHighlightsOfAllKindsWithError:&v105];
  v61 = v105;

  v100 = v60;
  if (!v60)
  {
    v64 = PLBackendGetLog();
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    *buf = 138412290;
    v122 = v61;
    v73 = "[MomentsGeneration.Validation] Could not fetch invalid highlights with error:%@";
    v74 = v64;
    v75 = OS_LOG_TYPE_ERROR;
    v76 = 12;
LABEL_78:
    _os_log_impl(&dword_19BF1F000, v74, v75, v73, buf, v76);
    goto LABEL_79;
  }

  if (!objc_msgSend_count(v60))
  {
    v64 = PLMomentsGetLog();
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_79;
    }

    *buf = 0;
    v73 = "[MomentsGeneration.Validation] All highlights valid";
    v74 = v64;
    v75 = OS_LOG_TYPE_DEFAULT;
    v76 = 2;
    goto LABEL_78;
  }

  v84 = v61;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v62 = PLBackendGetLog();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    v63 = objc_msgSend_count(v60);
    *buf = 134217984;
    v122 = v63;
    _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Detected %lu invalid highlights", buf, 0xCu);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v64 = v60;
  v65 = [v64 countByEnumeratingWithState:&v101 objects:v119 count:16];
  if (v65)
  {
    v66 = v65;
    v82 = v56;
    v83 = v54;
    v86 = v35;
    v88 = v9;
    v67 = *v102;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v102 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v101 + 1) + 8 * k);
        [v69 uuid];
        v70 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*(*(*(a1 + 80) + 8) + 40) addObject:*&v70];
        v71 = +[PLPhotosHighlight stringFromHighlightKind:](PLPhotosHighlight, "stringFromHighlightKind:", [v69 kind]);
        v72 = PLBackendGetLog();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v122 = v71;
          v123 = 2112;
          v124 = v70;
          _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Invalid %@ highlight with identifier:%@", buf, 0x16u);
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v101 objects:v119 count:16];
    }

    while (v66);
    v35 = v86;
    v9 = v88;
    v56 = v82;
    v54 = v83;
  }

  v61 = v84;
LABEL_79:

  v77 = mach_absolute_time();
  v79 = v106.numer;
  v78 = v106.denom;
  v80 = v94;
  v81 = v80;
  if (v97 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v81, OS_SIGNPOST_INTERVAL_END, v56, "ValidateHighlightsPerBatch", "", buf, 2u);
  }

  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v122 = "ValidateHighlightsPerBatch";
    v123 = 2048;
    v124 = ((((v77 - v91) * v79) / v78) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

uint64_t __57__PLMomentGeneration_validateLibraryWithCompletionBlock___block_invoke_272(uint64_t a1, const char *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(a1 + 88) == 1)
  {
    v3 = objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40), a2);
    v4 = objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40));
    v5 = objc_msgSend_count(*(*(*(a1 + 72) + 8) + 40));
    v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n\n", @"Photos has detected some inconsistencies in the curation."];
    if (objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40)))
    {
      [v6 appendFormat:@"%lu asset identifiers:\n", v3];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v34;
        do
        {
          v11 = 0;
          do
          {
            if (*v34 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v6 appendFormat:@"%@\n", *(*(&v33 + 1) + 8 * v11++)];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v9);
      }

      [v6 appendString:@"\n"];
    }

    if (objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40)))
    {
      [v6 appendFormat:@"%lu moment identifiers:\n", v4];
      [v6 appendString:@"Moment identifiers:\n"];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = *(*(*(a1 + 64) + 8) + 40);
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        do
        {
          v16 = 0;
          do
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v6 appendFormat:@"%@\n", *(*(&v29 + 1) + 8 * v16++)];
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v14);
      }

      [v6 appendString:@"\n"];
    }

    if (objc_msgSend_count(*(*(*(a1 + 72) + 8) + 40)))
    {
      [v6 appendFormat:@"%lu highlight identifiers:\n", v5];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = *(*(*(a1 + 72) + 8) + 40);
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          v21 = 0;
          do
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [v6 appendFormat:@"%@\n", *(*(&v25 + 1) + 8 * v21++)];
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v19);
      }

      [v6 appendString:@"\n"];
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Please file a radar to help diagnose the problem.", @"Photos has detected some inconsistencies in the curation."];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos Clustering Error (%lu, %lu, %lu)", v3, v4, v5];
    [PLDiagnostics fileRadarUserNotificationWithHeader:@"Photos Curation Inconsistencies" message:v22 radarTitle:v23 radarDescription:v6];
  }

  [*(a1 + 32) setPreviousValidatedModelVersion:*(a1 + 80)];
  [*(a1 + 32) setPreviousValidationSucceeded:*(*(*(a1 + 48) + 8) + 24)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)allMomentsMetadataWriteToFile:(id)file
{
  fileCopy = file;
  momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__108963;
  v21[4] = __Block_byref_object_dispose__108964;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__108963;
  v19 = __Block_byref_object_dispose__108964;
  v20 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PLMomentGeneration_allMomentsMetadataWriteToFile___block_invoke;
  v10[3] = &unk_1E7578898;
  v13 = v21;
  v6 = momentGenerationDataManager;
  v14 = &v15;
  v11 = v6;
  selfCopy = self;
  [v6 performBlock:v10 synchronously:1 completionHandler:0];
  if (fileCopy)
  {
    if (![(PLMomentGeneration *)self _writeDetails:v16[5] toFilepath:fileCopy withDefaultFilename:@"momentsMetadataDump.plist"])
    {
      NSLog(&cfstr_ThereWasAnErro_0.isa, fileCopy);
    }

    v7 = v16[5];
    v16[5] = 0;
  }

  v8 = v16[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v21, 8);

  return v8;
}

void __52__PLMomentGeneration_allMomentsMetadataWriteToFile___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allMomentsWithError:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40))];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(*(*(a1 + 48) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [*(a1 + 40) _detailsForMoment:{v14, v17}];
        [v8 addObject:v16];

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [*(*(*(a1 + 56) + 8) + 40) setValue:v8 forKey:@"AllMoments"];
}

- (id)_detailsForMoment:(id)moment
{
  v33[2] = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  v5 = momentCopy;
  if (momentCopy)
  {
    approximateLocation = [momentCopy approximateLocation];

    if (approximateLocation)
    {
      approximateLocation2 = [v5 approximateLocation];
      [approximateLocation2 coordinate];
      v9 = v8;
      v11 = v10;

      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      v32[0] = @"MomentApproximateLocationLatitude";
      v32[1] = @"MomentApproximateLocationLongitude";
      v33[0] = v12;
      v33[1] = v13;
      approximateLocation = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    startDate = [v5 startDate];
    [v14 setValue:startDate forKey:@"MomentStartDate"];

    endDate = [v5 endDate];
    [v14 setValue:endDate forKey:@"MomentEndDate"];

    representativeDate = [v5 representativeDate];
    [v14 setValue:representativeDate forKey:@"MomentRepresentativeDate"];

    [v14 setValue:approximateLocation forKey:@"MomentApproximateLocation"];
    assets = [v5 assets];
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:objc_msgSend_count(assets)];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = assets;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [(PLMomentGeneration *)self _detailsForAsset:*(*(&v27 + 1) + 8 * i) simpleOnly:0, v27];
          [v19 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v22);
    }

    [v14 setValue:v19 forKey:@"MomentAssets"];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)allAssetMetadataWriteToFile:(id)file
{
  fileCopy = file;
  momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__108963;
  v21 = __Block_byref_object_dispose__108964;
  v22 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__PLMomentGeneration_allAssetMetadataWriteToFile___block_invoke;
  v13 = &unk_1E7578820;
  v6 = momentGenerationDataManager;
  selfCopy = self;
  v16 = &v17;
  v14 = v6;
  [v6 performBlock:&v10 synchronously:1 completionHandler:0];
  if (fileCopy)
  {
    if (![(PLMomentGeneration *)self _writeDetails:v18[5] toFilepath:fileCopy withDefaultFilename:@"metadataDump.plist"])
    {
      NSLog(&cfstr_ThereWasAnErro_0.isa, fileCopy, v10, v11, v12, v13);
    }

    v7 = v18[5];
    v18[5] = 0;
  }

  v8 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __50__PLMomentGeneration_allAssetMetadataWriteToFile___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allAssetsToBeIncludedInMomentsWithError:0];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = [MEMORY[0x1E695DEC8] array];
  [v6 setObject:v7 forKey:@"AllMoments"];

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [MEMORY[0x1E695DEC8] array];
  [v8 setObject:v9 forKey:@"AllMomentLists"];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(v2)];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        ++v14;
        v17 = [*(a1 + 40) _detailsForAsset:*(*(&v21 + 1) + 8 * i) simpleOnly:{0, v21}];
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        [v17 setValue:v18 forKey:@"AssetID"];

        [v10 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [*(*(*(a1 + 48) + 8) + 40) setValue:v10 forKey:@"AllAssets"];
  v19 = *(*(*(a1 + 48) + 8) + 40);
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  [v19 setObject:v20 forKey:@"CurrentMaxID"];
}

- (id)_logEntryForAssets:(id)assets isBatchUpdate:(BOOL)update
{
  updateCopy = update;
  v22 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:updateCopy];
  [v7 setObject:v8 forKey:@"EntryIsBatchUpdate"];

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(assetsCopy)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(PLMomentGeneration *)self _detailsForAsset:*(*(&v17 + 1) + 8 * i) simpleOnly:1, v17];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v7 setObject:v9 forKey:@"AllAssets"];

  return v7;
}

- (void)_appendAssetsToReplayLog:(id)log forBatchUpdate:(BOOL)update
{
  updateCopy = update;
  v47 = *MEMORY[0x1E69E9840];
  logCopy = log;
  momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
  replayLogPath = [momentGenerationDataManager replayLogPath];

  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:replayLogPath];
  if (v9)
  {
    v42 = 0;
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:&v42];
    v11 = v42;
    if (v11)
    {
      v12 = PLMomentsGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v11 localizedDescription];
        *buf = 138412290;
        v44 = localizedDescription;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error reading replay log: %@", buf, 0xCu);
      }
    }

    if (v10)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F0FBEC80 forKey:@"ReplayLogAssetCount"];
LABEL_10:
  v15 = [dictionary objectForKey:@"ReplayLogAssetCount"];
  integerValue = [v15 integerValue];

  if ((objc_msgSend_count(logCopy) + integerValue) < 0x2711)
  {
    v38 = replayLogPath;
    v18 = objc_msgSend_count(logCopy);
    v17 = [dictionary objectForKey:@"ReplayStream"];
    v19 = [MEMORY[0x1E695DF70] arrayWithArray:v17];
    if (objc_msgSend_count(logCopy))
    {
      v20 = [(PLMomentGeneration *)self _logEntryForAssets:logCopy isBatchUpdate:updateCopy];
      [v19 addObject:v20];
    }

    [dictionary setObject:v19 forKey:@"ReplayStream"];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:v18 + integerValue];
    [dictionary setObject:v21 forKey:@"ReplayLogAssetCount"];

    v41 = 0;
    v22 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v41];
    v23 = v41;

    if (v23)
    {
      defaultManager = PLMomentsGetLog();
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [v23 localizedDescription];
        *buf = 138412290;
        v44 = localizedDescription2;
        _os_log_impl(&dword_19BF1F000, defaultManager, OS_LOG_TYPE_ERROR, "Error reading moments replay log plist: %@", buf, 0xCu);
      }

      goto LABEL_30;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    stringByDeletingLastPathComponent = [v38 stringByDeletingLastPathComponent];
    v37 = stringByDeletingLastPathComponent;
    if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent]& 1) != 0 || (v40 = 0, v27 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:0 attributes:0 error:&v40], v28 = v40, v29 = v28, v27) && !v28)
    {
      v39 = 0;
      v30 = [v22 writeToFile:v38 options:0 error:{&v39, stringByDeletingLastPathComponent}];
      v31 = v39;
      v29 = v31;
      if (v30)
      {
        v23 = 0;
        if (!v31)
        {
          goto LABEL_29;
        }
      }

      v32 = PLMomentsGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        localizedDescription3 = [v29 localizedDescription];
        *buf = 138412290;
        v44 = localizedDescription3;
        v34 = "Error writing moments replay log data: %@";
        v35 = v32;
        v36 = 12;
LABEL_27:
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
      }
    }

    else
    {
      v32 = PLMomentsGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        localizedDescription3 = [v29 localizedDescription];
        *buf = 138412546;
        v44 = v37;
        v45 = 2112;
        v46 = localizedDescription3;
        v34 = "Unable to create directory at %@ for moments replay log: %@";
        v35 = v32;
        v36 = 22;
        goto LABEL_27;
      }
    }

    v23 = v29;
LABEL_29:

LABEL_30:
    v11 = v23;
    replayLogPath = v38;
    goto LABEL_31;
  }

  v17 = PLMomentsGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Moment generation has exceeded the maximum replay log size. Not logging", buf, 2u);
  }

LABEL_31:
}

- (void)_clearReplayLog
{
  v14 = *MEMORY[0x1E69E9840];
  momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
  replayLogPath = [momentGenerationDataManager replayLogPath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v5 = [defaultManager removeItemAtPath:replayLogPath error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = PLMomentsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v7 localizedDescription];
      *buf = 138412290;
      v13 = localizedDescription;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error deleting replay log file: %@", buf, 0xCu);
    }
  }
}

- (id)_detailsForAsset:(id)asset simpleOnly:(BOOL)only
{
  v30[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (assetCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    location = [assetCopy location];

    if (location)
    {
      location2 = [assetCopy location];
      [location2 coordinate];
      v10 = v9;
      v12 = v11;

      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      v29[0] = @"AssetLocationLatitude";
      v29[1] = @"AssetLocationLongitude";
      v30[0] = v13;
      v30[1] = v14;
      location = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    }

    [v6 setValue:location forKey:@"AssetLocation"];
    dateCreated = [assetCopy dateCreated];
    [v6 setValue:dateCreated forKey:@"AssetDateCreated"];

    if (!only)
    {
      cloudAssetGUID = [assetCopy cloudAssetGUID];
      uuid = [assetCopy uuid];
      v18 = uuid;
      if (cloudAssetGUID)
      {
        v19 = cloudAssetGUID;
      }

      else
      {
        v19 = uuid;
      }

      [v6 setValue:v19 forKey:@"AssetCloudOrLocalID"];
      modificationDate = [assetCopy modificationDate];
      [v6 setValue:modificationDate forKey:@"AssetModificationDate"];

      v21 = MEMORY[0x1E696AD98];
      objc_msgSend_duration(assetCopy);
      v22 = [v21 numberWithDouble:?];
      [v6 setValue:v22 forKey:@"AssetDuration"];

      v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(assetCopy, "favorite")}];
      [v6 setValue:v23 forKey:@"AssetIsFavorite"];

      v24 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(assetCopy, "kind")}];
      [v6 setValue:v24 forKey:@"AssetKind"];

      v25 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(assetCopy, "kindSubtype")}];
      [v6 setValue:v25 forKey:@"AssetKindSubtype"];

      v26 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(assetCopy, "height")}];
      [v6 setValue:v26 forKey:@"AssetHeight"];

      v27 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(assetCopy, "width")}];
      [v6 setValue:v27 forKey:@"AssetWidth"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_writeDetails:(id)details toFilepath:(id)filepath withDefaultFilename:(id)filename
{
  detailsCopy = details;
  filepathCopy = filepath;
  filenameCopy = filename;
  pathExtension = [filepathCopy pathExtension];
  if (![pathExtension isEqual:&stru_1F0F06D80])
  {
    goto LABEL_7;
  }

  v18 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [defaultManager fileExistsAtPath:filepathCopy isDirectory:&v18];

  if (v12)
  {
    if (v18 != 1)
    {
      goto LABEL_7;
    }

    v13 = [filepathCopy stringByAppendingPathComponent:filenameCopy];
  }

  else
  {
    v13 = [filepathCopy stringByAppendingPathExtension:@"plist"];
  }

  v14 = v13;

  filepathCopy = v14;
LABEL_7:
  if (detailsCopy)
  {
    v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:detailsCopy format:100 options:0 error:0];
    v16 = [v15 writeToFile:filepathCopy options:1073741825 error:0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)momentGenerationStatus
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  pl_dispatch_sync();
  if (*(v21 + 24))
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"In Progress: %@\n", v2, v6, 3221225472, __44__PLMomentGeneration_momentGenerationStatus__block_invoke, &unk_1E7576AF0, self, &v20, &v16, &v12, &v8];
  v4 = v3;
  if (*(v21 + 24) == 1)
  {
    [v3 appendFormat:@"\tIn progress count: %lu\n", v17[3]];
  }

  [v4 appendFormat:@"Pending Update Count: %lu\n", v13[3]];
  [v4 appendFormat:@"Pending Delete Count: %lu\n", v9[3]];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v4;
}

void *__44__PLMomentGeneration_momentGenerationStatus__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[4] + 88) isIdle] ^ 1;
  *(*(a1[6] + 8) + 24) = *(a1[4] + 8);
  *(*(a1[7] + 8) + 24) = objc_msgSend_count(*(a1[4] + 16));
  result = objc_msgSend_count(*(a1[4] + 24));
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

- (void)invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale:(BOOL)locale completionBlock:(id)block
{
  blockCopy = block;
  momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __116__PLMomentGeneration_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale_completionBlock___block_invoke;
  v12[3] = &unk_1E7576AC8;
  localeCopy = locale;
  v13 = momentGenerationDataManager;
  selfCopy = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __116__PLMomentGeneration_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale_completionBlock___block_invoke_145;
  v10[3] = &unk_1E7576AA0;
  v11 = blockCopy;
  v8 = blockCopy;
  v9 = momentGenerationDataManager;
  [v9 performDataTransaction:v12 synchronously:1 completionHandler:v10];
}

void __116__PLMomentGeneration_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale_completionBlock___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v3 = @"yes";
    }

    else
    {
      v3 = @"no";
    }

    *buf = 138412290;
    v68 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating highlight subtitles and re-generating highlight titles, forceUpdateLocale: %@.", buf, 0xCu);
  }

  v4 = PLMomentGenerationGetLog();
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  v57 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "RegenerateTitle", "", buf, 2u);
  }

  v8 = mach_absolute_time();
  [*(a1 + 32) invalidateAllHighlightSubtitles];
  v9 = *(*(a1 + 40) + 104);
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v64 = 0;
  v12 = [v11 allPhotosHighlightsOfKind:1 error:&v64];
  v13 = v64;
  v14 = PLMomentsGetLog();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v13;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Fetching Months failed: %@", buf, 0xCu);
    }

    v16 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v19 = v7;
    v20 = v19;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v5, "RegenerateTitle", "", buf, 2u);
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_msgSend_count(v12);
    *buf = 134217984;
    v68 = v21;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Generating highlight titles/subtitles for %zu month highlights.", buf, 0xCu);
  }

  [PLPhotosHighlightGenerator updateTitleForHighlights:v12 forKind:1 forceUpdateLocale:*(a1 + 48) dateRangeTitleGenerator:v9];
  objc_autoreleasePoolPop(v10);
  v10 = objc_autoreleasePoolPush();
  v22 = *(a1 + 32);
  v63 = 0;
  v12 = [v22 allPhotosHighlightsOfKind:2 error:&v63];
  v13 = v63;
  v23 = PLMomentsGetLog();
  v24 = v23;
  if (v13)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v13;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Fetching Years failed: %@", buf, 0xCu);
    }

    v16 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v25 = v7;
    v20 = v25;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v5, "RegenerateTitle", "", buf, 2u);
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

LABEL_26:
    *buf = 136315394;
    v68 = "RegenerateTitle";
    v69 = 2048;
    v70 = ((((v16 - v8) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
LABEL_27:

    objc_autoreleasePoolPop(v10);
    goto LABEL_28;
  }

  v56 = v8;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_msgSend_count(v12);
    *buf = 134217984;
    v68 = v26;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Generating highlight titles/subtitles for %zu year highlights.", buf, 0xCu);
  }

  [PLPhotosHighlightGenerator updateTitleForHighlights:v12 forKind:2 forceUpdateLocale:*(a1 + 48) dateRangeTitleGenerator:v9];
  objc_autoreleasePoolPop(v10);
  v27 = objc_autoreleasePoolPush();
  v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %ld OR %K = %ld", @"kind", 0, @"kind", 3];
  v29 = *(a1 + 32);
  v62 = 0;
  v30 = [v29 allPhotosHighlightsWithPredicate:v28 error:&v62];
  v31 = v62;
  v32 = PLMomentsGetLog();
  v33 = v32;
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v31;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Fetching Days and DayGroups failed: %@", buf, 0xCu);
    }

    v34 = mach_absolute_time();
    v36 = info.numer;
    v35 = info.denom;
    v37 = v7;
    v38 = v37;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v38, OS_SIGNPOST_INTERVAL_END, v5, "RegenerateTitle", "", buf, 2u);
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v68 = "RegenerateTitle";
      v69 = 2048;
      v70 = ((((v34 - v56) * v36) / v35) / 1000000.0);
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v53 = v28;
    context = v27;
    v55 = v9;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_msgSend_count(v30);
      *buf = 134217984;
      v68 = v39;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Generating highlight titles/subtitles for %zu day/dayGroup highlights.", buf, 0xCu);
    }

    v40 = *(a1 + 48);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = v30;
    v42 = [v41 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v59;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v59 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v58 + 1) + 8 * i);
          v47 = objc_autoreleasePoolPush();
          [PLPhotosHighlightGenerator updateTitlesForHighlight:v46 dateRangeTitleGenerator:*(*(a1 + 40) + 104) options:v40];
          objc_autoreleasePoolPop(v47);
        }

        v43 = [v41 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v43);
    }

    objc_autoreleasePoolPop(context);
    v48 = mach_absolute_time();
    v50 = info.numer;
    v49 = info.denom;
    v51 = v7;
    v52 = v51;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v52, OS_SIGNPOST_INTERVAL_END, v5, "RegenerateTitle", "", buf, 2u);
    }

    v9 = v55;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v68 = "RegenerateTitle";
      v69 = 2048;
      v70 = ((((v48 - v56) * v50) / v49) / 1000000.0);
      _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

LABEL_28:
}

uint64_t __116__PLMomentGeneration_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale_completionBlock___block_invoke_145(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)locationOfInterestUpdateWithCompletionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  isolationQueue = [WeakRetained isolationQueue];
  v7 = blockCopy;
  pl_dispatch_async();
}

void __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) momentGenerationDataManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E75781E8;
  v5[4] = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke_3;
  v3[3] = &unk_1E7576AA0;
  v4 = *(a1 + 40);
  [v2 performDataTransaction:v5 synchronously:1 completionHandler:v3];
}

void __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 processCachedLocationOfInterest];
}

uint64_t __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cleanupEmptyHighlightsWithCompletionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  isolationQueue = [WeakRetained isolationQueue];
  v7 = blockCopy;
  pl_dispatch_async();
}

void __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = PLMomentGenerationGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CleanupEmptyHighlights", "", buf, 2u);
  }

  v7 = [*(a1 + 32) momentGenerationDataManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke_130;
  v14[3] = &unk_1E75781E8;
  v14[4] = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke_2;
  v9[3] = &unk_1E7576A28;
  v10 = v6;
  v12 = v4;
  v13 = Current;
  v11 = *(a1 + 40);
  v8 = v6;
  [v7 performDataTransaction:v14 synchronously:1 completionHandler:v9];
}

void __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke_130(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 cleanupEmptyHighlights];
}

uint64_t __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CleanupEmptyHighlights", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Cleanup Empty Highlights finished in %.2f", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateHighlightTitlesWithCompletionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  isolationQueue = [WeakRetained isolationQueue];
  v7 = blockCopy;
  pl_dispatch_async();
}

void __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = PLMomentGenerationGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "UpdateHighlightTitles", "", buf, 2u);
  }

  v7 = [*(a1 + 32) momentGenerationDataManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke_129;
  v14[3] = &unk_1E75781E8;
  v14[4] = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke_2;
  v9[3] = &unk_1E7576A28;
  v10 = v6;
  v12 = v4;
  v13 = Current;
  v11 = *(a1 + 40);
  v8 = v6;
  [v7 performDataTransaction:v14 synchronously:1 completionHandler:v9];
}

void __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke_129(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 updateHighlightTitles];
}

uint64_t __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "UpdateHighlightTitles", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Update Highlight Titles finished in %.2f", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)processUnprocessedMomentLocationsWithCompletionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  isolationQueue = [WeakRetained isolationQueue];
  v7 = blockCopy;
  pl_dispatch_async();
}

void __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) momentGenerationDataManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E75781E8;
  v5[4] = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke_3;
  v3[3] = &unk_1E7576AA0;
  v4 = *(a1 + 40);
  [v2 performDataTransaction:v5 synchronously:1 completionHandler:v3];
}

void __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 processUnprocessedMomentLocations];
}

uint64_t __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)processRecentHighlightsWithCompletionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  isolationQueue = [WeakRetained isolationQueue];
  v7 = blockCopy;
  pl_dispatch_async();
}

void __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = PLMomentGenerationGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ProcessRecentHighlights", "", buf, 2u);
  }

  v7 = [*(a1 + 32) momentGenerationDataManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke_128;
  v14[3] = &unk_1E75781E8;
  v14[4] = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke_2;
  v9[3] = &unk_1E7576A28;
  v10 = v6;
  v12 = v4;
  v13 = Current;
  v11 = *(a1 + 40);
  v8 = v6;
  [v7 performDataTransaction:v14 synchronously:1 completionHandler:v9];
}

void __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke_128(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 processRecentHighlights];
}

uint64_t __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ProcessRecentHighlights", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Process Recent Highlights finished in %.2f", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)rebuildAllHighlightsWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (PLPlatformMomentsSupported())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = PLMomentsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild starting", buf, 2u);
    }

    v10 = PLMomentGenerationGetLog();
    v11 = os_signpost_id_generate(v10);
    v12 = v10;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FullRebuild", "", buf, 2u);
    }

    v14 = [optionsCopy objectForKey:PLMomentGenerationShouldDeleteAllHighlightsKey];
    bOOLValue = [v14 BOOLValue];

    momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__108963;
    v42 = __Block_byref_object_dispose__108964;
    v43 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __72__PLMomentGeneration_rebuildAllHighlightsWithOptions_completionHandler___block_invoke;
    v33[3] = &unk_1E7576A50;
    v37 = bOOLValue;
    v35 = v44;
    v17 = momentGenerationDataManager;
    v34 = v17;
    v36 = buf;
    [v17 performDataTransaction:v33 synchronously:1 completionHandler:0];
    if ([v17 wantsMomentReplayLogging])
    {
      [(PLMomentGeneration *)self _clearReplayLog];
    }

    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    singleThreaded = [(PLMomentGenerationThrottle *)self->_incrementalMomentGenThrottle singleThreaded];
    [(PLMomentGenerationThrottle *)self->_incrementalMomentGenThrottle setSingleThreaded:1];
    v20 = *(v39 + 5);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__PLMomentGeneration_rebuildAllHighlightsWithOptions_completionHandler___block_invoke_127;
    v27[3] = &unk_1E7576A78;
    v21 = v13;
    v28 = v21;
    v31 = v11;
    v32 = Current;
    v30 = handlerCopy;
    v22 = v18;
    v29 = v22;
    [(PLMomentGeneration *)self generateWithAssetInsertsAndUpdates:MEMORY[0x1E695E0F0] assetDeletes:0 assetUpdatesForHighlights:0 momentUpdatesForHighlights:v20 completionHandler:v27];
    v23 = PLMomentsGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 0;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild, waiting for completion...", &v26, 2u);
    }

    dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    [(PLMomentGenerationThrottle *)self->_incrementalMomentGenThrottle setSingleThreaded:singleThreaded];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v44, 8);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    isolationQueue = [WeakRetained isolationQueue];
    pl_dispatch_async();
  }
}

void __72__PLMomentGeneration_rebuildAllHighlightsWithOptions_completionHandler___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = PLMomentsGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Deleting existing highlights...", buf, 2u);
    }

    v3 = a1[4];
    v14 = 0;
    v4 = [v3 deleteAllHighlightsWithError:&v14];
    v5 = v14;
    *(*(a1[5] + 8) + 24) = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v6 = PLMomentsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Error deleting existing highlights %@", buf, 0xCu);
    }
  }

  v7 = a1[4];
  v13 = v5;
  v8 = [v7 allMomentIDsWithError:&v13];
  v9 = v13;

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (v9)
  {
    v12 = PLMomentsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error fetching moments %@", buf, 0xCu);
    }
  }
}

void __72__PLMomentGeneration_rebuildAllHighlightsWithOptions_completionHandler___block_invoke_127(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "FullRebuild", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild finished in %f", &v8, 0xCu);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)rebuildAllMomentsWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (PLPlatformMomentsSupported())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = PLMomentsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild starting", buf, 2u);
    }

    v10 = PLMomentGenerationGetLog();
    v11 = os_signpost_id_generate(v10);
    v12 = v10;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FullRebuild", "", buf, 2u);
    }

    v14 = [optionsCopy objectForKey:PLMomentGenerationShouldDeleteAllMomentsKey];
    bOOLValue = [v14 BOOLValue];

    momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__108963;
    v36 = __Block_byref_object_dispose__108964;
    v37 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __69__PLMomentGeneration_rebuildAllMomentsWithOptions_completionHandler___block_invoke;
    v27[3] = &unk_1E7577898;
    v31 = bOOLValue;
    v17 = momentGenerationDataManager;
    v28 = v17;
    v30 = buf;
    v29 = optionsCopy;
    [v17 performDataTransaction:v27 synchronously:1 completionHandler:0];
    if ([v17 wantsMomentReplayLogging])
    {
      [(PLMomentGeneration *)self _clearReplayLog];
    }

    v18 = *(v33 + 5);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__PLMomentGeneration_rebuildAllMomentsWithOptions_completionHandler___block_invoke_126;
    v22[3] = &unk_1E7576A28;
    v19 = v13;
    v23 = v19;
    v25 = v11;
    v26 = Current;
    v24 = handlerCopy;
    [(PLMomentGeneration *)self generateWithAssetInsertsAndUpdates:v18 assetDeletes:0 assetUpdatesForHighlights:0 momentUpdatesForHighlights:0 completionHandler:v22];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    isolationQueue = [WeakRetained isolationQueue];
    pl_dispatch_async();
  }
}

void __69__PLMomentGeneration_rebuildAllMomentsWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = PLMomentsGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Deleting existing moments and highlights", buf, 2u);
    }

    v3 = *(a1 + 32);
    v25 = 0;
    v4 = [v3 deleteAllHighlightsWithError:&v25];
    v5 = v25;
    if ((v4 & 1) == 0)
    {
      v6 = PLMomentsGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Failed to delete highlights: %@", buf, 0xCu);
      }
    }

    v7 = *(a1 + 32);
    v24 = v5;
    v8 = [v7 deleteAllMomentsWithError:&v24];
    v9 = v24;

    if ((v8 & 1) == 0)
    {
      v10 = PLMomentsGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Failed to delete moments: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [*(a1 + 40) objectForKeyedSubscript:PLMomentGenerationTargetedAssetOIDsKey];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40));
  if (v14)
  {
    v15 = v14;
    v16 = PLMomentsGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Rebuilding moments with %tu targeted assets", buf, 0xCu);
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v23 = v9;
    v18 = [v17 allAssetIDsToBeIncludedInMomentsWithError:&v23];
    v19 = v23;

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v18;

    v16 = PLMomentsGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40));
      *buf = 134217984;
      v27 = v22;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Rebuilding for all moments with %tu assests", buf, 0xCu);
    }

    v9 = v19;
  }
}

uint64_t __69__PLMomentGeneration_rebuildAllMomentsWithOptions_completionHandler___block_invoke_126(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "FullRebuild", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild finished in %.2f s", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_runMomentAndHighlightGenerationForAssets:(id)assets hiddenAssets:(id)hiddenAssets updatedAssetIDsForHighlights:(id)highlights updatedMomentIDsForHighlights:(id)forHighlights affectedMoments:(id)moments highlightsWithDeletedMoments:(id)deletedMoments sharedAssetContainerIncrementalChanges:(id)changes insertedOrUpdatedMoments:(id *)self0
{
  v107 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  hiddenAssetsCopy = hiddenAssets;
  highlightsCopy = highlights;
  forHighlightsCopy = forHighlights;
  momentsCopy = moments;
  deletedMomentsCopy = deletedMoments;
  changesCopy = changes;
  localCreationDateCreator = [(PLMomentGeneration *)self localCreationDateCreator];
  frequentLocationManager = [(PLMomentGeneration *)self frequentLocationManager];
  v22 = objc_autoreleasePoolPush();
  v23 = [PLAssetCollectionGenerator alloc];
  momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
  v77 = frequentLocationManager;
  v78 = localCreationDateCreator;
  v25 = [(PLAssetCollectionGenerator *)v23 initWithDataManager:momentGenerationDataManager frequentLocationManager:frequentLocationManager localCreationDateCreator:localCreationDateCreator];

  v26 = assetsCopy;
  v80 = momentsCopy;
  v27 = [(PLAssetCollectionGenerator *)v25 processMomentsWithAssets:assetsCopy affectedMoments:momentsCopy];

  objc_autoreleasePoolPop(v22);
  *updatedMoments = [v27 insertedOrUpdatedMoments];
  _highlightGenerator = [(PLMomentGeneration *)self _highlightGenerator];
  if (_highlightGenerator)
  {
    context = objc_autoreleasePoolPush();
    momentGenerationDataManager2 = [(PLMomentGeneration *)self momentGenerationDataManager];
    v75 = hiddenAssetsCopy;
    v76 = assetsCopy;
    [_highlightGenerator beginGenerationWithAssets:assetsCopy hiddenAssets:hiddenAssetsCopy];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __245__PLMomentGeneration__runMomentAndHighlightGenerationForAssets_hiddenAssets_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_affectedMoments_highlightsWithDeletedMoments_sharedAssetContainerIncrementalChanges_insertedOrUpdatedMoments___block_invoke;
    v99[3] = &unk_1E7576A00;
    v30 = momentGenerationDataManager2;
    v100 = v30;
    v71 = _highlightGenerator;
    v101 = v71;
    [changesCopy enumerateKeysAndObjectsUsingBlock:v99];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __245__PLMomentGeneration__runMomentAndHighlightGenerationForAssets_hiddenAssets_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_affectedMoments_highlightsWithDeletedMoments_sharedAssetContainerIncrementalChanges_insertedOrUpdatedMoments___block_invoke_2;
    v97[3] = &unk_1E7578478;
    v72 = v30;
    v98 = v72;
    v74 = changesCopy;
    [changesCopy enumerateKeysAndObjectsUsingBlock:v97];
    momentGenerationDataManager3 = [(PLMomentGeneration *)self momentGenerationDataManager];
    v96 = 0;
    v32 = [momentGenerationDataManager3 momentsForAssetsWithUniqueIDs:highlightsCopy error:&v96];
    v33 = v96;
    v34 = MEMORY[0x1E695E0F0];
    if (v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = MEMORY[0x1E695E0F0];
    }

    v36 = v35;

    momentGenerationDataManager4 = [(PLMomentGeneration *)self momentGenerationDataManager];
    v95 = v33;
    v38 = [momentGenerationDataManager4 momentsWithUniqueIDs:forHighlightsCopy error:&v95];
    v70 = v95;

    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = v34;
    }

    v69 = v39;

    v40 = [MEMORY[0x1E695DFA8] set];
    v41 = [MEMORY[0x1E695DFA8] set];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    insertedOrUpdatedMoments = [v27 insertedOrUpdatedMoments];
    v43 = [insertedOrUpdatedMoments countByEnumeratingWithState:&v91 objects:v104 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v92;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v92 != v45)
          {
            objc_enumerationMutation(insertedOrUpdatedMoments);
          }

          v47 = *(*(&v91 + 1) + 8 * i);
          if ([v47 isDeleted])
          {
            v48 = v41;
          }

          else
          {
            v48 = v40;
          }

          [v48 addObject:v47];
        }

        v44 = [insertedOrUpdatedMoments countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v44);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v49 = v36;
    v50 = [v49 countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v88;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v88 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v87 + 1) + 8 * j);
          if ([v54 isDeleted])
          {
            v55 = v41;
          }

          else
          {
            v55 = v40;
          }

          [v55 addObject:v54];
        }

        v51 = [v49 countByEnumeratingWithState:&v87 objects:v103 count:16];
      }

      while (v51);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v56 = v69;
    v57 = [v56 countByEnumeratingWithState:&v83 objects:v102 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v84;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v84 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v83 + 1) + 8 * k);
          if ([v61 isDeleted])
          {
            v62 = v41;
          }

          else
          {
            v62 = v40;
          }

          [v62 addObject:v61];
        }

        v58 = [v56 countByEnumeratingWithState:&v83 objects:v102 count:16];
      }

      while (v58);
    }

    frequentLocationManager = v77;
    if (objc_msgSend_count(v40) || objc_msgSend_count(v41))
    {
      [v77 invalidateCurrentFrequentLocations];
    }

    v63 = deletedMomentsCopy;
    [v71 registerHighlightsWithDeletedMoments:{deletedMomentsCopy, v69}];
    [v71 generateHighlightsForUpsertedMoments:v40 frequentLocationsDidChange:{objc_msgSend(v27, "frequentLocationsDidChange")}];
    [v71 finishGeneration];

    objc_autoreleasePoolPop(context);
    hiddenAssetsCopy = v75;
    v26 = v76;
    v64 = v27;
    v66 = forHighlightsCopy;
    v65 = highlightsCopy;
    changesCopy = v74;
  }

  else
  {
    v64 = v27;
    v66 = forHighlightsCopy;
    v65 = highlightsCopy;
    v67 = PLMomentsGetLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      libraryBundle = self->_libraryBundle;
      *buf = 138412290;
      v106 = libraryBundle;
      _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Skipping highlight generation on photoLibrary: %@", buf, 0xCu);
    }

    v63 = deletedMomentsCopy;
  }
}

uint64_t __245__PLMomentGeneration__runMomentAndHighlightGenerationForAssets_hiddenAssets_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_affectedMoments_highlightsWithDeletedMoments_sharedAssetContainerIncrementalChanges_insertedOrUpdatedMoments___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 hasSharingChanges];
  if (v5)
  {
    v6 = [*(a1 + 32) assetWithUniqueID:v8 error:0];
    if (v6)
    {
      [*(a1 + 40) markHighlightNeedingNewKeyAssetsWithAsset:v6];
    }
  }

  return MEMORY[0x1EEE66BE0](v5);
}

void __245__PLMomentGeneration__runMomentAndHighlightGenerationForAssets_hiddenAssets_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_affectedMoments_highlightsWithDeletedMoments_sharedAssetContainerIncrementalChanges_insertedOrUpdatedMoments___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v45 = a1;
  v6 = [*(a1 + 32) assetWithUniqueID:a2 error:0];
  if (![v5 hasSharingOrSuggestionChanges] || objc_msgSend(v5, "collectionChangeType") || (objc_msgSend(v5, "highlightContainerChanges"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend_count(v7), v7, v8))
  {
    v42 = v6;
    v9 = [MEMORY[0x1E695DFA8] set];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [v5 highlightContainerChanges];
    v46 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v46)
    {
      v44 = *v48;
      while (2)
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          v12 = [v11 relationshipKey];
          isEqualToString = objc_msgSend_isEqualToString_(v12);

          v14 = @"assetsCount";
          if ((isEqualToString & 1) == 0)
          {
            v15 = [v11 relationshipKey];
            v16 = objc_msgSend_isEqualToString_(v15);

            v14 = @"extendedCount";
            if ((v16 & 1) == 0)
            {
              v17 = [v11 relationshipKey];
              v18 = objc_msgSend_isEqualToString_(v17);

              v14 = @"summaryCount";
              if ((v18 & 1) == 0)
              {
                v19 = [v11 relationshipKey];
                v20 = objc_msgSend_isEqualToString_(v19);

                v14 = @"dayGroupAssetsCount";
                if ((v20 & 1) == 0)
                {
                  v21 = [v11 relationshipKey];
                  v22 = objc_msgSend_isEqualToString_(v21);

                  v14 = @"dayGroupExtendedAssetsCount";
                  if ((v22 & 1) == 0)
                  {
                    v23 = [v11 relationshipKey];
                    v24 = objc_msgSend_isEqualToString_(v23);

                    v14 = @"dayGroupSummaryAssetsCount";
                    if ((v24 & 1) == 0)
                    {
                      v40 = PLMomentsGetLog();
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                      {
                        v41 = [v11 relationshipKey];
                        *buf = 138543362;
                        v52 = v41;
                        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Unexpected relationship name: %{public}@", buf, 0xCu);
                      }

                      goto LABEL_39;
                    }
                  }
                }
              }
            }
          }

          v25 = [*(v45 + 32) managedObjectContext];
          v26 = [v25 persistentStoreCoordinator];
          v27 = [v11 sourceHighlightURI];
          v28 = [v26 managedObjectIDForURIRepresentation:v27];

          v29 = [v25 persistentStoreCoordinator];
          v30 = [v11 destinationHighlightURI];
          v31 = [v29 managedObjectIDForURIRepresentation:v30];

          v32 = [v5 sharingChange];
          v33 = [v5 suggestionStateChange];
          v34 = objc_alloc_init(PLSharedAssetsContainerIncrementalChange);
          v35 = v34;
          if (v32 == 1)
          {
            v36 = 1;
          }

          else
          {
            v36 = 2;
          }

          [(PLSharedAssetsContainerIncrementalChange *)v34 setSharingChange:v36];
          if (v33 == 1)
          {
            v37 = 1;
          }

          else
          {
            v37 = 2;
          }

          [(PLSharedAssetsContainerIncrementalChange *)v35 setSuggestionStateChange:v37];
          -[PLSharedAssetsContainerIncrementalChange setMediaType:](v35, "setMediaType:", [v5 mediaType]);
          if (v31)
          {
            v38 = [v25 existingObjectWithID:v31 error:0];
            if (v38)
            {
              [(PLSharedAssetsContainerIncrementalChange *)v35 setCollectionChangeType:1];
              if ([v9 containsObject:v38])
              {
                [(PLSharedAssetsContainerIncrementalChange *)v35 setSuggestionStateChange:0];
              }

              [v38 reportSharedAssetContainerIncrementalChange:v35 forAllAssetsCountKey:v14];
              [v9 addObject:v38];
            }
          }

          if (v28)
          {
            v39 = [v25 existingObjectWithID:v28 error:0];
            if (v39)
            {
              [(PLSharedAssetsContainerIncrementalChange *)v35 setCollectionChangeType:2];
              if ([v9 containsObject:v39])
              {
                [(PLSharedAssetsContainerIncrementalChange *)v35 setSuggestionStateChange:0];
              }

              [v39 reportSharedAssetContainerIncrementalChange:v35 forAllAssetsCountKey:v14];
              [v9 addObject:v39];
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:

    v6 = v42;
  }

  else
  {
    [v6 reportSharedAssetIncrementalChange:v5];
  }
}

- (id)_highlightGenerator
{
  v3 = MEMORY[0x1E69BF2A0];
  libraryServicesManager = [(PLPhotoLibraryBundle *)self->_libraryBundle libraryServicesManager];
  LODWORD(v3) = [v3 shouldProcessHighlightsForWellKnownPhotoLibraryIdentifier:{objc_msgSend(libraryServicesManager, "wellKnownPhotoLibraryIdentifier")}];

  if (v3)
  {
    localCreationDateCreator = [(PLMomentGeneration *)self localCreationDateCreator];
    frequentLocationManager = [(PLMomentGeneration *)self frequentLocationManager];
    v7 = [PLPhotosHighlightGenerator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v9 = [(PLPhotosHighlightGenerator *)v7 initWithDataManager:WeakRetained frequentLocationManager:frequentLocationManager localCreationDateCreator:localCreationDateCreator dateRangeTitleGenerator:self->_dateRangeTitleGenerator];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newFrequentLocationManager
{
  v3 = [PLFrequentLocationManager alloc];
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v5 = [(PLFrequentLocationManager *)v3 initWithMomentGenerationDataManager:WeakRetained];

  v6 = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  cameraIsActive = [v6 cameraIsActive];

  if (cameraIsActive)
  {
    date = [MEMORY[0x1E695DF00] date];
    v9 = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v10 = [date dateByAddingTimeInterval:-15724800.0];
    v11 = [v9 momentsBetweenDate:v10 andDate:date sorted:1 excludeExternal:1];
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v17 = 0;
    v11 = [v12 allMomentsWithError:&v17];
    v13 = v17;
  }

  v14 = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v15 = [objc_opt_class() processingMomentsFromMoments:v11];

  [(PLFrequentLocationManager *)v5 frequentLocationsDidChangeFromUpdateWithMoments:v15];
  return v5;
}

- (id)newLocalCreationDateCreator
{
  v3 = [PLLocalCreationDateCreator alloc];
  timeZoneLookup = [(PLPhotoLibraryBundle *)self->_libraryBundle timeZoneLookup];
  v5 = [(PLLocalCreationDateCreator *)v3 initWithTimeZoneLookup:timeZoneLookup];

  return v5;
}

- (void)_runIncrementalGenerationPassWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  momentGenerationDataManager = [(PLMomentGeneration *)self momentGenerationDataManager];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__108963;
  v49[4] = __Block_byref_object_dispose__108964;
  v50 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = [momentGenerationDataManager hardGenerationBatchSizeLimit];
  v7 = PLMomentGenerationGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "IncrementalMomentGeneration", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  *buf = 0;
  v42 = buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__108963;
  v45 = __Block_byref_object_dispose__108964;
  v12 = v10;
  v46 = v12;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = os_signpost_id_generate(v12);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2810000000;
  v39[3] = &unk_19C721442;
  v39[4] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke;
  v27[3] = &unk_1E75769B0;
  v28 = v12;
  selfCopy = self;
  v31 = v48;
  v13 = momentGenerationDataManager;
  v36 = v38;
  v37 = a2;
  v30 = v13;
  v32 = v49;
  v33 = v39;
  v34 = buf;
  v35 = v40;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_77;
  v16[3] = &unk_1E75769D8;
  v19 = v49;
  v20 = v38;
  v21 = v39;
  v22 = buf;
  v23 = v40;
  v24 = v11;
  v26 = info;
  v14 = v28;
  v17 = v14;
  v25 = v8;
  v15 = handlerCopy;
  v18 = v15;
  [v13 performDataTransaction:v27 synchronously:0 completionHandler:v16];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
}

void __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke(uint64_t a1)
{
  v262 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = os_signpost_id_generate(v2);
  info = 0;
  mach_timebase_info(&info);
  v4 = v2;
  v5 = v4;
  v158 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CollectAffectedAssetsAndMoments", "", buf, 2u);
  }

  spid = v3;
  v162 = v5;

  v156 = mach_absolute_time();
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = *(a1 + 40);
  v240[1] = MEMORY[0x1E69E9820];
  v240[2] = 3221225472;
  v240[3] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_49;
  v240[4] = &unk_1E7576968;
  v240[5] = v11;
  v166 = v7;
  v241 = v166;
  v12 = v8;
  v13 = *(a1 + 56);
  v165 = v12;
  v242 = v12;
  v246 = v13;
  v14 = v6;
  v243 = v14;
  v163 = v9;
  v244 = v163;
  v164 = v10;
  v245 = v164;
  pl_dispatch_sync();
  if ([*(a1 + 48) hasChanges])
  {
    v15 = *(a1 + 48);
    v240[0] = 0;
    v16 = [v15 save:v240];
    v17 = v240[0];
    if ((v16 & 1) == 0)
    {
      v18 = PLMomentsGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v17 userInfo];
        *buf = 138412546;
        v257 = v17;
        v258 = 2112;
        *v259 = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Error saving changes, error: %@, userInfo: %@", buf, 0x16u);
      }
    }
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MEMORY[0x1E695DF70] array];
  [*(a1 + 48) assetsWithUniqueIDs:v14 error:0];
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v22 = v239 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v236 objects:v261 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v237;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v237 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v236 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        if (v27 && ([v27 isDeleted] & 1) == 0)
        {
          if ([v27 visibilityStateIsEqualToState:0])
          {
            v29 = v20;
          }

          else
          {
            v29 = v21;
          }

          [v29 addObject:v27];
        }

        objc_autoreleasePoolPop(v28);
      }

      v24 = [v22 countByEnumeratingWithState:&v236 objects:v261 count:16];
    }

    while (v24);
  }

  v159 = v22;
  v160 = v14;

  if ([*(a1 + 48) wantsMomentReplayLogging])
  {
    [*(a1 + 40) _appendAssetsToReplayLog:v20 forBatchUpdate:1];
  }

  v168 = v20;
  v185 = a1;
  v30 = [MEMORY[0x1E695DFA8] set];
  v31 = [MEMORY[0x1E695DFA8] set];
  v177 = [MEMORY[0x1E695DFA8] set];
  v172 = [MEMORY[0x1E695DFA8] set];
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v32 = v21;
  v33 = [v32 countByEnumeratingWithState:&v232 objects:v260 count:16];
  v34 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
  v170 = v32;
  if (!v33)
  {
    v171 = 0;
    v167 = 0;
    v61 = v32;
    goto LABEL_57;
  }

  v35 = v33;
  v171 = 0;
  v167 = 0;
  v169 = 0;
  v36 = *v233;
  v192 = *v233;
  do
  {
    for (j = 0; j != v35; ++j)
    {
      if (*v233 != v36)
      {
        objc_enumerationMutation(v32);
      }

      v38 = *(*(&v232 + 1) + 8 * j);
      v39 = objc_autoreleasePoolPush();
      v40 = [v38 moment];
      v41 = v40;
      if (v40 && ([v40 isDeleted] & 1) == 0)
      {
        if ([v38 visibilityStateIsEqualToState:2])
        {
          v42 = [v38 globalUUID];
          if (v42)
          {
            v43 = v42;
            v44 = v171;
            if (!v171)
            {
              v44 = [*(v185 + 40) _newPublicGlobalUUIDsToAssetsMappingWithAssets:v168];
            }

            v171 = v44;
            context = [v44 objectForKey:v43];
            if (context)
            {
              v45 = [v41 assets];
              v46 = [v45 containsObject:v38];

              v36 = v192;
              if (v46)
              {
                if ([*(v185 + 40) _isAsset:v38 identicalToAssetForMoments:context])
                {
                  v47 = PLMomentsGetLog();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    v188 = [v38 uniqueObjectID];
                    objb = [context uniqueObjectID];
                    v48 = [v41 uniqueObjectID];
                    *buf = 138412802;
                    v257 = v188;
                    v258 = 2112;
                    *v259 = objb;
                    *&v259[8] = 2112;
                    *&v259[10] = v48;
                    v49 = v48;
                    v179 = v48;
                    _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEBUG, "Asset %@ was replaced by %@ in moment %@", buf, 0x20u);
                  }

                  v189 = [v38 reverseLocationDataIsValid];
                  v50 = [v38 reverseLocationData];
                  [context setReverseLocationDataIsValid:v189];
                  v190 = v50;
                  [context setReverseLocationData:v50];
                  [v41 removeAssetData:v38];
                  [v41 insertAssetData:context];
                  [context setMoment:v41];
                  [v171 removeObjectForKey:v43];
                  v51 = v169;
                  if (!v169)
                  {
                    v51 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  }

                  v169 = v51;
                  v52 = v167;
                  if (!v167)
                  {
                    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  v53 = [v38 uniqueObjectID];
                  v167 = v52;
                  [v52 addObject:v53];

                  [v169 addObject:context];
                  v32 = v170;
                  v36 = v192;
LABEL_49:

                  [v38 setMoment:0];
                  goto LABEL_50;
                }
              }
            }

            v32 = v170;
          }
        }

        [v30 addObject:v41];
        [v172 addObject:v41];
        [v41 removeAssetData:v38];
        v43 = [v41 assets];
        if (!objc_msgSend_count(v43))
        {
          [v31 addObject:v41];
        }

        goto LABEL_49;
      }

LABEL_50:

      objc_autoreleasePoolPop(v39);
    }

    v35 = [v32 countByEnumeratingWithState:&v232 objects:v260 count:16];
  }

  while (v35);

  if (!v169)
  {
    if (!v167)
    {
      v167 = 0;
      v34 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
      goto LABEL_60;
    }

    v61 = [MEMORY[0x1E696AAA8] currentHandler];
    [v61 handleFailureInMethod:*(v185 + 104) object:*(v185 + 40) file:@"PLMomentGeneration.m" lineNumber:587 description:@"Should not have switched deleted assets without switching some inserted asset"];
    v34 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
LABEL_57:

LABEL_60:
    v56 = v168;
    v59 = v163;
    v169 = 0;
    v60 = objc_msgSend_count(v59);
    goto LABEL_61;
  }

  v54 = objc_msgSend_count(v167);
  if (v54 != objc_msgSend_count(v169))
  {
    v151 = [MEMORY[0x1E696AAA8] currentHandler];
    v152 = *(v185 + 104);
    v153 = *(v185 + 40);
    v154 = objc_msgSend_count(v167);
    v32 = v170;
    [v151 handleFailureInMethod:v152 object:v153 file:@"PLMomentGeneration.m" lineNumber:574 description:{@"Number of switched deleted assets (%lu) does not match the number of switched inserted assets (%lu)", v154, objc_msgSend_count(v169), spid}];
  }

  v55 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v168];
  [v55 minusSet:v169];
  v56 = [v55 allObjects];
  v57 = [v163 mutableCopy];
  [v57 removeObjectsForKeys:v167];
  v58 = v57;

  v59 = v58;
  v34 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
  v60 = objc_msgSend_count(v59);
LABEL_61:
  if (!v60 && !objc_msgSend_count(v56) && !objc_msgSend_count(v31) && !objc_msgSend_count(v30) && !objc_msgSend_count(v166) && !objc_msgSend_count(v165) && !objc_msgSend_count(v164))
  {
    goto LABEL_167;
  }

  v161 = v59;
  v62 = [MEMORY[0x1E695DFA8] set];
  v178 = [MEMORY[0x1E695DF70] array];
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v157 = v56;
  obj = v56;
  v63 = [obj countByEnumeratingWithState:&v228 objects:v255 count:16];
  if (!v63)
  {
    goto LABEL_97;
  }

  v64 = v63;
  v65 = *v229;
  v175 = *(v34 + 84);
  v180 = *v229;
  while (2)
  {
    v66 = 0;
    while (2)
    {
      if (*v229 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v67 = *(*(&v228 + 1) + 8 * v66);
      v68 = objc_autoreleasePoolPush();
      v69 = [v67 dateCreated];
      if ([v67 isDeleted])
      {
        if (v69)
        {
          v193 = v68;
          v70 = [v67 moment];
          if (v70)
          {
            [v30 addObject:v70];
            [v172 addObject:v70];
            [v70 removeAssetData:v67];
            [v67 setMoment:0];
          }

LABEL_79:
          contexta = v69;
          [v178 addObject:v69];
          v71 = [v67 highlightBeingAssets];
          v72 = v71;
          if (v71)
          {
            v73 = [v71 startDate];
            v74 = [v72 endDate];
            if (v73)
            {
              [v178 addObject:v73];
            }

            if (v74)
            {
              [v178 addObject:v74];
            }
          }

          goto LABEL_85;
        }
      }

      else
      {
        v193 = v68;
        if (v69)
        {
          goto LABEL_79;
        }

        contexta = 0;
        v72 = PLMomentsGetLog();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v82 = [v67 isDeleted];
          v83 = *(v185 + 48);
          *buf = v175;
          v257 = v67;
          v258 = 1024;
          *v259 = v82;
          *&v259[4] = 2048;
          *&v259[6] = v83;
          _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_ERROR, "Missing dateCreated?! %@ isDeleted %d manager %p", buf, 0x1Cu);
        }

LABEL_85:

        v75 = [v67 moment];
        v76 = [v67 highlightBeingAssets];
        v77 = v76;
        if (v75 && v76)
        {
          v78 = [v75 startDate];
          v186 = [contexta compare:v78];

          [v75 endDate];
          v80 = v79 = v64;
          v81 = [contexta compare:v80];

          v64 = v79;
          v65 = v180;
          if (v186 == -1 || v81 == 1)
          {
            [v62 addObject:v67];
            [v30 addObject:v75];
            [v75 removeAssetData:v67];
            [v67 setMoment:0];
          }
        }

        else
        {
          [v62 addObject:v67];
        }

        v68 = v193;
        v69 = contexta;
      }

      objc_autoreleasePoolPop(v68);
      if (v64 != ++v66)
      {
        continue;
      }

      break;
    }

    v84 = [obj countByEnumeratingWithState:&v228 objects:v255 count:16];
    v64 = v84;
    if (v84)
    {
      continue;
    }

    break;
  }

LABEL_97:

  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v85 = v161;
  v86 = [v85 countByEnumeratingWithState:&v224 objects:v254 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v225;
    do
    {
      for (k = 0; k != v87; ++k)
      {
        if (*v225 != v88)
        {
          objc_enumerationMutation(v85);
        }

        v90 = [v85 objectForKeyedSubscript:*(*(&v224 + 1) + 8 * k)];
        v91 = [v90 objectForKeyedSubscript:@"dateCreated"];
        if (v91)
        {
          [v178 addObject:v91];
        }
      }

      v87 = [v85 countByEnumeratingWithState:&v224 objects:v254 count:16];
    }

    while (v87);
  }

  [v178 sortUsingSelector:sel_compare_];
  [objc_opt_class() dateIntervalsAroundSortedDates:v178 minimumIntervalDuration:115200.0];
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v173 = v223 = 0u;
  v176 = [v173 countByEnumeratingWithState:&v220 objects:v253 count:16];
  if (v176)
  {
    v174 = *v221;
    do
    {
      v92 = 0;
      do
      {
        if (*v221 != v174)
        {
          objc_enumerationMutation(v173);
        }

        v181 = *(*(&v220 + 1) + 8 * v92);
        obja = v92;
        v93 = [*(v185 + 48) highlightsIntersectingDateInterval:? ofKind:?];
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v187 = v93;
        v194 = [v187 countByEnumeratingWithState:&v216 objects:v252 count:16];
        if (v194)
        {
          v191 = *v217;
          do
          {
            for (m = 0; m != v194; ++m)
            {
              if (*v217 != v191)
              {
                objc_enumerationMutation(v187);
              }

              v95 = *(*(&v216 + 1) + 8 * m);
              contextb = objc_autoreleasePoolPush();
              v96 = [v95 moments];
              v212 = 0u;
              v213 = 0u;
              v214 = 0u;
              v215 = 0u;
              v97 = v96;
              v98 = [v97 countByEnumeratingWithState:&v212 objects:v251 count:16];
              if (v98)
              {
                v99 = v98;
                v100 = *v213;
                do
                {
                  for (n = 0; n != v99; ++n)
                  {
                    if (*v213 != v100)
                    {
                      objc_enumerationMutation(v97);
                    }

                    v102 = *(*(&v212 + 1) + 8 * n);
                    [v30 addObject:v102];
                    v103 = [v102 assets];
                    if (objc_msgSend_count(v103))
                    {
                      [v62 unionSet:v103];
                    }

                    else
                    {
                      [v31 addObject:v102];
                    }
                  }

                  v99 = [v97 countByEnumeratingWithState:&v212 objects:v251 count:16];
                }

                while (v99);
              }

              objc_autoreleasePoolPop(contextb);
            }

            v194 = [v187 countByEnumeratingWithState:&v216 objects:v252 count:16];
          }

          while (v194);
        }

        v104 = [*(v185 + 48) momentsIntersectingDateInterval:v181];
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v211 = 0u;
        v105 = v104;
        v106 = [v105 countByEnumeratingWithState:&v208 objects:v250 count:16];
        if (v106)
        {
          v107 = v106;
          v108 = *v209;
          do
          {
            for (ii = 0; ii != v107; ++ii)
            {
              if (*v209 != v108)
              {
                objc_enumerationMutation(v105);
              }

              v110 = *(*(&v208 + 1) + 8 * ii);
              v111 = objc_autoreleasePoolPush();
              [v30 addObject:v110];
              v112 = [v110 assets];
              if (objc_msgSend_count(v112))
              {
                [v62 unionSet:v112];
              }

              else
              {
                [v31 addObject:v110];
              }

              objc_autoreleasePoolPop(v111);
            }

            v107 = [v105 countByEnumeratingWithState:&v208 objects:v250 count:16];
          }

          while (v107);
        }

        v92 = obja + 1;
      }

      while (obja + 1 != v176);
      v176 = [v173 countByEnumeratingWithState:&v220 objects:v253 count:16];
    }

    while (v176);
  }

  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v113 = v31;
  v114 = [v113 countByEnumeratingWithState:&v204 objects:v249 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v205;
    do
    {
      for (jj = 0; jj != v115; ++jj)
      {
        if (*v205 != v116)
        {
          objc_enumerationMutation(v113);
        }

        v118 = *(*(&v204 + 1) + 8 * jj);
        v119 = [v118 highlight];
        v120 = [v119 parentDayGroupPhotosHighlight];
        if (v119)
        {
          [v177 addObject:v119];
        }

        if (v120)
        {
          [v177 addObject:v120];
        }

        [v118 delete];
      }

      v115 = [v113 countByEnumeratingWithState:&v204 objects:v249 count:16];
    }

    while (v115);
  }

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v121 = v172;
  v122 = [v121 countByEnumeratingWithState:&v200 objects:v248 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v201;
    do
    {
      for (kk = 0; kk != v123; ++kk)
      {
        if (*v201 != v124)
        {
          objc_enumerationMutation(v121);
        }

        v126 = [*(*(&v200 + 1) + 8 * kk) assets];
        [v62 unionSet:v126];
      }

      v123 = [v121 countByEnumeratingWithState:&v200 objects:v248 count:16];
    }

    while (v123);
  }

  v127 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v130 = v162;
  v131 = v130;
  if (v158 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v130))
  {
    v132 = objc_msgSend_count(v62);
    v133 = objc_msgSend_count(v30);
    *buf = 134218240;
    v257 = v132;
    v258 = 2048;
    *v259 = v133;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v131, OS_SIGNPOST_INTERVAL_END, spid, "CollectAffectedAssetsAndMoments", "affectedAssets: %lu, affectedMoments %lu", buf, 0x16u);
  }

  v134 = v131;
  if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
  {
    v135 = (((v127 - v156) * numer) / denom) / 1000000.0;
    v136 = MEMORY[0x1E696AEC0];
    v137 = objc_msgSend_count(v62);
    v138 = [v136 stringWithFormat:@"affectedAssets: %lu, affectedMoments %lu", v137, objc_msgSend_count(v30)];
    *buf = 136315650;
    v257 = "CollectAffectedAssetsAndMoments";
    v258 = 2112;
    *v259 = v138;
    *&v259[8] = 2048;
    *&v259[10] = v135;
    _os_log_impl(&dword_19BF1F000, v134, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  v139 = [v62 _pl_map:&__block_literal_global_109315];
  v140 = *(v185 + 48);
  v141 = [v139 allObjects];
  v199 = 0;
  v142 = [v140 prefetchedAssetsWithUniqueIDs:v141 error:&v199];
  v143 = v199;

  v144 = *(v185 + 40);
  v145 = [MEMORY[0x1E695DFD8] setWithArray:v142];
  v198 = 0;
  [v144 _runMomentAndHighlightGenerationForAssets:v145 hiddenAssets:v170 updatedAssetIDsForHighlights:v166 updatedMomentIDsForHighlights:v165 affectedMoments:v30 highlightsWithDeletedMoments:v177 sharedAssetContainerIncrementalChanges:v164 insertedOrUpdatedMoments:&v198];
  v146 = v198;
  v147 = v198;

  objc_storeStrong((*(*(v185 + 64) + 8) + 40), v146);
  mach_timebase_info((*(*(v185 + 72) + 8) + 32));
  v148 = *(*(*(v185 + 80) + 8) + 40);
  v149 = v148;
  v150 = *(*(*(v185 + 88) + 8) + 24);
  if (v150 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v148))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v149, OS_SIGNPOST_INTERVAL_BEGIN, v150, "ExecuteLibraryBatchTransaction", "", buf, 2u);
  }

  *(*(*(v185 + 96) + 8) + 24) = mach_absolute_time();
  v32 = v170;
  v56 = v157;
  v59 = v161;
LABEL_167:
}

uint64_t __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_77(uint64_t a1, const char *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40), a2);
  v4 = mach_absolute_time();
  v5 = *(*(*(a1 + 56) + 8) + 24);
  v6 = *(*(a1 + 64) + 8);
  v8 = *(v6 + 32);
  v7 = *(v6 + 36);
  v9 = *(*(*(a1 + 72) + 8) + 40);
  v10 = v9;
  v11 = *(*(*(a1 + 80) + 8) + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v11, "ExecuteLibraryBatchTransaction", "", buf, 2u);
  }

  v12 = *(*(*(a1 + 72) + 8) + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "ExecuteLibraryBatchTransaction";
    v28 = 2048;
    v29 = ((((v4 - v5) * v8) / v7) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v13 = mach_absolute_time();
  v14 = *(a1 + 88);
  v16 = *(a1 + 104);
  v15 = *(a1 + 108);
  v17 = *(a1 + 32);
  v18 = v17;
  v19 = *(a1 + 96);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 134217984;
    v27 = v3;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "IncrementalMomentGeneration", "updatedMoments: %lu", buf, 0xCu);
  }

  v20 = *(a1 + 32);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = (((v13 - v14) * v16) / v15) / 1000000.0;
    v22 = MEMORY[0x1E696AEC0];
    v23 = v20;
    v24 = [v22 stringWithFormat:@"updatedMoments: %lu", v3];
    *buf = 136315650;
    v27 = "IncrementalMomentGeneration";
    v28 = 2112;
    v29 = *&v24;
    v30 = 2048;
    v31 = v21;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_49(uint64_t a1, const char *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(*(*(a1 + 32) + 32), a2))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    v6 = MEMORY[0x1E695DFD8];
    v7 = [*(v4 + 16) set];
    v8 = [v6 setWithSet:v7];
    [v5 minusSet:v8];

    v9 = [MEMORY[0x1E695DFA8] setWithCapacity:objc_msgSend_count(*(*(a1 + 32) + 24))];
    v10 = *(*(a1 + 32) + 24);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_2;
    v59[3] = &unk_1E75768F0;
    v60 = v9;
    v11 = v9;
    [v10 enumerateKeysAndObjectsUsingBlock:v59];
    [*(*(a1 + 32) + 32) minusSet:v11];

    objc_autoreleasePoolPop(v3);
  }

  v12 = *(a1 + 40);
  v13 = [*(*(a1 + 32) + 32) array];
  [v12 addObjectsFromArray:v13];

  [*(*(a1 + 32) + 32) removeAllObjects];
  v14 = *(a1 + 48);
  v15 = [*(*(a1 + 32) + 40) array];
  [v14 addObjectsFromArray:v15];

  [*(*(a1 + 32) + 40) removeAllObjects];
  if (*(*(*(a1 + 80) + 8) + 24) && objc_msgSend_count(*(*(a1 + 32) + 16)) > *(*(*(a1 + 80) + 8) + 24))
  {
    v16 = objc_msgSend_count(*(*(a1 + 32) + 16));
    v17 = *(*(*(a1 + 80) + 8) + 24);
    v18 = v16 - v17;
    v19 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:*(*(a1 + 32) + 16) range:v16 - v17 copyItems:{v17, 0}];
    [*(*(a1 + 32) + 16) removeObjectsInRange:{v18, v17}];
    v20 = *(a1 + 56);
    v21 = [v19 array];
    [v20 addObjectsFromArray:v21];
  }

  else
  {
    v22 = *(a1 + 56);
    v23 = [*(*(a1 + 32) + 16) array];
    [v22 addObjectsFromArray:v23];

    [*(*(a1 + 32) + 16) removeAllObjects];
  }

  if (*(*(*(a1 + 80) + 8) + 24) && objc_msgSend_count(*(*(a1 + 32) + 24)) > *(*(*(a1 + 80) + 8) + 24))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v63 = 0;
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    v25 = *(*(a1 + 32) + 24);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_3;
    v54[3] = &unk_1E7576918;
    v55 = *(a1 + 64);
    v26 = v24;
    v56 = v26;
    v57 = buf;
    v58 = *(a1 + 80);
    [v25 enumerateKeysAndObjectsUsingBlock:v54];
    [*(*(a1 + 32) + 24) removeObjectsForKeys:v26];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [*(a1 + 64) setDictionary:*(*(a1 + 32) + 24)];
    [*(*(a1 + 32) + 24) removeAllObjects];
  }

  v27 = objc_msgSend_count(*(a1 + 56));
  *(*(a1 + 32) + 8) = objc_msgSend_count(*(a1 + 64)) + v27;
  v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(*(a1 + 56))];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v29 = *(a1 + 56);
  v30 = [v29 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v30)
  {
    v31 = *v51;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v50 + 1) + 8 * i);
        v34 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v33];
        v35 = v34;
        if (v34)
        {
          if (([v34 hasChangesAffectingSharingComposition] & 1) == 0 && objc_msgSend(v35, "hasNoOtherAssetChangesRequiringMomentGeneration"))
          {
            [v28 addObject:v33];
          }

          [*(a1 + 72) setObject:v35 forKeyedSubscript:v33];
          [*(*(a1 + 32) + 48) removeObjectForKey:v33];
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v30);
  }

  [*(a1 + 56) removeObjectsInArray:v28];
  if (!objc_msgSend_count(*(a1 + 72)) && objc_msgSend_count(*(*(a1 + 32) + 48)))
  {
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = *(*(a1 + 32) + 48);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_4;
    v46[3] = &unk_1E7576940;
    v47 = *(a1 + 72);
    v48 = v36;
    v49 = *(a1 + 80);
    v38 = v36;
    [v37 enumerateKeysAndObjectsUsingBlock:v46];
    [*(*(a1 + 32) + 48) removeObjectsForKeys:v38];
  }

  if (objc_msgSend_count(*(*(a1 + 32) + 48)) || objc_msgSend_count(*(a1 + 72)))
  {
    v39 = PLMomentsGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_msgSend_count(*(a1 + 72));
      v41 = objc_msgSend_count(*(*(a1 + 32) + 48));
      *buf = 134218240;
      *&buf[4] = v40;
      *&buf[12] = 2048;
      *&buf[14] = v41;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Identified %lu shared asset container changes for current batch. %lu remain", buf, 0x16u);
    }
  }

  v42 = PLMomentsGetLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *(a1 + 32);
    v44 = *(v43 + 8);
    v45 = objc_msgSend_count(*(v43 + 16));
    *buf = 134218240;
    *&buf[4] = v44;
    *&buf[12] = 2048;
    *&buf[14] = v45;
    _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Beginning moment generation pass with %lu changes. %lu remain", buf, 0x16u);
  }
}

void __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 setObject:a3 forKey:v8];
  [*(a1 + 40) addObject:v8];

  if (++*(*(*(a1 + 48) + 8) + 24) >= *(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }
}

void *__73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 setObject:a3 forKeyedSubscript:v8];
  [*(a1 + 40) addObject:v8];

  result = objc_msgSend_count(*(a1 + 32));
  if (result >= *(*(*(a1 + 48) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

- (void)generateWithIncrementalDataCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (PLPlatformMomentsSupported())
  {
    if (handlerCopy)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __67__PLMomentGeneration_generateWithIncrementalDataCompletionHandler___block_invoke;
      v10 = &unk_1E7577C08;
      selfCopy = self;
      v12 = handlerCopy;
      pl_dispatch_sync();
    }

    [(PLMomentGeneration *)self _updateIncrementalMomentGeneration:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    isolationQueue = [WeakRetained isolationQueue];
    pl_dispatch_async();
  }
}

void __67__PLMomentGeneration_generateWithIncrementalDataCompletionHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 40) copy];
  v2 = *(*(a1 + 32) + 56);
  v3 = _Block_copy(v4);
  [v2 addObject:v3];
}

- (void)generateWithAssetInsertsAndUpdates:(id)updates assetDeletes:(id)deletes assetUpdatesForHighlights:(id)highlights momentUpdatesForHighlights:(id)forHighlights completionHandler:(id)handler
{
  updatesCopy = updates;
  deletesCopy = deletes;
  highlightsCopy = highlights;
  forHighlightsCopy = forHighlights;
  handlerCopy = handler;
  if (PLPlatformMomentsSupported() && (objc_msgSend_count(updatesCopy) || objc_msgSend_count(deletesCopy) || objc_msgSend_count(highlightsCopy) || objc_msgSend_count(forHighlightsCopy)))
  {
    [(PLMomentGeneration *)self saveChangesForAssetInsertsAndUpdates:updatesCopy assetDeletes:deletesCopy assetUpdatesForHighlights:highlightsCopy momentUpdatesForHighlights:forHighlightsCopy sharedAssetContainerIncrementalChangesByAssetID:0];
    [(PLMomentGeneration *)self generateWithIncrementalDataCompletionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    isolationQueue = [WeakRetained isolationQueue];
    pl_dispatch_async();
  }
}

- (void)saveChangesForAssetInsertsAndUpdates:(id)updates assetDeletes:(id)deletes assetUpdatesForHighlights:(id)highlights momentUpdatesForHighlights:(id)forHighlights sharedAssetContainerIncrementalChangesByAssetID:(id)d
{
  updatesCopy = updates;
  deletesCopy = deletes;
  highlightsCopy = highlights;
  forHighlightsCopy = forHighlights;
  dCopy = d;
  if (PLPlatformMomentsSupported() && (objc_msgSend_count(updatesCopy) || objc_msgSend_count(deletesCopy) || objc_msgSend_count(highlightsCopy) || objc_msgSend_count(forHighlightsCopy)))
  {
    v16 = updatesCopy;
    v17 = deletesCopy;
    v18 = highlightsCopy;
    v19 = forHighlightsCopy;
    v20 = dCopy;
    pl_dispatch_sync();
  }
}

uint64_t __173__PLMomentGeneration_saveChangesForAssetInsertsAndUpdates_assetDeletes_assetUpdatesForHighlights_momentUpdatesForHighlights_sharedAssetContainerIncrementalChangesByAssetID___block_invoke(void *a1)
{
  [*(a1[4] + 16) addObjectsFromArray:a1[5]];
  [*(a1[4] + 24) addEntriesFromDictionary:a1[6]];
  [*(a1[4] + 32) addObjectsFromArray:a1[7]];
  [*(a1[4] + 40) addObjectsFromArray:a1[8]];
  v2 = a1[9];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __173__PLMomentGeneration_saveChangesForAssetInsertsAndUpdates_assetDeletes_assetUpdatesForHighlights_momentUpdatesForHighlights_sharedAssetContainerIncrementalChangesByAssetID___block_invoke_2;
  v4[3] = &unk_1E7578478;
  v4[4] = a1[4];
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __173__PLMomentGeneration_saveChangesForAssetInsertsAndUpdates_assetDeletes_assetUpdatesForHighlights_momentUpdatesForHighlights_sharedAssetContainerIncrementalChangesByAssetID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v9];
  v8 = v7;
  if (v7)
  {
    [v7 mergeChangesFrom:v6];
  }

  else
  {
    [*(*(a1 + 32) + 48) setObject:v6 forKeyedSubscript:v9];
  }
}

- (BOOL)_isAsset:(id)asset identicalToAssetForMoments:(id)moments
{
  assetCopy = asset;
  momentsCopy = moments;
  dateCreated = [assetCopy dateCreated];
  dateCreated2 = [momentsCopy dateCreated];
  v9 = dateCreated2;
  if (dateCreated)
  {
    if (dateCreated2 && ([dateCreated isEqual:dateCreated2] & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_12;
  }

  if (dateCreated2)
  {
    goto LABEL_9;
  }

LABEL_4:
  location = [assetCopy location];
  location2 = [momentsCopy location];
  v12 = location2;
  v13 = (location | location2) == 0;
  if (location && location2)
  {
    [location coordinate];
    v15 = v14;
    [v12 coordinate];
    if (v15 == v16)
    {
      [location coordinate];
      v18 = v17;
      [v12 coordinate];
      v13 = v18 == v19;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_12:
  return v13;
}

- (id)_newPublicGlobalUUIDsToAssetsMappingWithAssets:(id)assets
{
  v18 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 moment];

        globalUUID = [v10 globalUUID];
        if (globalUUID)
        {
          [v4 setObject:v10 forKey:globalUUID];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_runIncrementalMomentGenerationIfItemsArePendingWithCompletion:(id)completion
{
  completionCopy = completion;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__108963;
  v29[4] = __Block_byref_object_dispose__108964;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  obj = 0;
  v5 = [(PLMomentGeneration *)self _hasWorkWorkRemainingWithCompletionBlocks:&obj];
  objc_storeStrong(&v30, obj);
  v28 = v5;
  v6 = self->_incrementalMomentGenThrottle;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  isolationQueue = [WeakRetained isolationQueue];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7578910;
  v23 = v29;
  v9 = isolationQueue;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (*(v26 + 24) == 1)
  {
    v12 = objc_autoreleasePoolPush();
    Current = CFAbsoluteTimeGetCurrent();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke_3;
    v14[3] = &unk_1E75768A0;
    v20 = Current;
    v18 = &v25;
    v14[4] = self;
    v19 = v29;
    v15 = v6;
    v16 = v11;
    v17 = completionCopy;
    [(PLMomentGeneration *)self _runIncrementalGenerationPassWithCompletionHandler:v14];

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    (*(v10 + 2))(v10);
    completionCopy[2](completionCopy);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

uint64_t __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return pl_dispatch_async();
  }

  return result;
}

uint64_t __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 80);
    *buf = 134217984;
    v10 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment generation pass completed in %.2f s", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 72) + 8);
  obj = *(v5 + 40);
  v6 = [v4 _hasWorkWorkRemainingWithCompletionBlocks:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v6;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 40) update];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  return (*(*(a1 + 56) + 16))();
}

void __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)releaseMemoryIntensiveObjects
{
  [(PLLazyObject *)self->_lazyLocalCreationDateCreator resetObject];
  [(PLLazyObject *)self->_lazyFrequentLocationManager resetObject];
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  [WeakRetained releaseMemoryIntensiveObjects];
}

- (BOOL)_hasWorkWorkRemainingWithCompletionBlocks:(id *)blocks
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__108963;
  v14 = __Block_byref_object_dispose__108964;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  pl_dispatch_sync();
  if (blocks)
  {
    *blocks = v11[5];
  }

  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);

  return v4;
}

uint64_t __64__PLMomentGeneration__hasWorkWorkRemainingWithCompletionBlocks___block_invoke(void *a1, const char *a2)
{
  v3 = objc_msgSend_count(*(a1[4] + 16), a2);
  v4 = objc_msgSend_count(*(a1[4] + 24));
  v5 = objc_msgSend_count(*(a1[4] + 32));
  v6 = objc_msgSend_count(*(a1[4] + 40));
  result = objc_msgSend_count(*(a1[4] + 48));
  *(*(a1[5] + 8) + 24) = (v3 | v4 | v5 | v6 | result) != 0;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DEC8] arrayWithArray:*(a1[4] + 56)];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1[4] + 56) removeAllObjects];
    v11 = a1[4];

    return [v11 releaseMemoryIntensiveObjects];
  }

  return result;
}

- (PLMomentGeneration)initWithMomentGenerationDataManager:(id)manager bundle:(id)bundle locale:(id)locale
{
  managerCopy = manager;
  bundleCopy = bundle;
  localeCopy = locale;
  v49.receiver = self;
  v49.super_class = PLMomentGeneration;
  v11 = [(PLMomentGeneration *)&v49 init];
  if (PLPlatformMomentsSupported())
  {
    if (v11)
    {
      objc_storeWeak(&v11->_momentGenerationDataManager, managerCopy);
      v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      pendingInsertsAndUpdates = v11->_pendingInsertsAndUpdates;
      v11->_pendingInsertsAndUpdates = v12;

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      pendingDeletes = v11->_pendingDeletes;
      v11->_pendingDeletes = v14;

      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pendingCompletionBlocks = v11->_pendingCompletionBlocks;
      v11->_pendingCompletionBlocks = v16;

      v18 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      pendingUpdatesForHighlights = v11->_pendingUpdatesForHighlights;
      v11->_pendingUpdatesForHighlights = v18;

      v20 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      pendingMomentUpdatesForHighlights = v11->_pendingMomentUpdatesForHighlights;
      v11->_pendingMomentUpdatesForHighlights = v20;

      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      pendingSharedAssetContainerIncrementalChanges = v11->_pendingSharedAssetContainerIncrementalChanges;
      v11->_pendingSharedAssetContainerIncrementalChanges = v22;

      v24 = dispatch_queue_create("com.apple.moment.generation.pendingIsolation", 0);
      incrementalGenerationStateQueue = v11->_incrementalGenerationStateQueue;
      v11->_incrementalGenerationStateQueue = v24;

      objc_storeStrong(&v11->_libraryBundle, bundle);
      if (localeCopy)
      {
        v26 = [[PLDateRangeTitleGenerator alloc] initWithLocale:localeCopy];
      }

      else
      {
        v26 = objc_alloc_init(PLDateRangeTitleGenerator);
      }

      dateRangeTitleGenerator = v11->_dateRangeTitleGenerator;
      v11->_dateRangeTitleGenerator = v26;

      v28 = objc_initWeak(&location, v11);
      v29 = objc_alloc(MEMORY[0x1E69BF270]);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke;
      v46[3] = &unk_1E7576828;
      objc_copyWeak(&v47, &location);
      v30 = [v29 initWithRetriableBlock:v46];
      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
      lazyFrequentLocationManager = v11->_lazyFrequentLocationManager;
      v11->_lazyFrequentLocationManager = v30;

      v32 = objc_initWeak(&location, v11);
      v33 = objc_alloc(MEMORY[0x1E69BF270]);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_2;
      v44[3] = &unk_1E7576828;
      objc_copyWeak(&v45, &location);
      v34 = [v33 initWithRetriableBlock:v44];
      objc_destroyWeak(&v45);
      objc_destroyWeak(&location);
      lazyLocalCreationDateCreator = v11->_lazyLocalCreationDateCreator;
      v11->_lazyLocalCreationDateCreator = v34;

      objc_initWeak(&location, v11);
      v36 = [PLMomentGenerationThrottle alloc];
      isLightweightMigrationManager = [managerCopy isLightweightMigrationManager];
      isolationQueue = [managerCopy isolationQueue];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_3;
      v42[3] = &unk_1E7576878;
      objc_copyWeak(&v43, &location);
      v39 = [(PLMomentGenerationThrottle *)v36 initWithName:@"MomentGeneration" canDelayAnyQOS:0 singleThreadedMode:isLightweightMigrationManager timeProvider:0 targetQueue:isolationQueue target:v42];
      incrementalMomentGenThrottle = v11->_incrementalMomentGenThrottle;
      v11->_incrementalMomentGenThrottle = v39;

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

id __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newFrequentLocationManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newLocalCreationDateCreator];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_initWeak(&location, WeakRetained);
  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = @"MomentGeneration";
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentGenerationThrottle] %{public}@ executing target, waiting for completion...", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_44;
  v7[3] = &unk_1E7576850;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [WeakRetained _runIncrementalMomentGenerationIfItemsArePendingWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[11] timeProvider];
    [v3 currentTime];
    v5 = v4;

    (*(*(a1 + 32) + 16))(v5);
    WeakRetained = v6;
  }
}

+ (id)dateIntervalsAroundSortedDates:(id)dates minimumIntervalDuration:(double)duration
{
  v33 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  if (objc_msgSend_count(datesCopy))
  {
    firstObject = [datesCopy firstObject];
    v7 = duration * 0.5;
    array = [MEMORY[0x1E695DF70] array];
    v8 = -(duration * 0.5);
    v9 = [firstObject dateByAddingTimeInterval:v8];
    v25 = firstObject;
    v10 = [firstObject dateByAddingTimeInterval:v7];
    v11 = [v10 dateByAddingTimeInterval:v7];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = datesCopy;
    v12 = datesCopy;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        v16 = 0;
        v17 = v10;
        v18 = v11;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v28 + 1) + 8 * v16);
          if ([v18 compare:v19] == -1)
          {
            v20 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v17];
            [array addObject:v20];
            v21 = [v19 dateByAddingTimeInterval:v8];

            v9 = v21;
          }

          v10 = [v19 dateByAddingTimeInterval:v7];

          v11 = [v10 dateByAddingTimeInterval:v7];

          ++v16;
          v17 = v10;
          v18 = v11;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    v22 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v10];
    [array addObject:v22];
    v23 = array;

    datesCopy = v26;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  return v23;
}

@end