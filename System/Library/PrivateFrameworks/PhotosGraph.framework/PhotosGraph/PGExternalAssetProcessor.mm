@interface PGExternalAssetProcessor
+ (id)clusterAssetsToProcess:(id)process inPhotoLibrary:(id)library;
- (BOOL)processExternalAssetRelevanceInferenceWithError:(id *)error progressReporter:(id)reporter shareBackSuggester:(id)suggester;
- (PGExternalAssetProcessor)initWithWorkingContext:(id)context;
@end

@implementation PGExternalAssetProcessor

- (BOOL)processExternalAssetRelevanceInferenceWithError:(id *)error progressReporter:(id)reporter shareBackSuggester:(id)suggester
{
  v74 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  suggesterCopy = suggester;
  v10 = reporterCopy;
  if (![v10 isCancelledWithProgress:0.0])
  {
    loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
    v13 = os_signpost_id_generate(loggingConnection);
    v14 = loggingConnection;
    v15 = v14;
    v56 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ExternalAssetRelevance", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v55 = mach_absolute_time();
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludeGuestAssets:0];
    v17 = +[PGCurationManager assetPropertySetsForCuration];
    [librarySpecificFetchOptions setFetchPropertySets:v17];

    internalPredicateToIncludeExternalAssetsNeedingProcessing = [MEMORY[0x277D3C7D0] internalPredicateToIncludeExternalAssetsNeedingProcessing];
    [librarySpecificFetchOptions setInternalPredicate:internalPredicateToIncludeExternalAssetsNeedingProcessing];

    v19 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
    if ([v10 isCancelledWithProgress:0.1])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_14:
        if (error && !*error)
        {
          [MEMORY[0x277D22C28] errorForCode:-4];
          *error = v11 = 0;
        }

        else
        {
          v11 = 0;
        }

LABEL_49:

        goto LABEL_50;
      }

      *buf = 67109378;
      *v73 = 58;
      *&v73[4] = 2080;
      *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
      v20 = MEMORY[0x277D86220];
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_14;
    }

    v54 = [v19 count];
    if (!v54)
    {
      if (![v10 isCancelledWithProgress:1.0])
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_DEFAULT, "No asset eligible for relevance processing", buf, 2u);
        }

        v11 = 1;
        goto LABEL_49;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      *buf = 67109378;
      *v73 = 62;
      *&v73[4] = 2080;
      *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
      v20 = MEMORY[0x277D86220];
      goto LABEL_13;
    }

    spid = v13;
    v52 = [MEMORY[0x277CBEB58] set];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v49 = [objc_alloc(MEMORY[0x277D22C88]) initWithProgressReporter:v10];
    v21 = [v49 childProgressReporterToCheckpoint:0.9];
    [(PGManagerWorkingContext *)self->_workingContext serviceManager];
    v23 = v22 = v19;
    workingContext = self->_workingContext;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __112__PGExternalAssetProcessor_processExternalAssetRelevanceInferenceWithError_progressReporter_shareBackSuggester___block_invoke;
    v62[3] = &unk_278889AF0;
    v48 = v21;
    v63 = v48;
    v51 = suggesterCopy;
    v64 = suggesterCopy;
    v50 = v15;
    v25 = v15;
    v65 = v25;
    selfCopy = self;
    v26 = v23;
    v19 = v22;
    v47 = v26;
    v67 = v26;
    v27 = v22;
    v68 = v27;
    v53 = v52;
    v69 = v53;
    v28 = dictionary;
    v70 = v28;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v62];
    v29 = v25;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v27 count];
      *buf = 134217984;
      *v73 = v30;
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_DEFAULT, "%lu external assets processed", buf, 0xCu);
    }

    v31 = v29;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v53 count];
      *buf = 134217984;
      *v73 = v32;
      _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "%lu external assets inferred as relevant", buf, 0xCu);
    }

    photoLibrary = self->_photoLibrary;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __112__PGExternalAssetProcessor_processExternalAssetRelevanceInferenceWithError_progressReporter_shareBackSuggester___block_invoke_299;
    v58[3] = &unk_278889B18;
    v61 = v54;
    v59 = v27;
    v46 = v28;
    v60 = v46;
    v57 = 0;
    v11 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v58 error:&v57];
    v34 = v57;
    suggesterCopy = v51;
    if ((v11 & 1) == 0)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v73 = v34;
        _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "Error saving external asset inference to database: %@", buf, 0xCu);
        if (!error)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (error)
      {
LABEL_25:
        v35 = v34;
        *error = v34;
      }
    }

