@interface PCClusteringManager
- (PCClusteringManager)init;
- (id)_convertContextvalueToString:(id)string forKey:(id)key;
- (id)_dominantSourceBundleIdentifierFromEvents:(id)events;
- (id)_getClusterFrom:(id)from withEmbeddings:(id)embeddings andCreationDate:(id)date;
- (id)generateClusters:(id)clusters withEmbeddings:(id)embeddings error:(id *)error;
- (id)getEmbeddingsFromBundles:(id)bundles forEmbeddingType:(unint64_t)type;
- (id)phenotypeDescription:(id)description;
- (void)runHDBSCANClusteringOn:(id)on;
@end

@implementation PCClusteringManager

- (PCClusteringManager)init
{
  v8.receiver = self;
  v8.super_class = PCClusteringManager;
  v2 = [(PCClusteringManager *)&v8 init];
  if (v2)
  {
    v3 = +[PCDistanceWeightingConfig clusteringConfiguration];
    config = v2->_config;
    v2->_config = v3;

    v5 = [[PCHDBSCANClustering alloc] initWithConfig:v2->_config];
    hdbscanClustering = v2->_hdbscanClustering;
    v2->_hdbscanClustering = v5;
  }

  return v2;
}

- (id)getEmbeddingsFromBundles:(id)bundles forEmbeddingType:(unint64_t)type
{
  v28 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(bundlesCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = bundlesCopy;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [[PCEmbedding alloc] initWithEventBundle:v11 forEmbeddingType:type];
        v13 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          locationContextEmbedding = [(PCEmbedding *)v12 locationContextEmbedding];
          *buf = 138412547;
          v24 = v12;
          v25 = 2117;
          v26 = locationContextEmbedding;
          _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_INFO, "Clustering: Extracted embedding=%@, locationEmbedding=%{sensitive}@", buf, 0x16u);
        }

        if (v12)
        {
          [v6 addObject:v12];
        }

        else
        {
          v15 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v11 description];
            *buf = 138412290;
            v24 = v16;
            _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_INFO, "Clustering: Embedding for bundle %@ is nil. Skip and proceed to the next bundle", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)runHDBSCANClusteringOn:(id)on
{
  v13 = *MEMORY[0x1E69E9840];
  onCopy = on;
  v5 = [onCopy count];
  if (v5 <= [(PCDistanceWeightingConfig *)self->_config minClusterSize])
  {
    v6 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [onCopy count];
      minClusterSize = [(PCDistanceWeightingConfig *)self->_config minClusterSize];
      v9 = 134218240;
      v10 = v7;
      v11 = 2048;
      v12 = minClusterSize;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Clustering, Embedding count (%lu) is equal to or less than min cluster size (%lu). Skip clustering", &v9, 0x16u);
    }
  }

  else
  {
    [(PCHDBSCANClustering *)self->_hdbscanClustering runHDBSCANClusteringOn:onCopy];
  }
}

