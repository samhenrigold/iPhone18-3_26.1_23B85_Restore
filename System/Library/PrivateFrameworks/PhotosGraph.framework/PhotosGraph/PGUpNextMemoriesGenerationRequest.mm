@interface PGUpNextMemoriesGenerationRequest
+ (id)_baseMemoryFetchOptionsWithPhotoLibrary:(id)library;
+ (id)_memoryNodesWithSignificantOverlapWithMomentNodes:(id)nodes;
+ (id)_requestErrorWithCode:(int64_t)code description:(id)description;
+ (id)requestWithDictionaryRepresentation:(id)representation error:(id *)error;
- (PGUpNextMemoriesGenerationRequest)initWithRootMemoryLocalIdentifier:(id)identifier momentUUIDs:(id)ds memoryLocalIdentifiersToAvoid:(id)avoid targetUpNextMemoryCount:(unint64_t)count customVectors:(id)vectors wantsVerboseDebugInfo:(BOOL)info sharingFilter:(unsigned __int16)filter;
- (id)_fetchRootMemoryWithPhotoLibrary:(id)library;
- (id)_momentUUIDsForMemory:(id)memory;
- (id)fetchMemoryLocalIdentifiersWithWorkingContext:(id)context musicCurationOptions:(id)options error:(id *)error;
- (id)localMemoriesByUniqueMemoryIdentifiersWithWorkingContext:(id)context;
- (id)upNextMemoryLocalIdentifiersWithWorkingContext:(id)context rootMemory:(id)memory localMemoriesByUniqueMemoryIdentifiers:(id)identifiers uniqueMemoryIdentifiersOfMemoriesToAvoid:(id)avoid aggregator:(id)aggregator debugInfo:(id *)info error:(id *)error;
- (void)_enumerateMemoriesToAvoidWithWorkingContext:(id)context usingBlock:(id)block;
@end

@implementation PGUpNextMemoriesGenerationRequest

- (id)_momentUUIDsForMemory:(id)memory
{
  memoryCopy = memory;
  photoLibrary = [memoryCopy photoLibrary];
  v5 = MEMORY[0x277CD97B8];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v7 = [v5 fetchMomentsBackingMemory:memoryCopy options:librarySpecificFetchOptions];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v7 count])
  {
    v9 = 0;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:v9];
      uuid = [v10 uuid];
      [v8 addObject:uuid];

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  return v8;
}

- (id)_fetchRootMemoryWithPhotoLibrary:(id)library
{
  v11[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  v5 = [objc_opt_class() _baseMemoryFetchOptionsWithPhotoLibrary:libraryCopy];

  v6 = MEMORY[0x277CD97B8];
  v11[0] = self->_rootMemoryLocalIdentifier;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:v5];

  firstObject = [v8 firstObject];

  return firstObject;
}

- (void)_enumerateMemoriesToAvoidWithWorkingContext:(id)context usingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  blockCopy = block;
  v8 = objc_opt_class();
  photoLibrary = [contextCopy photoLibrary];
  v10 = [v8 _baseMemoryFetchOptionsWithPhotoLibrary:photoLibrary];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier IN %@", self->_memoryLocalIdentifiersToAvoid];
  [v10 setPredicate:v11];

  v12 = [MEMORY[0x277CD98D8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v10];
  loggingConnection = [contextCopy loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = [v12 count];
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[UpNext] Found %lu memories to avoid", buf, 0xCu);
  }

  if ([v12 count])
  {
    v14 = 0;
    do
    {
      v15 = [v12 objectAtIndexedSubscript:v14];
      blockCopy[2](blockCopy, v15);

      ++v14;
    }

    while (v14 < [v12 count]);
  }
}

- (id)localMemoriesByUniqueMemoryIdentifiersWithWorkingContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_opt_class();
  v29 = contextCopy;
  photoLibrary = [contextCopy photoLibrary];
  v7 = [v5 _baseMemoryFetchOptionsWithPhotoLibrary:photoLibrary];

  [v7 setSharingFilter:{-[PGUpNextMemoriesGenerationRequest sharingFilter](self, "sharingFilter")}];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"pendingState", 2];
  [v8 addObject:?];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_284485C58];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"category", objc_msgSend(*(*(&v34 + 1) + 8 * i), "unsignedIntegerValue")];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
  [v7 setPredicate:v15];

  v16 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v7];
  loggingConnection = [v29 loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    *buf = 134217984;
    v40 = v18;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[UpNext] Found %lu eligible local memories", buf, 0xCu);
  }

  v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * j);
        graphMemoryIdentifier = [v25 graphMemoryIdentifier];
        if (graphMemoryIdentifier)
        {
          [v19 setObject:v25 forKeyedSubscript:graphMemoryIdentifier];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v22);
  }

  return v19;
}

