@interface PGMemoryPlannerPhotoKitSource
+ (BOOL)translateLegacyMemoryCategory:(unint64_t)category subcategory:(unint64_t)subcategory toNewMemoryCategory:(unint64_t *)memoryCategory triggerType:(unint64_t *)type;
- (PGMemoryPlannerPhotoKitSource)initWithPhotoLibrary:(id)library loggingConnection:(id)connection;
- (id)memoriesToAvoidForConfiguration:(id)configuration withGraph:(id)graph progressReporter:(id)reporter;
- (id)pastMemoriesForConfiguration:(id)configuration withGraph:(id)graph progressReporter:(id)reporter;
- (id)triggeredMemoriesFromPersistedMemories:(id)memories withGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryPlannerPhotoKitSource

- (id)triggeredMemoriesFromPersistedMemories:(id)memories withGraph:(id)graph progressReporter:(id)reporter
{
  v110 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  graphCopy = graph;
  reporterCopy = reporter;
  v9 = [memoriesCopy count];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v11 = memoriesCopy;
  v73 = [v11 countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v73)
  {
    v12 = 1.0 / v9;
    v72 = *v95;
    v13 = 0.0;
    v70 = v11;
    v71 = graphCopy;
    v69 = v10;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v95 != v72)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v94 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      v13 = v12 + v13;
      if ([reporterCopy isCancelledWithProgress:v13])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v101 = 90;
          *&v101[4] = 2080;
          *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/PGMemoryPlannerPhotoKitSource.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v16);

        v66 = MEMORY[0x277CBEBF8];
        goto LABEL_41;
      }

      v17 = [MEMORY[0x277CD98D8] fetchMomentsBackingMemory:v15 options:0];
      v83 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v90 objects:v108 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v91;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v91 != v20)
            {
              objc_enumerationMutation(obj);
            }

            uuid = [*(*(&v90 + 1) + 8 * i) uuid];
            [v83 addObject:uuid];
          }

          v19 = [obj countByEnumeratingWithState:&v90 objects:v108 count:16];
        }

        while (v19);
      }

      v23 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v83 inGraph:graphCopy];
      v24 = [v23 count];
      if (v24 < [v83 count])
      {
        break;
      }

      if (v24)
      {
        goto LABEL_18;
      }

LABEL_35:

      objc_autoreleasePoolPop(v16);
      if (++v14 == v73)
      {
        v73 = [v11 countByEnumeratingWithState:&v94 objects:v109 count:16];
        if (v73)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      }
    }

    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v101 = "[PGMemoryPlannerPhotoKitSource triggeredMemoriesFromPersistedMemories:withGraph:progressReporter:]";
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s: Cannot find some moment nodes for moment uuids", buf, 0xCu);
    }