LABEL_26:
    throughputReportBlock = [v10 throughputReportBlock];

    if (throughputReportBlock)
    {
      throughputReportBlock2 = [v10 throughputReportBlock];
      throughputReportBlock2[2](throughputReportBlock2, v54, 0);
    }

    v38 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v41 = v31;
    v42 = v41;
    if (v56 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "ExternalAssetRelevance", "", buf, 2u);
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v73 = "ExternalAssetRelevance";
      *&v73[8] = 2048;
      *&v73[10] = ((((v38 - v55) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v15 = v50;
    if ([v10 isCancelledWithProgress:1.0])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v73 = 158;
        *&v73[4] = 2080;
        *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      if (error && !*error)
      {
        [MEMORY[0x277D22C28] errorForCode:-4];
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }

    goto LABEL_49;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v73 = 46;
    *&v73[4] = 2080;
    *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  if (error && !*error)
  {
    [MEMORY[0x277D22C28] errorForCode:-4];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_50:

  return v11;
}

void __112__PGExternalAssetProcessor_processExternalAssetRelevanceInferenceWithError_progressReporter_shareBackSuggester___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v39 = *(a1 + 32);
  v35 = v3;
  v43 = [v3 graph];
  v42 = *(a1 + 40);
  if (!v42)
  {
    v42 = [PGShareBackSuggester shareBackSuggesterForExternalAssetProcessingWithLoggingConnection:*(a1 + 48) photoLibrary:*(*(a1 + 56) + 16) graph:v43 serviceManager:*(a1 + 64)];
  }

  v4 = [*(a1 + 40) positiveProcessingValue];
  v5 = [objc_opt_class() clusterAssetsToProcess:*(a1 + 72) inPhotoLibrary:*(*(a1 + 56) + 16)];
  v6 = [v5 count];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v5;
  v41 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (!v41)
  {
    goto LABEL_43;
  }

  v8 = 1.0 / v6;
  v40 = *v58;
  v9 = 0.0;
  *&v7 = 138412290;
  v34 = v7;
  v37 = v4;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v58 != v40)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v57 + 1) + 8 * v10);
    v12 = objc_autoreleasePoolPush();
    v56 = 0;
    v13 = [v42 suggesterResultsForInputs:v11 inGraph:v43 error:&v56];
    v47 = v56;
    if (v13)
    {
      break;
    }

    v24 = *(a1 + 48);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = v34;
      *v62 = v47;
      _os_log_error_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_ERROR, "PGShareBackSuggesterResults returned from PGShareBackSuggester is nil: %@", buf, 0xCu);
    }

    v23 = 0;
LABEL_37:

    objc_autoreleasePoolPop(v12);
    if (++v10 == v41)
    {
      v41 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (!v41)
      {
        goto LABEL_43;
      }

      goto LABEL_5;
    }
  }

  v45 = v10;
  v46 = v12;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v44 = v13;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v53;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v52 + 1) + 8 * i);
        v21 = [v20 processingValue];
        v22 = v21;
        if ((v21 & v4) != 0)
        {
          v23 = v20;
          v17 = v22;
          goto LABEL_24;
        }

        v17 |= v21;
      }

      v16 = [v14 countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

  v23 = 0;
LABEL_24:
  v38 = v14;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (!v26)
  {
    goto LABEL_35;
  }

  v27 = v26;
  v28 = *v49;
  do
  {
    for (j = 0; j != v27; ++j)
    {
      if (*v49 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v48 + 1) + 8 * j);
      if (v23)
      {
        [*(a1 + 80) addObject:*(*(&v48 + 1) + 8 * j)];
LABEL_31:
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{v17, v34}];
        v32 = *(a1 + 88);
        v33 = [v30 uuid];
        [v32 setObject:v31 forKeyedSubscript:v33];

        continue;
      }

      if (!v47)
      {
        goto LABEL_31;
      }
    }

    v27 = [v25 countByEnumeratingWithState:&v48 objects:v63 count:16];
  }

  while (v27);
LABEL_35:

  v9 = v8 + v9;
  if (![v39 isCancelledWithProgress:v9])
  {
    v4 = v37;
    v10 = v45;
    v12 = v46;
    v13 = v44;
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v62 = 120;
    *&v62[4] = 2080;
    *&v62[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/ExternalAssetProcessing/PGExternalAssetProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v46);
LABEL_43:
}

void __112__PGExternalAssetProcessor_processExternalAssetRelevanceInferenceWithError_progressReporter_shareBackSuggester___block_invoke_299(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    v3 = *MEMORY[0x277D3C830];
    do
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v2];
      v6 = *(a1 + 40);
      v7 = [v5 uuid];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (v8)
      {
        v9 = [MEMORY[0x277CD97B0] changeRequestForAsset:v5];
        [v9 setSyndicationProcessingValue:{objc_msgSend(v8, "unsignedShortValue")}];
        [v9 setSyndicationProcessingVersion:v3];
      }

      objc_autoreleasePoolPop(v4);
      ++v2;
    }

    while (v2 < *(a1 + 48));
  }
}

- (PGExternalAssetProcessor)initWithWorkingContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PGExternalAssetProcessor;
  v6 = [(PGExternalAssetProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, context);
    photoLibrary = [(PGManagerWorkingContext *)v7->_workingContext photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;
  }

  return v7;
}

+ (id)clusterAssetsToProcess:(id)process inPhotoLibrary:(id)library
{
  v35 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v6 = MEMORY[0x277CD98F8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v29 = [v6 fetchMomentUUIDByAssetUUIDForAssets:processCopy options:librarySpecificFetchOptions];

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = processCopy;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        uuid = [v13 uuid];
        v15 = [v29 objectForKeyedSubscript:uuid];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = uuid;
        }

        v18 = v17;

        curationProperties = [v13 curationProperties];
        importedByBundleIdentifier = [curationProperties importedByBundleIdentifier];
        v21 = importedByBundleIdentifier;
        v22 = &stru_2843F5C58;
        if (importedByBundleIdentifier)
        {
          v22 = importedByBundleIdentifier;
        }

        v23 = v22;

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v18, v23];

        v25 = [v8 objectForKeyedSubscript:v24];
        if (!v25)
        {
          v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v8 setObject:v25 forKeyedSubscript:v24];
        }

        [v25 addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  allValues = [v8 allValues];

  return allValues;
}

@end