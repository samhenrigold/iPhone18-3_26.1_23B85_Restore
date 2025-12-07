@interface PCWorkoutPrediction
- (BOOL)computeWithLocationHistory:(id)history workoutHistory:(id)workoutHistory LOIs:(id)is atTime:(double)time error:(id *)error;
- (PCWorkoutPrediction)init;
- (PCWorkoutPrediction)initWithCoder:(id)coder;
- (id)_annotateEventBundlesWithStartDate:(id)date endDate:(id)endDate allEvents:(id)events;
- (id)_bundleEvents:(id)events;
- (id)_bundleEvents:(id)events startDate:(id)date endDate:(id)endDate;
- (id)_createEmbeddingFromVisitEvent:(id)event atTime:(double)time;
- (id)_createEventFromVisit:(id)visit loiMap:(id)map;
- (id)_createEventFromWorkout:(id)workout;
- (id)_decodeClustersFromProtobuf;
- (id)_decodeEmbeddingsFromProtobuf;
- (id)_predictWorkoutsForVisit:(id)visit atTime:(double)time;
- (id)fetchClusters;
- (id)fetchEmbeddings;
- (id)fetchPCPEmbeddings;
- (void)_generateClustersFromBundles:(id)bundles;
- (void)_updateProtobufCluster:(id)cluster withNewFeatures:(id)features;
- (void)addEmbedding:(id)embedding;
- (void)encodeWithCoder:(id)coder;
- (void)predictWithLocationHistory:(id)history workoutHistory:(id)workoutHistory LOIs:(id)is atTime:(double)time workoutPredictions:(id *)predictions;
@end

@implementation PCWorkoutPrediction

- (PCWorkoutPrediction)init
{
  v12.receiver = self;
  v12.super_class = PCWorkoutPrediction;
  v2 = [(PCWorkoutPrediction *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(PCClusteringManager);
    clusteringManager = v2->_clusteringManager;
    v2->_clusteringManager = v3;

    v5 = objc_alloc_init(PCWorkoutPredictionAlgorithm);
    predictionAlgorithm = v2->_predictionAlgorithm;
    v2->_predictionAlgorithm = v5;

    if (!v2->_embeddings)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      embeddings = v2->_embeddings;
      v2->_embeddings = v7;
    }

    if (!v2->_clusters)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      clusters = v2->_clusters;
      v2->_clusters = v9;
    }
  }

  return v2;
}

- (PCWorkoutPrediction)initWithCoder:(id)coder
{
  v77 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(PCWorkoutPrediction *)self init];
  v6 = v5;
  if (v5)
  {
    v60 = MEMORY[0x1E695DFD8];
    v62 = v5;
    v58 = objc_opt_class();
    v55 = objc_opt_class();
    v53 = objc_opt_class();
    v51 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v60 setWithObjects:{v58, v55, v53, v51, v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    v61 = coderCopy;
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"workoutEmbeddings"];

    v59 = v16;
    if (v16)
    {
      v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v68;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v68 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v67 + 1) + 8 * i);
            v24 = objc_alloc_init(PCPClusterEmbedding);
            v25 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v23];
            if ([(PCPClusterEmbedding *)v24 readFrom:v25])
            {
              [v17 addObject:v24];
            }

            else
            {
              v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Failed to decode an embedding", buf, 2u);
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v67 objects:v76 count:16];
        }

        while (v20);
      }

      if ([v17 count])
      {
        objc_storeStrong(&v62->_embeddings, v17);
      }
    }

    v56 = MEMORY[0x1E695DFD8];
    v54 = objc_opt_class();
    v52 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v56 setWithObjects:{v54, v52, v27, v28, v29, v30, v31, v32, v33, v34, objc_opt_class(), 0}];
    coderCopy = v61;
    v36 = [v61 decodeObjectOfClasses:v35 forKey:@"workoutClusters"];

    if (v36)
    {
      v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v36, "count")}];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v57 = v36;
      v38 = v36;
      v39 = [v38 countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v64;
        do
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v64 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v63 + 1) + 8 * j);
            v44 = objc_alloc_init(PCPWorkoutCluster);
            v45 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v43];
            if ([(PCPWorkoutCluster *)v44 readFrom:v45])
            {
              [v37 addObject:v44];
            }

            else
            {
              v46 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1CEE74000, v46, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Failed to decode a cluster", buf, 2u);
              }
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v63 objects:v75 count:16];
        }

        while (v40);
      }

      if ([v37 count])
      {
        objc_storeStrong(&v62->_clusters, v37);
      }

      coderCopy = v61;
      v36 = v57;
    }

    v47 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v6 = v62;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = [(NSMutableArray *)v62->_embeddings count];
      v49 = [(NSMutableArray *)v62->_clusters count];
      *buf = 134349312;
      v72 = v48;
      v73 = 2050;
      v74 = v49;
      _os_log_impl(&dword_1CEE74000, v47, OS_LOG_TYPE_INFO, "WorkoutPrediction: Total %{public}lu embeddings and %{public}lu clusters decoded", buf, 0x16u);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v42 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  embeddings = self->_embeddings;
  if (embeddings && [(NSMutableArray *)embeddings count])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_embeddings, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = self->_embeddings;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v32 + 1) + 8 * v11);
          v13 = objc_alloc_init(MEMORY[0x1E69C65C0]);
          [v12 writeTo:v13];
          data = [v13 data];
          [v6 addObject:data];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v9);
    }

    [coderCopy encodeObject:v6 forKey:@"workoutEmbeddings"];
  }

  clusters = self->_clusters;
  if (clusters && [(NSMutableArray *)clusters count])
  {
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_clusters, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = self->_clusters;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        v21 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * v21);
          v23 = objc_alloc_init(MEMORY[0x1E69C65C0]);
          [v22 writeTo:{v23, v28}];
          data2 = [v23 data];
          [v16 addObject:data2];

          ++v21;
        }

        while (v19 != v21);
        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v19);
    }

    [coderCopy encodeObject:v16 forKey:@"workoutClusters"];
  }

  v25 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [(NSMutableArray *)self->_embeddings count];
    v27 = [(NSMutableArray *)self->_clusters count];
    *buf = 134349312;
    v37 = v26;
    v38 = 2050;
    v39 = v27;
    _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_INFO, "WorkoutPrediction: Total %{public}lu embeddings and %{public}lu clusters coded", buf, 0x16u);
  }
}

