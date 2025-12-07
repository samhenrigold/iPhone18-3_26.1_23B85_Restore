@interface PGShareBackPetSource
- (BOOL)prepareSourceWithGraph:(id)graph;
- (PGShareBackPetSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library;
- (PGShareBackPetSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library faceIdentification:(id)identification;
- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackPetSource

- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error
{
  v106 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  nodesCopy = nodes;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v12 = inputsCopy;
  v13 = [v12 countByEnumeratingWithState:&v94 objects:v105 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v95;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v95 != v15)
        {
          objc_enumerationMutation(v12);
        }

        localIdentifier = [*(*(&v94 + 1) + 8 * i) localIdentifier];
        if (localIdentifier)
        {
          [v11 addObject:localIdentifier];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v94 objects:v105 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v104 = *MEMORY[0x277CD9AA8];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v19];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
    [librarySpecificFetchOptions setInternalPredicate:v20];

    v21 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];
    if ([v21 count])
    {
      v76 = nodesCopy;
      errorCopy = error;
      selfCopy = self;
      librarySpecificFetchOptions2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_284485400];
      v72 = librarySpecificFetchOptions2;
      v73 = v21;
      v24 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:v21 options:librarySpecificFetchOptions2];
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v75 = v24;
      allValues = [v24 allValues];
      v27 = [allValues countByEnumeratingWithState:&v90 objects:v101 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v91;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v91 != v29)
            {
              objc_enumerationMutation(allValues);
            }

            fetchedObjects = [*(*(&v90 + 1) + 8 * j) fetchedObjects];
            [v25 addObjectsFromArray:fetchedObjects];
          }

          v28 = [allValues countByEnumeratingWithState:&v90 objects:v101 count:16];
        }

        while (v28);
      }

      if ([v25 count])
      {
        v32 = selfCopy;
        faceIdentification = selfCopy->_faceIdentification;
        v89 = 0;
        v34 = [(CLSFaceIdentificationProtocol *)faceIdentification requestIdentificationOfFaces:v25 error:&v89];
        v35 = v89;
        loggingConnection2 = v35;
        if (v35)
        {
          if (errorCopy)
          {
            v37 = v35;
            *errorCopy = loggingConnection2;
          }

          loggingConnection = [(PGShareBackSource *)selfCopy loggingConnection];
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v103 = loggingConnection2;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGShareBackPetSource] Error while getting classification results for faces: %@", buf, 0xCu);
          }

          v39 = 0;
          nodesCopy = v76;
        }

        else
        {
          nodesCopy = v76;
          if ([v34 count])
          {
            v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            loggingConnection = v12;
            v42 = [loggingConnection countByEnumeratingWithState:&v85 objects:v100 count:16];
            if (v42)
            {
              v70 = v34;
              v43 = *v86;
              v68 = loggingConnection;
              v62 = *v86;
              do
              {
                v44 = 0;
                v63 = v42;
                do
                {
                  if (*v86 != v43)
                  {
                    v45 = v44;
                    objc_enumerationMutation(loggingConnection);
                    v44 = v45;
                  }

                  v65 = v44;
                  v46 = *(*(&v85 + 1) + 8 * v44);
                  v81 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  localIdentifier2 = [v46 localIdentifier];
                  v48 = [v75 objectForKeyedSubscript:localIdentifier2];

                  obj = v48;
                  v66 = [v48 countByEnumeratingWithState:&v81 objects:v99 count:16];
                  if (v66)
                  {
                    v49 = *v82;
                    v64 = *v82;
                    do
                    {
                      v50 = 0;
                      v51 = v70;
                      do
                      {
                        if (*v82 != v49)
                        {
                          v52 = v50;
                          objc_enumerationMutation(obj);
                          v50 = v52;
                        }

                        v67 = v50;
                        localIdentifier3 = [*(*(&v81 + 1) + 8 * v50) localIdentifier];
                        v54 = [v51 objectForKeyedSubscript:localIdentifier3];

                        v79 = 0u;
                        v80 = 0u;
                        v77 = 0u;
                        v78 = 0u;
                        v55 = v32->_petPersonLocalIdentifiersToCheck;
                        v56 = [(NSSet *)v55 countByEnumeratingWithState:&v77 objects:v98 count:16];
                        if (v56)
                        {
                          v57 = v56;
                          v58 = *v78;
                          while (2)
                          {
                            for (k = 0; k != v57; ++k)
                            {
                              if (*v78 != v58)
                              {
                                objc_enumerationMutation(v55);
                              }

                              v60 = [v54 objectForKeyedSubscript:*(*(&v77 + 1) + 8 * k)];

                              if (v60)
                              {

                                loggingConnection = v68;
                                nodesCopy = v76;
                                v61 = [[PGShareBackSuggesterResult alloc] initWithInputs:v68 processingValue:512 momentNodes:v76];
                                v39 = v69;
                                [v69 addObject:v61];

                                loggingConnection2 = 0;
                                goto LABEL_66;
                              }
                            }

                            v57 = [(NSSet *)v55 countByEnumeratingWithState:&v77 objects:v98 count:16];
                            if (v57)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v50 = v67 + 1;
                        nodesCopy = v76;
                        v32 = selfCopy;
                        loggingConnection = v68;
                        loggingConnection2 = 0;
                        v51 = v70;
                        v49 = v64;
                      }

                      while (v67 + 1 != v66);
                      v66 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
                    }

                    while (v66);
                  }

                  v44 = v65 + 1;
                  v43 = v62;
                }

                while (v65 + 1 != v63);
                v42 = [loggingConnection countByEnumeratingWithState:&v85 objects:v100 count:16];
              }

              while (v42);
              v39 = v69;
LABEL_66:
              v34 = v70;
            }

            else
            {
              v39 = v69;
            }
          }

          else
          {
            loggingConnection = [(PGShareBackSource *)selfCopy loggingConnection];
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No classification results for faces", buf, 2u);
            }

            v39 = MEMORY[0x277CBEBF8];
          }
        }
      }

      else
      {
        loggingConnection2 = [(PGShareBackSource *)selfCopy loggingConnection];
        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No pet faces for assets", buf, 2u);
        }

        v39 = MEMORY[0x277CBEBF8];
        nodesCopy = v76;
      }

      loggingConnection3 = v72;
      v21 = v73;
    }

    else
    {
      loggingConnection3 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v103 = v11;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No assets with faces processed for asset local identifiers: %@", buf, 0xCu);
      }

      v39 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    librarySpecificFetchOptions = [(PGShareBackSource *)self loggingConnection];
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, librarySpecificFetchOptions, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No assets to process", buf, 2u);
    }

    v39 = MEMORY[0x277CBEBF8];
  }

  return v39;
}