- (id)upNextMemoryLocalIdentifiersWithWorkingContext:(id)context rootMemory:(id)memory localMemoriesByUniqueMemoryIdentifiers:(id)identifiers uniqueMemoryIdentifiersOfMemoriesToAvoid:(id)avoid aggregator:(id)aggregator debugInfo:(id *)info error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  memoryCopy = memory;
  identifiersCopy = identifiers;
  avoidCopy = avoid;
  aggregatorCopy = aggregator;
  v17 = contextCopy;
  v45 = aggregatorCopy;
  photoLibrary = [contextCopy photoLibrary];
  oslog = [contextCopy loggingConnection];
  title = [memoryCopy title];
  if (memoryCopy)
  {
    v19 = MEMORY[0x277CD97A8];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v21 = [v19 fetchKeyCuratedAssetInAssetCollection:memoryCopy referenceAsset:0 options:librarySpecificFetchOptions];
    firstObject = [v21 firstObject];
    localIdentifier = [firstObject localIdentifier];
  }

  else
  {
    localIdentifier = 0;
  }

  graphMemoryIdentifier = [memoryCopy graphMemoryIdentifier];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = graphMemoryIdentifier;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[UpNext] Up Next RootMemory MemoryNodeUniqueIdentifier:(%@)", &buf, 0xCu);
  }

  v23 = self->_momentUUIDs;
  v24 = v23;
  if (memoryCopy && !v23)
  {
    v24 = [(PGUpNextMemoriesGenerationRequest *)self _momentUUIDsForMemory:memoryCopy];
  }

  if (error && !v24)
  {
    *error = [objc_opt_class() _requestErrorWithCode:0 description:@"[UpNext] Neither rootMemory nor starting moments were provided for UpNext generation"];
  }

  v40 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:photoLibrary];
  customVectors = [(PGUpNextMemoriesGenerationRequest *)self customVectors];
  v26 = objc_alloc_init(_TtC11PhotosGraph24PGUpNextDebugInfoBuilder);
  [(PGUpNextDebugInfoBuilder *)v26 setWantsVerboseDebugInfo:self->_wantsVerboseDebugInfo];
  [(PGUpNextDebugInfoBuilder *)v26 setRootMemoryNodeUniqueIdentifier:graphMemoryIdentifier];
  [(PGUpNextDebugInfoBuilder *)v26 setMomentUUIDs:v24];
  [(PGUpNextDebugInfoBuilder *)v26 setFeatureWeightVectors:customVectors];
  -[PGUpNextDebugInfoBuilder setRootMemoryIsAggregation:](v26, "setRootMemoryIsAggregation:", (PGMemorySourceTypeFromCategory([memoryCopy category]) - 3) < 2);
  uuid = [memoryCopy uuid];
  v50 = [uuid substringToIndex:8];

  v49 = [title stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
  subtitle = [memoryCopy subtitle];
  v48 = [subtitle stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

  v47 = [localIdentifier substringToIndex:8];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Root memory: %@\n\t%@ - %@\n\tkeyAsset: %@", v50, v49, v48, v47];
  [(PGUpNextDebugInfoBuilder *)v26 addSuggestionFilteringLog:v29];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__39253;
  v81 = __Block_byref_object_dispose__39254;
  v82 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__39253;
  v76 = __Block_byref_object_dispose__39254;
  v77 = 0;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __202__PGUpNextMemoriesGenerationRequest_upNextMemoryLocalIdentifiersWithWorkingContext_rootMemory_localMemoriesByUniqueMemoryIdentifiers_uniqueMemoryIdentifiersOfMemoriesToAvoid_aggregator_debugInfo_error___block_invoke;
  v57[3] = &unk_278884058;
  v39 = oslog;
  v58 = v39;
  v42 = identifiersCopy;
  v59 = v42;
  v44 = avoidCopy;
  v60 = v44;
  osloga = graphMemoryIdentifier;
  v61 = osloga;
  v38 = memoryCopy;
  v62 = v38;
  v30 = v24;
  v63 = v30;
  v31 = v26;
  v64 = v31;
  selfCopy = self;
  v32 = customVectors;
  v66 = v32;
  v54 = photoLibrary;
  v67 = v54;
  v33 = v40;
  v68 = v33;
  v34 = v45;
  v69 = v34;
  p_buf = &buf;
  v71 = &v72;
  [v17 performSynchronousConcurrentGraphReadUsingBlock:v57];
  if (info)
  {
    *info = [(PGUpNextDebugInfoBuilder *)v31 debugInfo];
  }

  v35 = *(&buf + 1);
  if (error && !*(*(&buf + 1) + 40))
  {
    *error = v73[5];
    v35 = *(&buf + 1);
  }

  v36 = *(v35 + 40);

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&buf, 8);

  return v36;
}