- (BOOL)computeWithLocationHistory:(id)history workoutHistory:(id)workoutHistory LOIs:(id)is atTime:(double)time error:(id *)error
{
  v113 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  workoutHistoryCopy = workoutHistory;
  isCopy = is;
  v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349568;
    v108 = [historyCopy count];
    v109 = 2050;
    v110 = [isCopy count];
    v111 = 2050;
    v112 = [workoutHistoryCopy count];
    _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Compute Workout Clusters BEGIN. (visits=%{public}lu, loi=%{public}lu, workouts=%{public}lu)", buf, 0x20u);
  }

  v15 = [workoutHistoryCopy count];
  v16 = v15;
  if (v15)
  {
    selfCopy = self;
    v73 = v15;
    v76 = historyCopy;
    v75 = workoutHistoryCopy;
    v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(workoutHistoryCopy, "count") + objc_msgSend(historyCopy, "count")}];
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(isCopy, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v74 = isCopy;
    v18 = isCopy;
    v19 = [v18 countByEnumeratingWithState:&v96 objects:v104 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v97;
      v22 = PCLogCategoryWorkoutPredictor;
      v23 = 0x1E83B7000uLL;
      do
      {
        v24 = 0;
        v78 = v20;
        do
        {
          if (*v97 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v96 + 1) + 8 * v24);
          if ([v25 hasLoiIdentifier])
          {
            v26 = *(v23 + 1944);
            loiIdentifier = [v25 loiIdentifier];
            v28 = [v26 uuidStringFromData:loiIdentifier];

            v29 = [v17 objectForKeyedSubscript:v28];

            if (v29)
            {
              v30 = _plc_log_get_normal_handle(v22);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                [v17 objectForKeyedSubscript:v28];
                v31 = v21;
                v32 = v23;
                v33 = v18;
                v34 = v17;
                v36 = v35 = v22;
                *buf = 138412803;
                v108 = v28;
                v109 = 2117;
                v110 = v36;
                v111 = 2117;
                v112 = v25;
                _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_ERROR, "WorkoutPrediction: Found more than one LOI for UUID=%@. First=%{sensitive}@, Second=%{sensitive}@", buf, 0x20u);

                v22 = v35;
                v17 = v34;
                v18 = v33;
                v23 = v32;
                v21 = v31;
                v20 = v78;
              }
            }

            [v17 setObject:v25 forKeyedSubscript:v28];
          }

          else
          {
            v28 = _plc_log_get_normal_handle(v22);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v108 = v25;
              _os_log_impl(&dword_1CEE74000, v28, OS_LOG_TYPE_ERROR, "WorkoutPrediction: #warning, loi has no identifier,%@", buf, 0xCu);
            }
          }

          ++v24;
        }

        while (v20 != v24);
        v20 = [v18 countByEnumeratingWithState:&v96 objects:v104 count:16];
      }

      while (v20);
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v37 = v76;
    v38 = [v37 countByEnumeratingWithState:&v92 objects:v103 count:16];
    v39 = v72;
    if (v38)
    {
      v40 = v38;
      v41 = *v93;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v93 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v92 + 1) + 8 * i);
          if ([v43 hasExitTimeCFAbsolute])
          {
            v44 = [(PCWorkoutPrediction *)selfCopy _createEventFromVisit:v43 loiMap:v17];
            [v39 addObject:v44];
          }
        }

        v40 = [v37 countByEnumeratingWithState:&v92 objects:v103 count:16];
      }

      while (v40);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v45 = v75;
    v46 = [v45 countByEnumeratingWithState:&v88 objects:v102 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v89;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v89 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = [(PCWorkoutPrediction *)selfCopy _createEventFromWorkout:*(*(&v88 + 1) + 8 * j), v72];
          if (v50)
          {
            [v39 addObject:v50];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v88 objects:v102 count:16];
      }

      while (v47);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v39;
    v51 = [obj countByEnumeratingWithState:&v84 objects:v101 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v85;
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v85 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v84 + 1) + 8 * k);
          v56 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            eventIdentifier = [v55 eventIdentifier];
            v58 = [v55 description];
            *buf = 138412546;
            v108 = eventIdentifier;
            v109 = 2112;
            v110 = v58;
            _os_log_impl(&dword_1CEE74000, v56, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: Event id, %@, description, %@", buf, 0x16u);
          }
        }

        v52 = [obj countByEnumeratingWithState:&v84 objects:v101 count:16];
      }

      while (v52);
    }

    v59 = [(PCWorkoutPrediction *)selfCopy _bundleEvents:obj];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v60 = [v59 countByEnumeratingWithState:&v80 objects:v100 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v81;
      do
      {
        for (m = 0; m != v61; ++m)
        {
          if (*v81 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v80 + 1) + 8 * m);
          v65 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            bundleIdentifier = [v64 bundleIdentifier];
            sensitiveDescription = [v64 sensitiveDescription];
            *buf = 138412547;
            v108 = bundleIdentifier;
            v109 = 2117;
            v110 = sensitiveDescription;
            _os_log_impl(&dword_1CEE74000, v65, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: eventBundle.id=%@, description=%{sensitive}@", buf, 0x16u);
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v80 objects:v100 count:16];
      }

      while (v61);
    }

    [(PCWorkoutPrediction *)selfCopy _generateClustersFromBundles:v59, v72];
    v68 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v68, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Compute Workout Clusters END", buf, 2u);
    }

    workoutHistoryCopy = v75;
    historyCopy = v76;
    v16 = v73;
    isCopy = v74;
    goto LABEL_62;
  }

  v69 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v69, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: No workouts found, do nothing", buf, 2u);
  }

  if (error)
  {
    v70 = objc_alloc(MEMORY[0x1E696ABC0]);
    v105 = *MEMORY[0x1E696A578];
    v106 = @"No workouts available. Unable to create clusters";
    obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    *error = [v70 initWithDomain:@"PCErrorDomain" code:4 userInfo:?];
LABEL_62:
  }

  return v16 != 0;
}

