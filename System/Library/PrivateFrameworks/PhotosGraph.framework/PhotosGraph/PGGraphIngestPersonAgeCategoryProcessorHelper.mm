@interface PGGraphIngestPersonAgeCategoryProcessorHelper
- (PGGraphIngestPersonAgeCategoryProcessorHelper)init;
- (id)ageDescriptionFromAge:(unint64_t)age;
- (unint64_t)ageCategoryForPersonNode:(id)node ageCategoryCountedSet:(id)set;
- (unint64_t)ageCategoryFromAssetSamplingScenesForPersonNode:(id)node photoLibrary:(id)library curationSession:(id)session;
- (unint64_t)ageCategoryFromBirthdayDateComponents:(id)components currentDate:(id)date;
- (unint64_t)ageCategoryFromBirthdayDateForPersonNode:(id)node;
- (unint64_t)ageCategoryFromPHFaceAgeType:(unsigned __int16)type;
- (unint64_t)ageCategoryFromScenesByAssetLocalIdentifier:(id)identifier curationModelByAssetLocalIdentifier:(id)localIdentifier personNode:(id)node;
- (unint64_t)ageCategoryUsingFaceAttributesForPersonNode:(id)node photoLibrary:(id)library;
@end

@implementation PGGraphIngestPersonAgeCategoryProcessorHelper

- (id)ageDescriptionFromAge:(unint64_t)age
{
  if (age > 5)
  {
    return @"AgeCategoryUnspecified";
  }

  else
  {
    return off_278884AA0[age];
  }
}

- (unint64_t)ageCategoryFromScenesByAssetLocalIdentifier:(id)identifier curationModelByAssetLocalIdentifier:(id)localIdentifier personNode:(id)node
{
  v52 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  localIdentifierCopy = localIdentifier;
  nodeCopy = node;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __140__PGGraphIngestPersonAgeCategoryProcessorHelper_ageCategoryFromScenesByAssetLocalIdentifier_curationModelByAssetLocalIdentifier_personNode___block_invoke;
  v24[3] = &unk_278884A80;
  v11 = localIdentifierCopy;
  v25 = v11;
  selfCopy = self;
  v27 = &v38;
  v28 = &v34;
  v29 = &v30;
  [identifierCopy enumerateKeysAndObjectsUsingBlock:v24];
  v12 = [identifierCopy count];
  v13 = +[PGLogging sharedLogging];
  loggingConnection = [v13 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    stringDescription = [nodeCopy stringDescription];
    v16 = v39[3];
    v17 = v35[3];
    v18 = v31[3];
    *buf = 138478851;
    v43 = stringDescription;
    v44 = 2048;
    v45 = v16;
    v46 = 2048;
    v47 = v17;
    v48 = 2048;
    v49 = v18;
    v50 = 2048;
    v51 = v12;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ - (baby: %lu, child: %lu, teen: %lu, total: %lu)", buf, 0x34u);
  }

  v19 = v39[3];
  v20 = v12;
  if (v19 / v12 >= 0.6)
  {
    v22 = 1;
  }

  else
  {
    v21 = v35[3] + v19;
    if (v21 / v20 >= 0.6)
    {
      v22 = 2;
    }

    else if ((v31[3] + v21) / v20 >= 0.6)
    {
      v22 = 3;
    }

    else
    {
      v22 = 0;
    }
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return v22;
}

void __140__PGGraphIngestPersonAgeCategoryProcessorHelper_ageCategoryFromScenesByAssetLocalIdentifier_curationModelByAssetLocalIdentifier_personNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [*(*(a1 + 40) + 8) confidenceThresholdBySceneIdentifierWithCurationModel:v7];
  v9 = [*(*(a1 + 40) + 16) confidenceThresholdBySceneIdentifierWithCurationModel:v7];
  v46 = [*(*(a1 + 40) + 24) confidenceThresholdBySceneIdentifierWithCurationModel:v7];
  v43 = [*(*(a1 + 40) + 32) confidenceThresholdBySceneIdentifierWithCurationModel:v7];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v38 = a1;
    v39 = v7;
    v40 = v5;
    v41 = 0;
    v42 = 0;
    v13 = *v49;
    v45 = *v49;
    do
    {
      v14 = 0;
      v44 = v12;
      do
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v48 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "extendedSceneIdentifier")}];
        v18 = [v8 objectForKeyedSubscript:v17];
        if (v18 && ([v15 confidence], v20 = v19, objc_msgSend(v18, "doubleValue"), v20 >= v21))
        {
          BYTE4(v42) = 1;
        }

        else
        {
          v47 = v16;
          v22 = [v9 objectForKeyedSubscript:{v17, v38}];
          if (v22 && ([v15 confidence], v24 = v23, objc_msgSend(v22, "doubleValue"), v24 >= v25))
          {
            LOBYTE(v42) = 1;
          }

          else
          {
            v26 = [v46 objectForKeyedSubscript:v17];
            if (v26 && ([v15 confidence], v28 = v27, objc_msgSend(v26, "doubleValue"), v28 >= v29))
            {
              BYTE4(v41) = 1;
            }

            else
            {
              v30 = v10;
              v31 = v9;
              v32 = v8;
              v33 = [v43 objectForKeyedSubscript:v17];
              if (v33)
              {
                [v15 confidence];
                v35 = v34;
                [v33 doubleValue];
                if (v35 >= v36)
                {
                  LOBYTE(v41) = 1;
                }
              }

              v8 = v32;
              v9 = v31;
              v10 = v30;
              v12 = v44;
            }

            v13 = v45;
          }

          v16 = v47;
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v12);

    v7 = v39;
    v5 = v40;
    if ((v41 & 1) == 0)
    {
      if ((v42 & 0x100000000) != 0)
      {
        v37 = v38[6];
LABEL_31:
        ++*(*(v37 + 8) + 24);
        goto LABEL_32;
      }

      if (v42)
      {
        v37 = v38[7];
        goto LABEL_31;
      }

      if ((v41 & 0x100000000) != 0)
      {
        v37 = v38[8];
        goto LABEL_31;
      }
    }
  }

  else
  {
  }

