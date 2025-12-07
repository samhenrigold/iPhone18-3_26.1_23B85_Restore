@interface PGShareBackSuggester
+ (id)momentUUIDsForExtendedUniversalDateInterval:(id)interval suggesterInputs:(id)inputs momentFetchOptions:(id)options;
+ (id)shareBackSuggesterForCMMWithLoggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph;
+ (id)shareBackSuggesterForExternalAssetProcessingWithLoggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph serviceManager:(id)manager;
+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)connection syndicationPhotoLibrary:(id)library systemPhotoLibrary:(id)photoLibrary graph:(id)graph faceIdentification:(id)identification serviceManager:(id)manager;
+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)connection syndicationPhotoLibrary:(id)library systemPhotoLibrary:(id)photoLibrary graph:(id)graph serviceManager:(id)manager;
- (PGShareBackSuggester)initWithSources:(id)sources positiveProcessingValue:(unsigned __int16)value loggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph;
- (id)suggesterResultsForInputs:(id)inputs inGraph:(id)graph error:(id *)error;
- (id)suggesterResultsForUnclusteredSuggesterInputs:(id)inputs inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackSuggester

- (id)suggesterResultsForUnclusteredSuggesterInputs:(id)inputs inGraph:(id)graph error:(id *)error
{
  v37[2] = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  graphCopy = graph;
  v27 = inputsCopy;
  v8 = [PGShareBackLocationSource suggesterInputsByDateIntervalForInputs:inputsCopy];
  allKeys = [v8 allKeys];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v37[0] = v10;
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:1];
  v37[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v13 = [allKeys sortedArrayUsingDescriptors:v12];

  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v33;
    do
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v32 + 1) + 8 * v18);
        v21 = objc_autoreleasePoolPush();
        v22 = [v8 objectForKeyedSubscript:v20];
        v31 = v19;
        v23 = [(PGShareBackSuggester *)self suggesterResultsForInputs:v22 inGraph:graphCopy error:&v31];
        v16 = v31;

        if (v23)
        {
          [v29 addObjectsFromArray:v23];
        }

        objc_autoreleasePoolPop(v21);
        ++v18;
        v19 = v16;
      }

      while (v15 != v18);
      v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  if (error)
  {
    v24 = v16;
    *error = v16;
  }

  return v29;
}

- (id)suggesterResultsForInputs:(id)inputs inGraph:(id)graph error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  graphCopy = graph;
  v10 = self->_loggingConnection;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [inputsCopy mutableCopy];
  v13 = [PGShareBackSuggesterInput universalDateIntervalForSuggesterInputs:inputsCopy withTimeIntervalPadding:7200.0];
  photoLibrary = self->_photoLibrary;
  errorCopy = error;
  if (photoLibrary)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)photoLibrary librarySpecificFetchOptions];
    v16 = [PGShareBackSuggester momentUUIDsForExtendedUniversalDateInterval:v13 suggesterInputs:inputsCopy momentFetchOptions:librarySpecificFetchOptions];

    v17 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v16 inGraph:graphCopy];
    v46 = [v17 set];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[PGShareBackSuggester] No photo library available, this should only be hit during unit testing", buf, 2u);
    }

    v16 = [PGShareBackSuggesterInput localDateIntervalForSuggesterInputs:inputsCopy withTimeIntervalPadding:7200.0];
    v46 = [graphCopy momentNodesOverlappingLocalDateInterval:v16];
  }

  lastObject = [(NSArray *)self->_sources lastObject];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = self->_sources;
  v44 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v44)
  {
    v43 = *v54;
    oslog = v10;
    v37 = inputsCopy;
    v40 = v11;
    v41 = graphCopy;
    v38 = v13;
LABEL_8:
    v18 = 0;
    while (1)
    {
      if (*v54 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v53 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      v21 = [v19 validInputsForSource:v12 givenSuggesterResults:v11];
      v52 = 0;
      v22 = [v19 suggesterResultsForInputs:v21 momentNodes:v46 inGraph:graphCopy error:&v52];
      v23 = v52;
      if (v23)
      {
        break;
      }

      [v11 addObjectsFromArray:v22];
      if (v19 != lastObject)
      {
        context = v20;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v49;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v49 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v48 + 1) + 8 * i);
              if ((self->_positiveProcessingValue & [v29 processingValue]) != 0)
              {
                suggesterInputs = [v29 suggesterInputs];
                [v12 removeObjectsInArray:suggesterInputs];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v26);
        }

        v11 = v40;
        graphCopy = v41;
        v20 = context;
        if (![v12 count])
        {
          v31 = 0;
          v22 = v24;
          v10 = oslog;
          inputsCopy = v37;
          goto LABEL_30;
        }
      }

      objc_autoreleasePoolPop(v20);
      if (++v18 == v44)
      {
        v10 = oslog;
        inputsCopy = v37;
        v13 = v38;
        v44 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v44)
        {
          goto LABEL_8;
        }

        goto LABEL_25;
      }
    }

    v31 = v23;
    context = v20;
    v10 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      inputsCopy = v37;
      v59 = v37;
      v60 = 2112;
      v61 = v31;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Stopping due to error for suggester inputs: %@ - %@", buf, 0x16u);
    }

    else
    {
      inputsCopy = v37;
    }