LABEL_18:
    category = [v15 category];
    subcategory = [v15 subcategory];
    v27 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:graphCopy];
    [v15 photosGraphVersion];
    v28 = PLMemoriesAlgorithmsVersionFromPhotosGraphVersion();
    v80 = v14;
    v81 = v16;
    v79 = v23;
    if (category > 0x64 || v28 < 0x301)
    {
      v88 = 0;
      if (([objc_opt_class() translateLegacyMemoryCategory:category subcategory:subcategory toNewMemoryCategory:&category triggerType:&v88] & 1) == 0)
      {
        v39 = self->_loggingConnection;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v59 = MEMORY[0x277CD98D8];
          v60 = category;
          v61 = v39;
          v62 = [v59 stringForCategory:v60];
          v63 = [MEMORY[0x277CD98D8] stringForSubcategory:subcategory];
          v64 = [PGGraphBuilder memoryLabelForCategory:category];
          v65 = [PGMemoryTrigger stringFromTriggerType:v88];
          *buf = 136316162;
          *v101 = "[PGMemoryPlannerPhotoKitSource triggeredMemoriesFromPersistedMemories:withGraph:progressReporter:]";
          *&v101[8] = 2112;
          *&v101[10] = v62;
          v102 = 2112;
          v103 = v63;
          v104 = 2112;
          v105 = v64;
          v106 = 2112;
          v107 = v65;
          _os_log_error_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_ERROR, "%s: Failed to translate memory category %@ sub category %@ into memory category %@ trigger type %@", buf, 0x34u);
        }
      }

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v88];
      v99 = v40;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];

      bOOLValue = 0;
      unsignedIntegerValue = 0;
    }

    else
    {
      photosGraphProperties = [v15 photosGraphProperties];
      v30 = [photosGraphProperties objectForKeyedSubscript:@"triggerTypes"];
      v31 = v30;
      v32 = MEMORY[0x277CBEBF8];
      if (v30)
      {
        v32 = v30;
      }

      v33 = v32;

      v34 = [photosGraphProperties objectForKeyedSubscript:@"memoryCategorySubcategory"];
      unsignedIntegerValue = [v34 unsignedIntegerValue];

      v35 = [photosGraphProperties objectForKeyedSubscript:@"encodedFeatures"];
      v36 = [PGFeature featuresForEncodedFeatures:v35];
      v37 = [PGGraphFeatureNodeCollection featureNodeCollectionWithFeatures:v36 inGraph:graphCopy];

      v38 = [photosGraphProperties objectForKeyedSubscript:@"generatedWithFallbackRequirements"];
      bOOLValue = [v38 BOOLValue];

      v27 = v37;
    }

    v78 = v27;
    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v42 = v33;
    v43 = [v42 countByEnumeratingWithState:&v84 objects:v98 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v85;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v85 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v84 + 1) + 8 * j);
          v48 = objc_alloc(MEMORY[0x277CCA970]);
          creationDate = [v15 creationDate];
          creationDate2 = [v15 creationDate];
          v51 = [v48 initWithStartDate:creationDate endDate:creationDate2];
          [v41 setObject:v51 forKeyedSubscript:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v84 objects:v98 count:16];
      }

      while (v44);
    }

    v52 = [PGGraphBuilder memoryLabelForCategory:category];
    v53 = [PGGraphMemoryNode uniqueMemoryIdentifierWithMemoryLabel:v52 featureNodes:v78];

    v54 = [PGTriggeredMemory alloc];
    v55 = category;
    creationDate3 = [v15 creationDate];
    LOBYTE(v68) = bOOLValue;
    v57 = v55;
    v23 = v79;
    v58 = [(PGTriggeredMemory *)v54 initWithMemoryCategory:v57 memoryCategorySubcategory:unsignedIntegerValue memoryMomentNodes:v79 memoryFeatureNodes:v78 validityIntervalByTriggerType:v41 creationDate:creationDate3 uniqueMemoryIdentifier:v53 generatedWithFallbackRequirements:v68];

    v10 = v69;
    [v69 addObject:v58];

    v11 = v70;
    graphCopy = v71;
    v14 = v80;
    v16 = v81;
    goto LABEL_35;
  }

LABEL_37:

  v66 = v10;
LABEL_41:

  return v66;
}

