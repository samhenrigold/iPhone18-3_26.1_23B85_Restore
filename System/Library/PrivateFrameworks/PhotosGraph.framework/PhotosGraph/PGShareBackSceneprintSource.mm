@interface PGShareBackSceneprintSource
- (BOOL)isSimilarSuggesterInput:(id)input toMomentNode:(id)node inGraph:(id)graph error:(id *)error;
- (PGShareBackSceneprintSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library;
- (id)getAssetsInMomentNode:(id)node inGraph:(id)graph error:(id *)error;
- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error;
- (id)validInputsForSource:(id)source givenSuggesterResults:(id)results;
@end

@implementation PGShareBackSceneprintSource

- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  nodesCopy = nodes;
  graphCopy = graph;
  if ([nodesCopy count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v13 = inputsCopy;
    v39 = [v13 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v39)
    {
      v14 = *v51;
      v41 = nodesCopy;
      v42 = inputsCopy;
      v43 = v13;
      errorCopy = error;
      v38 = *v51;
      do
      {
        v15 = 0;
        do
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v40 = v15;
          v16 = *(*(&v50 + 1) + 8 * v15);
          context = objc_autoreleasePoolPush();
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v17 = nodesCopy;
          v18 = [v17 countByEnumeratingWithState:&v46 objects:v58 count:16];
          if (!v18)
          {
            goto LABEL_20;
          }

          v19 = v18;
          v20 = *v47;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v47 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v46 + 1) + 8 * i);
              v45 = 0;
              v23 = [(PGShareBackSceneprintSource *)self isSimilarSuggesterInput:v16 toMomentNode:v22 inGraph:graphCopy error:&v45];
              v24 = v45;
              if (v24)
              {
                v25 = 1;
              }

              else
              {
                v25 = !v23;
              }

              if (!v25)
              {
                loggingConnection = [(PGShareBackSource *)self loggingConnection];
                if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
                {
                  asset = [v16 asset];
                  uuid = [asset uuid];
                  uuid2 = [v22 uuid];
                  *buf = 138412546;
                  v55 = uuid;
                  v56 = 2112;
                  v57 = uuid2;
                  _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackSceneprintSource] Input asset %@ is identified as having a common staging similarity to moment node %@", buf, 0x16u);
                }

                v27 = v43;
                v34 = [[PGShareBackSuggesterResult alloc] initWithInputs:v43 processingValue:0x2000 momentNodes:v17];
                v28 = [MEMORY[0x277CBEA60] arrayWithObject:v34];

                objc_autoreleasePoolPop(context);
                goto LABEL_31;
              }

              v26 = v24;
              if (v24)
              {

                objc_autoreleasePoolPop(context);
                if (errorCopy)
                {
                  v35 = v26;
                  v28 = 0;
                  *errorCopy = v26;
                }

                else
                {
                  v28 = MEMORY[0x277CBEBF8];
                }

                v27 = v26;
LABEL_31:
                nodesCopy = v41;
                inputsCopy = v42;
                goto LABEL_32;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v46 objects:v58 count:16];
            nodesCopy = v41;
            inputsCopy = v42;
            if (v19)
            {
              continue;
            }

            break;
          }

LABEL_20:

          objc_autoreleasePoolPop(context);
          v15 = v40 + 1;
          v13 = v43;
          v14 = v38;
        }

        while (v40 + 1 != v39);
        v39 = [v43 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v39);
    }

    v27 = 0;
    v28 = MEMORY[0x277CBEBF8];
LABEL_32:
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  return v28;
}

- (BOOL)isSimilarSuggesterInput:(id)input toMomentNode:(id)node inGraph:(id)graph error:(id *)error
{
  inputCopy = input;
  v11 = [(PGShareBackSceneprintSource *)self getAssetsInMomentNode:node inGraph:graph error:error];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 mutableCopy];
    asset = [inputCopy asset];
    [v13 removeObject:asset];

    if ([v13 count])
    {
      v15 = MEMORY[0x277D3C820];
      asset2 = [inputCopy asset];
      v17 = [v15 isAsset:asset2 similarToAnyAssets:v13 withinThresholdType:2];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)getAssetsInMomentNode:(id)node inGraph:(id)graph error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  graphCopy = graph;
  assetsInMomentCache = self->_assetsInMomentCache;
  localIdentifier = [nodeCopy localIdentifier];
  v12 = [(NSCache *)assetsInMomentCache objectForKey:localIdentifier];

  if (!v12)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    requiredFetchPropertySets = [MEMORY[0x277D3C820] requiredFetchPropertySets];
    [librarySpecificFetchOptions setFetchPropertySets:requiredFetchPropertySets];

    v15 = [graphCopy momentForMomentNode:nodeCopy inPhotoLibrary:self->_photoLibrary];
    if (v15)
    {
      v16 = v15;
      v17 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v15 options:librarySpecificFetchOptions];
      v18 = objc_alloc(MEMORY[0x277CBEA60]);
      fetchedObjects = [v17 fetchedObjects];
      v12 = [v18 initWithArray:fetchedObjects copyItems:0];

      v20 = self->_assetsInMomentCache;
      localIdentifier2 = [nodeCopy localIdentifier];
      [(NSCache *)v20 setObject:v12 forKey:localIdentifier2];
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = MEMORY[0x277CCACA8];
      uuid = [nodeCopy uuid];
      v25 = [v23 stringWithFormat:@"Error while getting the PHMoment associated to moment node %@", uuid];
      v26 = [v22 errorWithDescription:v25];

      if (error)
      {
        v27 = v26;
        *error = v26;
      }

      loggingConnection = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        v29 = [v26 description];
        *buf = 138412290;
        v32 = v29;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackSceneprintSource] %@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  return v12;
}

- (id)validInputsForSource:(id)source givenSuggesterResults:(id)results
{
  v20 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v6 = [source mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = resultsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 processingValue] & 8) != 0)
        {
          suggesterInputs = [v12 suggesterInputs];
          [v6 removeObjectsInArray:suggesterInputs];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (PGShareBackSceneprintSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library
{
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = PGShareBackSceneprintSource;
  v8 = [(PGShareBackSource *)&v13 initWithLoggingConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoLibrary, library);
    v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
    assetsInMomentCache = v9->_assetsInMomentCache;
    v9->_assetsInMomentCache = v10;

    [(NSCache *)v9->_assetsInMomentCache setCountLimit:50];
  }

  return v9;
}

@end