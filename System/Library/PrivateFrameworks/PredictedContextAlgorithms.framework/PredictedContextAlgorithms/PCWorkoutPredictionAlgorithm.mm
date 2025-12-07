@interface PCWorkoutPredictionAlgorithm
- (BOOL)_hasUserWorkedOutForActivityType:(id)type nearCurrentVisit:(id)visit workoutTypeLocationMap:(id)map;
- (BOOL)_isWorkoutTypeAlreadyPredicted:(id)predicted inPredictions:(id)predictions;
- (BOOL)isHomeOrWorkLocation:(id)location;
- (PCWorkoutPredictionAlgorithm)init;
- (PCWorkoutPredictionAlgorithm)initWithConfig:(id)config;
- (double)_piecewiseLinearMap:(double)map anchorsX:(id)x anchorsY:(id)y minValue:(double)value maxValue:(double)maxValue;
- (double)calculateScoreFromFeatures:(id)features identifier:(id)identifier;
- (double)mapScoreToProbability:(double)probability forVisit:(id)visit;
- (id)_buildWorkoutTypeLocationMapping:(id)mapping;
- (id)_createDateIntervalStartingAt:(id)at probability:(double)probability embeddings:(id)embeddings;
- (id)_createPredictionFromCluster:(id)cluster probability:(double)probability atTime:(id)time embeddings:(id)embeddings;
- (id)_createSourcesFromEmbeddings:(id)embeddings;
- (id)_sortClustersByProbability:(id)probability;
- (id)_subselectEmbeddings:(id)embeddings fromCluster:(id)cluster;
- (id)calculateClusterProbabilities:(id)probabilities embeddings:(id)embeddings clusters:(id)clusters;
- (id)generateWorkoutPredictionsFromProbabilities:(id)probabilities atTime:(double)time currentVisit:(id)visit embeddings:(id)embeddings clusters:(id)clusters;
- (void)_updateActivityInfoForPrediction:(id)prediction fromActivityType:(id)type;
@end

@implementation PCWorkoutPredictionAlgorithm

- (PCWorkoutPredictionAlgorithm)init
{
  v3 = +[PCDistanceWeightingConfig predictionConfiguration];
  v4 = [(PCWorkoutPredictionAlgorithm *)self initWithConfig:v3];

  return v4;
}

- (PCWorkoutPredictionAlgorithm)initWithConfig:(id)config
{
  configCopy = config;
  v12.receiver = self;
  v12.super_class = PCWorkoutPredictionAlgorithm;
  v6 = [(PCWorkoutPredictionAlgorithm *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    homeWorkScoreAnchorsX = v7->_homeWorkScoreAnchorsX;
    v7->_homeWorkScoreAnchorsX = &unk_1F4BDDFA8;

    otherScoreAnchorsX = v7->_otherScoreAnchorsX;
    v7->_otherScoreAnchorsX = &unk_1F4BDDFC0;

    probabilityAnchorsY = v7->_probabilityAnchorsY;
    v7->_probabilityAnchorsY = &unk_1F4BDDFD8;
  }

  return v7;
}

- (double)calculateScoreFromFeatures:(id)features identifier:(id)identifier
{
  v131[8] = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  identifierCopy = identifier;
  if (featuresCopy && [featuresCopy count])
  {
    weights = [(PCDistanceWeightingConfig *)self->_config weights];
    v9 = [weights objectForKeyedSubscript:@"intercept"];

    v83 = v9;
    v84 = identifierCopy;
    if (v9)
    {
      [v9 doubleValue];
      v11 = v10;
    }

    else
    {
      v13 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_INFO, "Missing intercept weight, using 0.0", buf, 2u);
      }

      v11 = 0.0;
    }

    v131[0] = @"embeddingDistWeight_placeType";
    v131[1] = @"embeddingDistWeight_placeName";
    v131[2] = @"embeddingDistWeight_geoProximity";
    v131[3] = @"embeddingDistWeight_timeOfDay";
    v131[4] = @"embeddingDistWeight_dayOfWeek";
    v131[5] = @"embeddingDistWeight_isWeekend";
    v131[6] = @"embeddingDistWeight_timeOfDayCircularStd";
    v131[7] = @"embeddingDistWeight_latLongCircularStd";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:8];
    v87 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v86 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v88 objects:v130 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v89;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v89 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v88 + 1) + 8 * i);
          v21 = featuresCopy;
          v22 = [featuresCopy objectForKeyedSubscript:v20];
          weights2 = [(PCDistanceWeightingConfig *)self->_config weights];
          v24 = [weights2 objectForKeyedSubscript:v20];

          v25 = 0.0;
          v26 = 0.0;
          if (v22)
          {
            [v22 doubleValue];
            v26 = v27;
          }

          if (v24)
          {
            [v24 doubleValue];
            v25 = v28;
          }

          v29 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
          [v87 addObject:v29];

          v30 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
          [v86 addObject:v30];

          v31 = [MEMORY[0x1E696AD98] numberWithDouble:v26 * v25];
          [v15 addObject:v31];

          v11 = v11 + v26 * v25;
          featuresCopy = v21;
        }

        v17 = [obj countByEnumeratingWithState:&v88 objects:v130 count:16];
      }

      while (v17);
    }

    v32 = 1.0 / (exp(-v11) + 1.0);
    v33 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v34 = v33;
    if (v32 < INFINITY || v32 > INFINITY)
    {
      identifierCopy = v84;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v75 = [v87 objectAtIndexedSubscript:0];
        [v75 doubleValue];
        v77 = v35;
        v70 = [v15 objectAtIndexedSubscript:0];
        [v70 doubleValue];
        v76 = v36;
        v82 = [v87 objectAtIndexedSubscript:1];
        [v82 doubleValue];
        v74 = v37;
        v81 = [v15 objectAtIndexedSubscript:1];
        [v81 doubleValue];
        v72 = v38;
        v80 = [v87 objectAtIndexedSubscript:2];
        [v80 doubleValue];
        v71 = v39;
        v79 = [v15 objectAtIndexedSubscript:2];
        [v79 doubleValue];
        v69 = v40;
        v78 = [v87 objectAtIndexedSubscript:3];
        [v78 doubleValue];
        v67 = v41;
        v73 = [v15 objectAtIndexedSubscript:3];
        [v73 doubleValue];
        v66 = v42;
        v68 = [v87 objectAtIndexedSubscript:4];
        [v68 doubleValue];
        v64 = v43;
        v65 = [v15 objectAtIndexedSubscript:4];
        [v65 doubleValue];
        v45 = v44;
        v46 = [v87 objectAtIndexedSubscript:5];
        [v46 doubleValue];
        v48 = v47;
        v49 = [v15 objectAtIndexedSubscript:5];
        [v49 doubleValue];
        v51 = v50;
        v52 = [v87 objectAtIndexedSubscript:6];
        [v52 doubleValue];
        v54 = v53;
        v55 = [v15 objectAtIndexedSubscript:6];
        [v55 doubleValue];
        v57 = v56;
        v58 = [v87 objectAtIndexedSubscript:7];
        [v58 doubleValue];
        v60 = v59;
        v61 = [v15 objectAtIndexedSubscript:7];
        [v61 doubleValue];
        *buf = 138547970;
        v93 = *&v84;
        v94 = 2050;
        v95 = v32;
        v96 = 2050;
        v97 = v11;
        v98 = 2050;
        v99 = v77;
        v100 = 2048;
        v101 = v76;
        v102 = 2050;
        v103 = v74;
        v104 = 2048;
        v105 = v72;
        v106 = 2050;
        v107 = v71;
        v108 = 2048;
        v109 = v69;
        v110 = 2050;
        v111 = v67;
        v112 = 2048;
        v113 = v66;
        v114 = 2050;
        v115 = v64;
        v116 = 2048;
        v117 = v45;
        v118 = 2050;
        v119 = v48;
        v120 = 2048;
        v121 = v51;
        v122 = 2050;
        v123 = v54;
        v124 = 2048;
        v125 = v57;
        v126 = 2050;
        v127 = v60;
        v128 = 2048;
        v129 = v62;
        _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_DEFAULT, "LogisticRegression,%{public}@,output,%{public}.3f,logit,%{public}.3f,FeaturesRawAndWeighted,combinedPlaceType,%{public}.3f,%.3f,placeName,%{public}.3f,%.3f,geographicalProximity,%{public}.3f,%.3f,timeOfDay,%{public}.3f,%.3f,dayOfWeek,%{public}.3f,%.3f,isWeekend,%{public}.3f,%.3f,timeOfDayCircularStd,%{public}.3f,%.3f,latLongCircularStd,%{public}.3f,%.3f", buf, 0xC0u);
      }

      v12 = v32;
      v9 = v83;
    }

    else
    {
      v12 = 0.0;
      identifierCopy = v84;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v93 = v32;
        v94 = 2048;
        v95 = v11;
        _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_ERROR, "Invalid probability result: %f (dotProduct=%f)", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v12 = 0.0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_ERROR, "Empty features provided to calculateScoreFromFeatures", buf, 2u);
    }
  }

  return v12;
}

