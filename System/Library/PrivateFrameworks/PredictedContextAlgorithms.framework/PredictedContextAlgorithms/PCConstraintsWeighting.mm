@interface PCConstraintsWeighting
+ (void)modifyCandidateVisitProbabilities:(id)probabilities transitProbabilities:(id)transitProbabilities atTime:(double)time withVisitHistory:(id)history transitionHistory:(id)transitionHistory;
@end

@implementation PCConstraintsWeighting

+ (void)modifyCandidateVisitProbabilities:(id)probabilities transitProbabilities:(id)transitProbabilities atTime:(double)time withVisitHistory:(id)history transitionHistory:(id)transitionHistory
{
  v162 = *MEMORY[0x1E69E9840];
  probabilitiesCopy = probabilities;
  transitProbabilitiesCopy = transitProbabilities;
  historyCopy = history;
  transitionHistoryCopy = transitionHistory;
  v14 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
  v15 = v14;
  if (probabilitiesCopy && transitProbabilitiesCopy)
  {
    v117 = transitionHistoryCopy;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_INFO, "predictions before apply constraints weighting", buf, 2u);
    }

    v16 = [probabilitiesCopy count];
    v17 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    v118 = transitProbabilitiesCopy;
    v119 = probabilitiesCopy;
    if (v16)
    {
      if (v18)
      {
        v19 = [probabilitiesCopy count];
        *buf = 134217984;
        v161 = v19;
        _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v17 = probabilitiesCopy;
      v20 = [v17 countByEnumeratingWithState:&v149 objects:v159 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v150;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v150 != v22)
            {
              objc_enumerationMutation(v17);
            }

            v24 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v149 + 1) + 8 * i)];
            v25 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v161 = v24;
              _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v21 = [v17 countByEnumeratingWithState:&v149 objects:v159 count:16];
        }

        while (v21);
        transitProbabilitiesCopy = v118;
      }
    }

    else if (v18)
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }

    v26 = [transitProbabilitiesCopy count];
    v27 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
    if (v26)
    {
      if (v28)
      {
        v29 = [transitProbabilitiesCopy count];
        *buf = 134217984;
        v161 = v29;
        _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "--- Transition Predictions (%lu) ---", buf, 0xCu);
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v27 = transitProbabilitiesCopy;
      v30 = [v27 countByEnumeratingWithState:&v145 objects:v158 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v146;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v146 != v32)
            {
              objc_enumerationMutation(v27);
            }

            v34 = [PCLoggingUtils formattedStringForTransitionPrediction:*(*(&v145 + 1) + 8 * j)];
            v35 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v161 = v34;
              _os_log_impl(&dword_1CEE74000, v35, OS_LOG_TYPE_INFO, "Transition Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v31 = [v27 countByEnumeratingWithState:&v145 objects:v158 count:16];
        }

        while (v31);
        transitProbabilitiesCopy = v118;
      }
    }

    else if (v28)
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "No Transition Predictions to log", buf, 2u);
    }

    v36 = 0x1E695D000uLL;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    [PCConstraintsWeightingUtils validateCandidateVisits:probabilitiesCopy validVisits:array invalidVisits:array2];
    v115 = array2;
    v116 = array;
    if ([array2 count])
    {
      v39 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_INFO, "Invalid visit predictions", buf, 2u);
      }

      if (array2 && [array2 count])
      {
        v40 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = [array2 count];
          *buf = 134217984;
          v161 = v41;
          _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v42 = array2;
        v43 = [v42 countByEnumeratingWithState:&v141 objects:v157 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v142;
          do
          {
            for (k = 0; k != v44; ++k)
            {
              if (*v142 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v141 + 1) + 8 * k)];
              v48 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v161 = v47;
                _os_log_impl(&dword_1CEE74000, v48, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v141 objects:v157 count:16];
          }

          while (v44);
          transitProbabilitiesCopy = v118;
          probabilitiesCopy = v119;
          v36 = 0x1E695D000;
        }

        else
        {
          transitProbabilitiesCopy = v118;
        }
      }

      else
      {
        v42 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }
    }

    array3 = [*(v36 + 3952) array];
    array4 = [*(v36 + 3952) array];
    [PCConstraintsWeightingUtils validateCandidateTransitions:transitProbabilitiesCopy validTransitions:array3 invalidTransitions:array4];
    v113 = array3;
    v114 = array4;
    if ([array4 count])
    {
      v51 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_INFO, "Invalid transition predictions", buf, 2u);
      }

      if (array4 && [array4 count])
      {
        v52 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = [array4 count];
          *buf = 134217984;
          v161 = v53;
          _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_INFO, "--- Transition Predictions (%lu) ---", buf, 0xCu);
        }

        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v54 = array4;
        v55 = [v54 countByEnumeratingWithState:&v137 objects:v156 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v138;
          do
          {
            for (m = 0; m != v56; ++m)
            {
              if (*v138 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = [PCLoggingUtils formattedStringForTransitionPrediction:*(*(&v137 + 1) + 8 * m)];
              v60 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v161 = v59;
                _os_log_impl(&dword_1CEE74000, v60, OS_LOG_TYPE_INFO, "Transition Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v137 objects:v156 count:16];
          }

          while (v56);
          transitProbabilitiesCopy = v118;
          probabilitiesCopy = v119;
        }

        else
        {
          transitProbabilitiesCopy = v118;
          probabilitiesCopy = v119;
        }
      }

      else
      {
        v54 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v54, OS_LOG_TYPE_INFO, "No Transition Predictions to log", buf, 2u);
        }
      }
    }

    v61 = [PCConstraintsWeightingUtils loiIdOfCurrentContextFromVisitHistory:historyCopy transitionHistory:v117 currentTime:time];
    v62 = [PCConstraintsWeightingUtils mapLOIToLocationsFromPredictedVisits:array currentLoiIdentifier:v61 visitHistory:historyCopy];
    v111 = [PCConstraintsWeightingUtils rasterizeCandidateVisitPredictions:array transitPredictions:array3 currentTimeInSec:time windowInHours:24.0 binSizeMin:5.0];
    v110 = [PCConstraintsWeightingUtils applyMovingAverage:"applyMovingAverage:windowSize:currentContextId:" windowSize:? currentContextId:?];
    v63 = [PCConstraintsWeightingUtils normalizeBins:?];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v65 = [PCConstraintsWeightingUtils convertBinsToPredSample:v63 loiToColMap:dictionary];
    v66 = [v65 mutableCopy];

    LODWORD(v67) = 1034147594;
    LODWORD(v68) = 1061997773;
    v107 = v66;
    v106 = [PCNeuralNetworkUtilities createPredictedContextFromPredSequence:v66 timestepSize:1 currentTime:v67 preds:5.0 probabilityCalculationMode:time probabilityPercentile:v68];
    v108 = dictionary;
    v109 = v63;
    v69 = [PCConstraintsWeightingUtils adaptMergedClusters:"adaptMergedClusters:bins:loiToColMap:" bins:? loiToColMap:?];
    v70 = [v69 mutableCopy];

    v112 = v61;
    v121 = v62;
    [PCConstraintsWeightingUtils postprocessMergeResults:v70 currentLoiIdentifier:v61 currentTime:v117 windowEndTime:v62 transitionHistory:time loiToLocation:time + 86400.0];
    array5 = [MEMORY[0x1E695DF70] array];
    array6 = [MEMORY[0x1E695DF70] array];
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    obj = v70;
    v71 = [obj countByEnumeratingWithState:&v133 objects:v155 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v134;
      do
      {
        for (n = 0; n != v72; ++n)
        {
          if (*v134 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v133 + 1) + 8 * n);
          loiId = [v75 loiId];
          v77 = +[PCConstraintsWeightingUtils transitionDummyLOI];
          v78 = [loiId isEqualToData:v77];

          if (v78)
          {
            v79 = [PCConstraintsWeightingUtils convertMergeResultToTransition:v75];
            v80 = array6;
          }

          else
          {
            v79 = [PCConstraintsWeightingUtils convertMergeResultToLocation:v75 withLocationMap:v121];
            v80 = array5;
          }

          [v80 addObject:v79];
        }

        v72 = [obj countByEnumeratingWithState:&v133 objects:v155 count:16];
      }

      while (v72);
    }

    [probabilitiesCopy removeAllObjects];
    v81 = v115;
    v82 = [array5 arrayByAddingObjectsFromArray:v115];
    [probabilitiesCopy addObjectsFromArray:v82];

    [transitProbabilitiesCopy removeAllObjects];
    v83 = v114;
    v84 = [array6 arrayByAddingObjectsFromArray:v114];
    [transitProbabilitiesCopy addObjectsFromArray:v84];

    v85 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v85, OS_LOG_TYPE_INFO, "predictions after apply constraints weighting", buf, 2u);
    }

    v86 = [probabilitiesCopy count];
    v87 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_INFO);
    if (v86)
    {
      if (v88)
      {
        v89 = [probabilitiesCopy count];
        *buf = 134217984;
        v161 = v89;
        _os_log_impl(&dword_1CEE74000, v87, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v87 = probabilitiesCopy;
      v90 = [v87 countByEnumeratingWithState:&v129 objects:v154 count:16];
      if (v90)
      {
        v91 = v90;
        v92 = *v130;
        do
        {
          for (ii = 0; ii != v91; ++ii)
          {
            if (*v130 != v92)
            {
              objc_enumerationMutation(v87);
            }

            v94 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v129 + 1) + 8 * ii)];
            v95 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v161 = v94;
              _os_log_impl(&dword_1CEE74000, v95, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v91 = [v87 countByEnumeratingWithState:&v129 objects:v154 count:16];
        }

        while (v91);
        transitProbabilitiesCopy = v118;
        probabilitiesCopy = v119;
        v81 = v115;
        v15 = v116;
        v83 = v114;
LABEL_107:

        v96 = [transitProbabilitiesCopy count];
        v97 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        v98 = os_log_type_enabled(v97, OS_LOG_TYPE_INFO);
        if (v96)
        {
          if (v98)
          {
            v99 = [transitProbabilitiesCopy count];
            *buf = 134217984;
            v161 = v99;
            _os_log_impl(&dword_1CEE74000, v97, OS_LOG_TYPE_INFO, "--- Transition Predictions (%lu) ---", buf, 0xCu);
          }

          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v97 = transitProbabilitiesCopy;
          v100 = [v97 countByEnumeratingWithState:&v125 objects:v153 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v126;
            do
            {
              for (jj = 0; jj != v101; ++jj)
              {
                if (*v126 != v102)
                {
                  objc_enumerationMutation(v97);
                }

                v104 = [PCLoggingUtils formattedStringForTransitionPrediction:*(*(&v125 + 1) + 8 * jj)];
                v105 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
                if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v161 = v104;
                  _os_log_impl(&dword_1CEE74000, v105, OS_LOG_TYPE_INFO, "Transition Prediction: %{sensitive}@", buf, 0xCu);
                }
              }

              v101 = [v97 countByEnumeratingWithState:&v125 objects:v153 count:16];
            }

            while (v101);
            transitProbabilitiesCopy = v118;
            probabilitiesCopy = v119;
            v15 = v116;
            transitionHistoryCopy = v117;
            v83 = v114;
            v81 = v115;
            goto LABEL_123;
          }
        }

        else if (v98)
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v97, OS_LOG_TYPE_INFO, "No Transition Predictions to log", buf, 2u);
        }

        transitionHistoryCopy = v117;
LABEL_123:

        goto LABEL_124;
      }
    }

    else if (v88)
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v87, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }

    v15 = v116;
    goto LABEL_107;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "candidate visits or transitions pointer is nil, exiting early.", buf, 2u);
  }

LABEL_124:
}

@end