LABEL_30:

    objc_autoreleasePoolPop(context);
    v13 = v38;
    if (!v31)
    {
      goto LABEL_33;
    }

    if (errorCopy)
    {
      v32 = v31;
      v33 = 0;
      *errorCopy = v31;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
LABEL_25:

LABEL_33:
    if (![v11 count] && !objc_msgSend(v46, "count"))
    {
      v34 = [[PGShareBackSuggesterResult alloc] initWithInputs:inputsCopy processingValue:1 momentNodes:v46];
      [v11 addObject:v34];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v13;
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGShareBackLocationSource] No moments for universal date interval %@", buf, 0xCu);
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v59 = inputsCopy;
      v60 = 2112;
      v61 = v11;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Results for suggester inputs: %@ - %@", buf, 0x16u);
    }

    v33 = v11;
    v31 = 0;
  }

  return v33;
}

- (PGShareBackSuggester)initWithSources:(id)sources positiveProcessingValue:(unsigned __int16)value loggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph
{
  v38 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  connectionCopy = connection;
  libraryCopy = library;
  graphCopy = graph;
  v34.receiver = self;
  v34.super_class = PGShareBackSuggester;
  v16 = [(PGShareBackSuggester *)&v34 init];
  v17 = v16;
  if (v16)
  {
    v28 = libraryCopy;
    objc_storeStrong(&v16->_photoLibrary, library);
    v17->_positiveProcessingValue = value;
    objc_storeStrong(&v17->_loggingConnection, connection);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = sourcesCopy;
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Initialized suggester with sources: %@", buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = sourcesCopy;
    v19 = sourcesCopy;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        v23 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * v23);
          v25 = objc_autoreleasePoolPush();
          if ([v24 prepareSourceWithGraph:graphCopy])
          {
            [(NSArray *)v18 addObject:v24];
          }

          objc_autoreleasePoolPop(v25);
          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }

    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v18;
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[PGShareBackSuggester] Available sources: %@", buf, 0xCu);
    }

    sources = v17->_sources;
    v17->_sources = v18;

    libraryCopy = v28;
    sourcesCopy = v29;
  }

  return v17;
}