- (double)mapScoreToProbability:(double)probability forVisit:(id)visit
{
  visitCopy = visit;
  v7 = visitCopy;
  if (visitCopy)
  {
    locationContextEmbedding = [visitCopy locationContextEmbedding];
    v9 = [(PCWorkoutPredictionAlgorithm *)self isHomeOrWorkLocation:locationContextEmbedding];

    if (v9)
    {
      homeWorkScoreAnchorsX = self->_homeWorkScoreAnchorsX;
    }

    else
    {
      homeWorkScoreAnchorsX = self->_otherScoreAnchorsX;
    }

    [(PCWorkoutPredictionAlgorithm *)self _piecewiseLinearMap:homeWorkScoreAnchorsX anchorsX:self->_probabilityAnchorsY anchorsY:probability minValue:0.0 maxValue:1.0];
    v12 = v13;
  }

  else
  {
    v11 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_ERROR, "Null visit embedding provided to mapScoreToProbability", v15, 2u);
    }

    v12 = 0.0;
  }

  return v12;
}

- (double)_piecewiseLinearMap:(double)map anchorsX:(id)x anchorsY:(id)y minValue:(double)value maxValue:(double)maxValue
{
  v48 = *MEMORY[0x1E69E9840];
  xCopy = x;
  yCopy = y;
  v13 = [xCopy count];
  if (v13 != [yCopy count] || objc_msgSend(xCopy, "count") <= 1)
  {
    v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      goto LABEL_20;
    }

    LOWORD(v46) = 0;
    v15 = "Piecewise linear map: Invalid anchor arrays";
    v16 = v14;
    v17 = 2;
LABEL_5:
    _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_ERROR, v15, &v46, v17);
    goto LABEL_6;
  }

  v18 = [xCopy objectAtIndexedSubscript:0];
  [v18 doubleValue];
  v20 = v19;

  if (v20 >= map)
  {
    v40 = yCopy;
    v41 = 0;
  }

  else
  {
    v21 = [xCopy objectAtIndexedSubscript:{objc_msgSend(xCopy, "count") - 1}];
    [v21 doubleValue];
    v23 = v22;

    if (v23 > map)
    {
      v24 = -1;
      while (1)
      {
        v25 = v24 + 1;
        if (v24 + 1 >= ([xCopy count] - 1))
        {
          break;
        }

        v26 = [xCopy objectAtIndexedSubscript:v24 + 1];
        [v26 doubleValue];
        v28 = v27;

        v29 = [xCopy objectAtIndexedSubscript:v24 + 2];
        [v29 doubleValue];
        v31 = v30;

        v32 = v28 > map || v31 < map;
        ++v24;
        if (!v32)
        {
          v33 = [yCopy objectAtIndexedSubscript:v25];
          [v33 doubleValue];
          v35 = v34;

          v36 = [yCopy objectAtIndexedSubscript:v25 + 1];
          [v36 doubleValue];
          v38 = v37;

          v39 = fmax(value, v35 + (map - v28) / (v31 - v28) * (v38 - v35));
          goto LABEL_19;
        }
      }

      v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v46 = 134217984;
      mapCopy = map;
      v15 = "Piecewise linear map: Failed to find segment for value %.4f";
      v16 = v14;
      v17 = 12;
      goto LABEL_5;
    }

    v41 = [yCopy count] - 1;
    v40 = yCopy;
  }

  v42 = [v40 objectAtIndexedSubscript:v41];
  [v42 doubleValue];
  v44 = v43;

  v39 = fmax(value, v44);
LABEL_19:
  value = fmin(maxValue, v39);
LABEL_20:

  return value;
}

- (id)calculateClusterProbabilities:(id)probabilities embeddings:(id)embeddings clusters:(id)clusters
{
  v100 = *MEMORY[0x1E69E9840];
  probabilitiesCopy = probabilities;
  embeddingsCopy = embeddings;
  clustersCopy = clusters;
  v72 = probabilitiesCopy;
  if (!probabilitiesCopy)
  {
    v59 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 0;
    v60 = "No visit embedding provided to calculateClusterProbabilities";
    goto LABEL_63;
  }

  if (!embeddingsCopy || ![embeddingsCopy count])
  {
    v59 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 0;
    v60 = "No embeddings provided to calculateClusterProbabilities";
LABEL_63:
    _os_log_impl(&dword_1CEE74000, v59, OS_LOG_TYPE_ERROR, v60, buf, 2u);
    goto LABEL_64;
  }

  if (!clustersCopy || ![clustersCopy count])
  {
    v59 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v60 = "No clusters provided to calculateClusterProbabilities";
      goto LABEL_63;
    }

LABEL_64:

    v65 = objc_opt_new();
    goto LABEL_65;
  }

  v63 = clustersCopy;
  [PCEmbeddingDistanceCalculator calculateCircularStandardDeviationsForClusters:clustersCopy fromEmbeddings:embeddingsCopy];
  v10 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v62 = embeddingsCopy;
  v11 = embeddingsCopy;
  v12 = [v11 countByEnumeratingWithState:&v81 objects:v99 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v82;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v82 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v81 + 1) + 8 * i);
        bundleIdentifier = [v16 bundleIdentifier];
        if (bundleIdentifier)
        {
          v18 = bundleIdentifier;
          bundleIdentifier2 = [v16 bundleIdentifier];
          uUIDString = [bundleIdentifier2 UUIDString];

          if (uUIDString)
          {
            bundleIdentifier3 = [v16 bundleIdentifier];
            uUIDString2 = [bundleIdentifier3 UUIDString];
            [v10 setObject:v16 forKeyedSubscript:uUIDString2];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v81 objects:v99 count:16];
    }

    while (v13);
  }

  locationContextEmbedding = [v72 locationContextEmbedding];
  v24 = [(PCWorkoutPredictionAlgorithm *)self isHomeOrWorkLocation:locationContextEmbedding];

  v65 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v25 = v63;
  v26 = [v25 countByEnumeratingWithState:&v77 objects:v98 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v78;
    v29 = @"home/work";
    if (!v24)
    {
      v29 = @"other";
    }

    v64 = v29;
    v66 = *v78;
    v67 = v25;
    do
    {
      v30 = 0;
      v68 = v27;
      do
      {
        if (*v78 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v77 + 1) + 8 * v30);
        identifier = [v31 identifier];

        if (identifier)
        {
          clusterMetadata = [v31 clusterMetadata];
          subSuggestionIDsBeforePruning = [clusterMetadata subSuggestionIDsBeforePruning];

          if (subSuggestionIDsBeforePruning && [subSuggestionIDsBeforePruning count])
          {
            v70 = v30;
            array = [MEMORY[0x1E695DF70] array];
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v69 = subSuggestionIDsBeforePruning;
            v36 = subSuggestionIDsBeforePruning;
            v37 = [v36 countByEnumeratingWithState:&v73 objects:v97 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v74;
              do
              {
                for (j = 0; j != v38; ++j)
                {
                  if (*v74 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = *(*(&v73 + 1) + 8 * j);
                  v42 = [v10 objectForKeyedSubscript:v41];
                  if (v42)
                  {
                    v43 = [PCEmbeddingDistanceCalculator extractFeatureDistancesBetweenEmbedding:v72 andEmbedding:v42 withCluster:v31];
                    [(PCWorkoutPredictionAlgorithm *)self calculateScoreFromFeatures:v43 identifier:v41];
                    v44 = [MEMORY[0x1E696AD98] numberWithDouble:?];
                    [array addObject:v44];
                  }

                  else
                  {
                    v43 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v86 = v41;
                      _os_log_impl(&dword_1CEE74000, v43, OS_LOG_TYPE_ERROR, "Embedding not found for bundleID: %@", buf, 0xCu);
                    }
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v73 objects:v97 count:16];
              }

              while (v38);
            }

            if ([array count])
            {
              [PCEmbeddingDistanceCalculator calculateValidMean:array];
              v25 = v67;
              subSuggestionIDsBeforePruning = v69;
              v30 = v70;
              if (v45 <= 0.0)
              {
                v51 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  identifier2 = [v31 identifier];
                  v58 = [array count];
                  *buf = 138412546;
                  v86 = identifier2;
                  v87 = 2048;
                  v88 = v58;
                  _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_ERROR, "Cluster %@: Could not compute mean probability (numWorkouts=%lu)", buf, 0x16u);
                  goto LABEL_51;
                }
              }

              else
              {
                v46 = v45;
                [(PCWorkoutPredictionAlgorithm *)self mapScoreToProbability:v72 forVisit:?];
                v48 = v47;
                v49 = [MEMORY[0x1E696AD98] numberWithDouble:?];
                identifier3 = [v31 identifier];
                [v65 setObject:v49 forKeyedSubscript:identifier3];

                v51 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  identifier2 = [v31 identifier];
                  activityType = [v31 activityType];
                  v54 = activityType;
                  if (activityType)
                  {
                    v55 = activityType;
                  }

                  else
                  {
                    v55 = @"unknown";
                  }

                  v56 = [array count];
                  *buf = 138544642;
                  v86 = identifier2;
                  v87 = 2114;
                  v88 = v55;
                  v89 = 2050;
                  v90 = v48;
                  v91 = 2050;
                  v92 = v46;
                  v93 = 2050;
                  v94 = v56;
                  v95 = 2114;
                  v96 = v64;
                  _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_DEFAULT, "Cluster %{public}@ (%{public}@), meanProbability=%{public}.3f, meanScore=%{public}.3f, numWorkouts=%{public}lu, location=%{public}@", buf, 0x3Eu);

LABEL_51:
                }
              }

              v28 = v66;
              v27 = v68;
            }

            else
            {
              v28 = v66;
              v25 = v67;
              v27 = v68;
              subSuggestionIDsBeforePruning = v69;
              v30 = v70;
            }
          }

          else
          {
            array = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
            {
              identifier4 = [v31 identifier];
              *buf = 138412290;
              v86 = identifier4;
              _os_log_impl(&dword_1CEE74000, array, OS_LOG_TYPE_ERROR, "Cluster %@ has no workouts", buf, 0xCu);
            }
          }

          goto LABEL_54;
        }

        subSuggestionIDsBeforePruning = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(subSuggestionIDsBeforePruning, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, subSuggestionIDsBeforePruning, OS_LOG_TYPE_ERROR, "Cluster has null identifier", buf, 2u);
        }