- (id)_createEventFromVisit:(id)visit loiMap:(id)map
{
  v83 = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  mapCopy = map;
  if ([visitCopy hasLoiIdentifier])
  {
    loiIdentifier = [visitCopy loiIdentifier];
    v7 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier];
  }

  else
  {
    v7 = 0;
  }

  if ([visitCopy hasIdentifier])
  {
    identifier = [visitCopy identifier];
    v9 = [PCAlgorithmsCommonUtils uuidStringFromData:identifier];

    if (v7)
    {
LABEL_6:
      v10 = [mapCopy objectForKeyedSubscript:v7];
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:
  v11 = MEMORY[0x1E695DF00];
  [visitCopy entryTimeCFAbsolute];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  if ([visitCopy hasExitTimeCFAbsolute])
  {
    v13 = MEMORY[0x1E695DF00];
    [visitCopy exitTimeCFAbsolute];
    v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v15 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v66 = v12;
      _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_INFO, "WorkoutPrediction: Visit entry with only startdate, %@,", buf, 0xCu);
    }

    v14 = 0;
  }

  v16 = [PCEvent alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  date = [MEMORY[0x1E695DF00] date];
  v63 = v12;
  v19 = [(PCEvent *)v16 initWithEventIdentifier:uUID startDate:v12 endDate:v14 creationDate:date provider:2 category:1];

  [(PCEvent *)v19 setIdentifierFromProvider:v9];
  location = [visitCopy location];

  if (location)
  {
    location2 = [visitCopy location];
    routineEvent = [(PCEvent *)v19 routineEvent];
    [routineEvent setLocation:location2];
  }

  if (v10)
  {
    placeMapItem = [v10 placeMapItem];
    placeName = [placeMapItem placeName];
    routineEvent2 = [(PCEvent *)v19 routineEvent];
    [routineEvent2 setPlaceName:placeName];

    placeType = [v10 placeType];
    routineEvent3 = [(PCEvent *)v19 routineEvent];
    [routineEvent3 setPlaceUserType:placeType];

    placeMapItem2 = [v10 placeMapItem];
    placeType2 = [placeMapItem2 placeType];
    routineEvent4 = [(PCEvent *)v19 routineEvent];
    [routineEvent4 setMapItemPlaceType:placeType2];

    placeMapItem3 = [v10 placeMapItem];
    mapItemMUID = [placeMapItem3 mapItemMUID];
    routineEvent5 = [(PCEvent *)v19 routineEvent];
    [routineEvent5 setMapItemID:mapItemMUID];

    placeMapItem4 = [v10 placeMapItem];
    category = [placeMapItem4 category];
    routineEvent6 = [(PCEvent *)v19 routineEvent];
    [routineEvent6 setPoiCategory:category];

    placeMapItem5 = [v10 placeMapItem];
    placeSource = [placeMapItem5 placeSource];
    routineEvent7 = [(PCEvent *)v19 routineEvent];
    [routineEvent7 setPlaceSource:placeSource];
  }

  else
  {
    placeMapItem5 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(placeMapItem5, OS_LOG_TYPE_ERROR))
    {
      startDate = [(PCEvent *)v19 startDate];
      endDate = [(PCEvent *)v19 endDate];
      *buf = 138544130;
      v66 = v9;
      v67 = 2114;
      v68 = v7;
      v69 = 2114;
      v70 = startDate;
      v71 = 2114;
      v72 = endDate;
      _os_log_impl(&dword_1CEE74000, placeMapItem5, OS_LOG_TYPE_ERROR, "WorkoutPrediction: No matching Visit LOI found - visitID, %{public}@, loiID, %{public}@, startDate, %{public}@, endDate, %{public}@", buf, 0x2Au);
    }
  }

  v42 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    eventIdentifier = [(PCEvent *)v19 eventIdentifier];
    placeMapItem6 = [v10 placeMapItem];
    mapItemMUID2 = [placeMapItem6 mapItemMUID];
    placeMapItem7 = [v10 placeMapItem];
    placeType3 = [placeMapItem7 placeType];
    v62 = visitCopy;
    v44 = @"PlaceType_Unknown";
    switch(placeType3)
    {
      case 0:
        break;
      case 1:
        v44 = @"AreaOfInterest";
        break;
      case 2:
        v44 = @"PointOfInterest";
        break;
      case 3:
        v44 = @"Address";
        break;
      case 4:
        v44 = @"Country";
        break;
      case 5:
        v44 = @"AdministrativeArea";
        break;
      case 6:
        v44 = @"SubAdministrativeArea";
        break;
      case 7:
        v44 = @"Locality";
        break;
      case 8:
        v44 = @"TimeZone";
        break;
      case 9:
        v44 = @"SubLocality";
        break;
      case 10:
        v44 = @"Ocean";
        break;
      case 11:
        v44 = @"InlandWater";
        break;
      case 12:
        v44 = @"Island";
        break;
      case 13:
        v44 = @"Street";
        break;
      case 14:
        v44 = @"Admin";
        break;
      case 15:
        v44 = @"Postal";
        break;
      case 16:
        v44 = @"Intersection";
        break;
      case 17:
        v44 = @"Building";
        break;
      case 18:
        v44 = @"Continent";
        break;
      case 19:
        v44 = @"Region";
        break;
      case 20:
        v44 = @"Division";
        break;
      default:
        if (placeType3 == 1000)
        {
          v44 = @"Undefined";
        }

        else
        {
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", placeType3];
        }

        break;
    }

    v55 = v44;
    placeType4 = [v10 placeType];
    log = v42;
    v61 = v14;
    if (placeType4 >= 5)
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", placeType4];
    }

    else
    {
      v54 = off_1E83B8278[placeType4];
    }

    placeMapItem8 = [v10 placeMapItem];
    placeName2 = [placeMapItem8 placeName];
    placeMapItem9 = [v10 placeMapItem];
    category2 = [placeMapItem9 category];
    placeMapItem10 = [v10 placeMapItem];
    placeSource2 = [placeMapItem10 placeSource];
    identifierFromProvider = [(PCEvent *)v19 identifierFromProvider];
    *buf = 138414339;
    v66 = eventIdentifier;
    v67 = 2112;
    v68 = v7;
    v69 = 2048;
    v70 = mapItemMUID2;
    v71 = 2112;
    v72 = v55;
    v73 = 2112;
    v74 = v54;
    v75 = 2117;
    v76 = placeName2;
    v77 = 2112;
    v78 = category2;
    v79 = 2048;
    v80 = placeSource2;
    v81 = 2112;
    v82 = identifierFromProvider;
    _os_log_impl(&dword_1CEE74000, log, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: Created Visit, eventID, %@, loi, %@, mapItemID, %llu, mapItemPlaceType, %@, userType, %@, name, %{sensitive}@, category, %@, source, %llu, identifierFromProvider, %@", buf, 0x5Cu);

    v42 = log;
    visitCopy = v62;
    v14 = v61;
  }

  return v19;
}