- (BOOL)prepareSourceWithGraph:(id)graph
{
  graphCopy = graph;
  loggingConnection = [(PGShareBackSource *)self loggingConnection];
  meNode = [graphCopy meNode];

  if (meNode)
  {
    collection = [meNode collection];
    ownedPetNodes = [collection ownedPetNodes];

    if ([ownedPetNodes count])
    {
      localIdentifiers = [ownedPetNodes localIdentifiers];
      if ([(NSSet *)localIdentifiers count])
      {
        petPersonLocalIdentifiersToCheck = self->_petPersonLocalIdentifiersToCheck;
        self->_petPersonLocalIdentifiersToCheck = localIdentifiers;
        v11 = localIdentifiers;

        v12 = 1;
LABEL_14:

        goto LABEL_15;
      }

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGShareBackPetSource] No pet local identifiers available", v14, 2u);
      }
    }

    else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No pets available", v15, 2u);
    }

    v12 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackPetSource] No me node available, unable to infer user's pets", buf, 2u);
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (PGShareBackPetSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library faceIdentification:(id)identification
{
  libraryCopy = library;
  identificationCopy = identification;
  v14.receiver = self;
  v14.super_class = PGShareBackPetSource;
  v11 = [(PGShareBackSource *)&v14 initWithLoggingConnection:connection];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, library);
    objc_storeStrong(&v12->_faceIdentification, identification);
  }

  return v12;
}

- (PGShareBackPetSource)initWithLoggingConnection:(id)connection photoLibrary:(id)library
{
  v6 = MEMORY[0x277D276B0];
  libraryCopy = library;
  connectionCopy = connection;
  v9 = objc_alloc_init(v6);
  v10 = [(PGShareBackPetSource *)self initWithLoggingConnection:connectionCopy photoLibrary:libraryCopy faceIdentification:v9];

  return v10;
}

@end