LABEL_54:

        ++v30;
      }

      while (v30 != v27);
      v27 = [v25 countByEnumeratingWithState:&v77 objects:v98 count:16];
    }

    while (v27);
  }

  embeddingsCopy = v62;
  clustersCopy = v63;
LABEL_65:

  return v65;
}

- (id)generateWorkoutPredictionsFromProbabilities:(id)probabilities atTime:(double)time currentVisit:(id)visit embeddings:(id)embeddings clusters:(id)clusters
{
  v106 = *MEMORY[0x1E69E9840];
  probabilitiesCopy = probabilities;
  visitCopy = visit;
  embeddingsCopy = embeddings;
  clustersCopy = clusters;
  if (!probabilitiesCopy || ![probabilitiesCopy count])
  {
    v74 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v75 = "No clusters with probabilities to generate predictions";
      v76 = v74;
      v77 = OS_LOG_TYPE_INFO;
LABEL_80:
      _os_log_impl(&dword_1CEE74000, v76, v77, v75, buf, 2u);
    }

LABEL_81:

    v71 = objc_opt_new();
    goto LABEL_82;
  }

  if (!embeddingsCopy || ![embeddingsCopy count])
  {
    v74 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v75 = "No embeddings provided to generate predictions";
      v76 = v74;
      v77 = OS_LOG_TYPE_ERROR;
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (!visitCopy)
  {
    v74 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v74, OS_LOG_TYPE_ERROR, "No current visit provided to generate predictions", buf, 2u);
    }

    goto LABEL_81;
  }

  v81 = embeddingsCopy;
  v84 = objc_opt_new();
  v80 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v87 = probabilitiesCopy;
  v86 = [(PCWorkoutPredictionAlgorithm *)self _sortClustersByProbability:probabilitiesCopy];
  v14 = objc_opt_new();
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v79 = clustersCopy;
  obj = clustersCopy;
  v15 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v95;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v95 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v94 + 1) + 8 * i);
        identifier = [v19 identifier];

        if (identifier)
        {
          identifier2 = [v19 identifier];
          [v14 setObject:v19 forKeyedSubscript:identifier2];

          v22 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            identifier3 = [v19 identifier];
            activityType = [v19 activityType];
            v25 = activityType;
            *buf = 138412546;
            v26 = @"<nil>";
            if (activityType)
            {
              v26 = activityType;
            }

            v100 = identifier3;
            v101 = 2112;
            v102 = *&v26;
            _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_DEBUG, "Added cluster to map: %@, activity: %@", buf, 0x16u);
          }
        }

        else
        {
          v22 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_ERROR, "Cluster has nil identifier and cannot be mapped", buf, 2u);
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    }

    while (v16);
  }

  v27 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  probabilitiesCopy = v87;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v14 count];
    v29 = [obj count];
    v30 = [v87 count];
    *buf = 134218496;
    v100 = v28;
    v101 = 2048;
    v102 = *&v29;
    v103 = 2048;
    v104 = *&v30;
    _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "Mapped %lu Clusters to UUIDs (totalClusters=%lu, numClusterProbabilities=%lu)", buf, 0x20u);
  }

  v82 = [(PCWorkoutPredictionAlgorithm *)self _buildWorkoutTypeLocationMapping:v81];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v88 = v86;
  v31 = [v88 countByEnumeratingWithState:&v90 objects:v98 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v91;
    do
    {
      v34 = 0;
      do
      {
        if (*v91 != v33)
        {
          objc_enumerationMutation(v88);
        }

        v35 = *(*(&v90 + 1) + 8 * v34);
        v36 = [probabilitiesCopy objectForKeyedSubscript:v35];
        [v36 doubleValue];
        v38 = v37;

        v39 = (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v40 = ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v38 >= 0.0)
        {
          v40 = 0;
          v39 = 0;
        }

        if ((*&v38 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v39 = 1;
        }

        v41 = (*&v38 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v39;
        if ((v41 | v40) != 1)
        {
          v43 = [v14 objectForKeyedSubscript:v35];
          v42 = v43;
          if (v43)
          {
            activityType2 = [v43 activityType];
            if (activityType2 && (v45 = activityType2, -[NSObject activityType](v42, "activityType"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 length], v46, v45, v47))
            {
              activityType3 = [v42 activityType];
              v49 = [(PCWorkoutPredictionAlgorithm *)self _isWorkoutTypeAlreadyPredicted:activityType3 inPredictions:v84];

              v50 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                activityType4 = [v42 activityType];
                *buf = 138543874;
                v100 = v35;
                v101 = 2114;
                v102 = *&activityType4;
                v103 = 1026;
                LODWORD(v104) = v49;
                _os_log_impl(&dword_1CEE74000, v50, OS_LOG_TYPE_DEFAULT, "Before De-duping: cluster=%{public}@, activityType='%{public}@', isAlreadyPredicted=%{public}d", buf, 0x1Cu);
              }

              if (v49)
              {
                probabilitiesCopy = v87;
                goto LABEL_54;
              }

              activityType5 = [v42 activityType];
              v59 = [(PCWorkoutPredictionAlgorithm *)self _hasUserWorkedOutForActivityType:activityType5 nearCurrentVisit:visitCopy workoutTypeLocationMap:v82];

              v52 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              v60 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
              if (v59)
              {
                if (v60)
                {
                  identifier4 = [v42 identifier];
                  activityType6 = [v42 activityType];
                  *buf = 138543874;
                  v100 = identifier4;
                  v101 = 2114;
                  v102 = *&activityType6;
                  v103 = 2050;
                  v104 = v38;
                  _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_INFO, "Selected cluster %{public}@, workoutType: %{public}@, probability: %{public}.4f", buf, 0x20u);
                }

                activityType7 = [v42 activityType];
                v64 = [activityType7 isEqualToString:@"Outdoor Walking"];

                if (v64)
                {
                  probabilitiesCopy = v87;
                  if (v38 > 0.89)
                  {
                    v65 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                    {
                      *buf = 134349312;
                      v100 = 0x3FEC7AE147AE147BLL;
                      v101 = 2050;
                      v102 = v38;
                      _os_log_impl(&dword_1CEE74000, v65, OS_LOG_TYPE_INFO, "Capping outdoor walk probability to %{public}.2f from %{public}f", buf, 0x16u);
                    }

                    v38 = 0.89;
                  }
                }

                else
                {
                  probabilitiesCopy = v87;
                }

                v52 = [(PCWorkoutPredictionAlgorithm *)self _createPredictionFromCluster:v42 probability:v80 atTime:v81 embeddings:v38];
                if (v52)
                {
                  [v84 addObject:v52];
                  allKeys = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                  if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEFAULT))
                  {
                    activityType8 = [v42 activityType];
                    v68 = [v84 count];
                    *buf = 138543618;
                    v100 = activityType8;
                    v101 = 2050;
                    v102 = *&v68;
                    _os_log_impl(&dword_1CEE74000, allKeys, OS_LOG_TYPE_DEFAULT, "Created prediction for activity type: %{public}@, total predictions now: %{public}lu", buf, 0x16u);

                    probabilitiesCopy = v87;
                  }

LABEL_52:

LABEL_53:
                  goto LABEL_54;
                }

                allKeys = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                if (!os_log_type_enabled(allKeys, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_52;
                }

                *buf = 138543362;
                v100 = v35;
                v55 = allKeys;
                v56 = OS_LOG_TYPE_ERROR;
                v57 = "Failed to create prediction for cluster %{public}@";
LABEL_51:
                _os_log_impl(&dword_1CEE74000, v55, v56, v57, buf, 0xCu);
                goto LABEL_52;
              }

              if (v60)
              {
                activityType9 = [v42 activityType];
                *buf = 138412546;
                v100 = activityType9;
                v101 = 2112;
                v102 = *&v35;
                _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_INFO, "User has not done %@ workouts at current location, skipping cluster %@", buf, 0x16u);
              }
            }

            else
            {
              v52 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v100 = v35;
                _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_ERROR, "Cluster %{public}@ has no activity type", buf, 0xCu);
              }
            }

            probabilitiesCopy = v87;
            goto LABEL_53;
          }

          v53 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v100 = v35;
            _os_log_impl(&dword_1CEE74000, v53, OS_LOG_TYPE_ERROR, "Could not find cluster for UUID %@", buf, 0xCu);
          }

          v52 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_53;
          }

          allKeys = [v14 allKeys];
          *buf = 138412290;
          v100 = allKeys;
          v55 = v52;
          v56 = OS_LOG_TYPE_DEBUG;
          v57 = "Available cluster UUIDs: %@";
          goto LABEL_51;
        }

        v42 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v100 = v35;
          v101 = 2048;
          v102 = v38;
          _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_ERROR, "Skipping cluster %@ - invalid probability %.4f", buf, 0x16u);
        }