- (id)_createEventFromWorkout:(id)workout
{
  v60 = *MEMORY[0x1E69E9840];
  workoutCopy = workout;
  v4 = [PCEvent alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v6 = MEMORY[0x1E695DF00];
  [workoutCopy startTimeCFAbsolute];
  v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = MEMORY[0x1E695DF00];
  [workoutCopy endTimeCFAbsolute];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  date = [MEMORY[0x1E695DF00] date];
  v11 = [(PCEvent *)v4 initWithEventIdentifier:uUID startDate:v7 endDate:v9 creationDate:date provider:1 category:2];

  workoutActivityType = [workoutCopy workoutActivityType];
  v13 = @"AmericanFootball";
  switch(workoutActivityType)
  {
    case 1:
      break;
    case 2:
      v13 = @"Archery";
      break;
    case 3:
      v13 = @"AustralianFootball";
      break;
    case 4:
      v13 = @"Badminton";
      break;
    case 5:
      v13 = @"Baseball";
      break;
    case 6:
      v13 = @"Basketball";
      break;
    case 7:
      v13 = @"Bowling";
      break;
    case 8:
      v13 = @"Boxing";
      break;
    case 9:
      v13 = @"Climbing";
      break;
    case 10:
      v13 = @"Cricket";
      break;
    case 11:
      v13 = @"CrossTraining";
      break;
    case 12:
      v13 = @"Curling";
      break;
    case 13:
      v13 = @"Cycling";
      break;
    case 14:
      v13 = @"Dance";
      break;
    case 15:
      v13 = @"DanceInspiredTraining";
      break;
    case 16:
      v13 = @"Elliptical";
      break;
    case 17:
      v13 = @"EquestrianSports";
      break;
    case 18:
      v13 = @"Fencing";
      break;
    case 19:
      v13 = @"Fishing";
      break;
    case 20:
      v13 = @"FunctionalStrengthTraining";
      break;
    case 21:
      v13 = @"Golf";
      break;
    case 22:
      v13 = @"Gymnastics";
      break;
    case 23:
      v13 = @"Handball";
      break;
    case 24:
      v13 = @"Hiking";
      break;
    case 25:
      v13 = @"Hockey";
      break;
    case 26:
      v13 = @"Hunting";
      break;
    case 27:
      v13 = @"Lacrosse";
      break;
    case 28:
      v13 = @"MartialArts";
      break;
    case 29:
      v13 = @"MindAndBody";
      break;
    case 30:
      v13 = @"MixedMetabolicCardioTraining";
      break;
    case 31:
      v13 = @"PaddleSports";
      break;
    case 32:
      v13 = @"Play";
      break;
    case 33:
      v13 = @"PreparationAndRecovery";
      break;
    case 34:
      v13 = @"Racquetball";
      break;
    case 35:
      v13 = @"Rowing";
      break;
    case 36:
      v13 = @"Rugby";
      break;
    case 37:
      v13 = @"Running";
      break;
    case 38:
      v13 = @"Sailing";
      break;
    case 39:
      v13 = @"SkatingSports";
      break;
    case 40:
      v13 = @"SnowSports";
      break;
    case 41:
      v13 = @"Soccer";
      break;
    case 42:
      v13 = @"Softball";
      break;
    case 43:
      v13 = @"Squash";
      break;
    case 44:
      v13 = @"StairClimbing";
      break;
    case 45:
      v13 = @"SurfingSports";
      break;
    case 46:
      v13 = @"Swimming";
      break;
    case 47:
      v13 = @"TableTennis";
      break;
    case 48:
      v13 = @"Tennis";
      break;
    case 49:
      v13 = @"TrackAndField";
      break;
    case 50:
      v13 = @"TraditionalStrengthTraining";
      break;
    case 51:
      v13 = @"Volleyball";
      break;
    case 52:
      v13 = @"Walking";
      break;
    case 53:
      v13 = @"WaterFitness";
      break;
    case 54:
      v13 = @"WaterPolo";
      break;
    case 55:
      v13 = @"WaterSports";
      break;
    case 56:
      v13 = @"Wrestling";
      break;
    case 57:
      v13 = @"Yoga";
      break;
    case 58:
      v13 = @"Barre";
      break;
    case 59:
      v13 = @"CoreTraining";
      break;
    case 60:
      v13 = @"CrossCountrySkiing";
      break;
    case 61:
      v13 = @"DownhillSkiing";
      break;
    case 62:
      v13 = @"Flexibility";
      break;
    case 63:
      v13 = @"HighIntensityIntervalTraining";
      break;
    case 64:
      v13 = @"JumpRope";
      break;
    case 65:
      v13 = @"Kickboxing";
      break;
    case 66:
      v13 = @"Pilates";
      break;
    case 67:
      v13 = @"Snowboarding";
      break;
    case 68:
      v13 = @"Stairs";
      break;
    case 69:
      v13 = @"StepTraining";
      break;
    case 70:
      v13 = @"WheelchairWalkPace";
      break;
    case 71:
      v13 = @"WheelchairRunPace";
      break;
    case 72:
      v13 = @"TaiChi";
      break;
    case 73:
      v13 = @"MixedCardio";
      break;
    case 74:
      v13 = @"HandCycling";
      break;
    case 75:
      v13 = @"DiscSports";
      break;
    case 76:
      v13 = @"FitnessGaming";
      break;
    case 77:
      v13 = @"CardioDance";
      break;
    case 78:
      v13 = @"SocialDance";
      break;
    case 79:
      v13 = @"Pickleball";
      break;
    case 80:
      v13 = @"Cooldown";
      break;
    case 81:
      goto LABEL_5;
    case 82:
      v13 = @"SwimBikeRun";
      break;
    case 83:
      v13 = @"Transition";
      break;
    case 84:
      v13 = @"UnderwaterDiving";
      break;
    default:
      if (workoutActivityType == 3000)
      {
        v13 = @"Other";
      }

      else
      {
LABEL_5:
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(Unknown: %llu)", workoutActivityType];
      }

      break;
  }

  if (([(__CFString *)v13 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v14 = 0;
  }

  else
  {
    workoutActivityType2 = [workoutCopy workoutActivityType];
    v16 = @"AmericanFootball";
    switch(workoutActivityType2)
    {
      case 1:
        break;
      case 2:
        v16 = @"Archery";
        break;
      case 3:
        v16 = @"AustralianFootball";
        break;
      case 4:
        v16 = @"Badminton";
        break;
      case 5:
        v16 = @"Baseball";
        break;
      case 6:
        v16 = @"Basketball";
        break;
      case 7:
        v16 = @"Bowling";
        break;
      case 8:
        v16 = @"Boxing";
        break;
      case 9:
        v16 = @"Climbing";
        break;
      case 10:
        v16 = @"Cricket";
        break;
      case 11:
        v16 = @"CrossTraining";
        break;
      case 12:
        v16 = @"Curling";
        break;
      case 13:
        v16 = @"Cycling";
        break;
      case 14:
        v16 = @"Dance";
        break;
      case 15:
        v16 = @"DanceInspiredTraining";
        break;
      case 16:
        v16 = @"Elliptical";
        break;
      case 17:
        v16 = @"EquestrianSports";
        break;
      case 18:
        v16 = @"Fencing";
        break;
      case 19:
        v16 = @"Fishing";
        break;
      case 20:
        v16 = @"FunctionalStrengthTraining";
        break;
      case 21:
        v16 = @"Golf";
        break;
      case 22:
        v16 = @"Gymnastics";
        break;
      case 23:
        v16 = @"Handball";
        break;
      case 24:
        v16 = @"Hiking";
        break;
      case 25:
        v16 = @"Hockey";
        break;
      case 26:
        v16 = @"Hunting";
        break;
      case 27:
        v16 = @"Lacrosse";
        break;
      case 28:
        v16 = @"MartialArts";
        break;
      case 29:
        v16 = @"MindAndBody";
        break;
      case 30:
        v16 = @"MixedMetabolicCardioTraining";
        break;
      case 31:
        v16 = @"PaddleSports";
        break;
      case 32:
        v16 = @"Play";
        break;
      case 33:
        v16 = @"PreparationAndRecovery";
        break;
      case 34:
        v16 = @"Racquetball";
        break;
      case 35:
        v16 = @"Rowing";
        break;
      case 36:
        v16 = @"Rugby";
        break;
      case 37:
        v16 = @"Running";
        break;
      case 38:
        v16 = @"Sailing";
        break;
      case 39:
        v16 = @"SkatingSports";
        break;
      case 40:
        v16 = @"SnowSports";
        break;
      case 41:
        v16 = @"Soccer";
        break;
      case 42:
        v16 = @"Softball";
        break;
      case 43:
        v16 = @"Squash";
        break;
      case 44:
        v16 = @"StairClimbing";
        break;
      case 45:
        v16 = @"SurfingSports";
        break;
      case 46:
        v16 = @"Swimming";
        break;
      case 47:
        v16 = @"TableTennis";
        break;
      case 48:
        v16 = @"Tennis";
        break;
      case 49:
        v16 = @"TrackAndField";
        break;
      case 50:
        v16 = @"TraditionalStrengthTraining";
        break;
      case 51:
        v16 = @"Volleyball";
        break;
      case 52:
        v16 = @"Walking";
        break;
      case 53:
        v16 = @"WaterFitness";
        break;
      case 54:
        v16 = @"WaterPolo";
        break;
      case 55:
        v16 = @"WaterSports";
        break;
      case 56:
        v16 = @"Wrestling";
        break;
      case 57:
        v16 = @"Yoga";
        break;
      case 58:
        v16 = @"Barre";
        break;
      case 59:
        v16 = @"CoreTraining";
        break;
      case 60:
        v16 = @"CrossCountrySkiing";
        break;
      case 61:
        v16 = @"DownhillSkiing";
        break;
      case 62:
        v16 = @"Flexibility";
        break;
      case 63:
        v16 = @"HighIntensityIntervalTraining";
        break;
      case 64:
        v16 = @"JumpRope";
        break;
      case 65:
        v16 = @"Kickboxing";
        break;
      case 66:
        v16 = @"Pilates";
        break;
      case 67:
        v16 = @"Snowboarding";
        break;
      case 68:
        v16 = @"Stairs";
        break;
      case 69:
        v16 = @"StepTraining";
        break;
      case 70:
        v16 = @"WheelchairWalkPace";
        break;
      case 71:
        v16 = @"WheelchairRunPace";
        break;
      case 72:
        v16 = @"TaiChi";
        break;
      case 73:
        v16 = @"MixedCardio";
        break;
      case 74:
        v16 = @"HandCycling";
        break;
      case 75:
        v16 = @"DiscSports";
        break;
      case 76:
        v16 = @"FitnessGaming";
        break;
      case 77:
        v16 = @"CardioDance";
        break;
      case 78:
        v16 = @"SocialDance";
        break;
      case 79:
        v16 = @"Pickleball";
        break;
      case 80:
        v16 = @"Cooldown";
        break;
      case 81:
        goto LABEL_93;
      case 82:
        v16 = @"SwimBikeRun";
        break;
      case 83:
        v16 = @"Transition";
        break;
      case 84:
        v16 = @"UnderwaterDiving";
        break;
      default:
        if (workoutActivityType2 == 3000)
        {
          v16 = @"Other";
        }

        else
        {
LABEL_93:
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(Unknown: %llu)", workoutActivityType2];
        }

        break;
    }

    workoutEvent = [(PCEvent *)v11 workoutEvent];
    [workoutEvent setWorkoutType:v16];

    sourceBundleIdentifier = [workoutCopy sourceBundleIdentifier];
    workoutEvent2 = [(PCEvent *)v11 workoutEvent];
    [workoutEvent2 setSourceBundleIdentifier:sourceBundleIdentifier];

    workoutStartLocation = [workoutCopy workoutStartLocation];
    workoutEvent3 = [(PCEvent *)v11 workoutEvent];
    [workoutEvent3 setWorkoutLocationStart:workoutStartLocation];

    if ([workoutCopy hasSessionLocationType])
    {
      sessionLocationType = [workoutCopy sessionLocationType];
      workoutEvent4 = [(PCEvent *)v11 workoutEvent];
      [workoutEvent4 setWorkoutSessionLocationType:sessionLocationType];
    }

    if ([workoutCopy hasSwimmingLocationType])
    {
      swimmingLocationType = [workoutCopy swimmingLocationType];
      workoutEvent5 = [(PCEvent *)v11 workoutEvent];
      [workoutEvent5 setWorkoutSwimmingLocationType:swimmingLocationType];
    }

    v26 = objc_alloc(MEMORY[0x1E696AFB0]);
    hkObjectUUID = [workoutCopy hkObjectUUID];
    v28 = [v26 initWithUUIDBytes:{objc_msgSend(hkObjectUUID, "bytes")}];
    workoutEvent6 = [(PCEvent *)v11 workoutEvent];
    [workoutEvent6 setHkObjectIdentifier:v28];

    v30 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      eventIdentifier = [(PCEvent *)v11 eventIdentifier];
      workoutEvent7 = [(PCEvent *)v11 workoutEvent];
      workoutType = [workoutEvent7 workoutType];
      workoutEvent8 = [(PCEvent *)v11 workoutEvent];
      sourceBundleIdentifier2 = [workoutEvent8 sourceBundleIdentifier];
      workoutEvent9 = [(PCEvent *)v11 workoutEvent];
      workoutLocationStart = [workoutEvent9 workoutLocationStart];
      workoutEvent10 = [(PCEvent *)v11 workoutEvent];
      hkObjectIdentifier = [workoutEvent10 hkObjectIdentifier];
      workoutEvent11 = [(PCEvent *)v11 workoutEvent];
      v36 = v13;
      workoutSessionLocationType = [workoutEvent11 workoutSessionLocationType];
      [(PCEvent *)v11 workoutEvent];
      v38 = v43 = v11;
      *buf = 138413827;
      v47 = eventIdentifier;
      v48 = 2112;
      v49 = workoutType;
      v50 = 2112;
      v51 = sourceBundleIdentifier2;
      v52 = 2117;
      v53 = workoutLocationStart;
      v54 = 2112;
      v55 = hkObjectIdentifier;
      v56 = 1024;
      v57 = workoutSessionLocationType;
      v13 = v36;
      v58 = 1024;
      workoutSwimmingLocationType = [v38 workoutSwimmingLocationType];
      _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: Created Workout eventID, %@, workoutType, %@, sourceBundleIdentifier, %@, workoutLocationStart, %{sensitive}@, hkObjectIdentifier, %@, workoutSessionLocationType, %d, workoutSwimmingLocationType, %d", buf, 0x40u);

      v11 = v43;
    }

    v14 = v11;
  }

  return v14;
}

- (id)_bundleEvents:(id)events
{
  v4 = MEMORY[0x1E695DF00];
  eventsCopy = events;
  v6 = [v4 now];
  v7 = [v6 dateByAddingTimeInterval:-4838400.0];
  v8 = [(PCWorkoutPrediction *)self _bundleEvents:eventsCopy startDate:v7 endDate:v6];

  return v8;
}

- (id)_bundleEvents:(id)events startDate:(id)date endDate:(id)endDate
{
  v26 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateCopy endDate:endDateCopy];
  startDate = [v11 startDate];
  endDate = [v11 endDate];
  v14 = [(PCWorkoutPrediction *)self _annotateEventBundlesWithStartDate:startDate endDate:endDate allEvents:eventsCopy];

  v15 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = dateCopy;
    v20 = 2114;
    v21 = endDateCopy;
    v22 = 2050;
    v23 = [eventsCopy count];
    v24 = 2050;
    v25 = [v14 count];
    _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Bundling - startDate, %{public}@, endDate, %{public}@, eventCount, %{public}lu, bundleCount, %{public}lu", &v18, 0x2Au);
  }

  v16 = [v14 copy];

  return v16;
}

