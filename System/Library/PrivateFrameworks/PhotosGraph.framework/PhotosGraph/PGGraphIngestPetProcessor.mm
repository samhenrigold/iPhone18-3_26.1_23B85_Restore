@interface PGGraphIngestPetProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestPetProcessor)initWithGraphBuilder:(id)builder;
- (id)_fetchAllVerifiedPetsInPhotosLibrary:(id)library;
- (id)_fetchVerifiedPetsWithLocalIdentifiers:(id)identifiers inPhotoLibrary:(id)library;
- (id)initForTestingWithGraphBuilder:(id)builder;
- (id)momentNodesForPerson:(id)person inPhotoLibrary:(id)library withGraph:(id)graph;
- (unint64_t)_speciesForDetectionType:(signed __int16)type;
- (void)_deleteAllPetNodesInGraph:(id)graph;
- (void)_deletePetNodesWithLocalIdentifiers:(id)identifiers inGraph:(id)graph;
- (void)_donatePetRelationshipsForPetNodes:(id)nodes isFullRebuild:(BOOL)rebuild progressBlock:(id)block;
- (void)runPetIngestWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestPetProcessor

- (void)_donatePetRelationshipsForPetNodes:(id)nodes isFullRebuild:(BOOL)rebuild progressBlock:(id)block
{
  rebuildCopy = rebuild;
  v39 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
  v10 = 0.0;
  if (v9)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(info.numer) = 0;
      v9[2](v9, &info, 0.0);
      if (LOBYTE(info.numer) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v38 = 284;
          *&v38[4] = 2080;
          *&v38[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_35;
      }

      v10 = Current;
    }
  }

  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v13 = os_signpost_id_generate(loggingConnection);
  v14 = loggingConnection;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PGGraphIngestPetProcessorRelationshipDonation", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v30 = mach_absolute_time();
  v16 = objc_alloc_init(PGGraphPetRelationshipDonator);
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __92__PGGraphIngestPetProcessor__donatePetRelationshipsForPetNodes_isFullRebuild_progressBlock___block_invoke;
  v33[3] = &unk_278880108;
  v18 = v15;
  v34 = v18;
  v19 = v17;
  v35 = v19;
  [(PGGraphPetRelationshipDonator *)v16 donateWithPetNodes:nodesCopy isRebuild:rebuildCopy completionHandler:v33];
  v20 = 0;
  while (1)
  {
    ++v20;
    v21 = dispatch_time(0, 10000000000);
    v22 = dispatch_group_wait(v19, v21);
    v23 = v22 != 0;
    if (!v22)
    {
      v24 = v10;
LABEL_18:
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "PGGraphIngestPetProcessor - finished relationhip inference donation", buf, 2u);
      }

      v10 = v24;
      goto LABEL_24;
    }

    if (v20 == 3)
    {
      break;
    }

    if (v9)
    {
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v10 >= 0.01)
      {
        buf[0] = 0;
        v9[2](v9, buf, 0.5);
        v10 = v24;
        if (buf[0])
        {
          goto LABEL_18;
        }
      }
    }
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "PGGraphIngestPetProcessor - timed out waiting for relationship inference donation to complete", buf, 2u);
  }

  v23 = 0;
LABEL_24:
  v25 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v28 = v18;
  v29 = v28;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v13, "PGGraphIngestPetProcessorRelationshipDonation", "", buf, 2u);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v38 = "PGGraphIngestPetProcessorRelationshipDonation";
    *&v38[8] = 2048;
    *&v38[10] = ((((v25 - v30) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  if (v9)
  {
    if (CFAbsoluteTimeGetCurrent() - v10 >= 0.01)
    {
      v32 = 0;
      v9[2](v9, &v32, 1.0);
      if (v32 | v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v38 = 327;
          *&v38[4] = 2080;
          *&v38[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }
  }

LABEL_35:
}

void __92__PGGraphIngestPetProcessor__donatePetRelationshipsForPetNodes_isFullRebuild_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_error_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_ERROR, "PGGraphIngestPetProcessor - inferred pet relationship donation failed: %{public}@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_INFO))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_INFO, "PGGraphIngestPetProcessor - inferred pet relationship donation succeeded", &v5, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_deleteAllPetNodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:graphCopy];
  v4 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v4 removeNodes:v5];
  [graphCopy executeGraphChangeRequest:v4];
}

- (void)_deletePetNodesWithLocalIdentifiers:(id)identifiers inGraph:(id)graph
{
  identifiersCopy = identifiers;
  graphCopy = graph;
  if ([identifiersCopy count])
  {
    v6 = [PGGraphPetNodeCollection petNodesForLocalIdentifiers:identifiersCopy inGraph:graphCopy];
    v7 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v7 removeNodes:v6];
    [graphCopy executeGraphChangeRequest:v7];
  }
}

- (id)_fetchVerifiedPetsWithLocalIdentifiers:(id)identifiers inPhotoLibrary:(id)library
{
  identifiersCopy = identifiers;
  libraryCopy = library;
  if ([identifiersCopy count])
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    supportedPetDetectionTypes = [objc_opt_class() supportedPetDetectionTypes];
    [librarySpecificFetchOptions setIncludedDetectionTypes:supportedPetDetectionTypes];

    [librarySpecificFetchOptions setPersonContext:1];
    v9 = MEMORY[0x277CD9938];
    allObjects = [identifiersCopy allObjects];
    v11 = [v9 fetchPersonsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_fetchAllVerifiedPetsInPhotosLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  supportedPetDetectionTypes = [objc_opt_class() supportedPetDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:supportedPetDetectionTypes];

  [librarySpecificFetchOptions setPersonContext:1];
  v5 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];

  return v5;
}

- (unint64_t)_speciesForDetectionType:(signed __int16)type
{
  result = 1;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        v9 = v3;
        v10 = v4;
        v6 = +[PGLogging sharedLogging];
        loggingConnection = [v6 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *v8 = 0;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Received person's face when expected animal's face", v8, 2u);
        }

        return 0;
      }

      return result;
    }

    return 0;
  }

  if (type == 2)
  {
    return 0;
  }

  if (type == 3)
  {
    return 2;
  }

  return result;
}

