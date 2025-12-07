@interface PGUpNextMusicCurator
+ (id)_appleMusicCurationWithFeaturesByMemory:(id)memory musicCuratorContext:(id)context managerContext:(id)managerContext progressReporter:(id)reporter error:(id *)error;
+ (id)_baseMemoryFetchOptionsWithPhotoLibrary:(id)library;
+ (id)_flexMusicCurationWithFeaturesByMemory:(id)memory musicCurationOptions:(id)options musicCuratorContext:(id)context progressReporter:(id)reporter error:(id *)error;
+ (id)_photosGraphPropertiesForMemory:(id)memory musicCurationFeatures:(id)features appleMusicCuration:(id)curation flexMusicCuration:(id)musicCuration isAppleMusicSubscriber:(BOOL)subscriber error:(id *)error;
- (BOOL)curateMusicForUpNextMemoriesWithLocalIdentifiers:(id)identifiers musicCurationOptions:(id)options photoLibrary:(id)library managerContext:(id)context error:(id *)error;
- (PGUpNextMusicCurator)initWithLoggingConnection:(id)connection;
- (id)_appleMusicCurationForMemories:(id)memories curatorContext:(id)context managerContext:(id)managerContext progressReporter:(id)reporter error:(id *)error;
- (id)_flexMusicCurationForMemories:(id)memories curatorContext:(id)context musicCurationOptions:(id)options managerContext:(id)managerContext progressReporter:(id)reporter error:(id *)error;
- (id)_musicCurationFeaturesForMemories:(id)memories musicExtractionContext:(id)context managerContext:(id)managerContext progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGUpNextMusicCurator

- (id)_musicCurationFeaturesForMemories:(id)memories musicExtractionContext:(id)context managerContext:(id)managerContext progressReporter:(id)reporter error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  contextCopy = context;
  managerContextCopy = managerContext;
  reporterCopy = reporter;
  v15 = self->_loggingConnection;
  v16 = os_signpost_id_generate(v15);
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PGUpNextMusicCurator_MusicCurationFeatureExtraction", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v19 = mach_absolute_time();
  *buf = 0;
  v45 = buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__16965;
  v48 = __Block_byref_object_dispose__16966;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__16965;
  v42 = __Block_byref_object_dispose__16966;
  v43 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __119__PGUpNextMusicCurator__musicCurationFeaturesForMemories_musicExtractionContext_managerContext_progressReporter_error___block_invoke;
  v32[3] = &unk_2788826E0;
  v20 = memoriesCopy;
  v33 = v20;
  v21 = reporterCopy;
  v34 = v21;
  v22 = contextCopy;
  v35 = v22;
  v36 = &v38;
  v37 = buf;
  [managerContextCopy performSynchronousConcurrentGraphReadUsingBlock:v32];
  if (!*(v45 + 5))
  {
    if (error)
    {
      v23 = v39[5];
      if (v23)
      {
        *error = v23;
      }
    }
  }

  v24 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v27 = v18;
  v28 = v27;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *v51 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v16, "PGUpNextMusicCurator_MusicCurationFeatureExtraction", "", v51, 2u);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v51 = 136315394;
    v52 = "PGUpNextMusicCurator_MusicCurationFeatureExtraction";
    v53 = 2048;
    v54 = ((((v24 - v19) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v51, 0x16u);
  }

  v29 = *(v45 + 5);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(buf, 8);

  return v29;
}

void __119__PGUpNextMusicCurator__musicCurationFeaturesForMemories_musicExtractionContext_managerContext_progressReporter_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  if ([*(a1 + 32) count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:v4];
      v6 = [*(a1 + 40) childProgressReporterForStep:v4 outOf:{objc_msgSend(*(a1 + 32), "count")}];
      v7 = *(a1 + 48);
      v8 = *(*(a1 + 56) + 8);
      obj = *(v8 + 40);
      v9 = [PGMusicCurator extractMusicCurationFeaturesForMemory:v5 graph:v3 context:v7 progressReporter:v6 error:&obj];
      objc_storeStrong((v8 + 40), obj);
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      if (!v9)
      {
        break;
      }

      [v11 setObject:v9 forKeyedSubscript:v5];

      if (++v4 >= [*(a1 + 32) count])
      {
        goto LABEL_7;
      }
    }

    *(v10 + 40) = 0;
  }