void __202__PGUpNextMemoriesGenerationRequest_upNextMemoryLocalIdentifiersWithWorkingContext_rootMemory_localMemoriesByUniqueMemoryIdentifiers_uniqueMemoryIdentifiersOfMemoriesToAvoid_aggregator_debugInfo_error___block_invoke(uint64_t a1, void *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v68 = a2;
  v3 = *(a1 + 32);
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  spid = v4;
  v7 = v4 - 1;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PGUpNextMemoriesEligibleMemories", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v62 = mach_absolute_time();
  v73 = [v68 graph];
  v8 = [*(a1 + 40) allKeys];
  v9 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifierArray:v8 inGraph:v73];

  v67 = [PGGraphMemoryNodeCollection memoryNodesWithUniqueIdentifiers:*(a1 + 48) inGraph:v73];
  v10 = [v9 collectionBySubtracting:v67];

  v11 = [PGGraphHighlightTypeNodeCollection tripTypeNodesInGraph:v73];
  v12 = [v11 highlightNodes];
  v13 = [v12 momentNodes];
  v14 = [v13 memoryNodes];

  v15 = [v14 subsetWithMemoryCategory:1];
  v16 = [v10 collectionBySubtracting:v15];

  v17 = [PGMemoryTriggerHandler personMemoryNodesFeaturingMeNodeInGraph:v73];
  v18 = [v16 collectionBySubtracting:v17];

  v19 = *(a1 + 56);
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = [PGGraphMemoryNodeCollection memoryNodeAsCollectionWithUniqueIdentifier:v19 inGraph:v73];
  if ([v20 count] != 1)
  {

LABEL_11:
    v23 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:*(a1 + 72) inGraph:v73];
    v72 = [[PGUpNextMomentCollectionBasedMatchingInfo alloc] initWithMomentNodes:v23];

    goto LABEL_12;
  }

  v21 = [*(a1 + 64) category];
  v22 = off_27887C268;
  if (v21 != 27)
  {
    v22 = off_27887C260;
  }

  v72 = [objc_alloc(*v22) initWithMemoryNodeAsCollection:v20];

  if (!v72)
  {
    goto LABEL_11;
  }