+ (id)momentUUIDsForExtendedUniversalDateInterval:(id)interval suggesterInputs:(id)inputs momentFetchOptions:(id)options
{
  v30[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  optionsCopy = options;
  v8 = MEMORY[0x277CCAC30];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v11 = [v8 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"endDate", startDate, @"startDate", endDate];

  v12 = [MEMORY[0x277D3ACF0] fetchPredicateForExcludingOriginatorState:24];
  v13 = MEMORY[0x277CCA920];
  v30[0] = v11;
  v30[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  [optionsCopy setInternalPredicate:v15];

  v16 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:optionsCopy];
  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        uuid = [*(*(&v25 + 1) + 8 * i) uuid];
        [v17 addObject:uuid];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  return v17;
}

+ (id)shareBackSuggesterForCMMWithLoggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph
{
  v15[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  libraryCopy = library;
  connectionCopy = connection;
  v11 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:connectionCopy];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  v13 = [[self alloc] initWithSources:v12 positiveProcessingValue:18 loggingConnection:connectionCopy photoLibrary:libraryCopy graph:graphCopy];

  return v13;
}

+ (id)shareBackSuggesterForExternalAssetProcessingWithLoggingConnection:(id)connection photoLibrary:(id)library graph:(id)graph serviceManager:(id)manager
{
  v10 = MEMORY[0x277CBEB18];
  managerCopy = manager;
  graphCopy = graph;
  libraryCopy = library;
  connectionCopy = connection;
  v15 = objc_alloc_init(v10);
  v16 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:connectionCopy];
  [v15 addObject:v16];

  v17 = [(PGShareBackSource *)[PGShareBackSignificantLocationSource alloc] initWithLoggingConnection:connectionCopy];
  [v15 addObject:v17];

  v18 = [PGShareBackCoreRoutineSource alloc];
  routineService = [managerCopy routineService];

  v20 = [(PGShareBackCoreRoutineSource *)v18 initWithRoutineService:routineService loggingConnection:connectionCopy];
  [v15 addObject:v20];

  v21 = [[PGShareBackSceneprintSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy];
  [v15 addObject:v21];

  v22 = objc_alloc_init(MEMORY[0x277D276B0]);
  v23 = [[PGShareBackFacesSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:v22];
  [v15 addObject:v23];

  v24 = [[PGShareBackPetSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:v22];
  [v15 addObject:v24];

  v25 = [[self alloc] initWithSources:v15 positiveProcessingValue:15601 loggingConnection:connectionCopy photoLibrary:libraryCopy graph:graphCopy];

  return v25;
}

+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)connection syndicationPhotoLibrary:(id)library systemPhotoLibrary:(id)photoLibrary graph:(id)graph faceIdentification:(id)identification serviceManager:(id)manager
{
  v14 = MEMORY[0x277CBEB18];
  managerCopy = manager;
  identificationCopy = identification;
  graphCopy = graph;
  photoLibraryCopy = photoLibrary;
  libraryCopy = library;
  connectionCopy = connection;
  v21 = objc_alloc_init(v14);
  v22 = [(PGShareBackSource *)[PGShareBackLocationSource alloc] initWithLoggingConnection:connectionCopy];
  [v21 addObject:v22];

  v23 = [(PGShareBackSource *)[PGShareBackSignificantLocationSource alloc] initWithLoggingConnection:connectionCopy];
  [v21 addObject:v23];

  v24 = [PGShareBackCoreRoutineSource alloc];
  routineService = [managerCopy routineService];

  v26 = [(PGShareBackCoreRoutineSource *)v24 initWithRoutineService:routineService loggingConnection:connectionCopy];
  [v21 addObject:v26];

  v27 = [[PGShareBackSceneprintSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:photoLibraryCopy];
  [v21 addObject:v27];

  v28 = [[PGShareBackFacesSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:identificationCopy];
  [v21 addObject:v28];

  v29 = [[PGShareBackPetSource alloc] initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:identificationCopy];
  [v21 addObject:v29];

  v30 = [[self alloc] initWithSources:v21 positiveProcessingValue:32496 loggingConnection:connectionCopy photoLibrary:photoLibraryCopy graph:graphCopy];

  return v30;
}

+ (id)shareBackSuggesterForSyndicationWithLoggingConnection:(id)connection syndicationPhotoLibrary:(id)library systemPhotoLibrary:(id)photoLibrary graph:(id)graph serviceManager:(id)manager
{
  v12 = MEMORY[0x277D276B0];
  managerCopy = manager;
  graphCopy = graph;
  photoLibraryCopy = photoLibrary;
  libraryCopy = library;
  connectionCopy = connection;
  v18 = objc_alloc_init(v12);
  v19 = [self shareBackSuggesterForSyndicationWithLoggingConnection:connectionCopy syndicationPhotoLibrary:libraryCopy systemPhotoLibrary:photoLibraryCopy graph:graphCopy faceIdentification:v18 serviceManager:managerCopy];

  return v19;
}

@end