LABEL_7:
}

- (id)_flexMusicCurationForMemories:(id)memories curatorContext:(id)context musicCurationOptions:(id)options managerContext:(id)managerContext progressReporter:(id)reporter error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionsCopy = options;
  reporterCopy = reporter;
  v17 = MEMORY[0x277D22C88];
  managerContextCopy = managerContext;
  memoriesCopy = memories;
  v20 = [[v17 alloc] initWithProgressReporter:reporterCopy];
  v21 = [v20 childProgressReporterToCheckpoint:0.7];
  v50 = [v20 childProgressReporterToCheckpoint:0.95];
  v22 = [objc_opt_class() flexMusicFeatureExtractionContextWithCuratorContext:contextCopy];
  v49 = v21;
  v23 = [(PGUpNextMusicCurator *)self _musicCurationFeaturesForMemories:memoriesCopy musicExtractionContext:v22 managerContext:managerContextCopy progressReporter:v21 error:error];

  if (v23)
  {
    v47 = reporterCopy;
    v48 = optionsCopy;
    v24 = self->_loggingConnection;
    v25 = os_signpost_id_generate(v24);
    v26 = v24;
    v27 = v26;
    v28 = v25 - 1;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PGUpNextMusicCurator_FlexMusicCuration", "", buf, 2u);
    }

    spid = v25;

    info = 0;
    mach_timebase_info(&info);
    v46 = mach_absolute_time();
    v29 = [objc_opt_class() _flexMusicCurationWithFeaturesByMemory:v23 musicCurationOptions:v48 musicCuratorContext:contextCopy progressReporter:v50 error:error];
    if (v29)
    {
      v30 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v29, "count")}];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __128__PGUpNextMusicCurator__flexMusicCurationForMemories_curatorContext_musicCurationOptions_managerContext_progressReporter_error___block_invoke;
      v51[3] = &unk_278880C28;
      v52 = v23;
      v31 = v30;
      v53 = v31;
      [v29 enumerateKeysAndObjectsUsingBlock:v51];
      [v47 isCancelledWithProgress:1.0];
      v32 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v35 = v27;
      v36 = v35;
      if (v28 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator_FlexMusicCuration", "", buf, 2u);
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "PGUpNextMusicCurator_FlexMusicCuration";
        v57 = 2048;
        v58 = ((((v32 - v46) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v37 = v53;
      v38 = v31;

      optionsCopy = v48;
    }

    else
    {
      v39 = mach_absolute_time();
      v41 = info.numer;
      v40 = info.denom;
      v42 = v27;
      v43 = v42;
      if (v28 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator_FlexMusicCuration", "", buf, 2u);
      }

      optionsCopy = v48;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "PGUpNextMusicCurator_FlexMusicCuration";
        v57 = 2048;
        v58 = ((((v39 - v46) * v41) / v40) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v38 = 0;
    }

    reporterCopy = v47;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

void __128__PGUpNextMusicCurator__flexMusicCurationForMemories_curatorContext_musicCurationOptions_managerContext_progressReporter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKeyedSubscript:v7];
  v8 = [[PGMusicCurationAndFeatures alloc] initWithFlexMusicCuration:v6 features:v9];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
}

- (id)_appleMusicCurationForMemories:(id)memories curatorContext:(id)context managerContext:(id)managerContext progressReporter:(id)reporter error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  managerContextCopy = managerContext;
  reporterCopy = reporter;
  v15 = MEMORY[0x277D22C88];
  memoriesCopy = memories;
  v17 = v15;
  v18 = reporterCopy;
  v19 = [[v17 alloc] initWithProgressReporter:reporterCopy];
  v20 = [v19 childProgressReporterToCheckpoint:0.7];
  v21 = [v19 childProgressReporterToCheckpoint:0.95];
  v49 = [objc_opt_class() appleMusicFeatureExtractionContextWithCuratorContext:contextCopy];
  v22 = [PGUpNextMusicCurator _musicCurationFeaturesForMemories:"_musicCurationFeaturesForMemories:musicExtractionContext:managerContext:progressReporter:error:" musicExtractionContext:memoriesCopy managerContext:? progressReporter:? error:?];

  if (v22)
  {
    v47 = v20;
    v48 = v21;
    v23 = self->_loggingConnection;
    v24 = os_signpost_id_generate(v23);
    v25 = v23;
    v26 = v25;
    spid = v24;
    v27 = v24 - 1;
    if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGUpNextMusicCurator_AppleMusicCuration", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v45 = mach_absolute_time();
    v28 = [objc_opt_class() _appleMusicCurationWithFeaturesByMemory:v22 musicCuratorContext:contextCopy managerContext:managerContextCopy progressReporter:v48 error:error];
    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v28, "count")}];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __108__PGUpNextMusicCurator__appleMusicCurationForMemories_curatorContext_managerContext_progressReporter_error___block_invoke;
      v50[3] = &unk_278880C00;
      v51 = v22;
      v30 = v29;
      v52 = v30;
      [v28 enumerateKeysAndObjectsUsingBlock:v50];
      v44 = v18;
      [v18 isCancelledWithProgress:1.0];
      v31 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v34 = v26;
      v35 = v34;
      if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator_AppleMusicCuration", "", buf, 2u);
      }

      v20 = v47;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v55 = "PGUpNextMusicCurator_AppleMusicCuration";
        v56 = 2048;
        v57 = ((((v31 - v45) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v36 = v52;
      v37 = v30;

      v18 = v44;
    }

    else
    {
      v38 = mach_absolute_time();
      v40 = info.numer;
      v39 = info.denom;
      v41 = v26;
      v42 = v41;
      if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator_AppleMusicCuration", "", buf, 2u);
      }

      v20 = v47;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v55 = "PGUpNextMusicCurator_AppleMusicCuration";
        v56 = 2048;
        v57 = ((((v38 - v45) * v40) / v39) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v37 = 0;
    }

    v21 = v48;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

void __108__PGUpNextMusicCurator__appleMusicCurationForMemories_curatorContext_managerContext_progressReporter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKeyedSubscript:v7];
  v8 = [[PGMusicCurationAndFeatures alloc] initWithAppleMusicCuration:v6 features:v9];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)curateMusicForUpNextMemoriesWithLocalIdentifiers:(id)identifiers musicCurationOptions:(id)options photoLibrary:(id)library managerContext:(id)context error:(id *)error
{
  v147 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  optionsCopy = options;
  libraryCopy = library;
  contextCopy = context;
  v14 = self->_loggingConnection;
  v15 = os_signpost_id_generate(v14);
  v16 = v14;
  v17 = v16;
  v118 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGUpNextMusicCurator", "", buf, 2u);
  }

  spid = v15;

  info = 0;
  mach_timebase_info(&info);
  v114 = mach_absolute_time();
  selfCopy = self;
  v122 = libraryCopy;
  v120 = [objc_opt_class() _baseMemoryFetchOptionsWithPhotoLibrary:libraryCopy];
  v18 = [MEMORY[0x277CD98D8] fetchAssetCollectionsWithLocalIdentifiers:identifiersCopy options:?];
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v136 objects:v146 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v137;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v137 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v136 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 addObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v136 objects:v146 count:16];
    }

    while (v22);
  }

  if ([v19 count])
  {
    ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
    v27 = optionsCopy;
    v28 = [contextCopy musicCuratorContextWithCurationOptions:optionsCopy error:error];
    v111 = v28;
    if (v28)
    {
      v29 = v28;
      v124 = [(PGUpNextMusicCurator *)selfCopy _appleMusicCurationForMemories:v19 curatorContext:v28 managerContext:contextCopy progressReporter:ignoreProgress error:error];
      if (v124)
      {
        v107 = ignoreProgress;
        v30 = [(PGUpNextMusicCurator *)selfCopy _flexMusicCurationForMemories:v19 curatorContext:v29 musicCurationOptions:optionsCopy managerContext:contextCopy progressReporter:ignoreProgress error:error];
        loggingConnection = selfCopy->_loggingConnection;
        v121 = v30;
        if (v30)
        {
          v32 = loggingConnection;
          v33 = os_signpost_id_generate(v32);
          v34 = v32;
          v35 = v34;
          v105 = v33 - 1;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "PGUpNextMusicCurator_BuildAndPersistRecipe", "", buf, 2u);
          }

          v102 = v33;
          v106 = v35;

          v135 = 0;
          mach_timebase_info(&v135);
          v104 = mach_absolute_time();
          v113 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
          v112 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v36 = v19;
          v119 = [v36 countByEnumeratingWithState:&v131 objects:v141 count:16];
          if (v119)
          {
            obj = v36;
            v103 = identifiersCopy;
            v116 = *v132;
            v108 = 1;
            v115 = contextCopy;
            v117 = v17;
LABEL_22:
            v37 = 0;
            while (1)
            {
              if (*v132 != v116)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v131 + 1) + 8 * v37);
              v39 = [v124 objectForKeyedSubscript:v38];
              appleMusicCuration = [v39 appleMusicCuration];

              v41 = [v121 objectForKeyedSubscript:v38];
              flexMusicCuration = [v41 flexMusicCuration];

              v43 = [v124 objectForKeyedSubscript:v38];
              features = [v43 features];

              if (appleMusicCuration)
              {
                v45 = flexMusicCuration == 0;
              }

              else
              {
                v45 = 1;
              }

              if (v45 || features == 0)
              {
                v82 = appleMusicCuration;
                v83 = selfCopy->_loggingConnection;
                if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  v100 = v83;
                  uuid = [v38 uuid];
                  *buf = 138412290;
                  v143 = uuid;
                  _os_log_error_impl(&dword_22F0FC000, v100, OS_LOG_TYPE_ERROR, "[MemoriesMusic] one or both music curations or music features missing for memory (%@)", buf, 0xCu);
                }

                identifiersCopy = v103;
                if (error)
                {
                  v84 = MEMORY[0x277CCACA8];
                  uuid2 = [v38 uuid];
                  v86 = [v84 stringWithFormat:@"One or both music curations missing for asset collection (%@)", uuid2];
                  *error = [PGError errorWithCode:-1 description:v86];
                }

                v17 = v117;
                goto LABEL_83;
              }

              v126 = appleMusicCuration;
              v47 = [objc_opt_class() _photosGraphPropertiesForMemory:v38 musicCurationFeatures:features appleMusicCuration:appleMusicCuration flexMusicCuration:flexMusicCuration isAppleMusicSubscriber:selfCopy->_isAppleMusicSubscriber error:error];
              v48 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v47 requiringSecureCoding:1 error:error];
              if (v48)
              {
                [v113 setObject:v48 forKeyedSubscript:v38];
                [v112 setObject:v47 forKeyedSubscript:v38];
              }

              else
              {
                v49 = selfCopy->_loggingConnection;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  uuid3 = [v38 uuid];
                  v51 = uuid3;
                  *&v52 = COERCE_DOUBLE(@"no error");
                  if (error)
                  {
                    v52 = *error;
                  }

                  *buf = 138412546;
                  v143 = uuid3;
                  v144 = 2112;
                  v145 = *&v52;
                  _os_log_error_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Unable to create photosGraphData for memory (%@), error: %@", buf, 0x16u);
                }

                v108 = 0;
              }

              contextCopy = v115;
              v17 = v117;
              if (!v48)
              {
                break;
              }

              if (v119 == ++v37)
              {
                v53 = [obj countByEnumeratingWithState:&v131 objects:v141 count:16];
                v119 = v53;
                if (v53)
                {
                  goto LABEL_22;
                }

                break;
              }
            }

            identifiersCopy = v103;
            if (v108)
            {
              goto LABEL_67;
            }