LABEL_12:
  v24 = [(PGUpNextMomentCollectionBasedMatchingInfo *)v72 debugInfo];
  [*(a1 + 80) setInputDebugInfo:v24];

  v69 = [(PGUpNextMomentCollectionBasedMatchingInfo *)v72 momentNodes];
  if (v69)
  {
    v25 = [objc_opt_class() _memoryNodesWithSignificantOverlapWithMomentNodes:v69];
    v26 = [v18 collectionBySubtracting:v25];

    v18 = v26;
  }

  v70 = [v18 subsetWithMemoryCategory:27];
  v66 = [v18 collectionBySubtracting:v70];

  v27 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v30 = v6;
  v31 = v30;
  log = v30;
  if (v7 < 0xFFFFFFFFFFFFFFFELL)
  {
    v32 = os_signpost_enabled(v30);
    v31 = log;
    if (v32)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, log, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMemoriesEligibleMemories", "", buf, 2u);
      v31 = log;
    }
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGUpNextMemoriesEligibleMemories";
    *&buf[12] = 2048;
    *&buf[14] = ((((v27 - v62) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v33 = *(a1 + 32);
  v34 = os_signpost_id_generate(v33);
  v35 = v33;
  v36 = v35;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PGUpNextMemoriesTargets", "", buf, 2u);
  }

  v88 = 0;
  mach_timebase_info(&v88);
  v37 = mach_absolute_time();
  spida = [PGUpNextMemoryFeatureBasedMatchingInfo matchingInfosWithMemoryNodes:v70];
  v63 = [PGUpNextMemoryBasedMatchingInfo matchingInfosWithMemoryNodes:v66];
  v61 = [spida arrayByAddingObjectsFromArray:v63];
  v60 = [[_TtC11PhotosGraph16PGUpNextComputer alloc] initWithTargets:v61];
  v38 = mach_absolute_time();
  v39 = v88;
  v40 = v36;
  v41 = v40;
  if (v34 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v41, OS_SIGNPOST_INTERVAL_END, v34, "PGUpNextMemoriesTargets", "", buf, 2u);
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGUpNextMemoriesTargets";
    *&buf[12] = 2048;
    *&buf[14] = ((((v38 - v37) * v39.numer) / v39.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v42 = *(a1 + 32);
  v43 = os_signpost_id_generate(v42);
  v44 = v42;
  v45 = v44;
  if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v43, "PGUpNextMemoriesGenerationEnumeration", "", buf, 2u);
  }

  v87 = 0;
  mach_timebase_info(&v87);
  v59 = mach_absolute_time();
  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v95 = [*(a1 + 88) targetUpNextMemoryCount];
  v47 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v48 = *(a1 + 96);
  v86 = 0;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __202__PGUpNextMemoriesGenerationRequest_upNextMemoryLocalIdentifiersWithWorkingContext_rootMemory_localMemoriesByUniqueMemoryIdentifiers_uniqueMemoryIdentifiersOfMemoriesToAvoid_aggregator_debugInfo_error___block_invoke_300;
  v75[3] = &unk_278884030;
  v49 = v47;
  v76 = v49;
  v74 = v73;
  v77 = v74;
  v78 = *(a1 + 80);
  v79 = *(a1 + 32);
  v80 = *(a1 + 40);
  v81 = *(a1 + 104);
  v82 = *(a1 + 112);
  v83 = *(a1 + 120);
  v50 = v46;
  v84 = v50;
  v85 = buf;
  v51 = [(PGUpNextComputer *)v60 enumerateSuggestionsWith:v72 featureWeightVectors:v48 error:&v86 block:v75];
  v52 = v86;
  v53 = mach_absolute_time();
  v54 = v87;
  v55 = v45;
  v56 = v55;
  if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    *v90 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v56, OS_SIGNPOST_INTERVAL_END, v43, "PGUpNextMemoriesGenerationEnumeration", "", v90, 2u);
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    *v90 = 136315394;
    v91 = "PGUpNextMemoriesGenerationEnumeration";
    v92 = 2048;
    v93 = ((((v53 - v59) * v54.numer) / v54.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v90, 0x16u);
  }

  v57 = 136;
  if (v51)
  {
    v57 = 128;
    v58 = v50;
  }

  else
  {
    v58 = v52;
  }

  objc_storeStrong((*(*(a1 + v57) + 8) + 40), v58);

  _Block_object_dispose(buf, 8);
}

