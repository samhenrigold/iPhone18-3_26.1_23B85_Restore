@interface MOEventPatternDetector
- (BOOL)configure:(id)configure;
- (MOEventPatternDetector)init;
- (MOEventPatternDetector)initWithPredicate:(id)predicate andFeatureExtractor:(id)extractor andFeatureTransformer:(id)transformer andAnomalyDetector:(id)detector andRoutineDetector:(id)routineDetector andTrendDetector:(id)trendDetector;
- (id)processEvents:(id)events;
- (void)setAnomalyDetector:(id)detector;
- (void)setFeatureExtractor:(id)extractor;
- (void)setFeatureTransformer:(id)transformer;
- (void)setPredicate:(id)predicate;
- (void)setRoutineDetector:(id)detector;
- (void)setTrendDetector:(id)detector;
@end

@implementation MOEventPatternDetector

- (MOEventPatternDetector)init
{
  v12.receiver = self;
  v12.super_class = MOEventPatternDetector;
  v2 = [(MOEventPatternDetector *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    configuration = v2->_configuration;
    v2->_configuration = v3;

    predicate = v2->_predicate;
    v2->_predicate = 0;

    featureExtractor = v2->_featureExtractor;
    v2->_featureExtractor = 0;

    featureTransformer = v2->_featureTransformer;
    v2->_featureTransformer = 0;

    anomalyDetector = v2->_anomalyDetector;
    v2->_anomalyDetector = 0;

    routineDetector = v2->_routineDetector;
    v2->_routineDetector = 0;

    trendDetector = v2->_trendDetector;
    v2->_trendDetector = 0;
  }

  return v2;
}

- (MOEventPatternDetector)initWithPredicate:(id)predicate andFeatureExtractor:(id)extractor andFeatureTransformer:(id)transformer andAnomalyDetector:(id)detector andRoutineDetector:(id)routineDetector andTrendDetector:(id)trendDetector
{
  predicateCopy = predicate;
  extractorCopy = extractor;
  transformerCopy = transformer;
  detectorCopy = detector;
  routineDetectorCopy = routineDetector;
  trendDetectorCopy = trendDetector;
  v24.receiver = self;
  v24.super_class = MOEventPatternDetector;
  v20 = [(MOEventPatternDetector *)&v24 init];
  if (v20)
  {
    v21 = objc_opt_new();
    configuration = v20->_configuration;
    v20->_configuration = v21;

    [(MOEventPatternDetector *)v20 setPredicate:predicateCopy];
    [(MOEventPatternDetector *)v20 setFeatureExtractor:extractorCopy];
    [(MOEventPatternDetector *)v20 setFeatureTransformer:transformerCopy];
    [(MOEventPatternDetector *)v20 setAnomalyDetector:detectorCopy];
    [(MOEventPatternDetector *)v20 setRoutineDetector:routineDetectorCopy];
    [(MOEventPatternDetector *)v20 setTrendDetector:trendDetectorCopy];
  }

  return v20;
}

- (void)setPredicate:(id)predicate
{
  objc_storeStrong(&self->_predicate, predicate);
  predicateCopy = predicate;
  [(MOEventPatternDetectorPredicate *)self->_predicate configure:self->_configuration];
}

- (void)setFeatureExtractor:(id)extractor
{
  objc_storeStrong(&self->_featureExtractor, extractor);
  extractorCopy = extractor;
  [(MOEventPatternDetectorFeatureExtractor *)self->_featureExtractor configure:self->_configuration];
}

- (void)setFeatureTransformer:(id)transformer
{
  objc_storeStrong(&self->_featureTransformer, transformer);
  transformerCopy = transformer;
  [(MOEventPatternDetectorFeatureTransformer *)self->_featureTransformer configure:self->_configuration];
}

- (void)setAnomalyDetector:(id)detector
{
  objc_storeStrong(&self->_anomalyDetector, detector);
  detectorCopy = detector;
  [(MOEventPatternDetectorAnomalyDetector *)self->_anomalyDetector configure:self->_configuration];
}

- (void)setRoutineDetector:(id)detector
{
  objc_storeStrong(&self->_routineDetector, detector);
  detectorCopy = detector;
  [(MOEventPatternDetectorRoutineDetector *)self->_routineDetector configure:self->_configuration];
}

- (void)setTrendDetector:(id)detector
{
  objc_storeStrong(&self->_trendDetector, detector);
  detectorCopy = detector;
  [(MOEventPatternDetectorTrendDetector *)self->_trendDetector configure:self->_configuration];
}

- (BOOL)configure:(id)configure
{
  v4 = [configure copy];
  configuration = self->_configuration;
  self->_configuration = v4;

  v6 = [(MOEventPatternDetectorPredicate *)self->_predicate configure:self->_configuration];
  v7 = v6 & [(MOEventPatternDetectorFeatureExtractor *)self->_featureExtractor configure:self->_configuration];
  v8 = [(MOEventPatternDetectorFeatureTransformer *)self->_featureTransformer configure:self->_configuration];
  v9 = v7 & v8 & [(MOEventPatternDetectorAnomalyDetector *)self->_anomalyDetector configure:self->_configuration];
  v10 = [(MOEventPatternDetectorRoutineDetector *)self->_routineDetector configure:self->_configuration];
  return v9 & v10 & [(MOEventPatternDetectorTrendDetector *)self->_trendDetector configure:self->_configuration];
}

- (id)processEvents:(id)events
{
  eventsCopy = events;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    patternDetectorName = self->_patternDetectorName;
    *buf = 138412290;
    v73 = patternDetectorName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Analyzing events for anomalies for %@...", buf, 0xCu);
  }

  if (!self->_predicate)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetector processEvents:];
    }

    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:136 description:{@"No predicate was strategy defined %@ (in %s:%d)", self->_patternDetectorName, "-[MOEventPatternDetector processEvents:]", 136}];
  }

  if (!self->_featureExtractor)
  {
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetector processEvents:];
    }

    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:137 description:{@"No feature extractor strategy was defined for %@ (in %s:%d)", self->_patternDetectorName, "-[MOEventPatternDetector processEvents:]", 137}];
  }

  if (!self->_anomalyDetector && !self->_routineDetector && !self->_trendDetector)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetector processEvents:];
    }

    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:138 description:{@"No anomaly/routine/trend strategy was defined for %@ (in %s:%d)", self->_patternDetectorName, "-[MOEventPatternDetector processEvents:]", 138}];
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = self->_patternDetectorName;
    *buf = 138412290;
    v73 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Preparing for process for %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorPredicate *)self->_predicate reset];
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorFeatureExtractor *)self->_featureExtractor reset];
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorFeatureTransformer *)self->_featureTransformer reset];
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorAnomalyDetector *)self->_anomalyDetector reset];
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorRoutineDetector *)self->_routineDetector reset];
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [(MOEventPatternDetectorTrendDetector *)self->_trendDetector reset];
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = self->_patternDetectorName;
    *buf = 138412290;
    v73 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Filtering relevant event subsets for %@", buf, 0xCu);
  }

  v18 = [(MOEventPatternDetectorPredicate *)self->_predicate filterEvents:eventsCopy];
  v19 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = self->_patternDetectorName;
    *buf = 138412290;
    v73 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Extracting event features for %@", buf, 0xCu);
  }

  v21 = [(MOEventPatternDetectorFeatureExtractor *)self->_featureExtractor extractFeaturesFromEvents:v18];
  v22 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = self->_patternDetectorName;
    *buf = 138412290;
    v73 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Aggregating events with featureTransformer for %@", buf, 0xCu);
  }

  featureTransformer = self->_featureTransformer;
  if (featureTransformer)
  {
    v25 = [(MOEventPatternDetectorFeatureTransformer *)featureTransformer transformFeaturesFromEvents:v18 withFeatures:v21];
    if ([v25 count] != 2)
    {
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v27 = +[NSAssertionHandler currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:172 description:{@"Wrong NSArray length resulting from transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 172}];
    }

    firstObject = [v25 firstObject];

    if (!firstObject)
    {
      v29 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v30 = +[NSAssertionHandler currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:173 description:{@"eventsSubset undefined after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 173}];
    }

    firstObject2 = [v25 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v33 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v34 = +[NSAssertionHandler currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:174 description:{@"eventsSubset is not an NSArray after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 174}];
    }

    lastObject = [v25 lastObject];

    if (!lastObject)
    {
      v36 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v37 = +[NSAssertionHandler currentHandler];
      [v37 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:175 description:{@"features undefined after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 175}];
    }

    lastObject2 = [v25 lastObject];
    objc_opt_class();
    v39 = objc_opt_isKindOfClass();

    if ((v39 & 1) == 0)
    {
      v40 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v41 = +[NSAssertionHandler currentHandler];
      [v41 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:176 description:{@"features is not an NSArray after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 176}];
    }

    firstObject3 = [v25 firstObject];

    lastObject3 = [v25 lastObject];

    v44 = [firstObject3 count];
    if (v44 != [lastObject3 count])
    {
      v45 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetector processEvents:];
      }

      v46 = +[NSAssertionHandler currentHandler];
      [v46 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetector.m" lineNumber:179 description:{@"Mismatch between number of features and number of events after transformFeaturesFromEvents:withFeatures:. (in %s:%d)", "-[MOEventPatternDetector processEvents:]", 179}];
    }

    v21 = lastObject3;
    v18 = firstObject3;
  }

  v47 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = self->_patternDetectorName;
    *buf = 138412290;
    v73 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Detecting anomalies for %@", buf, 0xCu);
  }

  v49 = [(MOEventPatternDetectorAnomalyDetector *)self->_anomalyDetector extractAnomalyEventsFrom:v18 withFeatures:v21];
  v50 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    v51 = self->_patternDetectorName;
    *buf = 138412290;
    v73 = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Detecting routines for %@", buf, 0xCu);
  }

  v52 = [(MOEventPatternDetectorRoutineDetector *)self->_routineDetector extractRoutineEventsFrom:v18 withFeatures:v21];
  v53 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = self->_patternDetectorName;
    *buf = 138412290;
    v73 = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Detecting trends for %@", buf, 0xCu);
  }

  v55 = [(MOEventPatternDetectorTrendDetector *)self->_trendDetector extractTrendEventsFrom:v18 withFeatures:v21];
  v56 = objc_opt_new();
  v57 = v56;
  if (v49)
  {
    [v56 addObjectsFromArray:v49];
  }

  if (v52)
  {
    [v57 addObjectsFromArray:v52];
  }

  if (v55)
  {
    [v57 addObjectsFromArray:v55];
  }

  if (v57 && [v57 count])
  {
    v58 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v71 = [v57 count];
      v70 = [v49 count];
      v59 = v21;
      v60 = eventsCopy;
      v61 = [v52 count];
      v62 = [v55 count];
      v63 = self->_patternDetectorName;
      *buf = 134219010;
      v73 = v71;
      v74 = 2048;
      v75 = v70;
      v76 = 2048;
      v77 = v61;
      eventsCopy = v60;
      v21 = v59;
      v78 = 2048;
      v79 = v62;
      v80 = 2112;
      v81 = v63;
      v64 = "Detected %lu patterns (a=%lu,r=%lu,t=%lu) for %@";
      v65 = v58;
      v66 = 52;
LABEL_81:
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, v64, buf, v66);
    }
  }

  else
  {
    v58 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v67 = self->_patternDetectorName;
      *buf = 138412290;
      v73 = v67;
      v64 = "No patterns detected for %@";
      v65 = v58;
      v66 = 12;
      goto LABEL_81;
    }
  }

  v68 = v57;
  return v57;
}

- (void)processEvents:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)processEvents:.cold.2()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)processEvents:.cold.3()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)processEvents:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.7()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)processEvents:.cold.9()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end