LABEL_83:
            v87 = mach_absolute_time();
            numer = v135.numer;
            denom = v135.denom;
            v90 = v106;
            v91 = v90;
            if (v105 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v91, OS_SIGNPOST_INTERVAL_END, v102, "PGUpNextMusicCurator_BuildAndPersistRecipe", "", buf, 2u);
            }

            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v143 = "PGUpNextMusicCurator_BuildAndPersistRecipe";
              v144 = 2048;
              v145 = ((((v87 - v104) * numer) / denom) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v91, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v92 = mach_absolute_time();
            v93 = info.numer;
            v94 = info.denom;
            v95 = v17;
            v96 = v95;
            v27 = optionsCopy;
            if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v96, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
            }

            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v143 = "PGUpNextMusicCurator";
              v144 = 2048;
              v145 = ((((v92 - v114) * v93) / v94) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v96, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v54 = 0;
          }

          else
          {

LABEL_67:
            v128[0] = MEMORY[0x277D85DD0];
            v128[1] = 3221225472;
            v128[2] = __128__PGUpNextMusicCurator_curateMusicForUpNextMemoriesWithLocalIdentifiers_musicCurationOptions_photoLibrary_managerContext_error___block_invoke;
            v128[3] = &unk_278880B88;
            v129 = v113;
            v130 = v112;
            v54 = [v122 performChangesAndWait:v128 error:error];
            v72 = mach_absolute_time();
            v73 = v135.numer;
            v74 = v135.denom;
            v75 = v106;
            v76 = v75;
            if (v105 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v76, OS_SIGNPOST_INTERVAL_END, v102, "PGUpNextMusicCurator_BuildAndPersistRecipe", "", buf, 2u);
            }

            if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v143 = "PGUpNextMusicCurator_BuildAndPersistRecipe";
              v144 = 2048;
              v145 = ((((v72 - v104) * v73) / v74) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v76, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v77 = mach_absolute_time();
            v78 = info.numer;
            v79 = info.denom;
            v80 = v17;
            v81 = v80;
            if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v81, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
            }

            if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v143 = "PGUpNextMusicCurator";
              v144 = 2048;
              v145 = ((((v77 - v114) * v78) / v79) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v81, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v27 = optionsCopy;
          }
        }

        else
        {
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            if (error)
            {
              v99 = *error;
            }

            else
            {
              v99 = @"no error";
            }

            *buf = 138412290;
            v143 = v99;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to curate flex music for memories, error: %@", buf, 0xCu);
          }

          v67 = mach_absolute_time();
          v68 = info.numer;
          v69 = info.denom;
          v70 = v17;
          v71 = v70;
          if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v71, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
          }

          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v143 = "PGUpNextMusicCurator";
            v144 = 2048;
            v145 = ((((v67 - v114) * v68) / v69) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v71, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v54 = 0;
        }

        v55 = v107;
      }

      else
      {
        v55 = ignoreProgress;
        v61 = selfCopy->_loggingConnection;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          if (error)
          {
            v98 = *error;
          }

          else
          {
            v98 = @"no error";
          }

          *buf = 138412290;
          v143 = v98;
          _os_log_error_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to curate music for memories, error: %@", buf, 0xCu);
        }

        v62 = mach_absolute_time();
        v63 = info.numer;
        v64 = info.denom;
        v65 = v17;
        v66 = v65;
        if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v66, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
        }

        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v143 = "PGUpNextMusicCurator";
          v144 = 2048;
          v145 = ((((v62 - v114) * v63) / v64) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v54 = 0;
      }
    }

    else
    {
      v55 = ignoreProgress;
      v56 = mach_absolute_time();
      v57 = info.numer;
      v58 = info.denom;
      v59 = v17;
      v60 = v59;
      if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v60, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMusicCurator", "", buf, 2u);
      }

      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v143 = "PGUpNextMusicCurator";
        v144 = 2048;
        v145 = ((((v56 - v114) * v57) / v58) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v54 = 0;
    }
  }

  else
  {
    v54 = 1;
    v27 = optionsCopy;
  }

  return v54;
}