uint64_t __202__PGUpNextMemoriesGenerationRequest_upNextMemoryLocalIdentifiersWithWorkingContext_rootMemory_localMemoriesByUniqueMemoryIdentifiers_uniqueMemoryIdentifiersOfMemoriesToAvoid_aggregator_debugInfo_error___block_invoke_300(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([*(a1 + 32) containsIdentifier:a2])
  {
    v8 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D22BB0]) initWithElementIdentifier:a2];
    v10 = [(MAElementCollection *)[PGGraphMemoryNodeCollection alloc] initWithGraph:*(a1 + 40) elementIdentifiers:v9];
    v11 = [(PGGraphMemoryNodeCollection *)v10 uniqueMemoryIdentifiers];
    v12 = [v11 anyObject];

    if (v12)
    {
      v13 = [*(a1 + 64) objectForKeyedSubscript:v12];
      if (v13)
      {
        v14 = [[PGPotentialUpNextMemory alloc] initWithMemory:v13 photoLibrary:*(a1 + 72) userFeedbackCalculator:*(a1 + 80)];
        v15 = *(a1 + 88);
        v32 = @"No debug info assigned by aggregator";
        v8 = [v15 addUpNextMemory:v14 debugInfo:&v32];
        v16 = v32;
        [*(a1 + 48) addSuggestionFilteringLog:v16];
        if (v8)
        {
          v29 = a4;
          v30 = v16;
          v31 = v9;
          v17 = *(a1 + 56);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v7;
            _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[UpNext] Accepted memory debug info: %@", buf, 0xCu);
          }

          [*(a1 + 48) addSuggestionFilteringLog:v7];
          v18 = *(a1 + 96);
          v19 = [(PGPotentialUpNextMemory *)v13 localIdentifier];
          [v18 addObject:v19];

          v20 = [(PGGraphMemoryNodeCollection *)v10 momentNodes];
          v21 = [PGUpNextMemoriesGenerationRequest _memoryNodesWithSignificantOverlapWithMomentNodes:v20];

          v22 = *(a1 + 32);
          v23 = [v21 elementIdentifiers];
          [v22 unionWithIdentifierSet:v23];

          if (--*(*(*(a1 + 104) + 8) + 24) <= 0)
          {
            *v29 = 1;
          }

          v16 = v30;
          v9 = v31;
        }
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No local memory found for unique identifier (%@)", v12];
        [*(a1 + 48) addSuggestionFilteringLog:v14];
        v27 = *(a1 + 56);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v14;
          _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[UpNext] %@", buf, 0xCu);
        }

        v8 = 0;
      }
    }

    else
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
      v13 = [v24 initWithFormat:@"No unique identifier found for memoryNodeIdentifier (%@)", v25];

      [*(a1 + 48) addSuggestionFilteringLog:v13];
      v26 = *(a1 + 56);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v13;
        _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "[UpNext] %@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (id)fetchMemoryLocalIdentifiersWithWorkingContext:(id)context musicCurationOptions:(id)options error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionsCopy = options;
  v8 = self->_rootMemoryLocalIdentifier;
  v9 = self->_memoryLocalIdentifiersToAvoid;
  loggingConnection = [contextCopy loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    targetUpNextMemoryCount = [(PGUpNextMemoriesGenerationRequest *)self targetUpNextMemoryCount];
    v85 = 2112;
    v86 = *&v8;
    v87 = 2112;
    v88 = v9;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[UpNext] Requesting %lu Up Next memories for memory:(%@), memories to avoid:%@", buf, 0x20u);
  }

  v70 = v9;
  loggingConnection2 = [contextCopy loggingConnection];
  v12 = os_signpost_id_generate(loggingConnection2);
  v13 = loggingConnection2;
  v14 = v13;
  v65 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PGUpNextMemoriesGenerationRequest", "", buf, 2u);
  }

  spid = v12;
  v72 = v14;

  info = 0;
  mach_timebase_info(&info);
  v64 = mach_absolute_time();
  loggingConnection3 = [contextCopy loggingConnection];
  v16 = os_signpost_id_generate(loggingConnection3);
  v17 = loggingConnection3;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PGUpNextMemoriesGenerationSetup", "", buf, 2u);
  }

  v81 = 0;
  mach_timebase_info(&v81);
  v19 = mach_absolute_time();
  photoLibrary = [contextCopy photoLibrary];
  if (!v8)
  {
    v69 = 0;
    goto LABEL_14;
  }

  v69 = [(PGUpNextMemoriesGenerationRequest *)self _fetchRootMemoryWithPhotoLibrary:photoLibrary];
  if (v69)
  {
LABEL_14:
    v71 = [(PGUpNextMemoriesGenerationRequest *)self localMemoriesByUniqueMemoryIdentifiersWithWorkingContext:contextCopy];
    if ([v71 count])
    {
      v62 = v8;
      v25 = photoLibrary;
      v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __110__PGUpNextMemoriesGenerationRequest_fetchMemoryLocalIdentifiersWithWorkingContext_musicCurationOptions_error___block_invoke;
      v77[3] = &unk_278884008;
      v68 = v26;
      v78 = v68;
      v66 = v25;
      v59 = v25;
      v79 = v59;
      v28 = v27;
      v80 = v28;
      [(PGUpNextMemoriesGenerationRequest *)self _enumerateMemoriesToAvoidWithWorkingContext:contextCopy usingBlock:v77];
      v29 = [PGUpNextMemoriesAggregator alloc];
      v30 = objc_alloc_init(MEMORY[0x277CBEB98]);
      v61 = v28;
      v67 = [(PGUpNextMemoriesAggregator *)v29 initWithLowercaseTitles:v30 keyAssetLocalIdentifiers:v28 gateOnUserFeedback:1 loggingConnection:loggingConnection];

      v31 = mach_absolute_time();
      numer = v81.numer;
      denom = v81.denom;
      v34 = v18;
      v35 = v34;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, v16, "PGUpNextMemoriesGenerationSetup", "", buf, 2u);
      }

      v24 = v72;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        targetUpNextMemoryCount = "PGUpNextMemoriesGenerationSetup";
        v85 = 2048;
        v86 = ((((v31 - v19) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v76 = 0;
      v21 = v69;
      v36 = [(PGUpNextMemoriesGenerationRequest *)self upNextMemoryLocalIdentifiersWithWorkingContext:contextCopy rootMemory:v69 localMemoriesByUniqueMemoryIdentifiers:v71 uniqueMemoryIdentifiersOfMemoriesToAvoid:v68 aggregator:v67 debugInfo:&v76 error:error];
      v60 = v76;
      v8 = v62;
      if (v36)
      {
        photoLibrary = v66;
        if ([v36 count])
        {
          if ([optionsCopy shouldCurateUpNextMemories])
          {
            loggingConnection4 = [contextCopy loggingConnection];
            v38 = os_signpost_id_generate(loggingConnection4);
            v39 = loggingConnection4;
            v40 = v39;
            if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "PGUpNextMemoriesGenerationMusicCuration", "", buf, 2u);
            }

            v75 = 0;
            mach_timebase_info(&v75);
            v58 = mach_absolute_time();
            v41 = [[PGUpNextMusicCurator alloc] initWithLoggingConnection:loggingConnection];
            if (![(PGUpNextMusicCurator *)v41 curateMusicForUpNextMemoriesWithLocalIdentifiers:v36 musicCurationOptions:optionsCopy photoLibrary:v59 managerContext:contextCopy error:error])
            {
              if (error)
              {
                v42 = [*error description];
              }

              else
              {
                v42 = @"no error";
              }

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                targetUpNextMemoryCount = v42;
                v85 = 2112;
                v86 = *&v36;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[UpNext] Music curation failed (%@) for Up Next memories: %@", buf, 0x16u);
              }
            }

            v47 = mach_absolute_time();
            v49 = v75.numer;
            v48 = v75.denom;
            v50 = v40;
            v51 = v50;
            if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v51, OS_SIGNPOST_INTERVAL_END, v38, "PGUpNextMemoriesGenerationMusicCuration", "", buf, 2u);
            }

            v24 = v72;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              targetUpNextMemoryCount = "PGUpNextMemoriesGenerationMusicCuration";
              v85 = 2048;
              v86 = ((((v47 - v58) * v49) / v48) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v21 = v69;
          }

          v52 = mach_absolute_time();
          v54 = info.numer;
          v53 = info.denom;
          v55 = v24;
          v56 = v55;
          if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v56, OS_SIGNPOST_INTERVAL_END, spid, "PGUpNextMemoriesGenerationRequest", "", buf, 2u);
          }

          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            targetUpNextMemoryCount = "PGUpNextMemoriesGenerationRequest";
            v85 = 2048;
            v86 = ((((v52 - v64) * v54) / v53) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v43 = v18;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            targetUpNextMemoryCount = v36;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[UpNext] Result Up Next memories: %@", buf, 0xCu);
          }

          v44 = loggingConnection;
          v45 = v60;
          v22 = [[PGUpNextMemoriesGenerationResult alloc] initWithMemoryLocalIdentifiers:v36 debugInfo:v60];
          photoLibrary = v66;
        }

        else
        {
          v43 = v18;
          v44 = loggingConnection;
          if (error)
          {
            v45 = v60;
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] Could not find up next memories for memory with local identifier (%@), debug info (%@)", v62, v60];
            *error = [objc_opt_class() _requestErrorWithCode:2 description:v46];

            photoLibrary = v66;
            v22 = 0;
          }

          else
          {
            v22 = 0;
            v45 = v60;
          }
        }
      }

      else
      {
        v43 = v18;
        v44 = loggingConnection;
        v22 = 0;
        photoLibrary = v66;
        v45 = v60;
      }

      v23 = v70;
      loggingConnection = v44;
      v18 = v43;
    }

    else
    {
      if (error)
      {
        [objc_opt_class() _requestErrorWithCode:1 description:@"[UpNext] Could not find any local memories"];
        *error = v22 = 0;
      }

      else
      {
        v22 = 0;
      }

      v21 = v69;
      v23 = v70;
      v24 = v72;
    }

    goto LABEL_58;
  }

  if (!error)
  {
    v22 = 0;
    v23 = v70;
    v24 = v72;
    goto LABEL_59;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] Could not find root memory with local identifier (%@)", v8];
  [objc_opt_class() _requestErrorWithCode:1 description:v21];
  *error = v22 = 0;
  v23 = v70;
  v24 = v72;