- (id)generateClusters:(id)clusters withEmbeddings:(id)embeddings error:(id *)error
{
  v98[1] = *MEMORY[0x1E69E9840];
  clustersCopy = clusters;
  embeddingsCopy = embeddings;
  selfCopy = self;
  getClusterLabels = [(PCHDBSCANClustering *)self->_hdbscanClustering getClusterLabels];
  if ([getClusterLabels count])
  {
    v11 = [getClusterLabels count];
    if (v11 != [embeddingsCopy count])
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v95 = *MEMORY[0x1E696A578];
      v96 = @"Label count and embedding count do not match. Unable to create clusters";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v14 = [v12 initWithDomain:@"PCErrorDomain" code:0 userInfo:v13];

      if (v14)
      {
        if (error)
        {
          v15 = v14;
          v16 = 0;
          v17 = 0;
          *error = v14;
          goto LABEL_45;
        }

        v16 = 0;
LABEL_44:
        v17 = 0;
        goto LABEL_45;
      }
    }
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v97 = *MEMORY[0x1E696A578];
    v98[0] = @"Cluster labels were not generated. Unable to create clusters";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:&v97 count:1];
    v16 = [v18 initWithDomain:@"PCErrorDomain" code:0 userInfo:v19];

    if (v16)
    {
      if (error)
      {
        v20 = v16;
        v14 = 0;
        v17 = 0;
        *error = v16;
        goto LABEL_45;
      }

      v14 = 0;
      goto LABEL_44;
    }
  }

  errorCopy = error;
  v21 = [MEMORY[0x1E696AB50] setWithArray:getClusterLabels];
  v63 = objc_opt_new();
  date = [MEMORY[0x1E695DF00] date];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v77 objects:v94 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v78;
    v57 = clustersCopy;
    v65 = getClusterLabels;
    v66 = embeddingsCopy;
    v64 = *v78;
    do
    {
      v25 = 0;
      v68 = v23;
      do
      {
        if (*v78 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v77 + 1) + 8 * v25);
        if (([v26 isEqualToNumber:&unk_1F4BDE080] & 1) == 0)
        {
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __61__PCClusteringManager_generateClusters_withEmbeddings_error___block_invoke;
          v76[3] = &unk_1E83B81D8;
          v76[4] = v26;
          v71 = [getClusterLabels indexesOfObjectsPassingTest:v76];
          v27 = [embeddingsCopy objectsAtIndexes:?];
          v28 = objc_opt_new();
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v29 = v27;
          v30 = [v29 countByEnumeratingWithState:&v72 objects:v93 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v73;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v73 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v72 + 1) + 8 * i);
                bundleIdentifier = [v34 bundleIdentifier];

                if (bundleIdentifier)
                {
                  bundleIdentifier2 = [v34 bundleIdentifier];
                  [v28 addObject:bundleIdentifier2];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v72 objects:v93 count:16];
            }

            while (v31);
          }

          v37 = MEMORY[0x1E696AE18];
          allObjects = [v28 allObjects];
          v39 = [v37 predicateWithFormat:@"bundleIdentifier in %@", allObjects];

          v40 = [clustersCopy filteredArrayUsingPredicate:v39];
          v41 = [(PCClusteringManager *)selfCopy _getClusterFrom:v40 withEmbeddings:v29 andCreationDate:date];
          v42 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          v43 = v42;
          if (v41)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [v41 identifier];
              subBundleIDs = [v41 subBundleIDs];
              v58 = [subBundleIDs count];
              clusterMetadata = [v41 clusterMetadata];
              phenotype = [clusterMetadata phenotype];
              [(PCClusteringManager *)selfCopy phenotypeDescription:phenotype];
              v45 = v61 = v39;
              startDate = [v41 startDate];
              endDate = [v41 endDate];
              *buf = 138544386;
              v84 = identifier;
              v85 = 2050;
              v86 = v58;
              v87 = 2114;
              v88 = v45;
              v89 = 2114;
              v90 = startDate;
              v91 = 2114;
              v92 = endDate;
              _os_log_impl(&dword_1CEE74000, v43, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Created a cluster ID=%{public}@, bundleCount=%{public}lu, phenotype=%{public}@, dateRange=%{public}@-%{public}@", buf, 0x34u);

              clustersCopy = v57;
              v39 = v61;
            }

            [v63 addObject:v41];
          }

          else
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v84 = v26;
              _os_log_impl(&dword_1CEE74000, v43, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: Clustering, Cluster for label %@ is nil. skip and proceed to the next clustering label", buf, 0xCu);
            }
          }

          embeddingsCopy = v66;

          v24 = v64;
          getClusterLabels = v65;
          v23 = v68;
        }

        ++v25;
      }

      while (v25 != v23);
      v23 = [obj countByEnumeratingWithState:&v77 objects:v94 count:16];
    }

    while (v23);
  }

  v48 = [v63 copy];
  cachedClusters = selfCopy->_cachedClusters;
  selfCopy->_cachedClusters = v48;

  if ([v63 count])
  {
    v17 = v63;
  }

  else
  {
    v50 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v50, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Clustering, No cluster is available", buf, 2u);
    }

    v51 = objc_alloc(MEMORY[0x1E696ABC0]);
    v81 = *MEMORY[0x1E696A578];
    v82 = @"No clusters generated";
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v53 = [v51 initWithDomain:@"PCErrorDomain" code:0 userInfo:v52];

    if (errorCopy)
    {
      v54 = v53;
      *errorCopy = v53;
    }

    v17 = 0;
  }

  v14 = 0;
  v16 = 0;
LABEL_45:

  return v17;
}

- (id)phenotypeDescription:(id)description
{
  v3 = MEMORY[0x1E696AD60];
  descriptionCopy = description;
  string = [v3 string];
  [string appendFormat:@"\n"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PCClusteringManager_phenotypeDescription___block_invoke;
  v8[3] = &unk_1E83B8200;
  v6 = string;
  v9 = v6;
  [descriptionCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __44__PCClusteringManager_phenotypeDescription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isEqualToString:@"placeName"])
  {
    [*(a1 + 32) appendFormat:@"%@=<redacted>\n", v9];
    goto LABEL_9;
  }

  v6 = [v5 description];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = @"{%lu key/value pairs}";
LABEL_7:
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, objc_msgSend(v5, "count")];

    v6 = v8;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = @"[%lu array entries]";
    goto LABEL_7;
  }

LABEL_8:
  [*(a1 + 32) appendFormat:@"%@=%@\n", v9, v6];

LABEL_9:
}