void __128__PGUpNextMusicCurator_curateMusicForUpNextMemoriesWithLocalIdentifiers_musicCurationOptions_photoLibrary_managerContext_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:{v7, v11}];
        v9 = [*(a1 + 40) objectForKeyedSubscript:v7];
        v10 = [MEMORY[0x277CD98E8] changeRequestForMemory:v7];
        [PGMemoryPhotoKitPersister setStoryColorGradeKindFromPhotosGraphProperties:v9 onMemoryChangeRequest:v10];
        [v10 setPhotosGraphData:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (PGUpNextMusicCurator)initWithLoggingConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = PGUpNextMusicCurator;
  v6 = [(PGUpNextMusicCurator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, connection);
    ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
    v7->_isAppleMusicSubscriber = [PGMusicCatalogMonitor checkMusicCatalogEligibilityWithProgressReporter:ignoreProgress];
  }

  return v7;
}

+ (id)_baseMemoryFetchOptionsWithPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setIncludePendingMemories:1];

  return librarySpecificFetchOptions;
}

+ (id)_photosGraphPropertiesForMemory:(id)memory musicCurationFeatures:(id)features appleMusicCuration:(id)curation flexMusicCuration:(id)musicCuration isAppleMusicSubscriber:(BOOL)subscriber error:(id *)error
{
  subscriberCopy = subscriber;
  memoryCopy = memory;
  musicCurationCopy = musicCuration;
  curationCopy = curation;
  shouldAvoidColorGrading = [features shouldAvoidColorGrading];
  v17 = [PGStoryRecipeBuilder storyRecipeForMemory:memoryCopy appleMusicCuration:curationCopy flexMusicCuration:musicCurationCopy shouldAvoidColorGrading:shouldAvoidColorGrading isAppleMusicSubscriber:subscriberCopy error:error];

  if (v17 && (v18 = objc_alloc_init(MEMORY[0x277D3B4E0]), [v18 archivedDataWithRecipe:v17], v19 = objc_claimAutoreleasedReturnValue(), v18, v19))
  {
    photosGraphProperties = [memoryCopy photosGraphProperties];
    v21 = [photosGraphProperties mutableCopy];
    v22 = v21;
    if (v21)
    {
      dictionary = v21;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v24 = dictionary;

    [v24 setObject:v19 forKeyedSubscript:@"storyRecipeData"];
    if ((shouldAvoidColorGrading & 1) == 0)
    {
      currentStyle = [v17 currentStyle];
      originalColorGradeCategory = [currentStyle originalColorGradeCategory];

      if (originalColorGradeCategory)
      {
        [v24 setObject:originalColorGradeCategory forKeyedSubscript:@"storyColorGradeCategory"];
      }
    }
  }

  else if (error)
  {
    [PGError errorWithCode:-1 description:@"Unable to archive story recipe"];
    *error = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)_flexMusicCurationWithFeaturesByMemory:(id)memory musicCurationOptions:(id)options musicCuratorContext:(id)context progressReporter:(id)reporter error:(id *)error
{
  memoryCopy = memory;
  optionsCopy = options;
  contextCopy = context;
  reporterCopy = reporter;
  if ([memoryCopy count])
  {
    allKeys = [memoryCopy allKeys];
    firstObject = [allKeys firstObject];
    photoLibrary = [firstObject photoLibrary];

    date = [MEMORY[0x277CBEAA8] date];
    v19 = [PGMusicCurationRecentlyUsedSongs recentlyUsedFlexMusicSongsFromPhotoLibrary:photoLibrary];
    recentlyUsedBundledSongIDs = [optionsCopy recentlyUsedBundledSongIDs];
    [v19 addSongIDs:recentlyUsedBundledSongIDs date:date];

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__16965;
    v43 = __Block_byref_object_dispose__16966;
    v44 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(memoryCopy, "count")}];
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__16965;
    v37 = __Block_byref_object_dispose__16966;
    v38 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __127__PGUpNextMusicCurator__flexMusicCurationWithFeaturesByMemory_musicCurationOptions_musicCuratorContext_progressReporter_error___block_invoke;
    v26[3] = &unk_278880BD8;
    v21 = v19;
    v27 = v21;
    v28 = contextCopy;
    v29 = reporterCopy;
    v31 = &v33;
    v32 = &v39;
    v22 = date;
    v30 = v22;
    [memoryCopy enumerateKeysAndObjectsUsingBlock:v26];
    if (error)
    {
      v23 = v34[5];
      if (v23)
      {
        *error = v23;
      }
    }

    v24 = v40[5];

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v24 = MEMORY[0x277CBEC10];
  }

  return v24;
}