LABEL_32:
}

- (unint64_t)ageCategoryFromAssetSamplingScenesForPersonNode:(id)node photoLibrary:(id)library curationSession:(id)session
{
  v46[2] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  libraryCopy = library;
  sessionCopy = session;
  localIdentifier = [nodeCopy localIdentifier];
  if ([localIdentifier length])
  {
    v12 = *MEMORY[0x277CD9AD0];
    v46[0] = *MEMORY[0x277CD9B10];
    v46[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v14 = [PGGraphIngestFaceAttributeConveniences sampledAssetsWithSingleFaceForPersonLocalIdentifier:localIdentifier photoLibrary:libraryCopy numberOfYearsBack:100 sampleSize:200 fetchPropertySets:v13];

    v15 = [v14 count];
    if (v15 < 5)
    {
      v30 = v15;
      v31 = +[PGLogging sharedLogging];
      loggingConnection = [v31 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        stringDescription = [nodeCopy stringDescription];
        *buf = 138478083;
        v42 = stringDescription;
        v43 = 2048;
        v44 = v30;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ has not enough singleton face assets: %lu", buf, 0x16u);
      }

      v29 = 0;
    }

    else
    {
      selfCopy = self;
      v36 = libraryCopy;
      v16 = objc_alloc(MEMORY[0x277CBEA60]);
      fetchedObjects = [v14 fetchedObjects];
      v18 = [v16 initWithArray:fetchedObjects];

      v35 = sessionCopy;
      [sessionCopy prepareAssets:v18];
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      loggingConnection = v18;
      v21 = [loggingConnection countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v38;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(loggingConnection);
            }

            v25 = *(*(&v37 + 1) + 8 * i);
            curationModel = [v25 curationModel];
            localIdentifier2 = [v25 localIdentifier];
            [v19 setObject:curationModel forKeyedSubscript:localIdentifier2];
          }

          v22 = [loggingConnection countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v22);
      }

      v28 = [MEMORY[0x277CD9990] fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v14];
      v29 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)selfCopy ageCategoryFromScenesByAssetLocalIdentifier:v28 curationModelByAssetLocalIdentifier:v19 personNode:nodeCopy];

      sessionCopy = v35;
      libraryCopy = v36;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (unint64_t)ageCategoryFromBirthdayDateForPersonNode:(id)node
{
  birthdayDateComponents = [node birthdayDateComponents];
  if (birthdayDateComponents)
  {
    currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
    v6 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self ageCategoryFromBirthdayDateComponents:birthdayDateComponents currentDate:currentLocalDate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)ageCategoryFromBirthdayDateComponents:(id)components currentDate:(id)date
{
  componentsCopy = components;
  dateCopy = date;
  year = [componentsCopy year];
  v8 = 0;
  if (componentsCopy && year != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277D27690] dateFromComponents:componentsCopy inTimeZone:0];
    [dateCopy timeIntervalSinceDate:v9];
    if (v10 >= 94672800.0)
    {
      if (v10 >= 410248800.0)
      {
        if (v10 >= 978285600.0)
        {
          if (v10 >= 1925013600.0)
          {
            v8 = 5;
          }

          else
          {
            v8 = 4;
          }
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (unint64_t)ageCategoryFromPHFaceAgeType:(unsigned __int16)type
{
  if ((type - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_22F78C7B0[(type - 1)];
  }
}

- (unint64_t)ageCategoryForPersonNode:(id)node ageCategoryCountedSet:(id)set
{
  v48 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  setCopy = set;
  if (![&unk_2844860D8 count])
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v11 = [&unk_2844860D8 objectAtIndexedSubscript:v9];
    v12 = [setCopy countForObject:v11];
    if (v12 >= v8 && v12 > 4)
    {
      v8 = v12;
      v10 = v9;
    }

    ++v9;
  }

  while (v9 < [&unk_2844860D8 count]);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    v13 = +[PGLogging sharedLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      stringDescription = [nodeCopy stringDescription];
      *buf = 138477827;
      v43 = stringDescription;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ has no age bracket that hits minimum criteria", buf, 0xCu);
    }

LABEL_22:
    unsignedIntValue3 = 0;
    goto LABEL_23;
  }

  v16 = [&unk_2844860D8 objectAtIndexedSubscript:v10];
  unsignedIntValue = [v16 unsignedIntValue];

  v18 = +[PGLogging sharedLogging];
  loggingConnection2 = [v18 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    stringDescription2 = [nodeCopy stringDescription];
    v21 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self ageDescriptionFromAge:unsignedIntValue];
    *buf = 138478339;
    v43 = stringDescription2;
    v44 = 2112;
    v45 = v21;
    v46 = 2048;
    v47 = v8;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ most represented age bracket is %@ (%lu faces)", buf, 0x20u);
  }

  selfCopy = self;

  v22 = MEMORY[0x277CBEB18];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue];
  loggingConnection = [v22 arrayWithObject:v23];

  v24 = v10 + 1;
  if (v24 < [&unk_2844860D8 count])
  {
    v26 = v8;
    *&v25 = 138478339;
    v40 = v25;
    while (1)
    {
      v27 = [&unk_2844860D8 objectAtIndexedSubscript:{v24, v40}];
      v28 = [setCopy countForObject:v27];
      if (v28 < 5)
      {
        break;
      }

      v29 = v28;
      if (v28 / v26 < 0.3)
      {
        break;
      }

      v30 = [&unk_2844860D8 objectAtIndexedSubscript:v24];
      unsignedIntValue2 = [v30 unsignedIntValue];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue2];
      [loggingConnection addObject:v32];

      v33 = +[PGLogging sharedLogging];
      loggingConnection3 = [v33 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        stringDescription3 = [nodeCopy stringDescription];
        v36 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)selfCopy ageDescriptionFromAge:unsignedIntValue2];
        *buf = v40;
        v43 = stringDescription3;
        v44 = 2112;
        v45 = v36;
        v46 = 2048;
        v47 = v29;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[PersonAgeCategoryProcessor] Person %{private}@ possible age bracket %@ (%lu faces)", buf, 0x20u);
      }

      if (++v24 >= [&unk_2844860D8 count])
      {
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  if (![loggingConnection count])
  {
    goto LABEL_22;
  }

  lastObject = [loggingConnection lastObject];
  unsignedIntValue3 = [lastObject unsignedIntValue];

LABEL_23:
  return unsignedIntValue3;
}

- (unint64_t)ageCategoryUsingFaceAttributesForPersonNode:(id)node photoLibrary:(id)library
{
  v33[2] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  libraryCopy = library;
  localIdentifier = [nodeCopy localIdentifier];
  if ([localIdentifier length])
  {
    v9 = [PGGraphIngestFaceAttributeConveniences sampledAssetsWithSingleFaceForPersonLocalIdentifier:localIdentifier photoLibrary:libraryCopy numberOfYearsBack:5 sampleSize:200 fetchPropertySets:0];
    v10 = 0;
    if ([v9 count] >= 5)
    {
      librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
      v12 = *MEMORY[0x277CD9BD8];
      v33[0] = *MEMORY[0x277CD9BD0];
      v33[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
      [librarySpecificFetchOptions setFetchPropertySets:v13];

      v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ageType != %lu", 0];
      [librarySpecificFetchOptions setInternalPredicate:v14];

      v15 = [MEMORY[0x277CCA940] set];
      v16 = [MEMORY[0x277CD9868] fetchFacesInAssets:v9 options:librarySpecificFetchOptions];
      v10 = 0;
      if ([v16 count] >= 5)
      {
        v26 = librarySpecificFetchOptions;
        v27 = libraryCopy;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v25 = v16;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v29;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v29 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = -[PGGraphIngestPersonAgeCategoryProcessorHelper ageCategoryFromPHFaceAgeType:](self, "ageCategoryFromPHFaceAgeType:", [*(*(&v28 + 1) + 8 * i) ageType]);
              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
              [v15 addObject:v23];
            }

            v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v19);
        }

        v10 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)self ageCategoryForPersonNode:nodeCopy ageCategoryCountedSet:v15];
        libraryCopy = v27;
        v16 = v25;
        librarySpecificFetchOptions = v26;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PGGraphIngestPersonAgeCategoryProcessorHelper)init
{
  v12.receiver = self;
  v12.super_class = PGGraphIngestPersonAgeCategoryProcessorHelper;
  v2 = [(PGGraphIngestPersonAgeCategoryProcessorHelper *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_284486078 thresholdType:1];
    babyScenesHelper = v2->_babyScenesHelper;
    v2->_babyScenesHelper = v3;

    v5 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_284486090 thresholdType:1];
    childScenesHelper = v2->_childScenesHelper;
    v2->_childScenesHelper = v5;

    v7 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_2844860A8 thresholdType:1];
    teenScenesHelper = v2->_teenScenesHelper;
    v2->_teenScenesHelper = v7;

    v9 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_2844860C0 thresholdType:1];
    adultScenesHelper = v2->_adultScenesHelper;
    v2->_adultScenesHelper = v9;
  }

  return v2;
}

@end