LABEL_58:

LABEL_59:

  return v22;
}

void __110__PGUpNextMemoriesGenerationRequest_fetchMemoryLocalIdentifiersWithWorkingContext_musicCurationOptions_error___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v9 = [v3 graphMemoryIdentifier];
  if (v9)
  {
    [a1[4] addObject:v9];
  }

  v4 = MEMORY[0x277CD97A8];
  v5 = [a1[5] librarySpecificFetchOptions];
  v6 = [v4 fetchKeyCuratedAssetInAssetCollection:v3 referenceAsset:0 options:v5];

  v7 = [v6 firstObject];
  v8 = [v7 localIdentifier];

  if (v8)
  {
    [a1[6] addObject:v8];
  }
}

- (PGUpNextMemoriesGenerationRequest)initWithRootMemoryLocalIdentifier:(id)identifier momentUUIDs:(id)ds memoryLocalIdentifiersToAvoid:(id)avoid targetUpNextMemoryCount:(unint64_t)count customVectors:(id)vectors wantsVerboseDebugInfo:(BOOL)info sharingFilter:(unsigned __int16)filter
{
  identifierCopy = identifier;
  dsCopy = ds;
  avoidCopy = avoid;
  vectorsCopy = vectors;
  v29.receiver = self;
  v29.super_class = PGUpNextMemoriesGenerationRequest;
  v19 = [(PGUpNextMemoriesGenerationRequest *)&v29 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    rootMemoryLocalIdentifier = v19->_rootMemoryLocalIdentifier;
    v19->_rootMemoryLocalIdentifier = v20;

    v22 = [dsCopy copy];
    momentUUIDs = v19->_momentUUIDs;
    v19->_momentUUIDs = v22;

    v24 = [avoidCopy copy];
    memoryLocalIdentifiersToAvoid = v19->_memoryLocalIdentifiersToAvoid;
    v19->_memoryLocalIdentifiersToAvoid = v24;

    v19->_targetUpNextMemoryCount = count;
    v26 = [vectorsCopy copy];
    customVectors = v19->_customVectors;
    v19->_customVectors = v26;

    v19->_wantsVerboseDebugInfo = info;
    v19->_sharingFilter = filter;
  }

  return v19;
}