- (id)_annotateEventBundlesWithStartDate:(id)date endDate:(id)endDate allEvents:(id)events
{
  v16[1] = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E695DEC8] arrayWithArray:eventsCopy];

  v8 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:1];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v10 = [v7 sortedArrayUsingDescriptors:v9];

  v11 = objc_alloc_init(PCTimeZoneManager);
  [(PCTimeZoneManager *)v11 processTimeZoneEvents:v10];
  v12 = objc_alloc_init(PCWorkoutAnnotationManager);
  v13 = [(PCWorkoutAnnotationManager *)v12 performAnnotationWithEvents:v10];
  if ([v13 count])
  {
    [v6 addObjectsFromArray:v13];
    v14 = [v6 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_generateClustersFromBundles:(id)bundles
{
  v59 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  selfCopy = self;
  clusteringManager = [(PCWorkoutPrediction *)self clusteringManager];
  v43 = bundlesCopy;
  v6 = [clusteringManager getEmbeddingsFromBundles:bundlesCopy forEmbeddingType:2];

  v7 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v58 = [v6 count];
    _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Clustering - Embedding extraction completed, Embedding count=%lu. Attempting to run clustering alg", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sensitiveDescription = [v13 sensitiveDescription];
          *buf = 138739971;
          v58 = sensitiveDescription;
          _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: IN Embedding, %{sensitive}@", buf, 0xCu);
        }

        v16 = [[PCPClusterEmbedding alloc] initWithEmbedding:v13];
        [v8 addObject:v16];
        v17 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [(PCPClusterEmbedding *)v16 description];
          *buf = 138739971;
          v58 = v18;
          _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: OUT PCPEmbedding, %{sensitive}@", buf, 0xCu);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v10);
  }

  v19 = [v8 count];
  if (v19)
  {
    v19 = [v8 copy];
  }

  v20 = v43;
  embeddings = selfCopy->_embeddings;
  selfCopy->_embeddings = v19;

  clusteringManager2 = [(PCWorkoutPrediction *)selfCopy clusteringManager];
  [clusteringManager2 runHDBSCANClusteringOn:obj];

  clusteringManager3 = [(PCWorkoutPrediction *)selfCopy clusteringManager];
  v50 = 0;
  v24 = [clusteringManager3 generateClusters:v43 withEmbeddings:obj error:&v50];
  v25 = v50;

  v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  p_super = v26;
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v58 = v25;
      _os_log_impl(&dword_1CEE74000, p_super, OS_LOG_TYPE_ERROR, "WorkoutPrediction: Clustering error, %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v24 count];
      *buf = 134349056;
      v58 = v28;
      _os_log_impl(&dword_1CEE74000, p_super, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Clustering final count %{public}lu", buf, 0xCu);
    }

    if ([v24 count])
    {
      p_super = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v24, "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v41 = v24;
      v44 = v24;
      v29 = [v44 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v47;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v47 != v31)
            {
              objc_enumerationMutation(v44);
            }

            v33 = *(*(&v46 + 1) + 8 * j);
            v34 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              sensitiveDescription2 = [v33 sensitiveDescription];
              *buf = 138739971;
              v58 = sensitiveDescription2;
              _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: IN Cluster, %{sensitive}@", buf, 0xCu);
            }

            v36 = [[PCPWorkoutCluster alloc] initWithCluster:v33];
            [p_super addObject:v36];
            v37 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = [(PCPWorkoutCluster *)v36 description];
              *buf = 138739971;
              v58 = v38;
              _os_log_impl(&dword_1CEE74000, v37, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: OUT PCPCluster, %{sensitive}@", buf, 0xCu);
            }
          }

          v30 = [v44 countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v30);
      }

      v39 = [p_super copy];
      clusters = selfCopy->_clusters;
      selfCopy->_clusters = v39;

      v20 = v43;
      v25 = 0;
      v24 = v41;
    }

    else
    {
      p_super = &selfCopy->_clusters->super.super;
      selfCopy->_clusters = 0;
    }
  }
}