LABEL_54:

        ++v34;
      }

      while (v32 != v34);
      v69 = [v88 countByEnumeratingWithState:&v90 objects:v98 count:16];
      v32 = v69;
    }

    while (v69);
  }

  v70 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  clustersCopy = v79;
  v71 = v84;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v72 = [v84 count];
    v73 = [obj count];
    *buf = 134349312;
    v100 = v72;
    v101 = 2050;
    v102 = *&v73;
    _os_log_impl(&dword_1CEE74000, v70, OS_LOG_TYPE_DEFAULT, "Prediction completed with %{public}lu predictions from %{public}lu clusters", buf, 0x16u);
  }

  embeddingsCopy = v81;
LABEL_82:

  return v71;
}

- (id)_sortClustersByProbability:(id)probability
{
  probabilityCopy = probability;
  allKeys = [probabilityCopy allKeys];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PCWorkoutPredictionAlgorithm__sortClustersByProbability___block_invoke;
  v8[3] = &unk_1E83B8178;
  v9 = probabilityCopy;
  v5 = probabilityCopy;
  v6 = [allKeys sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __59__PCWorkoutPredictionAlgorithm__sortClustersByProbability___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v8 compare:v7];
  return v9;
}

- (BOOL)_isWorkoutTypeAlreadyPredicted:(id)predicted inPredictions:(id)predictions
{
  v60 = *MEMORY[0x1E69E9840];
  predictedCopy = predicted;
  predictionsCopy = predictions;
  v7 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v53 = predictedCopy;
    v54 = 2048;
    *v55 = [predictionsCopy count];
    _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_INFO, "Checking if '%@' is already predicted in %lu existing predictions", buf, 0x16u);
  }

  v8 = predictedCopy;
  v9 = objc_msgSend(v8, "rangeOfString:", @" (");
  v10 = v8;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v8 substringToIndex:v9];

    v11 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v53 = v8;
      v54 = 2112;
      *v55 = v10;
      _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_DEBUG, "Updated activity type from '%@' to '%@'", buf, 0x16u);
    }
  }

  v12 = v10;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = [&unk_1F4BDE110 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(&unk_1F4BDE110);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        if ([v12 hasPrefix:v17])
        {
          v18 = [v12 substringFromIndex:{objc_msgSend(v17, "length")}];

          v19 = [&unk_1F4BDE110 objectForKeyedSubscript:v17];
          intValue = [v19 intValue];

          v20 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v53 = v18;
            v54 = 1024;
            *v55 = intValue;
            *&v55[4] = 2112;
            *&v55[6] = v12;
            _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEBUG, "Extracted base='%@', location=%d from '%@'", buf, 0x1Cu);
          }

          goto LABEL_19;
        }
      }

      v14 = [&unk_1F4BDE110 countByEnumeratingWithState:&v48 objects:v59 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  intValue = 0;
  v18 = v12;
LABEL_19:
  v21 = objc_msgSend(v18, "rangeOfString:", @" (");
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v18;
  }

  else
  {
    v22 = [v18 substringToIndex:v21];

    v23 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v53 = v22;
      _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_DEBUG, "Updated base activity type to '%@'", buf, 0xCu);
    }
  }

  v24 = v22;
  v41 = v8;
  v42 = v24;
  if ([v24 isEqualToString:@"AmericanFootball"])
  {
    v25 = 1;
  }

  else if ([v24 isEqualToString:@"Archery"])
  {
    v25 = 2;
  }

  else if ([v24 isEqualToString:@"AustralianFootball"])
  {
    v25 = 3;
  }

  else if ([v24 isEqualToString:@"Badminton"])
  {
    v25 = 4;
  }

  else if ([v24 isEqualToString:@"Baseball"])
  {
    v25 = 5;
  }

  else if ([v24 isEqualToString:@"Basketball"])
  {
    v25 = 6;
  }

  else if ([v24 isEqualToString:@"Bowling"])
  {
    v25 = 7;
  }

  else if ([v24 isEqualToString:@"Boxing"])
  {
    v25 = 8;
  }

  else if ([v24 isEqualToString:@"Climbing"])
  {
    v25 = 9;
  }

  else if ([v24 isEqualToString:@"Cricket"])
  {
    v25 = 10;
  }

  else if ([v24 isEqualToString:@"CrossTraining"])
  {
    v25 = 11;
  }

  else if ([v24 isEqualToString:@"Curling"])
  {
    v25 = 12;
  }

  else if ([v24 isEqualToString:@"Cycling"])
  {
    v25 = 13;
  }

  else if ([v24 isEqualToString:@"Dance"])
  {
    v25 = 14;
  }

  else if ([v24 isEqualToString:@"DanceInspiredTraining"])
  {
    v25 = 15;
  }

  else if ([v24 isEqualToString:@"Elliptical"])
  {
    v25 = 16;
  }

  else if ([v24 isEqualToString:@"EquestrianSports"])
  {
    v25 = 17;
  }

  else if ([v24 isEqualToString:@"Fencing"])
  {
    v25 = 18;
  }

  else if ([v24 isEqualToString:@"Fishing"])
  {
    v25 = 19;
  }

  else if ([v24 isEqualToString:@"FunctionalStrengthTraining"])
  {
    v25 = 20;
  }

  else if ([v24 isEqualToString:@"Golf"])
  {
    v25 = 21;
  }

  else if ([v24 isEqualToString:@"Gymnastics"])
  {
    v25 = 22;
  }

  else if ([v24 isEqualToString:@"Handball"])
  {
    v25 = 23;
  }

  else if ([v24 isEqualToString:@"Hiking"])
  {
    v25 = 24;
  }

  else if ([v24 isEqualToString:@"Hockey"])
  {
    v25 = 25;
  }

  else if ([v24 isEqualToString:@"Hunting"])
  {
    v25 = 26;
  }

  else if ([v24 isEqualToString:@"Lacrosse"])
  {
    v25 = 27;
  }

  else if ([v24 isEqualToString:@"MartialArts"])
  {
    v25 = 28;
  }

  else if ([v24 isEqualToString:@"MindAndBody"])
  {
    v25 = 29;
  }

  else if ([v24 isEqualToString:@"MixedMetabolicCardioTraining "])
  {
    v25 = 30;
  }

  else if ([v24 isEqualToString:@"PaddleSports"])
  {
    v25 = 31;
  }

  else if ([v24 isEqualToString:@"Play"])
  {
    v25 = 32;
  }

  else if ([v24 isEqualToString:@"PreparationAndRecovery"])
  {
    v25 = 33;
  }

  else if ([v24 isEqualToString:@"Racquetball"])
  {
    v25 = 34;
  }

  else if ([v24 isEqualToString:@"Rowing"])
  {
    v25 = 35;
  }

  else if ([v24 isEqualToString:@"Rugby"])
  {
    v25 = 36;
  }

  else if ([v24 isEqualToString:@"Running"])
  {
    v25 = 37;
  }

  else if ([v24 isEqualToString:@"Sailing"])
  {
    v25 = 38;
  }

  else if ([v24 isEqualToString:@"SkatingSports"])
  {
    v25 = 39;
  }

  else if ([v24 isEqualToString:@"SnowSports"])
  {
    v25 = 40;
  }

  else if ([v24 isEqualToString:@"Soccer"])
  {
    v25 = 41;
  }

  else if ([v24 isEqualToString:@"Softball"])
  {
    v25 = 42;
  }

  else if ([v24 isEqualToString:@"Squash"])
  {
    v25 = 43;
  }

  else if ([v24 isEqualToString:@"StairClimbing"])
  {
    v25 = 44;
  }

  else if ([v24 isEqualToString:@"SurfingSports"])
  {
    v25 = 45;
  }

  else if ([v24 isEqualToString:@"Swimming"])
  {
    v25 = 46;
  }

  else if ([v24 isEqualToString:@"TableTennis"])
  {
    v25 = 47;
  }

  else if ([v24 isEqualToString:@"Tennis"])
  {
    v25 = 48;
  }

  else if ([v24 isEqualToString:@"TrackAndField"])
  {
    v25 = 49;
  }

  else if ([v24 isEqualToString:@"TraditionalStrengthTraining"])
  {
    v25 = 50;
  }

  else if ([v24 isEqualToString:@"Volleyball"])
  {
    v25 = 51;
  }

  else if ([v24 isEqualToString:@"Walking"])
  {
    v25 = 52;
  }

  else if ([v24 isEqualToString:@"WaterFitness"])
  {
    v25 = 53;
  }

  else if ([v24 isEqualToString:@"WaterPolo"])
  {
    v25 = 54;
  }

  else if ([v24 isEqualToString:@"WaterSports"])
  {
    v25 = 55;
  }

  else if ([v24 isEqualToString:@"Wrestling"])
  {
    v25 = 56;
  }

  else if ([v24 isEqualToString:@"Yoga"])
  {
    v25 = 57;
  }

  else if ([v24 isEqualToString:@"Barre"])
  {
    v25 = 58;
  }

  else if ([v24 isEqualToString:@"CoreTraining"])
  {
    v25 = 59;
  }

  else if ([v24 isEqualToString:@"CrossCountrySkiing"])
  {
    v25 = 60;
  }

  else if ([v24 isEqualToString:@"DownhillSkiing"])
  {
    v25 = 61;
  }

  else if ([v24 isEqualToString:@"Flexibility"])
  {
    v25 = 62;
  }

  else if ([v24 isEqualToString:@"HighIntensityIntervalTraining"])
  {
    v25 = 63;
  }

  else if ([v24 isEqualToString:@"JumpRope"])
  {
    v25 = 64;
  }

  else if ([v24 isEqualToString:@"Kickboxing"])
  {
    v25 = 65;
  }

  else if ([v24 isEqualToString:@"Pilates"])
  {
    v25 = 66;
  }

  else if ([v24 isEqualToString:@"Snowboarding"])
  {
    v25 = 67;
  }

  else if ([v24 isEqualToString:@"Stairs"])
  {
    v25 = 68;
  }

  else if ([v24 isEqualToString:@"StepTraining"])
  {
    v25 = 69;
  }

  else if ([v24 isEqualToString:@"WheelchairWalkPace"])
  {
    v25 = 70;
  }

  else if ([v24 isEqualToString:@"WheelchairRunPace"])
  {
    v25 = 71;
  }

  else if ([v24 isEqualToString:@"TaiChi"])
  {
    v25 = 72;
  }

  else if ([v24 isEqualToString:@"MixedCardio"])
  {
    v25 = 73;
  }

  else if ([v24 isEqualToString:@"HandCycling"])
  {
    v25 = 74;
  }

  else if ([v24 isEqualToString:@"DiscSports"])
  {
    v25 = 75;
  }

  else if ([v24 isEqualToString:@"FitnessGaming"])
  {
    v25 = 76;
  }

  else if ([v24 isEqualToString:@"CardioDance"])
  {
    v25 = 77;
  }

  else if ([v24 isEqualToString:@"SocialDance"])
  {
    v25 = 78;
  }

  else if ([v24 isEqualToString:@"Pickleball"])
  {
    v25 = 79;
  }

  else if ([v24 isEqualToString:@"Cooldown"])
  {
    v25 = 80;
  }

  else if ([v24 isEqualToString:@"SwimBikeRun"])
  {
    v25 = 82;
  }

  else if ([v24 isEqualToString:@"Transition"])
  {
    v25 = 83;
  }

  else if ([v24 isEqualToString:@"UnderwaterDiving"])
  {
    v25 = 84;
  }

  else if ([v24 isEqualToString:@"Other"])
  {
    v25 = 3000;
  }

  else
  {
    v25 = 0;
  }

  v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v53 = v24;
    v54 = 2050;
    *v55 = v25;
    _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_INFO, "Converted '%{public}@' to workout type %{public}llu", buf, 0x16u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = predictionsCopy;
  v28 = [v27 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    while (2)
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v44 + 1) + 8 * j);
        v33 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          workoutActivityType = [v32 workoutActivityType];
          workoutLocationType = [v32 workoutLocationType];
          *buf = 134349824;
          v53 = workoutActivityType;
          v54 = 1026;
          *v55 = workoutLocationType;
          *&v55[4] = 2050;
          *&v55[6] = v25;
          v56 = 1026;
          v57 = intValue;
          _os_log_impl(&dword_1CEE74000, v33, OS_LOG_TYPE_INFO, "Comparing with existing prediction: workoutType=%{public}llu, locationType=%{public}d (looking for workoutType=%{public}llu, locationType=%{public}d)", buf, 0x22u);
        }

        if ([v32 workoutActivityType] == v25 && objc_msgSend(v32, "workoutLocationType") == intValue)
        {
          v39 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          v37 = v41;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v53 = v41;
            v54 = 2050;
            *v55 = v25;
            *&v55[8] = 1026;
            *&v55[10] = intValue;
            _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_INFO, "Workout %@ (workoutType=%{public}llu, locationType=%{public}d) is already predicted, skipping", buf, 0x1Cu);
          }

          v38 = 1;
          v36 = v27;
          goto LABEL_209;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v36 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v37 = v41;
    v53 = v41;
    _os_log_impl(&dword_1CEE74000, v36, OS_LOG_TYPE_DEBUG, "Workout '%{public}@' is NOT already predicted", buf, 0xCu);
    v38 = 0;
  }

  else
  {
    v38 = 0;
    v37 = v41;
  }