void __127__PGUpNextMusicCurator__flexMusicCurationWithFeaturesByMemory_musicCurationOptions_musicCuratorContext_progressReporter_error___block_invoke(uint64_t *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 moodKeywords];
  v10 = v9;
  v11 = MEMORY[0x277CBEBF8];
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [PGFlexMusicCurationParameters alloc];
  v14 = [v7 suggestedMood];
  v15 = a1[4];
  v16 = [v7 uuid];
  v17 = [(PGFlexMusicCurationParameters *)v13 initWithMood:v14 moodKeywords:v12 recentlyUsedSongs:v15 entityUUID:v16 useMoodKeywords:0 features:v8 musicCuratorContext:a1[5]];

  v18 = a1[6];
  v19 = *(a1[8] + 8);
  obj = *(v19 + 40);
  v20 = [PGFlexMusicCurator curateFlexMusicWithCurationParameters:v17 progressReporter:v18 error:&obj];
  objc_storeStrong((v19 + 40), obj);
  if (v20)
  {
    [a1[4] addFlexMusicCuration:v20 date:a1[7]];
    [*(*(a1[9] + 8) + 40) setObject:v20 forKeyedSubscript:v7];
  }

  else
  {
    v21 = *(a1[9] + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;

    *a4 = 1;
  }
}

