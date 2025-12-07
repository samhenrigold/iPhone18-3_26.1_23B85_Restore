@interface PGGraphIngestPersonBiologicalSexProcessor
+ (unint64_t)sexForFaces:(id)faces personDescription:(id)description;
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestPersonBiologicalSexProcessor)initWithGraphBuilder:(id)builder;
- (id)_sexDescriptionForBiologicalSex:(unint64_t)sex;
- (unint64_t)_sexForPersonNode:(id)node photoLibrary:(id)library;
- (unsigned)_phBiologicalSexFromIngestBiologicalSex:(unint64_t)sex;
- (void)_writeBiologicalSexByPerson:(id)person toPhotoLibrary:(id)library;
- (void)processPersonBiologicalSexForPersonNodes:(id)nodes photoLibrary:(id)library withProgressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestPersonBiologicalSexProcessor

- (id)_sexDescriptionForBiologicalSex:(unint64_t)sex
{
  v3 = @"Unspecified BiologicalSex";
  if (sex == 1)
  {
    v3 = @"Female";
  }

  if (sex == 2)
  {
    return @"Male";
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_sexForPersonNode:(id)node photoLibrary:(id)library
{
  v31 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  libraryCopy = library;
  localIdentifier = [nodeCopy localIdentifier];
  if (localIdentifier)
  {
    v8 = [PGGraphIngestFaceAttributeConveniences sampledAssetsWithSingleFaceForPersonLocalIdentifier:localIdentifier photoLibrary:libraryCopy numberOfYearsBack:100 sampleSize:200 fetchPropertySets:0];
    v9 = [v8 count];
    if (v9 > 2)
    {
      librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
      v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"sexType != %lu", 0];
      [librarySpecificFetchOptions setPredicate:v15];
      v16 = *MEMORY[0x277CD9BD8];
      v26[0] = *MEMORY[0x277CD9BD0];
      v26[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      [librarySpecificFetchOptions setFetchPropertySets:v17];

      v18 = [MEMORY[0x277CD9868] fetchFacesInAssets:v8 options:librarySpecificFetchOptions];
      v19 = [v18 count];
      if (v19 > 2)
      {
        v24 = objc_opt_class();
        stringDescription = [nodeCopy stringDescription];
        v14 = [v24 sexForFaces:v18 personDescription:stringDescription];
      }

      else
      {
        v20 = v19;
        v21 = +[PGLogging sharedLogging];
        stringDescription = [v21 loggingConnection];

        if (os_log_type_enabled(stringDescription, OS_LOG_TYPE_INFO))
        {
          stringDescription2 = [nodeCopy stringDescription];
          *buf = 138478083;
          v28 = stringDescription2;
          v29 = 2048;
          v30 = v20;
          _os_log_impl(&dword_22F0FC000, stringDescription, OS_LOG_TYPE_INFO, "[Ingest BiologicalSex]Person %{private}@ doesn't have enough singleton face assets with sex classification: %lu", buf, 0x16u);
        }

        v14 = 0;
      }
    }

    else
    {
      v10 = v9;
      v11 = +[PGLogging sharedLogging];
      librarySpecificFetchOptions = [v11 loggingConnection];

      if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_INFO))
      {
        stringDescription3 = [nodeCopy stringDescription];
        *buf = 138478083;
        v28 = stringDescription3;
        v29 = 2048;
        v30 = v10;
        _os_log_impl(&dword_22F0FC000, librarySpecificFetchOptions, OS_LOG_TYPE_INFO, "[Ingest BiologicalSex] Person %{private}@ doesn't have enough singleton face assets: %lu", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unsigned)_phBiologicalSexFromIngestBiologicalSex:(unint64_t)sex
{
  if (sex == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (sex == 1);
  }
}

- (void)_writeBiologicalSexByPerson:(id)person toPhotoLibrary:(id)library
{
  v16 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__PGGraphIngestPersonBiologicalSexProcessor__writeBiologicalSexByPerson_toPhotoLibrary___block_invoke;
  v12[3] = &unk_27888A660;
  v6 = personCopy;
  v13 = v6;
  v11 = 0;
  v7 = [library performChangesAndWait:v12 error:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error setting the sex of a PHPerson: %@", buf, 0xCu);
    }
  }
}

void __88__PGGraphIngestPersonBiologicalSexProcessor__writeBiologicalSexByPerson_toPhotoLibrary___block_invoke(uint64_t a1)
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
        v8 = [*(a1 + 32) objectForKey:{v7, v11}];
        v9 = [v8 unsignedIntegerValue];
        v10 = [MEMORY[0x277CD9940] changeRequestForPerson:v7];
        [v10 setSexType:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)processPersonBiologicalSexForPersonNodes:(id)nodes photoLibrary:(id)library withProgressBlock:(id)block
{
  v69 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  libraryCopy = library;
  blockCopy = block;
  v55 = _Block_copy(blockCopy);
  if (!v55)
  {
    v15 = [nodesCopy count];
    if (!v15)
    {
      goto LABEL_48;
    }

    v16 = v15;
    v48 = blockCopy;
    v12 = 0.0;
    goto LABEL_11;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v12 = 0.0;
  if (Current >= 0.01)
  {
    v13 = Current;
    v64 = 0;
    v55[2](v55, &v64, 0.0);
    if (v64 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v66 = 76;
        *&v66[4] = 2080;
        *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonBiologicalSexProcessor.m";
        v14 = MEMORY[0x277D86220];
LABEL_53:
        _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    v12 = v13;
  }

  v17 = [nodesCopy count];
  if (v17)
  {
    v16 = v17;
    v48 = blockCopy;
LABEL_11:
    v51 = libraryCopy;
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v49 = nodesCopy;
    v20 = nodesCopy;
    v21 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v61;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v60 + 1) + 8 * i);
          localIdentifier = [v25 localIdentifier];
          if ([localIdentifier length])
          {
            [dictionary setObject:v25 forKeyedSubscript:localIdentifier];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v22);
    }

    v27 = MEMORY[0x277CD9938];
    allKeys = [dictionary allKeys];
    v47 = librarySpecificFetchOptions;
    v29 = [v27 fetchPersonsWithLocalIdentifiers:allKeys options:librarySpecificFetchOptions];

    v50 = objc_alloc_init(MEMORY[0x277CCAB00]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v29;
    v54 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v54)
    {
      v30 = 1.0 / v16;
      v53 = *v57;
      v31 = 0.0;
      libraryCopy = v51;
      while (2)
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v57 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v56 + 1) + 8 * j);
          v34 = objc_autoreleasePoolPush();
          localIdentifier2 = [v33 localIdentifier];
          v36 = [dictionary objectForKeyedSubscript:localIdentifier2];

          v37 = [(PGGraphIngestPersonBiologicalSexProcessor *)self _sexForPersonNode:v36 photoLibrary:libraryCopy];
          v38 = +[PGLogging sharedLogging];
          loggingConnection = [v38 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
          {
            v40 = [v36 debugDescription];
            v41 = [(PGGraphIngestPersonBiologicalSexProcessor *)self _sexDescriptionForBiologicalSex:v37];
            *buf = 138478083;
            *v66 = v40;
            *&v66[8] = 2112;
            *&v66[10] = v41;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[Ingest BiologicalSex]Person %{private}@ classified as %@", buf, 0x16u);

            libraryCopy = v51;
          }

          -[PGGraphBuilder setBiologicalSex:onPersonNodeForIdentifier:](self->_graphBuilder, "setBiologicalSex:onPersonNodeForIdentifier:", v37, [v36 identifier]);
          v42 = [(PGGraphIngestPersonBiologicalSexProcessor *)self _phBiologicalSexFromIngestBiologicalSex:v37];
          if ([v33 sexType] != v42)
          {
            v43 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v42];
            [v50 setObject:v43 forKey:v33];
          }

          v31 = v30 + v31;
          if (v55)
          {
            v44 = CFAbsoluteTimeGetCurrent();
            if (v44 - v12 >= 0.01)
            {
              v64 = 0;
              v55[2](v55, &v64, v31);
              if (v64)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v66 = 115;
                  *&v66[4] = 2080;
                  *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonBiologicalSexProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                objc_autoreleasePoolPop(v34);
                blockCopy = v48;
                nodesCopy = v49;
                v45 = v47;
                v46 = v50;
                goto LABEL_47;
              }

              v12 = v44;
            }
          }

          objc_autoreleasePoolPop(v34);
        }

        v54 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (v54)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      libraryCopy = v51;
    }

    v46 = v50;
    if ([v50 count])
    {
      [(PGGraphIngestPersonBiologicalSexProcessor *)self _writeBiologicalSexByPerson:v50 toPhotoLibrary:libraryCopy];
    }

    blockCopy = v48;
    nodesCopy = v49;
    v45 = v47;
    if (v55)
    {
      if (CFAbsoluteTimeGetCurrent() - v12 >= 0.01)
      {
        v64 = 0;
        v55[2](v55, &v64, 1.0);
        if (v64)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v66 = 123;
            *&v66[4] = 2080;
            *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonBiologicalSexProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if (CFAbsoluteTimeGetCurrent() - v12 >= 0.01)
  {
    v64 = 0;
    v55[2](v55, &v64, 1.0);
    if (v64)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v66 = 81;
        *&v66[4] = 2080;
        *&v66[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPersonBiologicalSexProcessor.m";
        v14 = MEMORY[0x277D86220];
        goto LABEL_53;
      }
    }
  }

LABEL_48:
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  updateCopy = update;
  graphBuilder = self->_graphBuilder;
  blockCopy = block;
  graph = [(PGGraphBuilder *)graphBuilder graph];
  if ([updateCopy isResumingFullAnalysis])
  {
    [graph personNodesIncludingMe:1];
  }

  else
  {
    [updateCopy insertedAndUpdatedPersonNodes];
  }
  v9 = ;
  photoLibrary = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
  [(PGGraphIngestPersonBiologicalSexProcessor *)self processPersonBiologicalSexForPersonNodes:v9 photoLibrary:photoLibrary withProgressBlock:blockCopy];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis])
  {
    hasUpdatedPersonNodes = 1;
  }

  else
  {
    hasUpdatedPersonNodes = [updateCopy hasUpdatedPersonNodes];
  }

  return hasUpdatedPersonNodes;
}

- (PGGraphIngestPersonBiologicalSexProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestPersonBiologicalSexProcessor;
  v6 = [(PGGraphIngestPersonBiologicalSexProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

+ (unint64_t)sexForFaces:(id)faces personDescription:(id)description
{
  v29 = *MEMORY[0x277D85DE8];
  facesCopy = faces;
  descriptionCopy = description;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [facesCopy countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(facesCopy);
        }

        if ([*(*(&v18 + 1) + 8 * i) sexType] == 2)
        {
          ++v10;
        }
      }

      v9 += v8;
      v8 = [facesCopy countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
    v13 = v10 / v9;
  }

  else
  {
    v13 = NAN;
  }

  v14 = +[PGLogging sharedLogging];
  loggingConnection = [v14 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 138478339;
    v23 = descriptionCopy;
    v24 = 2048;
    v25 = v13;
    v26 = 2048;
    v27 = 1.0 - v13;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[Ingest BiologicalSex]Person %{private}@ femaleRatio:%0.2f maleRatio: %0.2f", buf, 0x20u);
  }

  if (v13 >= 0.75)
  {
    v16 = 1;
  }

  else if (1.0 - v13 >= 0.75)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end