LABEL_209:

  return v38;
}

- (id)_createPredictionFromCluster:(id)cluster probability:(double)probability atTime:(id)time embeddings:(id)embeddings
{
  timeCopy = time;
  clusterCopy = cluster;
  v12 = [(PCWorkoutPredictionAlgorithm *)self _subselectEmbeddings:embeddings fromCluster:clusterCopy];
  v13 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContext *)v13 setProbability:probability];
  [(PCPPredictedContext *)v13 setContextType:4];
  v14 = [(PCWorkoutPredictionAlgorithm *)self _createDateIntervalStartingAt:timeCopy probability:v12 embeddings:probability];

  [(PCPPredictedContext *)v13 setDateInterval:v14];
  v15 = [(PCWorkoutPredictionAlgorithm *)self _createSourcesFromEmbeddings:v12];
  [(PCPPredictedContext *)v13 setSources:v15];

  v16 = objc_alloc_init(PCPPredictedContextWorkout);
  activityType = [clusterCopy activityType];
  [(PCWorkoutPredictionAlgorithm *)self _updateActivityInfoForPrediction:v16 fromActivityType:activityType];

  [(PCPPredictedContextWorkout *)v16 setPredictedContext:v13];
  sourceBundleIdentifier = [clusterCopy sourceBundleIdentifier];

  [(PCPPredictedContextWorkout *)v16 setSourceBundleIdentifier:sourceBundleIdentifier];

  return v16;
}

