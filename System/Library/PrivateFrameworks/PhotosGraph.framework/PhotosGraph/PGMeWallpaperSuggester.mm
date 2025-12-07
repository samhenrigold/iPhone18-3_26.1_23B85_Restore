@interface PGMeWallpaperSuggester
- (id)personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress:(id)progress;
- (void)setupFilteringContexts;
@end

@implementation PGMeWallpaperSuggester

- (void)setupFilteringContexts
{
  IsIPad = PLPhysicalDeviceIsIPad();
  v4 = [PGPeopleWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v5 = [(PGSinglePersonWallpaperAssetSuggesterFilteringContext *)v4 initForPeopleInOrientation:1 deviceAspectRatio:0.4615];
  }

  else
  {
    v5 = [(PGPeopleWallpaperSuggesterFilteringContext *)v4 initForPeopleInOrientation:1];
  }

  v6 = v5;
  [(PGPeopleWallpaperSuggester *)self setPrimaryFilteringContext:v5];

  [(PGPeopleWallpaperSuggester *)self setSecondaryFilteringContext:0];
}

- (id)personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress:(id)progress
{
  v27 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = _Block_copy(progressCopy);
  v6 = 0.0;
  if (!v5 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v8 = 0;
LABEL_4:
    session = [(PGAbstractSuggester *)self session];
    *v22 = 0;
    *&v23 = v22;
    *(&v23 + 1) = 0x3032000000;
    v24 = __Block_byref_object_copy__37873;
    v25 = __Block_byref_object_dispose__37874;
    v26 = 0;
    workingContext = [session workingContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__PGMeWallpaperSuggester_personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress___block_invoke;
    v15[3] = &unk_27888A5C0;
    v15[4] = v22;
    [workingContext performSynchronousConcurrentGraphReadUsingBlock:v15];

    if (v5 && CFAbsoluteTimeGetCurrent() - v6 >= 0.01 && (v14 = 0, v5[2](v5, &v14, 1.0), v8 | v14))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v19 = 47;
        v20 = 2080;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGMeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else if (*(v23 + 40))
    {
      v16 = *(v23 + 40);
      v11 = [MEMORY[0x277CBEB98] setWithObject:?];
      v17 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

LABEL_12:
      _Block_object_dispose(v22, 8);

      goto LABEL_13;
    }

    v12 = MEMORY[0x277CBEC10];
    goto LABEL_12;
  }

  buf[0] = 0;
  v5[2](v5, buf, 0.0);
  v8 = buf[0];
  if (buf[0] != 1)
  {
    v6 = Current;
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v22 = 67109378;
    *&v22[4] = 36;
    LOWORD(v23) = 2080;
    *(&v23 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGMeWallpaperSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v22, 0x12u);
  }

  v12 = MEMORY[0x277CBEC10];
LABEL_13:

  return v12;
}

void __92__PGMeWallpaperSuggester_personLocalIdentifiersByOriginalPersonLocalIdentifierWithProgress___block_invoke(uint64_t a1, void *a2)
{
  v9 = [a2 graph];
  v3 = [v9 meNodeWithFallbackInferredMeNode];
  v4 = [v3 localIdentifier];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (![*(*(*(a1 + 32) + 8) + 40) length])
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

@end