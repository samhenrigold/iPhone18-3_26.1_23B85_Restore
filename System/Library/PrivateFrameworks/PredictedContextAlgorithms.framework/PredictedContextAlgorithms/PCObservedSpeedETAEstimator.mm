@interface PCObservedSpeedETAEstimator
- (PCObservedSpeedETAEstimator)initWithConfig:(id)config;
- (id)computeScaleForCandidates:(id)candidates locationHistory:(id)history motionActivity:(id)activity currentLocation:(id)location currentTime:(double)time lastVisitExitTime:(double)exitTime isInTransition:(BOOL)transition;
@end

@implementation PCObservedSpeedETAEstimator

- (PCObservedSpeedETAEstimator)initWithConfig:(id)config
{
  configCopy = config;
  v10.receiver = self;
  v10.super_class = PCObservedSpeedETAEstimator;
  v6 = [(PCObservedSpeedETAEstimator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cfg, config);
    v8 = v7;
  }

  return v7;
}

- (id)computeScaleForCandidates:(id)candidates locationHistory:(id)history motionActivity:(id)activity currentLocation:(id)location currentTime:(double)time lastVisitExitTime:(double)exitTime isInTransition:(BOOL)transition
{
  v140 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  historyCopy = history;
  locationCopy = location;
  if ([historyCopy count] <= 1)
  {
    v17 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      v118 = v18;
      v119 = 2048;
      v120 = [historyCopy count];
      v19 = "[%@] skip ETA scal factor, not enough buffered location, location count, %lu";
      v20 = v17;
      v21 = 22;
LABEL_10:
      _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!transition)
  {
    v17 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412290;
      v118 = v18;
      v19 = "[%@] skip ETA scal factor, not in transition";
      v20 = v17;
      v21 = 12;
      goto LABEL_10;
    }

LABEL_11:

    v43 = [PCDynamicsUtils neutralScaleFactorsForDataMap:candidatesCopy];
    goto LABEL_22;
  }

  v22 = [PCDynamicsWindowContext alloc];
  v23 = [(PCObservedSpeedETAEstimator *)self cfg];
  [v23 minTravelTimeSec];
  v25 = v24;
  v26 = [(PCObservedSpeedETAEstimator *)self cfg];
  [v26 fullEffectTimeSec];
  v28 = v27;
  v29 = [(PCObservedSpeedETAEstimator *)self cfg];
  [v29 maxLocationUncertaintyM];
  v31 = [(PCDynamicsWindowContext *)v22 initWithRawHistory:historyCopy currentTime:time lastVisitExitTime:exitTime minTravelTime:v25 fullEffectTime:v28 maxUncertainty:v30];

  [(PCDynamicsWindowContext *)v31 travelTimeSec];
  v33 = v32;
  v34 = [(PCObservedSpeedETAEstimator *)self cfg];
  [v34 minTravelTimeSec];
  v36 = v35;

  if (v33 >= v36)
  {
    startFix = [(PCDynamicsWindowContext *)v31 startFix];

    if (startFix)
    {
      startFix2 = [(PCDynamicsWindowContext *)v31 startFix];
      [startFix2 timeCFAbsolute];
      v47 = time - v46;

      if (v47 >= 1.0)
      {
        startFix3 = [(PCDynamicsWindowContext *)v31 startFix];
        location = [startFix3 location];
        v51 = [PCLocationUtils cartesianFromProtoLocation:location];

        v111 = v51;
        [v51 distanceTo:locationCopy];
        v53 = v52 / v47;
        v54 = [(PCObservedSpeedETAEstimator *)self cfg];
        [v54 minReliableSpeedM_Sec];
        v56 = v55;

        if (v53 >= v56)
        {
          v108 = v31;
          v103 = historyCopy;
          v43 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v104 = candidatesCopy;
          objectEnumerator = [candidatesCopy objectEnumerator];
          v60 = [objectEnumerator countByEnumeratingWithState:&v113 objects:v139 count:16];
          v61 = locationCopy;
          if (v60)
          {
            v62 = v60;
            v63 = *v114;
            v64 = 0.1;
            v65 = 1.0;
            v106 = objectEnumerator;
            v107 = v43;
            do
            {
              v66 = 0;
              v112 = v62;
              do
              {
                if (*v114 != v63)
                {
                  objc_enumerationMutation(objectEnumerator);
                }

                v67 = *(*(&v113 + 1) + 8 * v66);
                coordinate = [v67 coordinate];
                [v61 distanceTo:coordinate];
                v70 = v69;

                v71 = [(PCObservedSpeedETAEstimator *)self cfg];
                [v71 minDistanceToDestinationM];
                v73 = v72;

                v74 = 1.0;
                if (v70 >= v73)
                {
                  coordinate2 = [v67 coordinate];
                  [v111 distanceTo:coordinate2];
                  v77 = v76;

                  v78 = v77 / v53;
                  if (v77 / v53 <= 0.0)
                  {
                    v89 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
                    v74 = 1.0;
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                    {
                      v100 = NSStringFromSelector(a2);
                      *buf = 138412290;
                      v118 = v100;
                      _os_log_impl(&dword_1CEE74000, v89, OS_LOG_TYPE_ERROR, "[%@] skip ETA scal factor, invalid original ETA", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v79 = v70 / v53;
                    v80 = v70 / v53 / v78;
                    v81 = [(PCObservedSpeedETAEstimator *)self cfg];
                    [v81 etaPenaltyTriggerRatio];
                    v83 = v82;
                    v84 = [(PCObservedSpeedETAEstimator *)self cfg];
                    [v84 etaPenaltyRatioRange];
                    [PCDynamicsUtils smoothPenaltyForETAGrowth:v80 graceRatio:v83 penaltyRange:v85 minScaleFactor:v64];
                    v87 = v86;

                    [(PCDynamicsWindowContext *)v108 rampWeight];
                    v74 = v65 - v88 * (v65 - v87);
                    v89 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                    {
                      v90 = NSStringFromSelector(a2);
                      loiIdentifier = [v67 loiIdentifier];
                      v92 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier];
                      [(PCDynamicsWindowContext *)v108 travelTimeSec];
                      v93 = v64;
                      v95 = v94;
                      [(PCDynamicsWindowContext *)v108 startTime];
                      v105 = v80;
                      v96 = v53;
                      v98 = v97;
                      [(PCDynamicsWindowContext *)v108 rampWeight];
                      *buf = 138414850;
                      v118 = v90;
                      v119 = 2112;
                      v120 = v92;
                      v121 = 2048;
                      v122 = v95;
                      v64 = v93;
                      v65 = 1.0;
                      v123 = 2048;
                      v124 = v98;
                      v53 = v96;
                      v125 = 2048;
                      v126 = v96;
                      v127 = 2048;
                      v128 = v79;
                      v129 = 2048;
                      v130 = v78;
                      v131 = 2048;
                      v132 = v105;
                      v133 = 2048;
                      v134 = v87;
                      v135 = 2048;
                      v136 = v99;
                      v137 = 2048;
                      v138 = v74;
                      _os_log_impl(&dword_1CEE74000, v89, OS_LOG_TYPE_INFO, "[%@] LOI %@: travelTime, %.0f, windowStart, %.0f, speed, %.2f, currentETA, %.0f, originalETA, %.0f, eta growth, %.2f, initial scale factor, %.2f, travel time weight, %.2f, final factor, %.2f", buf, 0x70u);

                      v61 = locationCopy;
                    }

                    objectEnumerator = v106;
                    v43 = v107;
                  }

                  v62 = v112;
                }

                v101 = [MEMORY[0x1E696AD98] numberWithDouble:v74];
                visitIdentifier = [v67 visitIdentifier];
                [v43 setObject:v101 forKeyedSubscript:visitIdentifier];

                ++v66;
              }

              while (v62 != v66);
              v62 = [objectEnumerator countByEnumeratingWithState:&v113 objects:v139 count:16];
            }

            while (v62);
          }

          historyCopy = v103;
          candidatesCopy = v104;
          v31 = v108;
        }

        else
        {
          v57 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            v58 = NSStringFromSelector(a2);
            *buf = 138412290;
            v118 = v58;
            _os_log_impl(&dword_1CEE74000, v57, OS_LOG_TYPE_INFO, "[%@] skip ETA scal factor, observed speed too low", buf, 0xCu);
          }

          v43 = [PCDynamicsUtils neutralScaleFactorsForDataMap:candidatesCopy];
        }

        goto LABEL_21;
      }

      v37 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v38 = NSStringFromSelector(a2);
      *buf = 138412290;
      v118 = v38;
      v40 = "[%@] skip ETA scal factor, can't find window start time";
    }

    else
    {
      v37 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v38 = NSStringFromSelector(a2);
      *buf = 138412290;
      v118 = v38;
      v40 = "[%@] skip ETA scal factor, can't find window start fix";
    }

    v41 = v37;
    v42 = 12;
    goto LABEL_19;
  }

  v37 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = NSStringFromSelector(a2);
    [(PCDynamicsWindowContext *)v31 travelTimeSec];
    *buf = 138412546;
    v118 = v38;
    v119 = 2048;
    v120 = v39;
    v40 = "[%@] skip ETA scal factor, travelTime: %.2f too short";
    v41 = v37;
    v42 = 22;
LABEL_19:
    _os_log_impl(&dword_1CEE74000, v41, OS_LOG_TYPE_INFO, v40, buf, v42);
  }

LABEL_20:

  v43 = [PCDynamicsUtils neutralScaleFactorsForDataMap:candidatesCopy];
LABEL_21:

LABEL_22:

  return v43;
}

@end