- (void)_updateActivityInfoForPrediction:(id)prediction fromActivityType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  predictionCopy = prediction;
  typeCopy = type;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [&unk_1F4BDE138 countByEnumeratingWithState:&v16 objects:v20 count:16];
  v8 = typeCopy;
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(&unk_1F4BDE138);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([typeCopy hasPrefix:v12])
        {
          v8 = [typeCopy substringFromIndex:{objc_msgSend(v12, "length")}];

          v13 = [&unk_1F4BDE138 objectForKeyedSubscript:v12];
          [predictionCopy setWorkoutLocationType:{objc_msgSend(v13, "intValue")}];

          goto LABEL_11;
        }
      }

      v9 = [&unk_1F4BDE138 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v8 = typeCopy;
  }

LABEL_11:
  v14 = v8;
  if ([v14 isEqualToString:@"AmericanFootball"])
  {
    v15 = 1;
  }

  else if ([v14 isEqualToString:@"Archery"])
  {
    v15 = 2;
  }

  else if ([v14 isEqualToString:@"AustralianFootball"])
  {
    v15 = 3;
  }

  else if ([v14 isEqualToString:@"Badminton"])
  {
    v15 = 4;
  }

  else if ([v14 isEqualToString:@"Baseball"])
  {
    v15 = 5;
  }

  else if ([v14 isEqualToString:@"Basketball"])
  {
    v15 = 6;
  }

  else if ([v14 isEqualToString:@"Bowling"])
  {
    v15 = 7;
  }

  else if ([v14 isEqualToString:@"Boxing"])
  {
    v15 = 8;
  }

  else if ([v14 isEqualToString:@"Climbing"])
  {
    v15 = 9;
  }

  else if ([v14 isEqualToString:@"Cricket"])
  {
    v15 = 10;
  }

  else if ([v14 isEqualToString:@"CrossTraining"])
  {
    v15 = 11;
  }

  else if ([v14 isEqualToString:@"Curling"])
  {
    v15 = 12;
  }

  else if ([v14 isEqualToString:@"Cycling"])
  {
    v15 = 13;
  }

  else if ([v14 isEqualToString:@"Dance"])
  {
    v15 = 14;
  }

  else if ([v14 isEqualToString:@"DanceInspiredTraining"])
  {
    v15 = 15;
  }

  else if ([v14 isEqualToString:@"Elliptical"])
  {
    v15 = 16;
  }

  else if ([v14 isEqualToString:@"EquestrianSports"])
  {
    v15 = 17;
  }

  else if ([v14 isEqualToString:@"Fencing"])
  {
    v15 = 18;
  }

  else if ([v14 isEqualToString:@"Fishing"])
  {
    v15 = 19;
  }

  else if ([v14 isEqualToString:@"FunctionalStrengthTraining"])
  {
    v15 = 20;
  }

  else if ([v14 isEqualToString:@"Golf"])
  {
    v15 = 21;
  }

  else if ([v14 isEqualToString:@"Gymnastics"])
  {
    v15 = 22;
  }

  else if ([v14 isEqualToString:@"Handball"])
  {
    v15 = 23;
  }

  else if ([v14 isEqualToString:@"Hiking"])
  {
    v15 = 24;
  }

  else if ([v14 isEqualToString:@"Hockey"])
  {
    v15 = 25;
  }

  else if ([v14 isEqualToString:@"Hunting"])
  {
    v15 = 26;
  }

  else if ([v14 isEqualToString:@"Lacrosse"])
  {
    v15 = 27;
  }

  else if ([v14 isEqualToString:@"MartialArts"])
  {
    v15 = 28;
  }

  else if ([v14 isEqualToString:@"MindAndBody"])
  {
    v15 = 29;
  }

  else if ([v14 isEqualToString:@"MixedMetabolicCardioTraining "])
  {
    v15 = 30;
  }

  else if ([v14 isEqualToString:@"PaddleSports"])
  {
    v15 = 31;
  }

  else if ([v14 isEqualToString:@"Play"])
  {
    v15 = 32;
  }

  else if ([v14 isEqualToString:@"PreparationAndRecovery"])
  {
    v15 = 33;
  }

  else if ([v14 isEqualToString:@"Racquetball"])
  {
    v15 = 34;
  }

  else if ([v14 isEqualToString:@"Rowing"])
  {
    v15 = 35;
  }

  else if ([v14 isEqualToString:@"Rugby"])
  {
    v15 = 36;
  }

  else if ([v14 isEqualToString:@"Running"])
  {
    v15 = 37;
  }

  else if ([v14 isEqualToString:@"Sailing"])
  {
    v15 = 38;
  }

  else if ([v14 isEqualToString:@"SkatingSports"])
  {
    v15 = 39;
  }

  else if ([v14 isEqualToString:@"SnowSports"])
  {
    v15 = 40;
  }

  else if ([v14 isEqualToString:@"Soccer"])
  {
    v15 = 41;
  }

  else if ([v14 isEqualToString:@"Softball"])
  {
    v15 = 42;
  }

  else if ([v14 isEqualToString:@"Squash"])
  {
    v15 = 43;
  }

  else if ([v14 isEqualToString:@"StairClimbing"])
  {
    v15 = 44;
  }

  else if ([v14 isEqualToString:@"SurfingSports"])
  {
    v15 = 45;
  }

  else if ([v14 isEqualToString:@"Swimming"])
  {
    v15 = 46;
  }

  else if ([v14 isEqualToString:@"TableTennis"])
  {
    v15 = 47;
  }

  else if ([v14 isEqualToString:@"Tennis"])
  {
    v15 = 48;
  }

  else if ([v14 isEqualToString:@"TrackAndField"])
  {
    v15 = 49;
  }

  else if ([v14 isEqualToString:@"TraditionalStrengthTraining"])
  {
    v15 = 50;
  }

  else if ([v14 isEqualToString:@"Volleyball"])
  {
    v15 = 51;
  }

  else if ([v14 isEqualToString:@"Walking"])
  {
    v15 = 52;
  }

  else if ([v14 isEqualToString:@"WaterFitness"])
  {
    v15 = 53;
  }

  else if ([v14 isEqualToString:@"WaterPolo"])
  {
    v15 = 54;
  }

  else if ([v14 isEqualToString:@"WaterSports"])
  {
    v15 = 55;
  }

  else if ([v14 isEqualToString:@"Wrestling"])
  {
    v15 = 56;
  }

  else if ([v14 isEqualToString:@"Yoga"])
  {
    v15 = 57;
  }

  else if ([v14 isEqualToString:@"Barre"])
  {
    v15 = 58;
  }

  else if ([v14 isEqualToString:@"CoreTraining"])
  {
    v15 = 59;
  }

  else if ([v14 isEqualToString:@"CrossCountrySkiing"])
  {
    v15 = 60;
  }

  else if ([v14 isEqualToString:@"DownhillSkiing"])
  {
    v15 = 61;
  }

  else if ([v14 isEqualToString:@"Flexibility"])
  {
    v15 = 62;
  }

  else if ([v14 isEqualToString:@"HighIntensityIntervalTraining"])
  {
    v15 = 63;
  }

  else if ([v14 isEqualToString:@"JumpRope"])
  {
    v15 = 64;
  }

  else if ([v14 isEqualToString:@"Kickboxing"])
  {
    v15 = 65;
  }

  else if ([v14 isEqualToString:@"Pilates"])
  {
    v15 = 66;
  }

  else if ([v14 isEqualToString:@"Snowboarding"])
  {
    v15 = 67;
  }

  else if ([v14 isEqualToString:@"Stairs"])
  {
    v15 = 68;
  }

  else if ([v14 isEqualToString:@"StepTraining"])
  {
    v15 = 69;
  }

  else if ([v14 isEqualToString:@"WheelchairWalkPace"])
  {
    v15 = 70;
  }

  else if ([v14 isEqualToString:@"WheelchairRunPace"])
  {
    v15 = 71;
  }

  else if ([v14 isEqualToString:@"TaiChi"])
  {
    v15 = 72;
  }

  else if ([v14 isEqualToString:@"MixedCardio"])
  {
    v15 = 73;
  }

  else if ([v14 isEqualToString:@"HandCycling"])
  {
    v15 = 74;
  }

  else if ([v14 isEqualToString:@"DiscSports"])
  {
    v15 = 75;
  }

  else if ([v14 isEqualToString:@"FitnessGaming"])
  {
    v15 = 76;
  }

  else if ([v14 isEqualToString:@"CardioDance"])
  {
    v15 = 77;
  }

  else if ([v14 isEqualToString:@"SocialDance"])
  {
    v15 = 78;
  }

  else if ([v14 isEqualToString:@"Pickleball"])
  {
    v15 = 79;
  }

  else if ([v14 isEqualToString:@"Cooldown"])
  {
    v15 = 80;
  }

  else if ([v14 isEqualToString:@"SwimBikeRun"])
  {
    v15 = 82;
  }

  else if ([v14 isEqualToString:@"Transition"])
  {
    v15 = 83;
  }

  else if ([v14 isEqualToString:@"UnderwaterDiving"])
  {
    v15 = 84;
  }

  else if ([v14 isEqualToString:@"Other"])
  {
    v15 = 3000;
  }

  else
  {
    v15 = 0;
  }

  [predictionCopy setWorkoutActivityType:v15];
}

