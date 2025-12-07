@interface PGGraphIngestFaceAttributeConveniences
+ (id)sampledAssetsWithSingleFaceForPersonLocalIdentifier:(id)identifier photoLibrary:(id)library numberOfYearsBack:(unint64_t)back sampleSize:(unint64_t)size fetchPropertySets:(id)sets;
@end

@implementation PGGraphIngestFaceAttributeConveniences

+ (id)sampledAssetsWithSingleFaceForPersonLocalIdentifier:(id)identifier photoLibrary:(id)library numberOfYearsBack:(unint64_t)back sampleSize:(unint64_t)size fetchPropertySets:(id)sets
{
  v74 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  libraryCopy = library;
  setsCopy = sets;
  if (identifierCopy)
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setFetchLimit:1];
    v16 = MEMORY[0x277CD9938];
    v71 = identifierCopy;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
    v18 = [v16 fetchPersonsWithLocalIdentifiers:v17 options:librarySpecificFetchOptions];

    v62 = v18;
    firstObject = [v18 firstObject];
    if (firstObject)
    {
      sizeCopy = size;
      v61 = identifierCopy;
      v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:back * -31557600.0];
      v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == 1", @"detectedFaces"];
      v59 = v19;
      v57 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"dateCreated", v19];
      v58 = v20;
      v70[0] = v20;
      v70[1] = v57;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
      [libraryCopy librarySpecificFetchOptions];
      v23 = v22 = setsCopy;
      [v23 setFetchLimit:3000];
      [v23 setIncludeGuestAssets:1];
      v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
      v69[0] = v24;
      v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
      v69[1] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
      [v23 setSortDescriptors:v26];

      v27 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v21];
      [v23 setInternalPredicate:v27];

      if (v22)
      {
        [v23 setFetchPropertySets:v22];
      }

      v60 = v22;
      v28 = firstObject;
      v29 = [MEMORY[0x277CD97A8] fetchAssetsForPerson:firstObject options:v23];
      if ([v29 count] <= sizeCopy)
      {
        v45 = v62;
        v47 = v57;
        v46 = v58;
      }

      else
      {
        v54 = v21;
        v55 = libraryCopy;
        v30 = objc_alloc_init(MEMORY[0x277D3AD70]);
        [v30 setNumberOfClusters:sizeCopy];
        fetchedObjects = [v29 fetchedObjects];
        v53 = v30;
        v32 = [v30 performWithDataset:fetchedObjects progressBlock:0];

        v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:sizeCopy];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v34 = v32;
        v35 = [v34 countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v65;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v65 != v37)
              {
                objc_enumerationMutation(v34);
              }

              objects = [*(*(&v64 + 1) + 8 * i) objects];
              firstObject2 = [objects firstObject];

              if (firstObject2)
              {
                [v33 addObject:firstObject2];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v64 objects:v68 count:16];
          }

          while (v36);
        }

        v41 = objc_alloc(MEMORY[0x277CD98D0]);
        fetchType = [v29 fetchType];
        fetchPropertySets = [v29 fetchPropertySets];
        libraryCopy = v55;
        v44 = [v41 initWithObjects:v33 photoLibrary:v55 fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

        v29 = v44;
        v45 = v62;
        v28 = firstObject;
        v47 = v57;
        v46 = v58;
        v21 = v54;
      }

      setsCopy = v60;
      identifierCopy = v61;
      loggingConnection = v59;
    }

    else
    {
      v49 = +[PGLogging sharedLogging];
      loggingConnection = [v49 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = identifierCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No person found for local identifier %@", buf, 0xCu);
      }

      v29 = 0;
      v45 = v62;
      v28 = 0;
    }
  }

  else
  {
    v48 = +[PGLogging sharedLogging];
    librarySpecificFetchOptions = [v48 loggingConnection];

    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      *buf = 138412290;
      v73 = v52;
      _os_log_error_impl(&dword_22F0FC000, librarySpecificFetchOptions, OS_LOG_TYPE_ERROR, "Nil person identifier incorrectly passed into '%@'. Exiting early.", buf, 0xCu);
    }

    v29 = 0;
  }

  return v29;
}

@end