- (id)_getClusterFrom:(id)from withEmbeddings:(id)embeddings andCreationDate:(id)date
{
  v359 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  embeddingsCopy = embeddings;
  dateCopy = date;
  v10 = [PCCluster alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v260 = dateCopy;
  v12 = [(PCCluster *)v10 initWithIdentifier:uUID creationDate:dateCopy];

  v278 = objc_opt_new();
  v330 = 0u;
  v331 = 0u;
  v332 = 0u;
  v333 = 0u;
  obj = embeddingsCopy;
  v13 = [obj countByEnumeratingWithState:&v330 objects:v358 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v331;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v331 != v15)
        {
          objc_enumerationMutation(obj);
        }

        summaryDictionary = [*(*(&v330 + 1) + 8 * i) summaryDictionary];
        [v278 addObject:summaryDictionary];
      }

      v14 = [obj countByEnumeratingWithState:&v330 objects:v358 count:16];
    }

    while (v14);
  }

  v357[0] = @"activityType";
  v357[1] = @"placeName";
  v357[2] = @"dayOfWeek";
  v357[3] = @"timeTag";
  v357[4] = @"isWeekend";
  v357[5] = @"combinedPlaceType";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v357 count:6];
  v267 = fromCopy;
  v19 = [fromCopy count];
  v277 = objc_opt_new();
  v265 = objc_opt_new();
  v264 = objc_opt_new();
  v326 = 0u;
  v327 = 0u;
  v328 = 0u;
  v329 = 0u;
  v270 = v18;
  v284 = v12;
  v280 = [v270 countByEnumeratingWithState:&v326 objects:v356 count:16];
  v20 = 0;
  if (v280)
  {
    v279 = *v327;
    v272 = v19;
    v21 = v19;
    selfCopy4 = self;
    do
    {
      v23 = 0;
      v24 = v20;
      do
      {
        if (*v327 != v279)
        {
          objc_enumerationMutation(v270);
        }

        v282 = v23;
        v25 = *(*(&v326 + 1) + 8 * v23);
        v20 = objc_opt_new();

        v324 = 0u;
        v325 = 0u;
        v322 = 0u;
        v323 = 0u;
        v26 = v278;
        v27 = [v26 countByEnumeratingWithState:&v322 objects:v355 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v323;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v323 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v322 + 1) + 8 * j);
              v32 = [v31 objectForKeyedSubscript:v25];
              v33 = [(PCClusteringManager *)selfCopy4 _convertContextvalueToString:v32 forKey:v25];

              v34 = [v31 objectForKeyedSubscript:@"bundleID"];
              v35 = v34;
              if (v33)
              {
                v36 = v34 == 0;
              }

              else
              {
                v36 = 1;
              }

              if (!v36)
              {
                v37 = [v20 objectForKeyedSubscript:v33];
                v38 = v20;
                v39 = [v37 count];

                if (v39)
                {
                  v40 = [v38 objectForKeyedSubscript:v33];
                  v41 = [v40 mutableCopy];

                  [v41 addObject:v35];
                }

                else
                {
                  v354 = v35;
                  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v354 count:1];
                }

                [v38 setObject:v41 forKeyedSubscript:v33];

                v20 = v38;
                selfCopy4 = self;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v322 objects:v355 count:16];
          }

          while (v28);
        }

        v42 = [v20 keysSortedByValueUsingComparator:&__block_literal_global_1];
        firstObject = [v42 firstObject];
        v44 = [v20 objectForKeyedSubscript:firstObject];
        v45 = COERCE_DOUBLE([v44 count]);

        v46 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        v12 = v284;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          identifier = [(PCCluster *)v284 identifier];
          [identifier UUIDString];
          v49 = v48 = v20;
          *buf = 138413571;
          v343 = v49;
          v344 = 2112;
          v345 = v25;
          v346 = 2117;
          v347 = v48;
          v348 = 2117;
          v349 = *&v42;
          v350 = 2117;
          v351 = firstObject;
          v352 = 2048;
          v353 = v45;
          _os_log_impl(&dword_1CEE74000, v46, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@, subBundleIDsGroupedByFeatureValues=%{sensitive}@, sortedFeatureValuesByFrequency=%{sensitive}@, mostFrequentFeatureValue=%{sensitive}@, mostFrequentFeatureValueCount=%lu", buf, 0x3Eu);

          v20 = v48;
          selfCopy4 = self;
        }

        null = [MEMORY[0x1E695DFB0] null];
        if ([firstObject isEqual:null] & 1) != 0 || (objc_msgSend(firstObject, "isEqualToString:", @"unavailable"))
        {
          goto LABEL_32;
        }

        clusterPhenotypeMinimumCountThreshold = [(PCDistanceWeightingConfig *)selfCopy4->_config clusterPhenotypeMinimumCountThreshold];

        if (*&v45 >= clusterPhenotypeMinimumCountThreshold)
        {
          if ([v25 isEqualToString:@"combinedPlaceType"] && objc_msgSend(firstObject, "isEqualToString:", @"Unknown"))
          {
            null = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(null, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1CEE74000, null, OS_LOG_TYPE_INFO, "Clustering: Skipping unknown place type", buf, 2u);
            }
          }

          else
          {
            [v265 setObject:firstObject forKeyedSubscript:v25];
            v55 = [v20 objectForKeyedSubscript:firstObject];
            [v264 setObject:v55 forKeyedSubscript:v25];

            null = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(null, OS_LOG_TYPE_INFO))
            {
              identifier2 = [(PCCluster *)v284 identifier];
              [identifier2 UUIDString];
              v58 = v57 = v20;
              *buf = 138413570;
              v343 = v58;
              v344 = 2112;
              v345 = v25;
              v346 = 2112;
              v347 = firstObject;
              v348 = 2048;
              v349 = v45;
              v350 = 2048;
              v351 = v272;
              v352 = 2048;
              v353 = *&v45 / v21 * 100.0;
              _os_log_impl(&dword_1CEE74000, null, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@ Phenotype was found: %@. Count=%lu/%lu (%.1f%%)", buf, 0x3Eu);

              v20 = v57;
              selfCopy4 = self;
            }
          }