+ (id)_baseMemoryFetchOptionsWithPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setIncludePendingMemories:1];

  return librarySpecificFetchOptions;
}

+ (id)_memoryNodesWithSignificantOverlapWithMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  v4 = MEMORY[0x277D22BF8];
  memoryNodes = [nodesCopy memoryNodes];
  v6 = +[PGGraphMemoryNode momentOfMemory];
  v7 = [v4 adjacencyWithSources:memoryNodes relation:v6 targetsClass:objc_opt_class()];

  v8 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __87__PGUpNextMemoriesGenerationRequest__memoryNodesWithSignificantOverlapWithMomentNodes___block_invoke;
  v18 = &unk_278884080;
  v19 = nodesCopy;
  v20 = v8;
  v9 = v8;
  v10 = nodesCopy;
  [v7 enumerateTargetsBySourceWithBlock:&v15];
  v11 = [PGGraphMemoryNodeCollection alloc];
  graph = [v10 graph];
  v13 = [(MAElementCollection *)v11 initWithGraph:graph elementIdentifiers:v9];

  return v13;
}

void __87__PGUpNextMemoriesGenerationRequest__memoryNodesWithSignificantOverlapWithMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 count];
  if ((v6 - 1) / 3uLL >= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = (v6 - 1) / 3uLL;
  }

  v8 = [v5 collectionByIntersecting:*(a1 + 32)];

  v9 = [v8 count];
  if (v9 > v7)
  {
    v10 = *(a1 + 40);
    v11 = [v12 elementIdentifiers];
    [v10 addIdentifier:{objc_msgSend(v11, "firstElement")}];
  }
}