+ (id)_appleMusicCurationWithFeaturesByMemory:(id)memory musicCuratorContext:(id)context managerContext:(id)managerContext progressReporter:(id)reporter error:(id *)error
{
  memoryCopy = memory;
  contextCopy = context;
  managerContextCopy = managerContext;
  reporterCopy = reporter;
  if ([memoryCopy count])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__16965;
    v36 = __Block_byref_object_dispose__16966;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    date = [MEMORY[0x277CBEAA8] date];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__16965;
    v30 = __Block_byref_object_dispose__16966;
    v31 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __122__PGUpNextMusicCurator__appleMusicCurationWithFeaturesByMemory_musicCuratorContext_managerContext_progressReporter_error___block_invoke;
    v20[3] = &unk_278880BB0;
    v21 = contextCopy;
    v22 = reporterCopy;
    v24 = &v26;
    v25 = &v32;
    v16 = date;
    v23 = v16;
    [memoryCopy enumerateKeysAndObjectsUsingBlock:v20];
    if (error)
    {
      v17 = v27[5];
      if (v17)
      {
        *error = v17;
      }
    }

    v18 = v33[5];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  return v18;
}

void __122__PGUpNextMusicCurator__appleMusicCurationWithFeaturesByMemory_musicCuratorContext_managerContext_progressReporter_error___block_invoke(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1[7] + 8);
  obj = *(v10 + 40);
  v11 = [PGMusicCurator curateMusicForFeatures:a3 context:v8 progressReporter:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = [a1[4] recentlyUsedSongs];
    [v12 addMusicCuration:v11 date:a1[6]];

    [*(*(a1[8] + 8) + 40) setObject:v11 forKeyedSubscript:v7];
  }

  else
  {
    v13 = *(a1[8] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    *a4 = 1;
  }
}

@end