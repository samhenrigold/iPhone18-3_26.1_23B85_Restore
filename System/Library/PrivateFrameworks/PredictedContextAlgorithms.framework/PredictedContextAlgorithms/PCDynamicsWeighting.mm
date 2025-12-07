@interface PCDynamicsWeighting
- (PCDynamicsWeighting)initWithDirectionScaleFactorEstimator:(id)estimator ETAScaleFactorEstimator:(id)factorEstimator;
- (void)modifyCandidateProbabilities:(id)probabilities atTime:(double)time visitHistory:(id)history locationHistory:(id)locationHistory motionActivity:(id)activity;
@end

@implementation PCDynamicsWeighting

- (PCDynamicsWeighting)initWithDirectionScaleFactorEstimator:(id)estimator ETAScaleFactorEstimator:(id)factorEstimator
{
  estimatorCopy = estimator;
  factorEstimatorCopy = factorEstimator;
  v12.receiver = self;
  v12.super_class = PCDynamicsWeighting;
  v9 = [(PCDynamicsWeighting *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_directionScaleFactorEstimator, estimator);
    objc_storeStrong(&v10->_etaScaleFactorEstimator, factorEstimator);
  }

  return v10;
}

- (void)modifyCandidateProbabilities:(id)probabilities atTime:(double)time visitHistory:(id)history locationHistory:(id)locationHistory motionActivity:(id)activity
{
  v79 = *MEMORY[0x1E69E9840];
  probabilitiesCopy = probabilities;
  historyCopy = history;
  locationHistoryCopy = locationHistory;
  activityCopy = activity;
  v16 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_INFO, "predictions before apply dynamics weighting", buf, 2u);
  }

  v63 = locationHistoryCopy;
  v64 = historyCopy;
  if (probabilitiesCopy && [probabilitiesCopy count])
  {
    v17 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [probabilitiesCopy count];
      *buf = 134217984;
      v78 = v18;
      _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v19 = probabilitiesCopy;
    v20 = [v19 countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v20)
    {
      v21 = v20;
      selfCopy = self;
      v22 = *v72;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v72 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v71 + 1) + 8 * i)];
          v25 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138739971;
            v78 = v24;
            _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v21);
      historyCopy = v64;
      selfCopy3 = selfCopy;
    }

    else
    {
      selfCopy3 = self;
    }
  }

  else
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    selfCopy3 = self;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }
  }

  v70 = 0;
  v69 = 0.0;
  v27 = [PCDynamicsUtils locationOfLastVisitWithVisitHistory:historyCopy currentTime:&v70 isInTransition:&v69 exitTime:time];
  v28 = [PCDynamicsUtils currentLocationWithLocationHistory:locationHistoryCopy currentTime:time];
  v60 = [PCDynamicsUtils filterValidLocationPredictions:probabilitiesCopy];
  v29 = [PCDynamicsUtils candidateDataMapFromVisits:?];
  v59 = v27;
  v30 = [PCDynamicsUtils computeProgressScaleFromCandidateDataMap:v29 lastVisit:v27 currentLocation:v28];
  v31 = [PCDynamicsUtils computeTravelFeasibilityForCandidateDataMap:v29 currentLocation:v28 currentTime:time];
  directionScaleFactorEstimator = [(PCDynamicsWeighting *)selfCopy3 directionScaleFactorEstimator];
  [directionScaleFactorEstimator computeScaleForCandidates:v29 locationHistory:locationHistoryCopy motionActivity:activityCopy currentLocation:v28 currentTime:v70 lastVisitExitTime:time isInTransition:v69];
  v34 = v33 = activityCopy;

  v35 = selfCopy3;
  v36 = probabilitiesCopy;
  etaScaleFactorEstimator = [(PCDynamicsWeighting *)v35 etaScaleFactorEstimator];
  v38 = v33;
  v62 = v28;
  v39 = [etaScaleFactorEstimator computeScaleForCandidates:v29 locationHistory:locationHistoryCopy motionActivity:v33 currentLocation:v28 currentTime:v70 lastVisitExitTime:time isInTransition:v69];

  v57 = v34;
  v58 = v30;
  [PCDynamicsUtils updateProbabilitiesForCandidateVisits:v36 withCandidateDataMap:v29 progressScaleByVisitMap:v30 feasibilityByVisitMap:v31 dirctionScaleByVisitMap:v34 etaScaleByVisitMap:v39 currentTime:time];
  v40 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_INFO, "predictions after apply dynamics weighting", buf, 2u);
  }

  if (v36 && [v36 count])
  {
    v55 = v29;
    v41 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    v42 = v60;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v43 = [v36 count];
      *buf = 134217984;
      v78 = v43;
      _os_log_impl(&dword_1CEE74000, v41, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v44 = v36;
    v45 = [v44 countByEnumeratingWithState:&v65 objects:v75 count:16];
    v46 = v62;
    if (v45)
    {
      v47 = v45;
      v53 = v39;
      v54 = v31;
      v56 = v36;
      v48 = *v66;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v66 != v48)
          {
            objc_enumerationMutation(v44);
          }

          v50 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v65 + 1) + 8 * j), v53, v54];
          v51 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 138739971;
            v78 = v50;
            _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
          }
        }

        v47 = [v44 countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v47);
      v36 = v56;
      v46 = v62;
      locationHistoryCopy = v63;
      v52 = v59;
      v42 = v60;
      v31 = v54;
      v29 = v55;
      v39 = v53;
    }

    else
    {
      v52 = v59;
    }
  }

  else
  {
    v44 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    v42 = v60;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v44, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }

    v52 = v59;
    v46 = v62;
  }
}

@end