- (id)fetchClusters
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_clusters, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_clusters;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [v8 description];
          *buf = 138739971;
          v21 = v10;
          _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: IN PCPCluster, %{sensitive}@", buf, 0xCu);
        }

        v11 = [[PCCluster alloc] initWithProtobufEquivalent:v8];
        [v3 addObject:v11];
        v12 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sensitiveDescription = [(PCCluster *)v11 sensitiveDescription];
          *buf = 138739971;
          v21 = sensitiveDescription;
          _os_log_impl(&dword_1CEE74000, v12, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: OUT Cluster, %{sensitive}@", buf, 0xCu);
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)predictWithLocationHistory:(id)history workoutHistory:(id)workoutHistory LOIs:(id)is atTime:(double)time workoutPredictions:(id *)predictions
{
  v103 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  workoutHistoryCopy = workoutHistory;
  isCopy = is;
  v16 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 138544386;
    v94 = v17;
    v95 = 2050;
    v96 = [historyCopy count];
    v97 = 2050;
    v98 = [isCopy count];
    v99 = 2050;
    v100 = [workoutHistoryCopy count];
    v101 = 2050;
    timeCopy = time;
    _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ (visits=%{public}lu, loi=%{public}lu, workouts=%{public}lu, currentTime=%{public}.2f)", buf, 0x34u);
  }

  *predictions = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_embeddings && self->_clusters)
  {
    selfCopy = self;
    v18 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"entryTimeCFAbsolute" ascending:0];
    v92 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
    v20 = [historyCopy sortedArrayUsingDescriptors:v19];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v85 objects:v91 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v86;