LABEL_32:
        }

        [v277 setObject:v20 forKeyedSubscript:v25];
        v51 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          identifier3 = [(PCCluster *)v284 identifier];
          uUIDString = [identifier3 UUIDString];
          *buf = 138412803;
          v343 = uUIDString;
          v344 = 2112;
          v345 = v25;
          v346 = 2117;
          v347 = v20;
          _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@, subBundleIDsGroupedByFeatureValues=%{sensitive}@", buf, 0x20u);
        }

        v23 = v282 + 1;
        v24 = v20;
      }

      while (v282 + 1 != v280);
      v59 = [v270 countByEnumeratingWithState:&v326 objects:v356 count:16];
      v280 = v59;
    }

    while (v59);
  }

  v60 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    identifier4 = [(PCCluster *)v12 identifier];
    uUIDString2 = [identifier4 UUIDString];
    v63 = [(PCClusteringManager *)self phenotypeDescription:v265];
    allKeys = [v277 allKeys];
    *buf = 138412802;
    v343 = uUIDString2;
    v344 = 2112;
    v345 = v63;
    v346 = 2112;
    v347 = allKeys;
    _os_log_impl(&dword_1CEE74000, v60, OS_LOG_TYPE_INFO, "Clustering: id=%@, Pruning bundles with different values from phenotype=%@, allKeys=%@", buf, 0x20u);
  }

  v65 = objc_opt_new();
  v276 = [v264 copy];
  v318 = 0u;
  v319 = 0u;
  v320 = 0u;
  v321 = 0u;
  allKeys2 = [v264 allKeys];
  v66 = [allKeys2 countByEnumeratingWithState:&v318 objects:v341 count:16];
  v275 = v20;
  if (v66)
  {
    v67 = v66;
    v68 = 0;
    v288 = *v319;
    do
    {
      for (k = 0; k != v67; ++k)
      {
        if (*v319 != v288)
        {
          objc_enumerationMutation(allKeys2);
        }

        v70 = *(*(&v318 + 1) + 8 * k);
        v71 = [v276 objectForKeyedSubscript:v70];
        v72 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v343 = v70;
          v344 = 2112;
          v345 = v71;
          _os_log_impl(&dword_1CEE74000, v72, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, Current phenotype value: %@, subBundles: %@", buf, 0x16u);
        }

        if (v68)
        {
          v73 = [v65 mutableCopy];
          v74 = [MEMORY[0x1E695DFD8] setWithArray:v71];
          [v73 intersectSet:v74];

          clusterPhenotypeMinimumCountThreshold2 = [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold];
          v76 = [v73 count];
          if (v68 <= clusterPhenotypeMinimumCountThreshold2)
          {
            if (v76 < [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold])
            {
              v77 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                clusterPhenotypeMinimumCountThreshold3 = [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold];
                *buf = 138412546;
                v343 = v70;
                v344 = 2048;
                v345 = clusterPhenotypeMinimumCountThreshold3;
                _os_log_impl(&dword_1CEE74000, v77, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, The intersection between selected subbundles and subbundles with the current phenotype value %@ is less than threshold %lu. Dropping the current phenotype", buf, 0x16u);
              }

LABEL_62:
              [v264 removeObjectForKey:v70];
              [v265 removeObjectForKey:v70];
              goto LABEL_65;
            }
          }

          else if (v76 < [v65 count])
          {
            goto LABEL_62;
          }

          v73 = v73;

          ++v68;
          v65 = v73;
        }

        else
        {
          [MEMORY[0x1E695DFA8] setWithArray:v71];
          v73 = v65;
          v65 = v68 = 1;
        }

LABEL_65:

        v20 = v275;
      }

      v67 = [allKeys2 countByEnumeratingWithState:&v318 objects:v341 count:16];
    }

    while (v67);
  }

  v79 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  v80 = v284;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
  {
    identifier5 = [(PCCluster *)v284 identifier];
    uUIDString3 = [identifier5 UUIDString];
    v83 = [(PCClusteringManager *)self phenotypeDescription:v265];
    *buf = 138412546;
    v343 = uUIDString3;
    v344 = 2112;
    v345 = v83;
    _os_log_impl(&dword_1CEE74000, v79, OS_LOG_TYPE_INFO, "Clustering: id=%@, Remaining phenotype after pruning=%@", buf, 0x16u);
  }

  v84 = v267;
  v85 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
  {
    v86 = [v84 count];
    *buf = 134217984;
    v343 = v86;
    _os_log_impl(&dword_1CEE74000, v85, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, Using all original subBundles without pruning: %lu", buf, 0xCu);
  }

  v87 = [v84 count];
  if (v87 < [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold])
  {
    v88 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v89 = v260;
    v90 = v265;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v88, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, Not enough subBundles after pruning. Skip cluster bundle generation.", buf, 2u);
    }

    v91 = 0;
    goto LABEL_204;
  }

  v92 = [v84 valueForKeyPath:@"@min.startDate"];
  [(PCCluster *)v284 setStartDate:v92];

  v93 = [v84 valueForKeyPath:@"@max.endDate"];
  [(PCCluster *)v284 setEndDate:v93];

  v263 = objc_opt_new();
  v262 = objc_opt_new();
  v314 = 0u;
  v315 = 0u;
  v316 = 0u;
  v317 = 0u;
  v259 = v84;
  v94 = v84;
  v95 = [v94 countByEnumeratingWithState:&v314 objects:v340 count:16];
  v289 = v65;
  if (v95)
  {
    v96 = v95;
    v97 = *v315;
    do
    {
      for (m = 0; m != v96; ++m)
      {
        if (*v315 != v97)
        {
          objc_enumerationMutation(v94);
        }

        v99 = *(*(&v314 + 1) + 8 * m);
        bundleIdentifier = [v99 bundleIdentifier];

        if (bundleIdentifier)
        {
          bundleIdentifier2 = [v99 bundleIdentifier];
          uUIDString4 = [bundleIdentifier2 UUIDString];
          [v263 addObject:uUIDString4];
        }

        suggestionID = [v99 suggestionID];

        if (suggestionID)
        {
          suggestionID2 = [v99 suggestionID];
          uUIDString5 = [suggestionID2 UUIDString];
          [v262 addObject:uUIDString5];
        }
      }

      v96 = [v94 countByEnumeratingWithState:&v314 objects:v340 count:16];
    }

    while (v96);
  }

  v106 = [v263 copy];
  [(PCCluster *)v284 setSubBundleIDs:v106];

  v107 = [v262 copy];
  [(PCCluster *)v284 setSubSuggestionIDs:v107];

  v108 = objc_opt_new();
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v109 = v94;
  v110 = [v109 countByEnumeratingWithState:&v310 objects:v339 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v311;
    do
    {
      for (n = 0; n != v111; ++n)
      {
        if (*v311 != v112)
        {
          objc_enumerationMutation(v109);
        }

        events = [*(*(&v310 + 1) + 8 * n) events];
        [v108 addObjectsFromArray:events];
      }

      v111 = [v109 countByEnumeratingWithState:&v310 objects:v339 count:16];
    }

    while (v111);
  }

  v257 = v109;

  v258 = v108;
  allObjects = [v108 allObjects];
  v116 = [allObjects copy];
  [(PCCluster *)v284 setEvents:v116];

  v268 = objc_opt_new();
  v306 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  events2 = [(PCCluster *)v284 events];
  v118 = [events2 countByEnumeratingWithState:&v306 objects:v338 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v307;
    do
    {
      for (ii = 0; ii != v119; ++ii)
      {
        if (*v307 != v120)
        {
          objc_enumerationMutation(events2);
        }

        workoutEvent = [*(*(&v306 + 1) + 8 * ii) workoutEvent];
        hkObjectIdentifier = [workoutEvent hkObjectIdentifier];
        [v268 addObject:hkObjectIdentifier];
      }

      v119 = [events2 countByEnumeratingWithState:&v306 objects:v338 count:16];
    }

    while (v119);
  }

  [(PCCluster *)v284 setSubHKObjectIDs:v268];
  events3 = [(PCCluster *)v284 events];
  v125 = [(PCClusteringManager *)self _dominantSourceBundleIdentifierFromEvents:events3];
  [(PCCluster *)v284 setSourceBundleIdentifier:v125];

  v261 = objc_opt_new();
  v302 = 0u;
  v303 = 0u;
  v304 = 0u;
  v305 = 0u;
  v273 = v277;
  v269 = [v273 countByEnumeratingWithState:&v302 objects:v337 count:16];
  if (v269)
  {
    v266 = *v303;
    do
    {
      v126 = 0;
      do
      {
        if (*v303 != v266)
        {
          objc_enumerationMutation(v273);
        }

        v274 = v126;
        v127 = *(*(&v302 + 1) + 8 * v126);
        v128 = [v273 objectForKeyedSubscript:v127];
        v286 = objc_opt_new();
        v298 = 0u;
        v299 = 0u;
        v300 = 0u;
        v301 = 0u;
        v129 = v128;
        v130 = [v129 countByEnumeratingWithState:&v298 objects:v336 count:16];
        if (v130)
        {
          v131 = v130;
          v132 = *v299;
          do
          {
            for (jj = 0; jj != v131; ++jj)
            {
              if (*v299 != v132)
              {
                objc_enumerationMutation(v129);
              }

              v134 = *(*(&v298 + 1) + 8 * jj);
              v135 = [v129 objectForKeyedSubscript:v134];
              v136 = [v135 count];

              if (v136)
              {
                v137 = MEMORY[0x1E695DFA8];
                v138 = [v129 objectForKeyedSubscript:v134];
                v139 = [v137 setWithArray:v138];

                v140 = [v134 isEqualToString:@"placeName"];
                v141 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                v142 = os_log_type_enabled(v141, OS_LOG_TYPE_INFO);
                if (v140)
                {
                  if (v142)
                  {
                    identifier6 = [(PCCluster *)v80 identifier];
                    uUIDString6 = [identifier6 UUIDString];
                    *buf = 138413059;
                    v343 = uUIDString6;
                    v344 = 2112;
                    v345 = v127;
                    v346 = 2117;
                    v347 = v134;
                    v348 = 2112;
                    v349 = *&v139;
                    v145 = v141;
                    v146 = "Clustering: id=%@, featureKey=%@, value=%{sensitive}@, subBundles=%@";
                    goto LABEL_116;
                  }
                }

                else if (v142)
                {
                  identifier6 = [(PCCluster *)v80 identifier];
                  uUIDString6 = [identifier6 UUIDString];
                  *buf = 138413058;
                  v343 = uUIDString6;
                  v344 = 2112;
                  v345 = v127;
                  v346 = 2112;
                  v347 = v134;
                  v348 = 2112;
                  v349 = *&v139;
                  v145 = v141;
                  v146 = "Clustering: id=%@, featureKey=%@, value=%@, subBundles=%@";
LABEL_116:
                  _os_log_impl(&dword_1CEE74000, v145, OS_LOG_TYPE_INFO, v146, buf, 0x2Au);

                  v80 = v284;
                }

                [v139 intersectSet:v289];
                v147 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
                {
                  identifier7 = [(PCCluster *)v80 identifier];
                  uUIDString7 = [identifier7 UUIDString];
                  *buf = 138412802;
                  v343 = uUIDString7;
                  v344 = 2112;
                  v345 = v127;
                  v346 = 2112;
                  v347 = v139;
                  _os_log_impl(&dword_1CEE74000, v147, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@. Intersection between feature value subbundles and phenotype subbundles %@", buf, 0x20u);

                  v80 = v284;
                }

                if ([v139 count])
                {
                  v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v139, "count")}];
                  [v286 setObject:v150 forKeyedSubscript:v134];
                }

                continue;
              }
            }

            v131 = [v129 countByEnumeratingWithState:&v298 objects:v336 count:16];
          }

          while (v131);
        }

        v151 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
        {
          identifier8 = [(PCCluster *)v80 identifier];
          uUIDString8 = [identifier8 UUIDString];
          *buf = 138412803;
          v343 = uUIDString8;
          v344 = 2112;
          v345 = v127;
          v346 = 2117;
          v347 = v286;
          _os_log_impl(&dword_1CEE74000, v151, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@, histogram=%{sensitive}@", buf, 0x20u);
        }

        if ([v286 count])
        {
          [v261 setObject:v286 forKeyedSubscript:v127];
        }

        v126 = v274 + 1;
      }

      while (v274 + 1 != v269);
      v269 = [v273 countByEnumeratingWithState:&v302 objects:v337 count:16];
    }

    while (v269);
  }

  v283 = objc_opt_new();
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v297 = 0u;
  v287 = v278;
  v154 = [v287 countByEnumeratingWithState:&v294 objects:v335 count:16];
  if (!v154)
  {
    goto LABEL_142;
  }

  v155 = v154;
  v156 = *v295;
  do
  {
    for (kk = 0; kk != v155; ++kk)
    {
      if (*v295 != v156)
      {
        objc_enumerationMutation(v287);
      }

      v158 = *(*(&v294 + 1) + 8 * kk);
      v159 = [v158 objectForKeyedSubscript:@"weekOfYear"];
      if (v159)
      {
        stringValue = v159;
        v161 = [v158 objectForKeyedSubscript:@"suggestionID"];
        if (v161)
        {
          v162 = v161;
          v163 = [v158 objectForKeyedSubscript:@"suggestionID"];
          v164 = [v289 containsObject:v163];

          if (!v164)
          {
            continue;
          }

          v165 = [v158 objectForKeyedSubscript:@"weekOfYear"];
          stringValue = [v165 stringValue];

          v166 = MEMORY[0x1E696AD98];
          v167 = [v283 objectForKeyedSubscript:stringValue];
          v168 = [v166 numberWithInt:{objc_msgSend(v167, "intValue") + 1}];
          [v283 setObject:v168 forKeyedSubscript:stringValue];
        }
      }
    }

    v155 = [v287 countByEnumeratingWithState:&v294 objects:v335 count:16];
  }

  while (v155);