- (id)_createDateIntervalStartingAt:(id)at probability:(double)probability embeddings:(id)embeddings
{
  v56 = *MEMORY[0x1E69E9840];
  atCopy = at;
  embeddingsCopy = embeddings;
  v9 = [atCopy dateByAddingTimeInterval:10.0];
  v10 = [v9 dateByAddingTimeInterval:4500.0];
  v11 = v10;
  if (probability >= 0.9)
  {
    v44 = v9;
    v42 = v10;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    [currentCalendar setTimeZone:systemTimeZone];

    v41 = currentCalendar;
    v14 = [currentCalendar components:96 fromDate:atCopy];
    [v14 setSecond:0];
    v15 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v43 = embeddingsCopy;
    v16 = embeddingsCopy;
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v45 + 1) + 8 * i);
          timeOfDay = [v21 timeOfDay];

          if (timeOfDay)
          {
            timeOfDay2 = [v21 timeOfDay];
            [PCEmbedding secondsFromTimeOfDay:v14 toTimeOfDay:timeOfDay2];
            v25 = v24;

            if (v25 >= 0.0 && v25 <= 3600.0)
            {
              [v15 addObject:v21];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v18);
    }

    [v15 sortUsingComparator:&__block_literal_global_0];
    lastObject = [v15 lastObject];
    v27 = lastObject;
    if (lastObject)
    {
      timeOfDay3 = [lastObject timeOfDay];
      [PCEmbedding secondsFromTimeOfDay:v14 toTimeOfDay:timeOfDay3];
      v30 = v29;
      v31 = v29 + -480.0;
      if (v31 < 10.0)
      {
        v31 = 10.0;
      }

      v9 = [atCopy dateByAddingTimeInterval:v31];
      v32 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        [v44 timeIntervalSinceReferenceDate];
        v34 = v33;
        [v9 timeIntervalSinceReferenceDate];
        *buf = 134349568;
        v50 = v34;
        v51 = 2050;
        v52 = v35;
        v53 = 2050;
        v54 = v30;
        _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_DEFAULT, "Scheduling: Updated high-confidence prediction. currentStartTime=%{public}.1f,updatedStartTime=%{public}.1f,secondsUntilWorkout=%{public}.1f", buf, 0x20u);
      }
    }

    else
    {
      timeOfDay3 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      v9 = v44;
      if (os_log_type_enabled(timeOfDay3, OS_LOG_TYPE_INFO))
      {
        [v44 timeIntervalSinceReferenceDate];
        *buf = 134349056;
        v50 = v36;
        _os_log_impl(&dword_1CEE74000, timeOfDay3, OS_LOG_TYPE_INFO, "Scheduling: High-probability prediction, but no embeddings found in prediction period (startTime=%{public}.1f)", buf, 0xCu);
      }
    }

    embeddingsCopy = v43;

    v11 = v42;
  }

  v37 = objc_alloc_init(PCPPredictedContextDateInterval);
  v38 = objc_alloc_init(PCPPredictedContextDate);
  [v9 timeIntervalSinceReferenceDate];
  [(PCPPredictedContextDate *)v38 setDate:?];
  [(PCPPredictedContextDateInterval *)v37 setStartDate:v38];
  v39 = objc_alloc_init(PCPPredictedContextDate);
  [v11 timeIntervalSinceReferenceDate];
  [(PCPPredictedContextDate *)v39 setDate:?];
  [(PCPPredictedContextDateInterval *)v37 setEndDate:v39];

  return v37;
}

uint64_t __85__PCWorkoutPredictionAlgorithm__createDateIntervalStartingAt_probability_embeddings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 activityContextEmbedding];
  v6 = [v5 objectForKeyedSubscript:@"startTimeCFAbsolute"];

  v7 = [v4 activityContextEmbedding];

  v8 = [v7 objectForKeyedSubscript:@"startTimeCFAbsolute"];

  v9 = [v6 compare:v8];
  return v9;
}