- (id)memoriesToAvoidForConfiguration:(id)configuration withGraph:(id)graph progressReporter:(id)reporter
{
  v32[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v9 = self->_loggingConnection;
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGMemoryPlannerPhotoKitSourceMemoriesToAvoid", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v26 = mach_absolute_time();
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeRejectedMemories:1];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"userCreated == NO && rejected == YES"];
  [librarySpecificFetchOptions setPredicate:v14];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v32[0] = v15;
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:1];
  v32[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v17];

  v18 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  if ([v18 count])
  {
    v19 = [(PGMemoryPlannerPhotoKitSource *)self triggeredMemoriesFromPersistedMemories:v18 withGraph:graphCopy progressReporter:reporterCopy];
    v20 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v23 = v12;
    v24 = v23;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, v10, "PGMemoryPlannerPhotoKitSourceMemoriesToAvoid", "", buf, 2u);
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v29 = "PGMemoryPlannerPhotoKitSourceMemoriesToAvoid";
      v30 = 2048;
      v31 = ((((v20 - v26) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

- (id)pastMemoriesForConfiguration:(id)configuration withGraph:(id)graph progressReporter:(id)reporter
{
  v38[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v9 = self->_loggingConnection;
  configurationCopy = configuration;
  v11 = os_signpost_id_generate(v9);
  v12 = v9;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGMemoryPlannerPhotoKitSourcePastMemories", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v31 = mach_absolute_time();
  pastMemoryCollisionUniversalDateInterval = [configurationCopy pastMemoryCollisionUniversalDateInterval];

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v16 = MEMORY[0x277CCAC30];
  startDate = [pastMemoryCollisionUniversalDateInterval startDate];
  endDate = [pastMemoryCollisionUniversalDateInterval endDate];
  v19 = [v16 predicateWithFormat:@"creationDate >= %@ AND creationDate <= %@ && category != %d", startDate, endDate, 401];
  [librarySpecificFetchOptions setPredicate:v19];

  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v38[0] = v20;
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:1];
  v38[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v22];

  v23 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  if ([v23 count])
  {
    v24 = [(PGMemoryPlannerPhotoKitSource *)self triggeredMemoriesFromPersistedMemories:v23 withGraph:graphCopy progressReporter:reporterCopy];
    v25 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v28 = v13;
    v29 = v28;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v11, "PGMemoryPlannerPhotoKitSourcePastMemories", "", buf, 2u);
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "PGMemoryPlannerPhotoKitSourcePastMemories";
      v36 = 2048;
      v37 = ((((v25 - v31) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  return v24;
}

- (PGMemoryPlannerPhotoKitSource)initWithPhotoLibrary:(id)library loggingConnection:(id)connection
{
  libraryCopy = library;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PGMemoryPlannerPhotoKitSource;
  v9 = [(PGMemoryPlannerPhotoKitSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    objc_storeStrong(&v10->_loggingConnection, connection);
  }

  return v10;
}

+ (BOOL)translateLegacyMemoryCategory:(unint64_t)category subcategory:(unint64_t)subcategory toNewMemoryCategory:(unint64_t *)memoryCategory triggerType:(unint64_t *)type
{
  *memoryCategory = 0;
  *type = 0;
  result = 1;
  if (category <= 215)
  {
    if (category <= 211)
    {
      if (category <= 200)
      {
        if (category && category != 32)
        {
          goto LABEL_36;
        }

LABEL_18:
        result = 0;
        goto LABEL_36;
      }

      if (category != 201)
      {
        if (category == 202)
        {
          result = 1;
          *memoryCategory = 1;
          *type = 4;
        }

        goto LABEL_36;
      }

      v7 = 8;
LABEL_35:
      *memoryCategory = v7;
      result = 1;
      goto LABEL_36;
    }

    if (category > 213)
    {
      if (category == 214)
      {
        result = 1;
        *memoryCategory = 1;
        *type = 11;
        goto LABEL_36;
      }

      v8 = 17;
    }

    else
    {
      if (category != 212)
      {
        result = 1;
        *memoryCategory = 1;
LABEL_31:
        *type = 1;
        goto LABEL_36;
      }

      v8 = 16;
    }

    *memoryCategory = v8;
    result = 1;
    goto LABEL_31;
  }

  if (category > 219)
  {
    switch(category)
    {
      case 0xDCuLL:
        v7 = 3;
        break;
      case 0xDDuLL:
        v7 = 7;
        break;
      case 0x191uLL:
        goto LABEL_18;
      default:
        goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (category - 216 < 2)
  {
    v7 = 21;
    goto LABEL_35;
  }

  if (category != 218)
  {
    if (category != 219)
    {
      goto LABEL_36;
    }

    v7 = 4;
    goto LABEL_35;
  }

  result = 1;
  if (subcategory == 203)
  {
LABEL_57:
    v9 = 6;
    goto LABEL_67;
  }

  if (subcategory == 204)
  {
LABEL_54:
    v9 = 3;
    goto LABEL_67;
  }

LABEL_36:
  if (subcategory <= 300)
  {
    switch(subcategory)
    {
      case 0xC9uLL:
        v9 = 1;
        goto LABEL_67;
      case 0xCAuLL:
        goto LABEL_54;
      case 0xCBuLL:
        if (category != 220)
        {
          goto LABEL_57;
        }

        v9 = 5;
        goto LABEL_67;
      case 0xCCuLL:
        if (category != 220)
        {
          goto LABEL_54;
        }

        v9 = 2;
        goto LABEL_67;
      case 0xCDuLL:
      case 0xCEuLL:
        v9 = 19;
        goto LABEL_67;
      case 0xCFuLL:
      case 0xD0uLL:
      case 0xD1uLL:
        return result;
      case 0xD2uLL:
        *memoryCategory = 3;
        *type = 2;
        return result;
      case 0xD3uLL:
        v9 = 20;
        goto LABEL_67;
      case 0xD4uLL:
        v9 = 10;
        goto LABEL_67;
      case 0xD5uLL:
        goto LABEL_50;
      case 0xD6uLL:
        v9 = 17;
        goto LABEL_67;
      case 0xD7uLL:
        v9 = 18;
        goto LABEL_67;
      case 0xD8uLL:
        return 0;
      case 0xD9uLL:
        v9 = 11;
        goto LABEL_67;
      case 0xDAuLL:
        v9 = 9;
        goto LABEL_67;
      default:
        if (subcategory != 102)
        {
          return result;
        }

LABEL_50:
        v9 = 16;
        break;
    }

    goto LABEL_67;
  }

  if (subcategory <= 400)
  {
    if (subcategory - 301 < 3)
    {
      return 0;
    }
  }

  else
  {
    if (subcategory <= 402)
    {
      if (subcategory == 401)
      {
        v9 = 13;
      }

      else
      {
        v9 = 12;
      }

      goto LABEL_67;
    }

    if (subcategory == 403)
    {
      v9 = 15;
      goto LABEL_67;
    }

    if (subcategory == 404)
    {
      v9 = 14;
LABEL_67:
      *memoryCategory = v9;
    }
  }

  return result;
}

@end