LABEL_142:

  v169 = v265;
  v170 = [v265 objectForKeyedSubscript:@"activityType"];

  if (v170)
  {
    v171 = [v265 objectForKeyedSubscript:@"activityType"];
    [(PCCluster *)v284 setActivityType:v171];
  }

  v172 = [v265 objectForKeyedSubscript:@"dayOfWeek"];
  if (v172 || ([v265 objectForKeyedSubscript:@"timeTag"], (v172 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_147;
  }

  v200 = [v265 objectForKeyedSubscript:@"isWeekend"];

  if (v200)
  {
LABEL_147:
    v173 = [v265 objectForKeyedSubscript:@"timeTag"];
    intValue = [v173 intValue];

    if (intValue)
    {
      v175 = [v265 objectForKeyedSubscript:@"timeTag"];
      unsignedLongValue = [v175 unsignedLongValue];
    }

    else
    {
      v193 = [v265 objectForKeyedSubscript:@"dayOfWeek"];

      if (v193)
      {
        v194 = [v265 objectForKeyedSubscript:@"dayOfWeek"];
        v195 = [v194 isEqualToString:@"sunday"];

        if (v195)
        {
          unsignedLongValue = 102;
        }

        else
        {
          v204 = [v265 objectForKeyedSubscript:@"dayOfWeek"];
          v205 = [v204 isEqualToString:@"monday"];

          if (v205)
          {
            unsignedLongValue = 103;
          }

          else
          {
            v246 = [v265 objectForKeyedSubscript:@"dayOfWeek"];
            v247 = [v246 isEqualToString:@"tuesday"];

            if (v247)
            {
              unsignedLongValue = 104;
            }

            else
            {
              v249 = [v265 objectForKeyedSubscript:@"dayOfWeek"];
              v250 = [v249 isEqualToString:@"wednesday"];

              if (v250)
              {
                unsignedLongValue = 105;
              }

              else
              {
                v251 = [v265 objectForKeyedSubscript:@"dayOfWeek"];
                v252 = [v251 isEqualToString:@"thursday"];

                if (v252)
                {
                  unsignedLongValue = 106;
                }

                else
                {
                  v253 = [v265 objectForKeyedSubscript:@"dayOfWeek"];
                  v254 = [v253 isEqualToString:@"friday"];

                  if (v254)
                  {
                    unsignedLongValue = 107;
                  }

                  else
                  {
                    v255 = [v265 objectForKeyedSubscript:@"dayOfWeek"];
                    v256 = [v255 isEqualToString:@"saturday"];

                    if (v256)
                    {
                      unsignedLongValue = 108;
                    }

                    else
                    {
                      unsignedLongValue = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        unsignedLongValue = [v265 objectForKeyedSubscript:@"isWeekend"];

        if (unsignedLongValue)
        {
          v202 = [v265 objectForKeyedSubscript:@"isWeekend"];
          bOOLValue = [v202 BOOLValue];

          if (bOOLValue)
          {
            unsignedLongValue = 10001;
          }

          else
          {
            unsignedLongValue = 10000;
          }
        }
      }
    }

    v177 = [PCTime timeStringFromTimeTag:unsignedLongValue];
    if (v177)
    {
      [v265 setObject:v177 forKeyedSubscript:@"timeString"];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v179 = [PCTime alloc];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceReferenceDate];
      v182 = v181;
      timeZone = [currentCalendar timeZone];
      name = [timeZone name];
      v185 = [(PCTime *)v179 initWithTimestamp:v177 timeString:name timeZone:unsignedLongValue timeTag:v182];

      [(PCCluster *)v284 setTime:v185];
      v169 = v265;
    }
  }

  v186 = [v169 objectForKeyedSubscript:@"placeName"];
  if (v186 || ([v169 objectForKeyedSubscript:@"combinedPlaceType"], (v186 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_155;
  }

  v201 = [v169 objectForKeyedSubscript:@"enclosingAreaName"];

  if (v201)
  {
LABEL_155:
    v187 = [v169 objectForKeyedSubscript:@"placeName"];
    [(PCCluster *)v284 setPlaceName:v187];

    v188 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];

    if (!v188)
    {
      goto LABEL_178;
    }

    v189 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
    v190 = [v189 isEqualToString:@"Home"];

    if (v190)
    {
      v191 = v284;
      v192 = 1;
    }

    else
    {
      v196 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
      v197 = [v196 isEqualToString:@"Work"];

      if (v197)
      {
        v191 = v284;
        v192 = 2;
      }

      else
      {
        v198 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
        v199 = [v198 isEqualToString:@"School"];

        if (v199)
        {
          v191 = v284;
          v192 = 3;
        }

        else
        {
          v206 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
          v207 = [v206 isEqualToString:@"Gym"];

          v191 = v284;
          if (!v207)
          {
            [(PCCluster *)v284 setPlaceUserType:0];
            v248 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
            [(PCCluster *)v284 setPoiCategory:v248];

            goto LABEL_178;
          }

          v192 = 4;
        }
      }
    }

    [(PCCluster *)v191 setPlaceUserType:v192];
  }

LABEL_178:
  v208 = objc_alloc_init(PCPLocation);
  v209 = [v169 objectForKeyedSubscript:@"placeLatitude"];
  [v209 doubleValue];
  [(PCPLocation *)v208 setLocationLatitudeDeg:?];

  v210 = [v169 objectForKeyedSubscript:@"placeLongitude"];
  [v210 doubleValue];
  [(PCPLocation *)v208 setLocationLongitudeDeg:?];

  [(PCCluster *)v284 setLocation:v208];
  v211 = [PCClusterMetadata alloc];
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  v213 = [(PCClusterMetadata *)v211 initWithIdentifier:uUID2 phenoType:v169];

  v214 = objc_opt_new();
  v290 = 0u;
  v291 = 0u;
  v292 = 0u;
  v293 = 0u;
  v215 = v257;
  v216 = [v215 countByEnumeratingWithState:&v290 objects:v334 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v291;
    do
    {
      for (mm = 0; mm != v217; ++mm)
      {
        if (*v291 != v218)
        {
          objc_enumerationMutation(v215);
        }

        v220 = *(*(&v290 + 1) + 8 * mm);
        suggestionID3 = [v220 suggestionID];

        if (suggestionID3)
        {
          suggestionID4 = [v220 suggestionID];
          uUIDString9 = [suggestionID4 UUIDString];
          [v214 addObject:uUIDString9];
        }
      }

      v217 = [v215 countByEnumeratingWithState:&v290 objects:v334 count:16];
    }

    while (v217);
  }

  [(PCClusterMetadata *)v213 setSubSuggestionIDsBeforePruning:v214];
  v224 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
  {
    v225 = [v214 description];
    *buf = 138412290;
    v343 = v225;
    _os_log_impl(&dword_1CEE74000, v224, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, SubSuggestionIDs before pruning %@", buf, 0xCu);
  }

  v226 = [v261 objectForKeyedSubscript:@"activityType"];

  v90 = v265;
  v20 = v275;
  if (v226)
  {
    v227 = [v261 objectForKeyedSubscript:@"activityType"];
    [(PCClusterMetadata *)v213 setActivityTypeHistogram:v227];
  }

  v228 = [v261 objectForKeyedSubscript:@"timeTag"];

  if (v228)
  {
    v229 = [v261 objectForKeyedSubscript:@"timeTag"];
    [(PCClusterMetadata *)v213 setTimeTagHistogram:v229];
  }

  v230 = [v261 objectForKeyedSubscript:@"dayOfWeek"];

  v80 = v284;
  if (v230)
  {
    v231 = [v261 objectForKeyedSubscript:@"dayOfWeek"];
    [(PCClusterMetadata *)v213 setDayOfWeekHistogram:v231];
  }

  v232 = [v261 objectForKeyedSubscript:@"placeName"];

  if (v232)
  {
    v233 = [v261 objectForKeyedSubscript:@"placeName"];
    [(PCClusterMetadata *)v213 setPlaceNameHistogram:v233];
  }

  v234 = [v261 objectForKeyedSubscript:@"combinedPlaceType"];

  if (v234)
  {
    v235 = [v261 objectForKeyedSubscript:@"combinedPlaceType"];
    [(PCClusterMetadata *)v213 setCombinedPlaceTypeHistogram:v235];
  }

  [(PCCluster *)v284 setClusterMetadata:v213];
  if ([obj count] >= 2)
  {
    [PCEmbeddingDistanceCalculator calculateCircularStandardDeviationsForCluster:v284 fromEmbeddings:obj];
    v236 = MEMORY[0x1E696AD98];
    [(PCCluster *)v284 timeOfDayCircularStd];
    v237 = [v236 numberWithDouble:?];
    [v265 setObject:v237 forKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];

    v238 = MEMORY[0x1E696AD98];
    [(PCCluster *)v284 latLongCircularStd];
    v239 = [v238 numberWithDouble:?];
    [v265 setObject:v239 forKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];

    v240 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v240, OS_LOG_TYPE_INFO))
    {
      identifier9 = [(PCCluster *)v284 identifier];
      [(PCCluster *)v284 timeOfDayCircularStd];
      v243 = v242;
      [(PCCluster *)v284 latLongCircularStd];
      *buf = 138412802;
      v343 = identifier9;
      v344 = 2048;
      v345 = v243;
      v346 = 2048;
      v347 = v244;
      _os_log_impl(&dword_1CEE74000, v240, OS_LOG_TYPE_INFO, "Calculated circular std for cluster %@: timeStd=%.6f, locationStd=%.6f", buf, 0x20u);
    }
  }

  v91 = v284;

  v89 = v260;
  v65 = v289;
  v84 = v259;
  v88 = v263;
LABEL_204:

  return v91;
}

uint64_t __70__PCClusteringManager__getClusterFrom_withEmbeddings_andCreationDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_convertContextvalueToString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (!stringCopy)
  {
    goto LABEL_3;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v8 = [stringCopy isEqual:null];

  if (v8)
  {
    goto LABEL_3;
  }

  if (@"timeTag" != keyCopy)
  {
    if (([(__CFString *)keyCopy isEqualToString:@"activityType"]& 1) == 0)
    {
      [(__CFString *)keyCopy isEqualToString:@"combinedPlaceType"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = stringCopy;
    }

    else
    {
      stringValue = [stringCopy stringValue];
    }

    goto LABEL_4;
  }

  v10 = +[PCTime timeStringFromTimeTag:](PCTime, "timeStringFromTimeTag:", [stringCopy unsignedLongValue]);
  if (!v10)
  {
LABEL_3:
    stringValue = @"unavailable";
LABEL_4:
    v10 = stringValue;
  }

  return v10;
}

- (id)_dominantSourceBundleIdentifierFromEvents:(id)events
{
  v36 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        workoutEvent = [*(*(&v30 + 1) + 8 * i) workoutEvent];
        sourceBundleIdentifier = [workoutEvent sourceBundleIdentifier];

        if (sourceBundleIdentifier)
        {
          v12 = [dictionary objectForKeyedSubscript:sourceBundleIdentifier];
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
          [dictionary setObject:v13 forKeyedSubscript:sourceBundleIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = dictionary;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = *v27;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [v14 objectForKeyedSubscript:{v21, v26}];
        intValue = [v22 intValue];

        if (intValue > v17)
        {
          v24 = v21;

          v17 = intValue;
          v18 = v24;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end