- (id)_subselectEmbeddings:(id)embeddings fromCluster:(id)cluster
{
  v37 = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  clusterCopy = cluster;
  v6 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = clusterCopy;
  clusterMetadata = [clusterCopy clusterMetadata];
  subSuggestionIDsBeforePruning = [clusterMetadata subSuggestionIDsBeforePruning];

  obj = subSuggestionIDsBeforePruning;
  v25 = [subSuggestionIDsBeforePruning countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v23 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v9;
        v10 = *(*(&v31 + 1) + 8 * v9);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = embeddingsCopy;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              bundleIdentifier = [v16 bundleIdentifier];
              uUIDString = [bundleIdentifier UUIDString];
              v19 = [uUIDString isEqualToString:v10];

              if (v19)
              {
                [v6 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        v9 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  return v6;
}

- (id)_createSourcesFromEmbeddings:(id)embeddings
{
  v25 = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = embeddingsCopy;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = objc_alloc_init(PCPSource);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [(PCPSource *)v8 setIdentifier:v10];

        v11 = objc_alloc_init(PCPPredictedContextSource);
        v12 = objc_alloc_init(PCPHealthKitWorkout);
        activityContextEmbedding = [v7 activityContextEmbedding];
        v14 = [activityContextEmbedding objectForKeyedSubscript:@"startTimeCFAbsolute"];
        [v14 doubleValue];
        [(PCPHealthKitWorkout *)v12 setStartTimeCFAbsolute:?];

        v15 = [activityContextEmbedding objectForKeyedSubscript:@"hkObjectUUID"];
        [(PCPHealthKitWorkout *)v12 setIdentifier:v15];

        [(PCPPredictedContextSource *)v11 setHealthKitWorkout:v12];
        [(PCPPredictedContextSource *)v11 setPredictedContextSource:5];
        [(PCPSource *)v8 setPredictedContextSource:v11];
        [v19 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  return v19;
}

- (BOOL)isHomeOrWorkLocation:(id)location
{
  v13 = *MEMORY[0x1E69E9840];
  if (location)
  {
    v3 = [location objectForKeyedSubscript:@"combinedPlaceType"];
    v4 = v3;
    if (v3)
    {
      if (([v3 isEqualToString:@"Home"]& 1) != 0)
      {
        v5 = 1;
      }

      else
      {
        v5 = [v4 isEqualToString:@"Work"];
      }

      v6 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = @"other";
        if (v5)
        {
          v7 = @"home/work";
        }

        v9 = 138543618;
        v10 = v4;
        v11 = 2114;
        v12 = v7;
        _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_INFO, "Location type '%{public}@' is %{public}@", &v9, 0x16u);
      }
    }

    else
    {
      v6 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEBUG, "No combined place type found in location context", &v9, 2u);
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v4 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_DEBUG, "No location context provided to isHomeOrWorkLocation", &v9, 2u);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_buildWorkoutTypeLocationMapping:(id)mapping
{
  v51 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v4 = mappingCopy;
  if (mappingCopy && [mappingCopy count])
  {
    v5 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v37 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v43;
      v38 = *v43;
      v39 = v5;
      do
      {
        v9 = 0;
        v40 = v7;
        do
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v42 + 1) + 8 * v9);
          activityContextEmbedding = [v10 activityContextEmbedding];
          v12 = [activityContextEmbedding objectForKeyedSubscript:@"activityType"];
          v13 = v12;
          if (v12 && [v12 length])
          {
            v14 = [v5 objectForKeyedSubscript:v13];

            if (!v14)
            {
              v48[0] = @"locations";
              v15 = objc_opt_new();
              v48[1] = @"placeTypes";
              v49[0] = v15;
              v16 = objc_opt_new();
              v49[1] = v16;
              v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
              v18 = [v17 mutableCopy];
              [v5 setObject:v18 forKeyedSubscript:v13];

              v7 = v40;
            }

            v19 = [v5 objectForKeyedSubscript:v13];
            v20 = [v19 objectForKeyedSubscript:@"locations"];
            v21 = [v19 objectForKeyedSubscript:@"placeTypes"];
            locationContextEmbedding = [v10 locationContextEmbedding];
            v23 = locationContextEmbedding;
            if (locationContextEmbedding)
            {
              v24 = [locationContextEmbedding objectForKeyedSubscript:@"placeLatitude"];
              v25 = [v23 objectForKeyedSubscript:@"placeLongitude"];
              v26 = v25;
              if (v24)
              {
                if (v25)
                {
                  [v24 doubleValue];
                  v28 = v27;
                  [v26 doubleValue];
                  v30 = v29;
                  if (fabs(v28) <= 90.0 && fabs(v29) <= 180.0)
                  {
                    v31 = objc_alloc_init(PCPLocation);
                    [(PCPLocation *)v31 setLocationLatitudeDeg:v28];
                    [(PCPLocation *)v31 setLocationLongitudeDeg:v30];
                    [v20 addObject:v31];
                  }
                }
              }

              v32 = [v23 objectForKeyedSubscript:@"combinedPlaceType"];
              v33 = v32;
              if (v32 && [v32 length])
              {
                [v21 addObject:v33];
              }

              v7 = v40;
            }

            v8 = v38;
            v5 = v39;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v7);
    }

    v34 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v5 count];
      *buf = 134217984;
      v47 = v35;
      _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_INFO, "Built workout type location mapping for %lu activity types", buf, 0xCu);
    }

    v4 = v37;
  }

  else
  {
    v34 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_ERROR, "No embeddings provided to _buildWorkoutTypeLocationMapping", buf, 2u);
    }

    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

- (BOOL)_hasUserWorkedOutForActivityType:(id)type nearCurrentVisit:(id)visit workoutTypeLocationMap:(id)map
{
  v65 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  visitCopy = visit;
  mapCopy = map;
  if (typeCopy)
  {
    v10 = [typeCopy length];
    v11 = 0;
    if (mapCopy && visitCopy && v10)
    {
      v12 = [mapCopy objectForKeyedSubscript:typeCopy];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 objectForKeyedSubscript:@"locations"];
        v15 = [v13 objectForKeyedSubscript:@"placeTypes"];
        locationContextEmbedding = [visitCopy locationContextEmbedding];
        v17 = locationContextEmbedding;
        if (locationContextEmbedding)
        {
          v18 = [locationContextEmbedding objectForKeyedSubscript:@"combinedPlaceType"];
          v19 = [v17 objectForKeyedSubscript:@"placeLatitude"];
          v20 = [v17 objectForKeyedSubscript:@"placeLongitude"];
          v47 = v20;
          v48 = v19;
          if (v19)
          {
            v21 = v20;
            if (v20)
            {
              if ([v14 count])
              {
                [v19 doubleValue];
                v23 = v22;
                [v21 doubleValue];
                v25 = v24;
                if (fabs(v23) <= 90.0 && fabs(v24) <= 180.0)
                {
                  v46 = v15;
                  v55 = 0u;
                  v56 = 0u;
                  v53 = 0u;
                  v54 = 0u;
                  v44 = v14;
                  v26 = v14;
                  v27 = [v26 countByEnumeratingWithState:&v53 objects:v64 count:16];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = *v54;
                    v45 = v17;
                    while (2)
                    {
                      for (i = 0; i != v28; ++i)
                      {
                        if (*v54 != v29)
                        {
                          objc_enumerationMutation(v26);
                        }

                        v31 = *(*(&v53 + 1) + 8 * i);
                        [v31 locationLatitudeDeg];
                        v33 = v32;
                        [v31 locationLongitudeDeg];
                        [PCEmbeddingDistanceCalculator distanceFromLat1:v23 lon1:v25 toLat2:v33 lon2:v34];
                        v36 = v35 * 0.00062137;
                        if (v35 * 0.00062137 < 2.0)
                        {
                          v42 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412802;
                            v59 = typeCopy;
                            v60 = 2048;
                            v61 = 0x4000000000000000;
                            v62 = 2048;
                            v63 = v36;
                            _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_INFO, "Found %@ workout within %.1f miles: %.3f miles", buf, 0x20u);
                          }

                          v11 = 1;
                          v14 = v44;
LABEL_49:
                          v17 = v45;
                          v15 = v46;
                          goto LABEL_50;
                        }
                      }

                      v28 = [v26 countByEnumeratingWithState:&v53 objects:v64 count:16];
                      v17 = v45;
                      if (v28)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v14 = v44;
                  v15 = v46;
                }
              }
            }
          }

          if (v18 && -[NSObject length](v18, "length") && [v15 count])
          {
            v45 = v17;
            v46 = v15;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v26 = v15;
            v37 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v50;
              while (2)
              {
                for (j = 0; j != v38; ++j)
                {
                  if (*v50 != v39)
                  {
                    objc_enumerationMutation(v26);
                  }

                  if ([v18 isEqualToString:*(*(&v49 + 1) + 8 * j)])
                  {
                    v41 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v59 = typeCopy;
                      v60 = 2112;
                      v61 = v18;
                      _os_log_impl(&dword_1CEE74000, v41, OS_LOG_TYPE_INFO, "Found %@ workout with matching placeType: %@", buf, 0x16u);
                    }

                    v11 = 1;
                    goto LABEL_49;
                  }
                }

                v38 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
                if (v38)
                {
                  continue;
                }

                break;
              }
            }

            v17 = v45;
            v15 = v46;
          }

          v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v59 = typeCopy;
            _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_INFO, "No matching %@ workout locations found near this visit", buf, 0xCu);
          }

          v11 = 0;
LABEL_50:
        }

        else
        {
          v18 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_DEBUG, "No location context in current visit", buf, 2u);
          }

          v11 = 0;
        }
      }

      else
      {
        v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v59 = typeCopy;
          _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_INFO, "No location data found for activity type: %@", buf, 0xCu);
        }

        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end