+ (id)_requestErrorWithCode:(int64_t)code description:(id)description
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGUpNextErrorDomain" code:code userInfo:v8];

  return v9;
}

+ (id)requestWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v7 = *MEMORY[0x277D3B120];
  v8 = [representationCopy objectForKeyedSubscript:*MEMORY[0x277D3B120]];
  if (v8)
  {
    v9 = *MEMORY[0x277D3B110];
    v10 = [representationCopy objectForKeyedSubscript:*MEMORY[0x277D3B110]];
    if (!v10)
    {
      if (error)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is nil", v9];
        *error = [objc_opt_class() _requestErrorWithCode:0 description:v25];
      }

      v24 = 0;
      goto LABEL_38;
    }

    v11 = [representationCopy objectForKeyedSubscript:*MEMORY[0x277D3B128]];
    if (!v11)
    {
      if (error)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] %@ is nil", v9];
        *error = [objc_opt_class() _requestErrorWithCode:0 description:v26];
      }

      v24 = 0;
      goto LABEL_37;
    }

    v12 = [representationCopy objectForKeyedSubscript:*MEMORY[0x277D3B108]];
    if (v12)
    {
      v38 = v8;
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v14 = [v12 count];
      if (v14 != *MEMORY[0x277D3B100])
      {
        if (error)
        {
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] Custom vector count mismatch. (Expecting:%lu Received:%lu)", *MEMORY[0x277D3B100], objc_msgSend(v12, "count")];
          *error = [objc_opt_class() _requestErrorWithCode:3 description:v30];
        }

        v24 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

        goto LABEL_39;
      }

      v36 = v10;
      v40 = v11;
      v41 = v12;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v43;
        v19 = *MEMORY[0x277D3B0F8];
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v42 + 1) + 8 * i);
            if ([v21 count] != v19)
            {
              if (error)
              {
                v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"[UpNext] Vector feature count mismatch. (Expecting:%lu Received:%lu)", v19, objc_msgSend(v21, "count")];
                *error = [objc_opt_class() _requestErrorWithCode:3 description:v31];
              }

              v24 = 0;
              v10 = v36;
              v8 = v38;
              v11 = v40;
              goto LABEL_35;
            }

            v22 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v21];
            [v13 addObject:v22];
          }

          v17 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v10 = v36;
      v8 = v38;
      v12 = v41;
    }

    else
    {
      v40 = v11;
      v13 = 0;
    }

    v39 = [representationCopy objectForKeyedSubscript:*MEMORY[0x277D3B130]];
    v27 = *MEMORY[0x277D3B118];
    v28 = [representationCopy objectForKey:*MEMORY[0x277D3B118]];

    v41 = v12;
    if (v28)
    {
      v29 = [representationCopy objectForKeyedSubscript:v27];
    }

    else
    {
      v29 = &unk_284483D68;
    }

    unsignedShortValue = [v29 unsignedShortValue];
    v32 = [self alloc];
    v33 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v11 = v40;
    LOWORD(v35) = unsignedShortValue;
    v24 = [v32 initWithRootMemoryLocalIdentifier:v8 momentUUIDs:0 memoryLocalIdentifiersToAvoid:v33 targetUpNextMemoryCount:objc_msgSend(v40 customVectors:"unsignedIntegerValue") wantsVerboseDebugInfo:v13 sharingFilter:{objc_msgSend(v39, "BOOLValue"), v35}];

LABEL_35:
    v12 = v41;
    goto LABEL_36;
  }

  if (error)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is nil", v7];
    *error = [objc_opt_class() _requestErrorWithCode:0 description:v23];
  }

  v24 = 0;
LABEL_39:

  return v24;
}

@end