LABEL_7:
      v25 = 0;
      while (1)
      {
        if (*v86 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v85 + 1) + 8 * v25);
        if (![v26 hasExitTimeCFAbsolute])
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v21 countByEnumeratingWithState:&v85 objects:v91 count:16];
          if (v23)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v27 = v26;

      if (!v27)
      {
        goto LABEL_48;
      }

      predictionsCopy = predictions;
      v69 = v21;
      v70 = v18;
      v71 = workoutHistoryCopy;
      v68 = historyCopy;
      v28 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138739971;
        v94 = v27;
        _os_log_impl(&dword_1CEE74000, v28, OS_LOG_TYPE_INFO, "WorkoutPrediction: Real time visit, %{sensitive}@", buf, 0xCu);
      }

      v72 = v27;

      v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(isCopy, "count")}];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v67 = isCopy;
      v30 = isCopy;
      v31 = [v30 countByEnumeratingWithState:&v81 objects:v90 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v82;
        v34 = PCLogCategoryWorkoutPredictor;
        v35 = 0x1E83B7000uLL;
        do
        {
          v36 = 0;
          v76 = v32;
          do
          {
            if (*v82 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v37 = *(*(&v81 + 1) + 8 * v36);
            if ([v37 hasLoiIdentifier])
            {
              v38 = *(v35 + 1944);
              loiIdentifier = [v37 loiIdentifier];
              v40 = [v38 uuidStringFromData:loiIdentifier];

              v41 = [v29 objectForKeyedSubscript:v40];

              if (v41)
              {
                v42 = _plc_log_get_normal_handle(v34);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  [v29 objectForKeyedSubscript:v40];
                  v43 = v33;
                  v44 = v30;
                  v45 = v29;
                  v46 = v34;
                  v48 = v47 = v35;
                  *buf = 138412803;
                  v94 = v40;
                  v95 = 2117;
                  v96 = v48;
                  v97 = 2117;
                  v98 = v37;
                  _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_ERROR, "WorkoutPrediction: Found more than LOI for UUID=%@. First=%{sensitive}@, Second=%{sensitive}@", buf, 0x20u);

                  v35 = v47;
                  v34 = v46;
                  v29 = v45;
                  v30 = v44;
                  v33 = v43;
                  v32 = v76;
                }
              }

              [v29 setObject:v37 forKeyedSubscript:v40];
            }

            else
            {
              v40 = _plc_log_get_normal_handle(v34);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v94 = v37;
                _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_ERROR, "WorkoutPrediction: #warning, loi has no identifier,%@", buf, 0xCu);
              }
            }

            ++v36;
          }

          while (v32 != v36);
          v32 = [v30 countByEnumeratingWithState:&v81 objects:v90 count:16];
        }

        while (v32);
      }

      lastObject = v72;
      v50 = [(PCWorkoutPrediction *)selfCopy _createEventFromVisit:v72 loiMap:v29];
      v51 = [(PCWorkoutPrediction *)selfCopy _predictWorkoutsForVisit:v50 atTime:time];
      v52 = [v51 copy];
      *predictionsCopy = v52;
      if (v52 && [v52 count])
      {
        v53 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        v18 = v70;
        workoutHistoryCopy = v71;
        v21 = v69;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [*predictionsCopy count];
          *buf = 134349056;
          v94 = v54;
          _os_log_impl(&dword_1CEE74000, v53, OS_LOG_TYPE_DEFAULT, "--- Workout Predictions (%{public}lu) ---", buf, 0xCu);
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v55 = *predictionsCopy;
        v56 = [v55 countByEnumeratingWithState:&v77 objects:v89 count:16];
        if (v56)
        {
          v57 = v56;
          v75 = v51;
          v58 = *v78;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v78 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = [PCLoggingUtils formattedStringForWorkoutPrediction:*(*(&v77 + 1) + 8 * i), v67];
              v61 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v94 = v60;
                _os_log_impl(&dword_1CEE74000, v61, OS_LOG_TYPE_DEFAULT, "Workout Prediction: %{public}@", buf, 0xCu);
              }
            }

            v57 = [v55 countByEnumeratingWithState:&v77 objects:v89 count:16];
          }

          while (v57);
          isCopy = v67;
          historyCopy = v68;
          v18 = v70;
          workoutHistoryCopy = v71;
          v21 = v69;
          lastObject = v72;
          v51 = v75;
        }

        else
        {
          isCopy = v67;
          historyCopy = v68;
          lastObject = v72;
        }
      }

      else
      {
        v55 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        v18 = v70;
        workoutHistoryCopy = v71;
        v21 = v69;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v55, OS_LOG_TYPE_DEFAULT, "No Workout Predictions to log", buf, 2u);
        }

        isCopy = v67;
        historyCopy = v68;
      }
    }

    else
    {
LABEL_13:

LABEL_48:
      lastObject = [v21 lastObject];
      v29 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        identifier = [lastObject identifier];
        v63 = [PCAlgorithmsCommonUtils uuidStringFromData:identifier];
        [lastObject entryTimeCFAbsolute];
        v65 = v64;
        [lastObject exitTimeCFAbsolute];
        *buf = 138412802;
        v94 = v63;
        v95 = 2048;
        v96 = v65;
        v97 = 2048;
        v98 = v66;
        _os_log_impl(&dword_1CEE74000, v29, OS_LOG_TYPE_ERROR, "WorkoutPrediction: No real time visit found, prediction cannot proceed. Last visit UUID=%@, entryTime=%.2f, exitTime=%.2f", buf, 0x20u);
      }
    }
  }

  else
  {
    v18 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: #warning: Cannot run prediction until after a successful training", buf, 2u);
    }
  }
}

- (id)_predictWorkoutsForVisit:(id)visit atTime:(double)time
{
  v6 = [(PCWorkoutPrediction *)self _createEmbeddingFromVisitEvent:visit atTime:?];
  if (v6)
  {
    _decodeClustersFromProtobuf = [(PCWorkoutPrediction *)self _decodeClustersFromProtobuf];
    _decodeEmbeddingsFromProtobuf = [(PCWorkoutPrediction *)self _decodeEmbeddingsFromProtobuf];
    v9 = [(PCWorkoutPredictionAlgorithm *)self->_predictionAlgorithm calculateClusterProbabilities:v6 embeddings:_decodeEmbeddingsFromProtobuf clusters:_decodeClustersFromProtobuf];
    v10 = [(PCWorkoutPredictionAlgorithm *)self->_predictionAlgorithm generateWorkoutPredictionsFromProbabilities:v9 atTime:v6 currentVisit:_decodeEmbeddingsFromProtobuf embeddings:_decodeClustersFromProtobuf clusters:time];
  }

  else
  {
    v11 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_ERROR, "Failed to create visit embedding", v13, 2u);
    }

    v10 = objc_opt_new();
  }

  return v10;
}