- (id)momentNodesForPerson:(id)person inPhotoLibrary:(id)library withGraph:(id)graph
{
  v28[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  graphCopy = graph;
  v9 = MEMORY[0x277CD98F8];
  localIdentifier = [person localIdentifier];
  v28[0] = localIdentifier;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v13 = [v9 fetchMomentsForPersonsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        uuid = [*(*(&v23 + 1) + 8 * i) uuid];
        [v14 addObject:uuid];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v14 inGraph:graphCopy];

  return v21;
}

- (void)runPetIngestWithGraphUpdate:(id)update progressBlock:(id)block
{
  v115 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  v5 = 0.0;
  v93 = _Block_copy(blockCopy);
  if (!v93 || (v6 = CFAbsoluteTimeGetCurrent(), v6 < 0.01))
  {
LABEL_7:
    graph = [(PGGraphBuilder *)self->_graphBuilder graph];
    photoLibrary = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v8 = os_signpost_id_generate(loggingConnection);
    v9 = loggingConnection;
    v10 = v9;
    spid = v8;
    v78 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGGraphIngestPetProcessor", "", buf, 2u);
    }

    v82 = v10;

    info = 0;
    mach_timebase_info(&info);
    v76 = mach_absolute_time();
    if (v93)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v5 >= 0.01)
      {
        v107[0] = 0;
        v93[2](v93, v107, 0.0);
        if (v107[0])
        {
          v12 = v10;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 120;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_106;
        }

        v5 = Current;
      }
    }

    isResumingFullAnalysis = [updateCopy isResumingFullAnalysis];
    if (isResumingFullAnalysis)
    {
      [(PGGraphIngestPetProcessor *)self _deleteAllPetNodesInGraph:graph];
      v85 = [(PGGraphIngestPetProcessor *)self _fetchAllVerifiedPetsInPhotosLibrary:photoLibrary];
    }

    else
    {
      v13 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
      petNodes = [v13 petNodes];
      localIdentifiers = [petNodes localIdentifiers];

      v16 = [MEMORY[0x277CBEB58] set];
      [v16 unionSet:localIdentifiers];
      localIdentifiersOfPersonsToUpdate = [updateCopy localIdentifiersOfPersonsToUpdate];
      [v16 unionSet:localIdentifiersOfPersonsToUpdate];

      localIdentifiersOfPersonsToDelete = [updateCopy localIdentifiersOfPersonsToDelete];
      [v16 unionSet:localIdentifiersOfPersonsToDelete];

      v19 = [MEMORY[0x277CBEB58] set];
      [v19 unionSet:localIdentifiers];
      localIdentifiersOfPersonsToUpdate2 = [updateCopy localIdentifiersOfPersonsToUpdate];
      [v19 unionSet:localIdentifiersOfPersonsToUpdate2];

      [(PGGraphIngestPetProcessor *)self _deletePetNodesWithLocalIdentifiers:v16 inGraph:graph];
      v85 = [(PGGraphIngestPetProcessor *)self _fetchVerifiedPetsWithLocalIdentifiers:v19 inPhotoLibrary:photoLibrary];
    }

    if (!v85 || ![v85 count])
    {
      v25 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v28 = v82;
      v29 = v28;
      if (v78 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestPetProcessor", "", buf, 2u);
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_105;
      }

      *buf = 136315394;
      *&buf[4] = "PGGraphIngestPetProcessor";
      *&buf[12] = 2048;
      *&buf[14] = ((((v25 - v76) * numer) / denom) / 1000000.0);
      v23 = "[Performance] %s: %f ms";
      v22 = v29;
      v24 = 22;
      goto LABEL_31;
    }

    if (v93)
    {
      v21 = CFAbsoluteTimeGetCurrent();
      if (v21 - v5 >= 0.01)
      {
        v107[0] = 0;
        v93[2](v93, v107, 0.2);
        if (v107[0])
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_105:

            v12 = v82;
LABEL_106:

            goto LABEL_107;
          }

          *buf = 67109378;
          *&buf[4] = 155;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
          v22 = MEMORY[0x277D86220];
          v23 = "Cancelled at line %d in file %s";
          v24 = 18;
LABEL_31:
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, v23, buf, v24);
          goto LABEL_105;
        }

        v5 = v21;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v112 = __Block_byref_object_copy__11977;
    v113 = __Block_byref_object_dispose__11978;
    v114 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __71__PGGraphIngestPetProcessor_runPetIngestWithGraphUpdate_progressBlock___block_invoke;
    v105[3] = &unk_2788800B8;
    v105[4] = buf;
    [v85 enumerateObjectsUsingBlock:v105];
    v88 = [MEMORY[0x277CD98F8] fetchMomentUUIDsByPersonUUIDForPersonsWithUUIDs:*(*&buf[8] + 40) photoLibrary:photoLibrary];
    if (v93)
    {
      v30 = CFAbsoluteTimeGetCurrent();
      if (v30 - v5 >= 0.01)
      {
        v104 = 0;
        v93[2](v93, &v104, 0.3);
        if (v104)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v107 = 67109378;
            *v108 = 164;
            *&v108[4] = 2080;
            *&v108[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v107, 0x12u);
          }

          goto LABEL_104;
        }

        v5 = v30;
      }
    }

    v31 = [v85 count];
    v83 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v31];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v85;
    v32 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
    v34 = v31;
    if (v32)
    {
      v90 = 0;
      v86 = *v101;
      v35 = 0.3;
      *&v33 = 67109378;
      v75 = v33;
      while (2)
      {
        v36 = 0;
        v37 = v5;
        v87 = v32;
        do
        {
          if (*v101 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v100 + 1) + 8 * v36);
          v39 = objc_autoreleasePoolPush();
          v40 = -[PGGraphIngestPetProcessor _speciesForDetectionType:](self, "_speciesForDetectionType:", [v38 detectionType]);
          uuid = [v38 uuid];
          v42 = [v88 objectForKeyedSubscript:uuid];

          if ([v42 count])
          {
            v43 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v42 inGraph:graph];
            type = [v38 type];
            v45 = [PGPet alloc];
            localIdentifier = [v38 localIdentifier];
            name = [v38 name];
            v48 = [(PGPet *)v45 initWithLocalIdentifier:localIdentifier petSpecies:v40 name:name isFavorite:type == 1 momentNodes:v43 ownerNodes:0];

            [v83 addObject:v48];
          }

          v35 = 0.2 / v34 + v35;
          if (v93 && (v5 = CFAbsoluteTimeGetCurrent(), v5 - v37 >= 0.01))
          {
            v104 = 0;
            v93[2](v93, &v104, v35);
            if (v104 | v90 & 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *v107 = v75;
                *v108 = 182;
                *&v108[4] = 2080;
                *&v108[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v107, 0x12u);
              }

              v49 = 0;
              v90 = 1;
            }

            else
            {
              v90 = 0;
              v49 = 1;
            }
          }

          else
          {
            v49 = 1;
            v5 = v37;
          }

          objc_autoreleasePoolPop(v39);
          if (!v49)
          {

            goto LABEL_103;
          }

          ++v36;
          v37 = v5;
        }

        while (v87 != v36);
        v32 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v90 = 0;
      v35 = 0.3;
    }

    if (v93)
    {
      v50 = &unk_22F784000;
      v51 = CFAbsoluteTimeGetCurrent();
      if (v51 - v5 >= 0.01)
      {
        v104 = 0;
        v93[2](v93, &v104, 0.5);
        if (v104 | v90 & 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v107 = 67109378;
            *v108 = 185;
            *&v108[4] = 2080;
            *&v108[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
            v52 = MEMORY[0x277D86220];
LABEL_83:
            _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v107, 0x12u);
            goto LABEL_103;
          }

          goto LABEL_103;
        }

        v90 = 0;
        v5 = v51;
      }
    }

    else
    {
      v50 = &unk_22F784000;
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v53 = v83;
    v54 = [v53 countByEnumeratingWithState:&v96 objects:v109 count:16];
    if (v54)
    {
      v55 = *v97;
      v56 = v50[76];
      v57 = 0.3 / v34;
      while (2)
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v97 != v55)
          {
            objc_enumerationMutation(v53);
          }

          v59 = [(PGGraphBuilder *)self->_graphBuilder insertPet:*(*(&v96 + 1) + 8 * i), v75];
          v35 = v57 + v35;
          if (v93)
          {
            v60 = CFAbsoluteTimeGetCurrent();
            if (v60 - v5 >= v56)
            {
              v104 = 0;
              v93[2](v93, &v104, v35);
              if (v104 | v90 & 1)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *v107 = 67109378;
                  *v108 = 192;
                  *&v108[4] = 2080;
                  *&v108[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v107, 0x12u);
                }

                goto LABEL_103;
              }

              v90 = 0;
              v5 = v60;
            }
          }
        }

        v54 = [v53 countByEnumeratingWithState:&v96 objects:v109 count:16];
        if (v54)
        {
          continue;
        }

        break;
      }
    }

    if (v93)
    {
      v61 = &unk_22F784000;
      v62 = CFAbsoluteTimeGetCurrent();
      if (v62 - v5 >= 0.01)
      {
        v104 = 0;
        v93[2](v93, &v104, 0.8);
        if (v104 | v90 & 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v107 = 67109378;
            *v108 = 195;
            *&v108[4] = 2080;
            *&v108[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
            v52 = MEMORY[0x277D86220];
            goto LABEL_83;
          }

LABEL_103:

LABEL_104:
          _Block_object_dispose(buf, 8);

          goto LABEL_105;
        }

        v90 = 0;
        v5 = v62;
      }
    }

    else
    {
      v61 = &unk_22F784000;
    }

    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __71__PGGraphIngestPetProcessor_runPetIngestWithGraphUpdate_progressBlock___block_invoke_323;
    v94[3] = &unk_2788800E0;
    v64 = v63;
    v95 = v64;
    [PGImportantEntitiesPetProcessor processUserPetsInGraph:graph progressBlock:blockCopy withProcessInferredPetNodeClosure:v94];
    if ([v64 count])
    {
      graphBuilder = self->_graphBuilder;
      meNode = [graph meNode];
      [(PGGraphBuilder *)graphBuilder insertOwner:meNode forPets:v64];

      v61 = &unk_22F784000;
    }

    [(PGGraphIngestPetProcessor *)self _donatePetRelationshipsForPetNodes:v64 isFullRebuild:isResumingFullAnalysis progressBlock:blockCopy, v75];
    if (v93 && CFAbsoluteTimeGetCurrent() - v5 >= v61[76] && (v104 = 0, v93[2](v93, &v104, 1.0), v104 | v90 & 1))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_102:

        goto LABEL_103;
      }

      *v107 = 67109378;
      *v108 = 211;
      *&v108[4] = 2080;
      *&v108[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
      v67 = MEMORY[0x277D86220];
      v68 = "Cancelled at line %d in file %s";
      v69 = 18;
    }

    else
    {
      v70 = mach_absolute_time();
      v71 = info.numer;
      v72 = info.denom;
      v73 = v82;
      v74 = v73;
      if (v78 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
      {
        *v107 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v74, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphIngestPetProcessor", "", v107, 2u);
      }

      if (!os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        goto LABEL_102;
      }

      *v107 = 136315394;
      *v108 = "PGGraphIngestPetProcessor";
      *&v108[8] = 2048;
      *&v108[10] = ((((v70 - v76) * v71) / v72) / 1000000.0);
      v68 = "[Performance] %s: %f ms";
      v67 = v74;
      v69 = 22;
    }

    _os_log_impl(&dword_22F0FC000, v67, OS_LOG_TYPE_INFO, v68, v107, v69);
    goto LABEL_102;
  }

  v107[0] = 0;
  v93[2](v93, v107, 0.0);
  if (v107[0] != 1)
  {
    v5 = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 113;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPetProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_107:
}

void __71__PGGraphIngestPetProcessor_runPetIngestWithGraphUpdate_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasPersonsToUpdate") & 1) != 0 || (objc_msgSend(updateCopy, "hasPersonsToDelete"))
  {
    v4 = 1;
  }

  else
  {
    momentUpdateTypes = [updateCopy momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & momentUpdateTypes) != 0;
  }

  return v4;
}

- (id)initForTestingWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestPetProcessor;
  v6 = [(PGGraphIngestPetProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v7->_petPrintClusteringEnabled = 0;
  }

  return v7;
}

- (PGGraphIngestPetProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestPetProcessor;
  v6 = [(PGGraphIngestPetProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v7->_petPrintClusteringEnabled = 1;
  }

  return v7;
}

@end