- (id)_createEmbeddingFromVisitEvent:(id)event atTime:(double)time
{
  v51 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = [PCEventBundle alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  date = [MEMORY[0x1E695DF00] date];
  v9 = [(PCEventBundle *)v6 initWithBundleIdentifier:uUID creationDate:date];

  [(PCEventBundle *)v9 setInterfaceType:2];
  [(PCEventBundle *)v9 setBundleSuperType:1];
  [(PCEventBundle *)v9 setBundleSubType:2];
  [(PCEventBundle *)v9 setActivityType:&stru_1F4BD0910];
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  [(PCEventBundle *)v9 setStartDate:v10];
  endDate = [eventCopy endDate];
  [(PCEventBundle *)v9 setEndDate:endDate];

  v12 = objc_alloc_init(PCTimeZoneManager);
  startDate = [eventCopy startDate];
  endDate2 = [eventCopy endDate];
  v15 = [PCTime timeFromStartDate:startDate endDate:endDate2 timeZoneManager:v12];
  [(PCEventBundle *)v9 setTime:v15];

  routineEvent = [eventCopy routineEvent];
  location = [routineEvent location];
  [(PCEventBundle *)v9 setLocation:location];

  routineEvent2 = [eventCopy routineEvent];
  placeName = [routineEvent2 placeName];
  [(PCEventBundle *)v9 setPlaceName:placeName];

  [(PCEventBundle *)v9 setEnclosingArea:0];
  routineEvent3 = [eventCopy routineEvent];
  -[PCEventBundle setPlaceType:](v9, "setPlaceType:", [routineEvent3 mapItemPlaceType]);

  routineEvent4 = [eventCopy routineEvent];
  -[PCEventBundle setPlaceUserType:](v9, "setPlaceUserType:", [routineEvent4 placeUserType]);

  routineEvent5 = [eventCopy routineEvent];
  poiCategory = [routineEvent5 poiCategory];
  [(PCEventBundle *)v9 setPoiCategory:poiCategory];

  v24 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    startDate2 = [eventCopy startDate];
    v25 = [PCEvent formatDate:startDate2];
    v38 = v10;
    endDate3 = [eventCopy endDate];
    v27 = [PCEvent formatDate:endDate3];
    poiCategory2 = [(PCEventBundle *)v9 poiCategory];
    placeUserType = [(PCEventBundle *)v9 placeUserType];
    [(PCEventBundle *)v9 placeName];
    v30 = v37 = v12;
    location2 = [(PCEventBundle *)v9 location];
    *buf = 138544643;
    v40 = v25;
    v41 = 2114;
    v42 = v27;
    v43 = 2114;
    v44 = poiCategory2;
    v45 = 1026;
    v46 = placeUserType;
    v47 = 2117;
    v48 = v30;
    v49 = 2117;
    v50 = location2;
    _os_log_impl(&dword_1CEE74000, v24, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Real-Time Visit: startDate, %{public}@, endDate, %{public}@, poiCategory, %{public}@, placeUserType, %{public}d, placeName, %{sensitive}@, location, %{sensitive}@", buf, 0x3Au);

    v12 = v37;
    v10 = v38;
  }

  v32 = [[PCEmbedding alloc] initWithEventBundle:v9 forEmbeddingType:2];
  v33 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    sensitiveDescription = [(PCEmbedding *)v32 sensitiveDescription];
    *buf = 138739971;
    v40 = sensitiveDescription;
    _os_log_impl(&dword_1CEE74000, v33, OS_LOG_TYPE_INFO, "WorkoutPrediction: Created visit embedding for prediction: %{sensitive}@", buf, 0xCu);
  }

  return v32;
}

- (id)_decodeClustersFromProtobuf
{
  v40 = *MEMORY[0x1E69E9840];
  clusters = self->_clusters;
  if (clusters && [(NSMutableArray *)clusters count])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_clusters, "count")}];
    _decodeEmbeddingsFromProtobuf = [(PCWorkoutPrediction *)self _decodeEmbeddingsFromProtobuf];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = self->_clusters;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    v7 = *v30;
    v8 = 0x1E83B7000uLL;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [objc_alloc(*(v8 + 1984)) initWithProtobufEquivalent:v10];
        [v11 timeOfDayCircularStd];
        if (v12 == 0.0 && ([v11 latLongCircularStd], v13 == 0.0))
        {
          [PCEmbeddingDistanceCalculator calculateCircularStandardDeviationsForCluster:v11 fromEmbeddings:_decodeEmbeddingsFromProtobuf];
          [(PCWorkoutPrediction *)self _updateProtobufCluster:v10 withNewFeatures:v11];
          v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          identifier = [v11 identifier];
          [v11 timeOfDayCircularStd];
          v17 = v16;
          [v11 latLongCircularStd];
          *buf = 138412802;
          v34 = identifier;
          v35 = 2048;
          v36 = v17;
          v37 = 2048;
          v38 = v18;
          v19 = v14;
          v20 = OS_LOG_TYPE_INFO;
          v21 = "Cluster %@ computed values: timeStd=%.6f, locationStd=%.6f";
        }

        else
        {
          v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_15;
          }

          identifier = [v11 identifier];
          [v11 timeOfDayCircularStd];
          v23 = v22;
          [v11 latLongCircularStd];
          *buf = 138412802;
          v34 = identifier;
          v35 = 2048;
          v36 = v23;
          v37 = 2048;
          v38 = v24;
          v19 = v14;
          v20 = OS_LOG_TYPE_DEBUG;
          v21 = "Cluster %@ using cached values: timeStd=%.6f, locationStd=%.6f";
        }

        _os_log_impl(&dword_1CEE74000, v19, v20, v21, buf, 0x20u);

        v8 = 0x1E83B7000;
LABEL_15:

        [v3 addObject:v11];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (!v6)
      {
LABEL_17:

        v25 = [v3 copy];
        goto LABEL_21;
      }
    }
  }

  v3 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v3, OS_LOG_TYPE_ERROR, "No clusters available for prediction", buf, 2u);
  }

  v25 = MEMORY[0x1E695E0F0];
LABEL_21:

  return v25;
}

- (id)_decodeEmbeddingsFromProtobuf
{
  v21 = *MEMORY[0x1E69E9840];
  embeddings = self->_embeddings;
  if (embeddings && [(NSMutableArray *)embeddings count])
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_embeddings, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_embeddings;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [PCEmbedding alloc];
          v12 = [(PCEmbedding *)v11 initWithProtobufEquivalent:v10, v15];
          [v4 addObject:v12];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
  }

  else
  {
    v4 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_ERROR, "No embeddings available", buf, 2u);
    }

    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (void)_updateProtobufCluster:(id)cluster withNewFeatures:(id)features
{
  v14 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  featuresCopy = features;
  clusterPhenotype = [clusterCopy clusterPhenotype];
  if (!clusterPhenotype)
  {
    clusterPhenotype = objc_alloc_init(PCPClusterPhenotype);
  }

  [featuresCopy timeOfDayCircularStd];
  [(PCPClusterPhenotype *)clusterPhenotype setTimeOfDayCircularStd:?];
  [featuresCopy latLongCircularStd];
  v9 = v8;

  [(PCPClusterPhenotype *)clusterPhenotype setLatLongCircularStd:v9];
  [clusterCopy setClusterPhenotype:clusterPhenotype];
  v10 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    identifier = [clusterCopy identifier];
    v12 = 138412290;
    v13 = identifier;
    _os_log_impl(&dword_1CEE74000, v10, OS_LOG_TYPE_DEBUG, "Updated protobuf cluster %@ with computed circular std values", &v12, 0xCu);
  }
}

- (id)fetchEmbeddings
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_embeddings, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_embeddings;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [v8 description];
          *buf = 138412290;
          v21 = v10;
          _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: IN PCPEmbedding, %@", buf, 0xCu);
        }

        v11 = [[PCEmbedding alloc] initWithProtobufEquivalent:v8];
        [v3 addObject:v11];
        v12 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sensitiveDescription = [(PCEmbedding *)v11 sensitiveDescription];
          *buf = 138739971;
          v21 = sensitiveDescription;
          _os_log_impl(&dword_1CEE74000, v12, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: OUT Embedding, %{sensitive}@", buf, 0xCu);
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)addEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  if (embeddingCopy)
  {
    embeddings = self->_embeddings;
    v8 = embeddingCopy;
    if (!embeddings)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_embeddings;
      self->_embeddings = v6;

      embeddings = self->_embeddings;
    }

    [(NSMutableArray *)embeddings addObject:v8];
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)fetchPCPEmbeddings
{
  v2 = [(NSMutableArray *)self->_embeddings copy];

  return v2;
}

@end