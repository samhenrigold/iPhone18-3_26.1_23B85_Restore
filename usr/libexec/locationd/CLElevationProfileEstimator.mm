@interface CLElevationProfileEstimator
- (BOOL)_fetchWorkoutPressureArray:(id)array withStartTime:(double)time andEndTime:(double)endTime;
- (BOOL)_forwardProcessingWithLocationArray:(id)array andElevationArray:(id)elevationArray andKFEstimatesBuffer:(id)buffer andKeepAllLocations:(BOOL)locations andTaskType:(unint64_t)type;
- (BOOL)_queryVisitStateByTimestamp:(double)timestamp withHistoricalVisits:(id)visits andVisitSearchStartIndex:(int)index;
- (BOOL)_rejectOutlyingLocation:(id)location withKFEstimates:(id)estimates;
- (CLElevationProfileEstimator)initWithContextManager:(id)manager withBuffers:(void *)buffers withSourceAggregator:(id)aggregator;
- (double)_getTimestampWithAltitudeArray:(id)array atIndex:(unsigned int)index;
- (double)_getTimestampWithElevationArray:(id)array atIndex:(unsigned int)index;
- (double)_getTimestampWithLocationArray:(id)array atIndex:(unsigned int)index;
- (id).cxx_construct;
- (int)_getLastPredictionIndexWithKFEstimatesBuffer:(id)buffer fromIndex:(int)index;
- (void)_alignElevationArray:(id)array andLocationArray:(id)locationArray;
- (void)_backwardProcessingWithKFEstimatesBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer;
- (void)_computeWorkoutElevationProfile:(id)profile withGpsAltitude:(id)altitude andPressureArray:(id)array;
- (void)_decimateElevationsWithStartTime:(double)time andEndTime:(double)endTime andLocationArray:(id)array andElevationArray:(id)elevationArray andAggregatedLocationArray:(id)locationArray andRawElevationArray:(id)rawElevationArray;
- (void)_decimateLocationsWithStartTime:(double)time andEndTime:(double)endTime andLocationArray:(id)array andElevationArray:(id)elevationArray andRawLocationArray:(id)locationArray andRawElevationArray:(id)rawElevationArray andTaskType:(unint64_t)type andVisitArray:(id)self0 andVisitSearchStartIndex:(int)self1;
- (void)_elevationBatchProcessingWithStartTime:(double)time andEndTime:(double)endTime andLocationBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer andTaskType:(unint64_t)type andCompletionBlock:(id)block;
- (void)_forwardProcessingWithGpsAltitudeArray:(id)array andElevationArray:(id)elevationArray andKFEstimatesBuffer:(id)buffer;
- (void)_gatherLocationArray:(id)array andElevationArray:(id)elevationArray andTaskType:(unint64_t)type withStartTime:(double)time andEndTime:(double)endTime andVisitArray:(id)visitArray andVisitSearchStartIndex:(int)index andCompletionBlock:(id)self0;
- (void)_initKalmanFilter:(id)filter withFirstLocation:(id)location andElevationArray:(id)array andTaskType:(unint64_t)type;
- (void)_initKalmanFilter:(id)filter withFirstLocation:(id)location andMeanSeaLevelPressure:(double)pressure andMeanSeaLevelPressureUnc:(double)unc andTaskType:(unint64_t)type;
- (void)_interpolateWorkoutGpsAltitude:(id)altitude toPressureArray:(id)array andBufferGpsSamplesQueue:()deque<std:(std::allocator<std::shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>>> *)std :shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>;
- (void)_kalmanSmootherUpdateWithKFEstimatesBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer andCurrPredictionIndex:(int)index andNextPredictionIndex:(int)predictionIndex;
- (void)_logValuesOfFilteredLocations:(id)locations andTaskType:(unint64_t)type;
- (void)_logValuesOfLocationArray:(id)array andElevationArray:(id)elevationArray andTaskType:(unint64_t)type;
- (void)_measurementUpdate:(id)update withLocation:(id)location;
- (void)_predictionUpdate:(id)update withElevation:(id)elevation withNextElevation:(id)nextElevation withCurrentHmmState:(int)state withTravelVelocity:(double)velocity;
- (void)_pushWorkoutElevationProfile:(id)profile;
- (void)_removeInVisitLocation:(id)location withVisitArray:(id)array andVisitSearchStartIndex:(int)index;
- (void)_resetKFEstimatesBuffer:(id)buffer andCurrKFEstimate:(id)estimate andAltitudeIndex:(int *)index andPressureIndex:(int *)pressureIndex withNumOfKfPredictionStepReset:(int)reset;
- (void)_sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:(id)buffer andCompletionBlock:(id)block;
- (void)_updateKFEstimatesBuffer:(id)buffer withCurrEstimate:(id)estimate measurementState:(BOOL)state andCurrTimestamp:(double)timestamp;
- (void)computeElevationProfileWithStartTime:(double)time andEndTime:(double)endTime andCompletionBlock:(id)block;
- (void)computeHistoricalMeanSeaLevelPressureWithStartTime:(double)time andEndTime:(double)endTime andCompletionBlock:(id)block;
- (void)computeWorkoutElevationProfile;
- (void)dealloc;
- (void)handleTimeOfExternalWetStateDeclaration:(double)declaration;
- (void)recordNextBatchProcessInitStateWithCurrKFEstimate:(id)estimate currKfTimestamp:(double)timestamp currHmmGoodModeProbability:(float)probability andCurrBadStateDetectedTimestamp:(double)detectedTimestamp;
- (void)resetWorkoutSessionStates;
- (void)startWorkoutAtTime:(double)time andMeanSeaLevelPressure:(double)pressure andMeanSeaLevelPressureUncertainty:(double)uncertainty andTimeOfExternalWetState:(optional<double>)state;
- (void)stopWorkoutAtTime:(double)time;
- (void)updateTravelVelocity:(double *)velocity withCurrLocation:(id)location andNextLocation:(id)nextLocation;
@end

@implementation CLElevationProfileEstimator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLElevationProfileEstimator;
  [(CLElevationProfileEstimator *)&v3 dealloc];
}

- (CLElevationProfileEstimator)initWithContextManager:(id)manager withBuffers:(void *)buffers withSourceAggregator:(id)aggregator
{
  v17.receiver = self;
  v17.super_class = CLElevationProfileEstimator;
  v8 = [(CLElevationProfileEstimator *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_dataBuffers = buffers;
    v8->_sourceAggregator = aggregator;
    sub_10183A3AC(buf, "ElevationProfileMeanSeaLevelPressureSamplingPeriod", &qword_101C8A0A0, 0);
    v9->_meanSeaLevelPressureSamplingPeriod = v16;
    sub_10183A3AC(buf, "ElevationProfileDataDecimationPeriod", &qword_101C8A0A8, 0);
    v9->_decimationPeriod = v16;
    sub_10183A3AC(buf, "ElevationLocationFilterWindowSize", &qword_101C8A0B0, 0);
    v9->_windowSize = v16;
    LOBYTE(v13) = 0;
    sub_100126E84(buf, "ElevationVerbose", &v13, 0);
    v9->_isVerboseLogging = buf[1];
    LOBYTE(v13) = 0;
    sub_100126E84(buf, "WorkoutElevationVerboseLogging", &v13, 0);
    v9->_workoutElevationVerboseLogging = buf[1];
    LOBYTE(v13) = 1;
    sub_100126E84(buf, "WorkoutElevationBackwardPropagationEnabled", &v13, 0);
    v9->_backwardPropagationEnabled = buf[1];
    sub_1004F8200(buf, "ElevationProfileElevationInitialVar", &dword_101C8A0B8, 0);
    v9->_elevationInitialVar = v15;
    sub_1004F8200(buf, "ElevationProfileMeanSeaLevelPressureInitialVar", &dword_101C8A0BC, 0);
    v9->_meanSeaLevelPressureInitialVar = v15;
    sub_1004F8200(buf, "ElevationProcessNoiseFromPressureSensorVarInKf", &dword_101C8A0C0, 0);
    v9->_elevationProcessNoiseFromPressureSensorVar = v15;
    sub_1004F8200(buf, "ElevationProcessNoiseFromHumanMotionInKf", &dword_101C8A0C4, 0);
    v9->_elevationProcessNoiseFromHumanMotion = v15;
    sub_1004F8200(buf, "MeanSeaLevelPressureDriftRateInKf", dword_101C8A0C8, 0);
    v9->_meanSeaLevelPressureDriftRateInPaPerSec = v15;
    v13 = 0x4034000000000000;
    sub_10183A3AC(buf, "ElevationProfileLocationMaxVerticalAccuracy", &v13, 0);
    v9->_locationMaxVerticalAccuracy = v16;
    sub_10183A3AC(buf, "WorkoutProfileLookbackInSec", &qword_101C8A0D0, 0);
    v9->_workoutProfileLookbackInSec = v16;
    sub_10183A3AC(buf, "WorkoutKsCalculationCadenceSec", &qword_101C8A0D8, 0);
    v10 = v16;
    v9->_workoutKsCalculationCadenceSec = v16;
    v9->_workoutKsPeriodInStepCountCadence = vcvtpd_s64_f64(v10 / 2.56);
    sub_10183A3AC(buf, "ElevationProfileMaxOutlierRatio", &qword_101C8A0E0, 0);
    v9->_maxOutlierRatio = v16;
    v9->_elevationBatchSize = vcvtad_u64_f64((v9->_meanSeaLevelPressureSamplingPeriod + v9->_meanSeaLevelPressureSamplingPeriod) / 2.56);
    sub_10183C2FC(buf, "ElevationProfileLocationBatchSize", dword_101C8A0E8, 0);
    *&v9->_locationBatchSize = v15;
    v9->_nextKfInitEstimate = objc_alloc_init(CLKFRunningEstimates);
    [(CLElevationProfileEstimator *)v9 resetWorkoutSessionStates];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9->_elevationProfileContextManager = manager;
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v11 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "initWithContextManager,elevation profile context manager does not exist!", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101916CF4();
      }
    }
  }

  return v9;
}

- (void)_sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:(id)buffer andCompletionBlock:(id)block
{
  v132 = objc_alloc_init(NSMutableArray);
  if ([buffer count])
  {
    v7 = [buffer count];
    v8 = v7 - 1;
    if ((v7 - 1) >= 0)
    {
      blockCopy = block;
      v9 = 0;
      v10 = 0.0;
      v127 = 134218752;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      do
      {
        v15 = [buffer objectAtIndex:v8];
        if (self->_isVerboseLogging)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v16 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
          {
            [v15 timestamp];
            v129 = v17;
            [v15 fState];
            v130 = v13;
            v128 = v18;
            [v15 fState];
            v19 = v14;
            v21 = v20;
            [v15 fCovariance];
            v23 = v22;
            [v15 fCovariance];
            v24 = v12;
            v25 = v10;
            v26 = v11;
            v28 = v27;
            [v15 fCovariance];
            v30 = v29;
            [v15 fCovariance];
            *buf = 134219520;
            v148 = v129;
            v149 = 2048;
            v150 = v128;
            v151 = 2048;
            v152 = v21;
            v14 = v19;
            v13 = v130;
            v153 = 2048;
            v154 = v23;
            v155 = 2048;
            v156 = v28;
            v11 = v26;
            v10 = v25;
            v12 = v24;
            v157 = 2048;
            v158 = v30;
            v159 = 2048;
            v160 = v31;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "historical mslp estimation,timestamp,%f,elevation,%f,mslp,%f,P00,%f,P01,%f,P10,%f,P11,%f", buf, 0x48u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            v123 = v14;
            v124 = v11;
            v131 = v13;
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v75 = qword_1025D4418;
            [v15 timestamp];
            v77 = v76;
            [v15 fState];
            v79 = v78;
            [v15 fState];
            v81 = v80;
            [v15 fCovariance];
            v83 = v82;
            [v15 fCovariance];
            v85 = v84;
            [v15 fCovariance];
            v87 = v86;
            [v15 fCovariance];
            v133 = 134219520;
            v134 = v77;
            v135 = 2048;
            v136 = v79;
            v137 = 2048;
            v138 = v81;
            v139 = 2048;
            v140 = v83;
            v141 = 2048;
            v142 = v85;
            v143 = 2048;
            v144 = v87;
            v145 = 2048;
            v146 = v88;
            LODWORD(v120) = 72;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v75, 2, "historical mslp estimation,timestamp,%f,elevation,%f,mslp,%f,P00,%f,P01,%f,P10,%f,P11,%f", COERCE_DOUBLE(&v133), v120, v121, v123, v124, *&blockCopy, *&v127);
            v90 = v89;
            sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:andCompletionBlock:]", "%s\n", v89);
            if (v90 != buf)
            {
              free(v90);
            }

            v14 = v122;
            v11 = v125;
            v13 = v131;
          }
        }

        [v15 fCovariance];
        if (v32 >= 0.0)
        {
          [v15 timestamp];
          v48 = v47;
          if (v9)
          {
            v49 = v10 - v47;
            if (v10 - v48 >= self->_meanSeaLevelPressureSamplingPeriod)
            {
              v54 = objc_alloc_init(CLMeanSeaLevelPressureData);
              [(CLMeanSeaLevelPressureData *)v54 setTimestamp:v11 / v9];
              [(CLMeanSeaLevelPressureData *)v54 setMeanSeaLevelPressure:v12 / v9];
              [(CLMeanSeaLevelPressureData *)v54 setUncertainty:v13 / v9];
              v55 = v14 / v9;
              v56 = v12 / v9;
              [(CLMeanSeaLevelPressureData *)v54 setPressureMeasurement:sub_1012C27C8(v55, v56)];
              [v132 addObject:v54];
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              v57 = qword_1025D4418;
              if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
              {
                [(CLMeanSeaLevelPressureData *)v54 timestamp];
                v59 = v58;
                [(CLMeanSeaLevelPressureData *)v54 meanSeaLevelPressure];
                v61 = v60;
                [(CLMeanSeaLevelPressureData *)v54 uncertainty];
                v63 = v62;
                [(CLMeanSeaLevelPressureData *)v54 pressureMeasurement];
                *buf = v127;
                v148 = v59;
                v149 = 2048;
                v150 = v61;
                v151 = 2048;
                v152 = v63;
                v153 = 2048;
                v154 = v64;
                _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "historical mslp array element,timestamp,%f,meanSeaLevelPressure,%f,uncertainty,%f,pressureMeasurement,%f", buf, 0x2Au);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4410 != -1)
                {
                  sub_101916CCC();
                }

                v91 = qword_1025D4418;
                [(CLMeanSeaLevelPressureData *)v54 timestamp];
                v93 = v92;
                [(CLMeanSeaLevelPressureData *)v54 meanSeaLevelPressure];
                v95 = v94;
                [(CLMeanSeaLevelPressureData *)v54 uncertainty];
                v97 = v96;
                [(CLMeanSeaLevelPressureData *)v54 pressureMeasurement];
                v133 = v127;
                v134 = v93;
                v135 = 2048;
                v136 = v95;
                v137 = 2048;
                v138 = v97;
                v139 = 2048;
                v140 = v98;
                LODWORD(v120) = 42;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v91, 2, "historical mslp array element,timestamp,%f,meanSeaLevelPressure,%f,uncertainty,%f,pressureMeasurement,%f", COERCE_DOUBLE(&v133), v120, v121, v122);
                v100 = v99;
                sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:andCompletionBlock:]", "%s\n", v99);
                if (v100 != buf)
                {
                  free(v100);
                }
              }

              [v15 timestamp];
              v10 = v65;
              [v15 timestamp];
              v11 = v66;
              [v15 fState];
              v12 = v67;
              [v15 fCovariance];
              v13 = sqrtf(v68);
              [v15 fState];
              v14 = v69;
              v9 = 1;
            }

            else
            {
              [v15 timestamp];
              v11 = v11 + v50;
              [v15 fState];
              v12 = v12 + v51;
              [v15 fCovariance];
              v13 = v13 + sqrtf(v52);
              [v15 fState];
              v14 = v14 + v53;
              ++v9;
            }
          }

          else
          {
            [v15 timestamp];
            v11 = v70;
            [v15 fState];
            v12 = v71;
            [v15 fCovariance];
            v13 = sqrtf(v72);
            [v15 fState];
            v14 = v73;
            v9 = 1;
            v10 = v48;
          }
        }

        else
        {
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v33 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            [v15 timestamp];
            v35 = v34;
            [v15 fState];
            v37 = v36;
            [v15 fCovariance];
            *buf = 134218496;
            v148 = v35;
            v149 = 2048;
            v150 = v37;
            v151 = 2048;
            v152 = v38;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "warning: negative mslp variance,timestamp,%f,mslp,%f,var,%f", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v39 = qword_1025D4418;
            [v15 timestamp];
            v41 = v40;
            [v15 fState];
            v43 = v42;
            [v15 fCovariance];
            v133 = 134218496;
            v134 = v41;
            v135 = 2048;
            v136 = v43;
            v137 = 2048;
            v138 = v44;
            LODWORD(v120) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v39, 0, "warning: negative mslp variance,timestamp,%f,mslp,%f,var,%f", COERCE_DOUBLE(&v133), v120, v121);
            v46 = v45;
            sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:andCompletionBlock:]", "%s\n", v45);
            if (v46 != buf)
            {
              free(v46);
            }
          }
        }
      }

      while (v8-- > 0);
      block = blockCopy;
      if (v9)
      {
        v101 = objc_alloc_init(CLMeanSeaLevelPressureData);
        [(CLMeanSeaLevelPressureData *)v101 setTimestamp:v11 / v9];
        [(CLMeanSeaLevelPressureData *)v101 setMeanSeaLevelPressure:v12 / v9];
        [(CLMeanSeaLevelPressureData *)v101 setUncertainty:v13 / v9];
        v102 = v14 / v9;
        v103 = v12 / v9;
        [(CLMeanSeaLevelPressureData *)v101 setPressureMeasurement:sub_1012C27C8(v102, v103)];
        [v132 addObject:v101];
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v104 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
        {
          [(CLMeanSeaLevelPressureData *)v101 timestamp];
          v106 = v105;
          [(CLMeanSeaLevelPressureData *)v101 meanSeaLevelPressure];
          v108 = v107;
          [(CLMeanSeaLevelPressureData *)v101 uncertainty];
          v110 = v109;
          [(CLMeanSeaLevelPressureData *)v101 pressureMeasurement];
          *buf = v127;
          v148 = v106;
          v149 = 2048;
          v150 = v108;
          v151 = 2048;
          v152 = v110;
          v153 = 2048;
          v154 = v111;
          _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEBUG, "historical mslp array element,timestamp,%f,meanSeaLevelPressure,%f,uncertainty,%f,pressureMeasurement,%f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101916DE0(v101, v112, v113, v114, v115, v116, v117, v118);
        }
      }
    }

    v119 = [objc_msgSend(objc_msgSend(v132 "reverseObjectEnumerator")];
    [v132 removeAllObjects];
    [v132 addObjectsFromArray:v119];
    (*(block + 2))(block, v132);
  }

  else
  {
    (*(block + 2))(block, v132);
  }
}

- (void)computeHistoricalMeanSeaLevelPressureWithStartTime:(double)time andEndTime:(double)endTime andCompletionBlock:(id)block
{
  v9 = [[CLOSTransaction alloc] initWithDescription:"CLElevationProfileEstimator.computeHistoricalMeanSeaLevelPressureWithStartTime"];
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v10 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    timeCopy = time;
    v19 = 2048;
    endTimeCopy = endTime;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "start to compute MSLP,startTime,%f,endTime,%f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019172E4();
  }

  v11 = objc_alloc_init(NSMutableArray);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007061D4;
  v12[3] = &unk_10246C860;
  v12[4] = self;
  v13 = objc_alloc_init(NSMutableArray);
  v15 = v9;
  blockCopy = block;
  v14 = v11;
  [(CLElevationProfileEstimator *)self _elevationBatchProcessingWithStartTime:v11 andEndTime:v13 andLocationBuffer:0 andKSEstimatesBuffer:v12 andTaskType:time andCompletionBlock:endTime];
}

- (BOOL)_queryVisitStateByTimestamp:(double)timestamp withHistoricalVisits:(id)visits andVisitSearchStartIndex:(int)index
{
  if (index < 0)
  {
    return 0;
  }

  indexCopy = index;
  while (1)
  {
    [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "startTime"}];
    if (v8 <= timestamp)
    {
      [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "endTime"}];
      if (v9 >= timestamp)
      {
        break;
      }
    }

    [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "startTime"}];
    if (v10 <= timestamp)
    {
      [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "endTime"}];
      if (v11 == 0.0)
      {
        break;
      }
    }

    [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "startTime"}];
    result = 0;
    if (v13 <= timestamp && indexCopy-- > 0)
    {
      continue;
    }

    return result;
  }

  return 1;
}

- (void)_gatherLocationArray:(id)array andElevationArray:(id)elevationArray andTaskType:(unint64_t)type withStartTime:(double)time andEndTime:(double)endTime andVisitArray:(id)visitArray andVisitSearchStartIndex:(int)index andCompletionBlock:(id)self0
{
  if ([CLContextManagerElevationProfileBase isQueryValidWithStartTime:"isQueryValidWithStartTime:andEndTime:" andEndTime:?])
  {
    if (self->_meanSeaLevelPressureSamplingPeriod + time >= endTime)
    {
      endTimeCopy = endTime;
    }

    else
    {
      endTimeCopy = self->_meanSeaLevelPressureSamplingPeriod + time;
    }

    if ((index & 0x80000000) == 0)
    {
      [objc_msgSend(visitArray objectAtIndexedSubscript:{index), "endTime"}];
      if (v17 != 0.0)
      {
        [objc_msgSend(visitArray objectAtIndexedSubscript:{index), "endTime"}];
      }
    }

    objc_alloc_init(NSMutableArray);
    [CLContextManagerElevationProfile fetchLocationsWithStartTime:"fetchLocationsWithStartTime:andEndTime:andBatchSize:andLocationArray:andVisitSearchStartIndex:andCompletionBlock:" andEndTime:self->_locationBatchSize andBatchSize:time andLocationArray:endTimeCopy andVisitSearchStartIndex:? andCompletionBlock:?];
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v18 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      timeCopy = time;
      v21 = 2048;
      endTimeCopy2 = endTime;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "query location and elevation with false startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019173F0();
    }

    (*(block + 2))(block);
  }
}

- (void)_removeInVisitLocation:(id)location withVisitArray:(id)array andVisitSearchStartIndex:(int)index
{
  v5 = *&index;
  v9 = [array count];
  if ((v5 & 0x80000000) == 0 && v9)
  {
    v11 = objc_alloc_init(NSMutableIndexSet);
    if ([location count] >= 1)
    {
      v10 = 0;
      do
      {
        [objc_msgSend(objc_msgSend(location objectAtIndexedSubscript:{v10), "altitudeData"), "timestamp"}];
        if ([(CLElevationProfileEstimator *)self _queryVisitStateByTimestamp:array withHistoricalVisits:v5 andVisitSearchStartIndex:?])
        {
          [v11 addIndex:v10];
        }

        ++v10;
      }

      while (v10 < [location count]);
    }

    if ([v11 count])
    {
      [location removeObjectsAtIndexes:v11];
    }
  }
}

- (void)_decimateLocationsWithStartTime:(double)time andEndTime:(double)endTime andLocationArray:(id)array andElevationArray:(id)elevationArray andRawLocationArray:(id)locationArray andRawElevationArray:(id)rawElevationArray andTaskType:(unint64_t)type andVisitArray:(id)self0 andVisitSearchStartIndex:(int)self1
{
  [objc_msgSend(rawElevationArray "firstObject")];
  v17 = v16;
  [objc_msgSend(rawElevationArray "lastObject")];
  v19 = v18;
  v20 = objc_alloc_init(NSMutableArray);
  v21 = objc_alloc_init(NSMutableArray);
  v22 = [[CLElevationLocationFilter alloc] initWithWindowSize:self->_windowSize];
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(locationArray);
  if (v23)
  {
    v24 = v23;
    v25 = MEMORY[0];
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (MEMORY[0] != v25)
        {
          objc_enumerationMutation(locationArray);
        }

        v27 = *(8 * i);
        [objc_msgSend(v27 "altitudeData")];
        if (v28 >= v17)
        {
          [objc_msgSend(v27 "altitudeData")];
          if (v29 <= v19)
          {
            [objc_msgSend(v27 "altitudeData")];
            if (v30 >= 0.0)
            {
              [objc_msgSend(v27 "altitudeData")];
              if (v31 <= self->_locationMaxVerticalAccuracy)
              {
                [(CLElevationLocationFilter *)v22 append:v27];
                if ([(CLElevationLocationFilter *)v22 readyToFilter])
                {
                  [(CLElevationLocationFilter *)v22 fetchFilteredLocations:v21 withElevationArray:rawElevationArray];
                  [(CLElevationProfileEstimator *)self _removeInVisitLocation:v21 withVisitArray:visitArray andVisitSearchStartIndex:index];
                  [(CLElevationProfileEstimator *)self _logValuesOfFilteredLocations:v21 andTaskType:type];
                  [(CLElevationLocationFilter *)v22 aggregateFilteredLocations:v21 andAddTo:v20];
                  [v21 removeAllObjects];
                }
              }
            }
          }
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(locationArray);
    }

    while (v24);
  }

  [(CLElevationLocationFilter *)v22 fetchFilteredLocations:v21 withElevationArray:rawElevationArray];
  [(CLElevationProfileEstimator *)self _removeInVisitLocation:v21 withVisitArray:visitArray andVisitSearchStartIndex:index];
  [(CLElevationProfileEstimator *)self _logValuesOfFilteredLocations:v21 andTaskType:type];
  [(CLElevationLocationFilter *)v22 aggregateFilteredLocations:v21 andAddTo:v20];
  [v21 removeAllObjects];
  [(CLElevationProfileEstimator *)self _decimateElevationsWithStartTime:array andEndTime:elevationArray andLocationArray:v20 andElevationArray:rawElevationArray andAggregatedLocationArray:time andRawElevationArray:endTime];
}

- (void)_decimateElevationsWithStartTime:(double)time andEndTime:(double)endTime andLocationArray:(id)array andElevationArray:(id)elevationArray andAggregatedLocationArray:(id)locationArray andRawElevationArray:(id)rawElevationArray
{
  if ([locationArray count])
  {
    [objc_msgSend(objc_msgSend(locationArray objectAtIndex:{0), "altitudeData"), "timestamp"}];
    v14 = v13;
  }

  else
  {
    v14 = 1.79769313e308;
  }

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(rawElevationArray);
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(rawElevationArray);
        }

        v20 = *(8 * i);
        [v20 timestamp];
        if (v21 >= time)
        {
          [v20 timestamp];
          if (v22 <= endTime)
          {
            while (1)
            {
              [v20 timestamp];
              if (v14 >= v23)
              {
                break;
              }

              [objc_msgSend(objc_msgSend(array "lastObject")];
              if (v14 > v24)
              {
                [objc_msgSend(elevationArray "lastObject")];
                if (v14 > v25)
                {
                  v26 = objc_alloc_init(CLElevationDBEntry);
                  v27 = [locationArray objectAtIndex:v17];
                  [objc_msgSend(v27 "altitudeData")];
                  [(CLElevationDBEntry *)v26 setTimestamp:?];
                  [v27 interpPressure];
                  [(CLElevationDBEntry *)v26 setPressure:?];
                  [array addObject:v27];
                  [elevationArray addObject:v26];
                }
              }

              if (++v17 >= [locationArray count])
              {
                v14 = 1.79769313e308;
              }

              else
              {
                [objc_msgSend(objc_msgSend(locationArray objectAtIndex:{v17), "altitudeData"), "timestamp"}];
                v14 = v28;
              }
            }

            [v20 timestamp];
            v30 = v29;
            [objc_msgSend(elevationArray "lastObject")];
            if (v30 - v31 > self->_decimationPeriod)
            {
              [elevationArray addObject:v20];
            }
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(rawElevationArray);
    }

    while (v16);
  }
}

- (void)_alignElevationArray:(id)array andLocationArray:(id)locationArray
{
  if ([array count] && objc_msgSend(locationArray, "count"))
  {
    [objc_msgSend(array "firstObject")];
    v7 = v6 + -0.000001;
    [objc_msgSend(array "lastObject")];
    v9 = v8 + 0.000001;
    [objc_msgSend(objc_msgSend(locationArray "firstObject")];
    if (v7 >= v10 || ([objc_msgSend(objc_msgSend(locationArray "lastObject")], v11 >= v9))
    {
      v12 = objc_alloc_init(NSMutableArray);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(locationArray, 0);
      if (v13)
      {
        v14 = v13;
        v15 = MEMORY[0];
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (MEMORY[0] != v15)
            {
              objc_enumerationMutation(locationArray);
            }

            v17 = *(8 * i);
            [objc_msgSend(v17 "altitudeData")];
            if (v18 > v7)
            {
              [objc_msgSend(v17 "altitudeData")];
              if (v19 < v9)
              {
                [v12 addObject:v17];
              }
            }
          }

          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(locationArray);
        }

        while (v14);
      }

      [locationArray removeAllObjects];
      [locationArray addObjectsFromArray:v12];
    }
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v20 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v22 = [array count];
      v23 = 1024;
      v24 = [locationArray count];
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "zero elevation or location for kalman smoother,elevationCount,%d,locationCount,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101917994(array, locationArray);
    }
  }
}

- (void)_initKalmanFilter:(id)filter withFirstLocation:(id)location andElevationArray:(id)array andTaskType:(unint64_t)type
{
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, a2, &v44, v63, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    v14 = 0.0;
    v15 = 1.79769313e308;
LABEL_3:
    v16 = 0;
    v17 = v15;
    while (1)
    {
      if (*v45 != v13)
      {
        objc_enumerationMutation(array);
      }

      v18 = *(*(&v44 + 1) + 8 * v16);
      [v18 timestamp];
      v20 = v19;
      [location timestamp];
      v15 = vabdd_f64(v20, v21);
      if (v15 > v17)
      {
        break;
      }

      [v18 pressure];
      v14 = v22;
      v16 = v16 + 1;
      v17 = v15;
      if (v12 == v16)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(array);
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0.0;
  }

  [location elevation];
  *&v23 = v23;
  v24 = sub_1012C280C(*&v23, v14);
  [objc_msgSend(array "firstObject")];
  *&v25 = v25;
  v26 = sub_1000A6C00(*&v25, v24);
  v42 = 0;
  meanSeaLevelPressureInitialVar = self->_meanSeaLevelPressureInitialVar;
  elevationInitialVar = self->_elevationInitialVar;
  v43 = meanSeaLevelPressureInitialVar;
  sub_100707AFC(&v39, &elevationInitialVar);
  *&v28 = v26;
  *&v29 = v24;
  [filter setFState:{v28, v29}];
  *buf = v39;
  *&buf[8] = v40;
  [filter setFP:buf];
  *&v30 = self->_elevationProcessNoiseFromPressureSensorVar;
  [filter setFQ:{v30, 0.0}];
  LODWORD(v31) = 1.0;
  [filter setFH:{v31, 0.0}];
  if (qword_1025D4410 != -1)
  {
    sub_101916CCC();
  }

  v32 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134218752;
    *&buf[4] = type;
    v57 = 2048;
    v58 = v26;
    v59 = 2048;
    v60 = v24;
    v61 = 1024;
    v62 = workoutSmootherRunsCount;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "#altimeter,initialize Kalman filter,taskType,%lu,elevation,%.3f,mslp,%.3f,workoutSmootherRunsCount,%d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v34 = qword_1025D4418;
    workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    v48 = 134218752;
    typeCopy = type;
    v50 = 2048;
    v51 = v26;
    v52 = 2048;
    v53 = v24;
    v54 = 1024;
    v55 = workoutSmootherRunsCount2;
    LODWORD(v38) = 38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v34, 0, "#altimeter,initialize Kalman filter,taskType,%lu,elevation,%.3f,mslp,%.3f,workoutSmootherRunsCount,%d", &v48, v38, v39, v40);
    v37 = v36;
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _initKalmanFilter:withFirstLocation:andElevationArray:andTaskType:]", "%s\n", v36);
    if (v37 != buf)
    {
      free(v37);
    }
  }
}

- (void)_initKalmanFilter:(id)filter withFirstLocation:(id)location andMeanSeaLevelPressure:(double)pressure andMeanSeaLevelPressureUnc:(double)unc andTaskType:(unint64_t)type
{
  [location elevation];
  v14 = v13;
  *&v13 = v13;
  *&v15 = pressure;
  [filter setFState:{v13, v15}];
  [location verticalAccuracy];
  v17 = v16;
  [location verticalAccuracy];
  elevationInitialVar = v17 * v18;
  v34 = 0;
  if (self->_elevationInitialVar > elevationInitialVar)
  {
    elevationInitialVar = self->_elevationInitialVar;
  }

  v33 = elevationInitialVar;
  v21 = 562500.0;
  v20 = unc * unc;
  if (v20 <= 562500.0)
  {
    v21 = unc * unc;
  }

  v35 = v21;
  sub_100707AFC(&v31, &v33);
  *buf = v31;
  *&buf[8] = v32;
  [filter setFP:buf];
  LODWORD(v22) = 1.0;
  [filter setFH:{v22, 0.0}];
  *&v23 = self->_elevationProcessNoiseFromPressureSensorVar;
  [filter setFQ:{v23, 0.0}];
  if (qword_1025D4410 != -1)
  {
    sub_101916CCC();
  }

  v24 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134218752;
    *&buf[4] = type;
    v45 = 2048;
    v46 = v14;
    v47 = 2048;
    pressureCopy = pressure;
    v49 = 1024;
    v50 = workoutSmootherRunsCount;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#altimeter,initialize workout Kalman filter,taskType,%lu,elevation,%.3f,mslp,%.3f,workoutSmootherRunsCount,%d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v26 = qword_1025D4418;
    workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    v36 = 134218752;
    typeCopy = type;
    v38 = 2048;
    v39 = v14;
    v40 = 2048;
    pressureCopy2 = pressure;
    v42 = 1024;
    v43 = workoutSmootherRunsCount2;
    LODWORD(v30) = 38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 0, "#altimeter,initialize workout Kalman filter,taskType,%lu,elevation,%.3f,mslp,%.3f,workoutSmootherRunsCount,%d", &v36, v30, v31, v32);
    v29 = v28;
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _initKalmanFilter:withFirstLocation:andMeanSeaLevelPressure:andMeanSeaLevelPressureUnc:andTaskType:]", "%s\n", v28);
    if (v29 != buf)
    {
      free(v29);
    }
  }
}

- (double)_getTimestampWithLocationArray:(id)array atIndex:(unsigned int)index
{
  if ([array count] <= index)
  {
    return 1.79769313e308;
  }

  v6 = [objc_msgSend(array objectAtIndex:{index), "altitudeData"}];

  [v6 timestamp];
  return result;
}

- (double)_getTimestampWithAltitudeArray:(id)array atIndex:(unsigned int)index
{
  if ([array count] <= index)
  {
    return 1.79769313e308;
  }

  v6 = [array objectAtIndex:index];

  [v6 timestamp];
  return result;
}

- (double)_getTimestampWithElevationArray:(id)array atIndex:(unsigned int)index
{
  if ([array count] <= index)
  {
    return 1.79769313e308;
  }

  v6 = [array objectAtIndex:index];

  [v6 timestamp];
  return result;
}

- (void)_predictionUpdate:(id)update withElevation:(id)elevation withNextElevation:(id)nextElevation withCurrentHmmState:(int)state withTravelVelocity:(double)velocity
{
  [elevation pressure];
  v14 = v13;
  [nextElevation pressure];
  v16 = v15;
  [update fState];
  v18 = v17;
  if (update)
  {
    objc_msgSend_fP(update);
  }

  else
  {
    v57 = 0;
    v56 = 0;
  }

  [update fQ];
  v55[0] = v19;
  [nextElevation timestamp];
  v21 = v20;
  [elevation timestamp];
  v23 = vabdd_f64(v21, v22);
  if (v14 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 101320.0 / v14;
  }

  v25 = v23 * 0.00200000009 * velocity + self->_meanSeaLevelPressureDriftRateInPaPerSec * v23;
  v54 = v24 * v25;
  v26 = vabds_f32(v16, v14);
  v27 = v26 * sub_1000A6C9C(v14);
  sub_1012C2850(v14, v18);
  v29 = v27 / v28;
  if (self->_isVerboseLogging)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v30 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v48 = v24;
      v49 = v29;
      v51 = v26;
      v50 = sub_1000A6C9C(v14);
      sub_1012C2850(v14, v18);
      *buf = 134219776;
      *&buf[4] = v25;
      *v74 = 2048;
      *&v74[2] = v24;
      v75 = 2048;
      v76 = v29;
      v77 = 2048;
      v78 = v26;
      v79 = 2048;
      velocityCopy = velocity;
      v81 = 2048;
      v82 = v23;
      v83 = 2048;
      v84 = v50;
      v85 = 2048;
      v86 = v31;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "mslp uncertainty model,deltaMslpDue2TimeAndDistance,%f,pressure2MslpFactor,%f,estBaroModelUncReflectedInMslp,%f,deltaPressure,%f,travelVelocity,%f,timeDiff,%f,slopeDiffDElevationDPressure,%f,dHdMslp,%f", buf, 0x52u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      velocityCopy2 = velocity;
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v38 = qword_1025D4418;
      v39 = v25;
      v40 = v24;
      *&v51 = v29;
      v41 = v26;
      v42 = sub_1000A6C9C(v14);
      sub_1012C2850(v14, v18);
      *v58 = 134219776;
      *&v58[4] = v39;
      v59 = 2048;
      v60 = v40;
      v61 = 2048;
      v62 = v29;
      v63 = 2048;
      v64 = v41;
      v65 = 2048;
      v66 = velocityCopy2;
      v67 = 2048;
      v68 = v23;
      v69 = 2048;
      v70 = v42;
      v71 = 2048;
      v72 = v43;
      LODWORD(v46) = 82;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v38, 2, "mslp uncertainty model,deltaMslpDue2TimeAndDistance,%f,pressure2MslpFactor,%f,estBaroModelUncReflectedInMslp,%f,deltaPressure,%f,travelVelocity,%f,timeDiff,%f,slopeDiffDElevationDPressure,%f,dHdMslp,%f", COERCE_DOUBLE(v58), v46, v47, v48, v49, v50, v51, velocityCopy2);
      v45 = v44;
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _predictionUpdate:withElevation:withNextElevation:withCurrentHmmState:withTravelVelocity:]", "%s\n", v44);
      if (v45 != buf)
      {
        free(v45);
      }

      v29 = v52;
    }
  }

  *&v55[1] = (v29 + v54) * (v29 + v54);
  sub_1012C2850(v14, v18);
  if (state)
  {
    *&buf[4] = 0;
    *buf = 1065353216;
    *v74 = 1065353216;
    LODWORD(v32) = -1.0;
    [update setF01:v32];
    elevationProcessNoiseFromPressureSensorVar = v23 * self->_elevationProcessNoiseFromHumanMotion * (v23 * self->_elevationProcessNoiseFromHumanMotion);
  }

  else
  {
    v34 = LODWORD(v32);
    v35 = sub_1000A6C00(v14, v18);
    [update fState];
    *&v36 = v35;
    [update setFState:v36];
    *buf = 0;
    *&buf[8] = v34;
    *v74 = 1065353216;
    LODWORD(v37) = v34;
    [update setF01:v37];
    elevationProcessNoiseFromPressureSensorVar = self->_elevationProcessNoiseFromPressureSensorVar;
  }

  *v55 = elevationProcessNoiseFromPressureSensorVar;
  sub_100708530(&v56, buf, v55);
  *v58 = v56;
  *&v58[8] = v57;
  [update setFP:v58];
}

- (void)_measurementUpdate:(id)update withLocation:(id)location
{
  if (update)
  {
    objc_msgSend_fP(update, a2);
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  [update fH];
  v7 = v6;
  v9 = v8;
  *v27 = v6;
  *&v27[1] = v8;
  [location verticalAccuracy];
  v11 = v10;
  [location verticalAccuracy];
  *&v12 = v11 * v12;
  v31 = LODWORD(v12);
  [location elevation];
  *&v11 = v13;
  [update fState];
  v30 = *&v11 - ((v7 * v14) + (v9 * v15));
  LODWORD(v16) = 2139095039;
  [update setF01:v16];
  sub_100708A1C(&v28, v27, &v31, &v30);
  v18 = v17;
  v20 = v19;
  v25 = v28;
  v26 = v29;
  [update setFP:&v25];
  [update fState];
  *&v22 = v18 + v21;
  *&v24 = v20 + v23;
  [update setFState:{v22, v24}];
}

- (BOOL)_rejectOutlyingLocation:(id)location withKFEstimates:(id)estimates
{
  [estimates fState];
  v6 = v5;
  [location elevation];
  v8 = vabdd_f64(v6, v7);
  [location verticalAccuracy];
  return v8 > v9 * 5.0;
}

- (void)_resetKFEstimatesBuffer:(id)buffer andCurrKFEstimate:(id)estimate andAltitudeIndex:(int *)index andPressureIndex:(int *)pressureIndex withNumOfKfPredictionStepReset:(int)reset
{
  if (*pressureIndex >= reset)
  {
    resetCopy = reset;
  }

  else
  {
    resetCopy = *pressureIndex;
  }

  *pressureIndex -= resetCopy;
  if (reset < 1)
  {
    v12 = 0;
  }

  else
  {
    resetCopy2 = reset;
    v12 = 0;
    do
    {
      v13 = [objc_msgSend(buffer "lastObject")];
      resetCopy2 -= v13 ^ 1;
      v12 += v13;
      [buffer removeLastObject];
    }

    while (resetCopy2);
  }

  if (*index >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *index;
  }

  *index -= v14;
  [objc_msgSend(buffer "lastObject")];
  [estimate setFState:?];
  if (estimate)
  {
    objc_msgSend_fP(estimate);
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  [objc_msgSend(buffer "lastObject")];
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = v17;
  v19[3] = v18;
  sub_100707AFC(&v20, v19);
}

- (void)recordNextBatchProcessInitStateWithCurrKFEstimate:(id)estimate currKfTimestamp:(double)timestamp currHmmGoodModeProbability:(float)probability andCurrBadStateDetectedTimestamp:(double)detectedTimestamp
{
  [(CLKFRunningEstimates *)self->_nextKfInitEstimate assignFromObject:estimate];
  self->_nextWorkoutProfileStartTime = timestamp + 0.000001;
  self->_nextHmmGoodStateInitProbability = probability;
  self->_nextInitBadStateDetectedTimestamp = detectedTimestamp;
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v10 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    nextWorkoutProfileStartTime = self->_nextWorkoutProfileStartTime;
    [(CLKFRunningEstimates *)self->_nextKfInitEstimate fState];
    v13 = v12;
    [(CLKFRunningEstimates *)self->_nextKfInitEstimate fState];
    v15 = v14;
    nextKfInitEstimate = self->_nextKfInitEstimate;
    if (nextKfInitEstimate)
    {
      objc_msgSend_fP(nextKfInitEstimate);
    }

    else
    {
      memset(v73, 0, sizeof(v73));
    }

    v17 = sub_10070F05C(v73, 0, 0);
    v18 = self->_nextKfInitEstimate;
    if (v18)
    {
      objc_msgSend_fP(v18);
    }

    else
    {
      v72 = 0;
      v71 = 0.0;
    }

    *&v19 = sub_10070F05C(&v71, 0, 0);
    v21 = v20;
    v22 = self->_nextKfInitEstimate;
    if (v22)
    {
      objc_msgSend_fP(v22, v19);
    }

    else
    {
      LODWORD(v70) = 0;
      v69 = 0.0;
    }

    v23 = v13;
    v24 = v15;
    v25 = v17;
    v26 = v21;
    *&v27 = sub_10070F05C(&v69, 0, 0);
    v29 = v28;
    v30 = self->_nextKfInitEstimate;
    if (v30)
    {
      objc_msgSend_fP(v30, v27);
    }

    else
    {
      LODWORD(v68) = 0;
      v67 = 0.0;
    }

    sub_10070F05C(&v67, 0, 0);
    v32 = v31;
    nextInitBadStateDetectedTimestamp = self->_nextInitBadStateDetectedTimestamp;
    nextHmmGoodStateInitProbability = self->_nextHmmGoodStateInitProbability;
    workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134220288;
    v93 = nextWorkoutProfileStartTime;
    v94 = 2048;
    v95 = v23;
    v96 = 2048;
    v97 = v24;
    v98 = 2048;
    v99 = v25;
    v100 = 2048;
    v101 = v26;
    v102 = 2048;
    v103 = v29;
    v104 = 2048;
    v105 = v32;
    v106 = 2048;
    v107 = nextInitBadStateDetectedTimestamp;
    v108 = 2048;
    v109 = nextHmmGoodStateInitProbability;
    v110 = 1024;
    v111 = workoutSmootherRunsCount;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "set next KF and HMM initial state,nextWorkoutProfileStartTime,%f,nextInitElevation,%f,nexInitMslp,%f,fP00,%f,fP01,%f,fP10,%f,fP11,%f,nextInitBadStateDetectedTimestamp,%f,nextHmmGoodStateProb,%f,rounds,%d", buf, 0x62u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v36 = qword_1025D4418;
    v37 = self->_nextWorkoutProfileStartTime;
    [(CLKFRunningEstimates *)self->_nextKfInitEstimate fState];
    v39 = v38;
    [(CLKFRunningEstimates *)self->_nextKfInitEstimate fState];
    v41 = v40;
    v42 = self->_nextKfInitEstimate;
    if (v42)
    {
      objc_msgSend_fP(v42);
    }

    else
    {
      v72 = 0;
      v71 = 0.0;
    }

    v43 = sub_10070F05C(&v71, 0, 0);
    v44 = self->_nextKfInitEstimate;
    if (v44)
    {
      objc_msgSend_fP(v44);
    }

    else
    {
      LODWORD(v70) = 0;
      v69 = 0.0;
    }

    *&v45 = sub_10070F05C(&v69, 0, 0);
    v47 = v46;
    v48 = self->_nextKfInitEstimate;
    if (v48)
    {
      objc_msgSend_fP(v48, v45);
    }

    else
    {
      LODWORD(v68) = 0;
      v67 = 0.0;
    }

    v49 = v39;
    v50 = v41;
    v51 = v43;
    v52 = v47;
    *&v53 = sub_10070F05C(&v67, 0, 0);
    v55 = v54;
    v56 = self->_nextKfInitEstimate;
    if (v56)
    {
      objc_msgSend_fP(v56, v53);
    }

    else
    {
      LODWORD(v66) = 0;
      v65 = 0.0;
    }

    sub_10070F05C(&v65, 0, 0);
    v58 = v57;
    v59 = self->_nextInitBadStateDetectedTimestamp;
    v60 = self->_nextHmmGoodStateInitProbability;
    workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *v73 = 134220288;
    *&v73[4] = v37;
    v74 = 2048;
    v75 = v49;
    v76 = 2048;
    v77 = v50;
    v78 = 2048;
    v79 = v51;
    v80 = 2048;
    v81 = v52;
    v82 = 2048;
    v83 = v55;
    v84 = 2048;
    v85 = v58;
    v86 = 2048;
    v87 = v59;
    v88 = 2048;
    v89 = v60;
    v90 = 1024;
    v91 = workoutSmootherRunsCount2;
    LODWORD(v64) = 98;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v36, 0, "set next KF and HMM initial state,nextWorkoutProfileStartTime,%f,nextInitElevation,%f,nexInitMslp,%f,fP00,%f,fP01,%f,fP10,%f,fP11,%f,nextInitBadStateDetectedTimestamp,%f,nextHmmGoodStateProb,%f,rounds,%d", COERCE_DOUBLE(v73), v64, v65, v66, v67, v68, v69, v70, v71, v72);
    v63 = v62;
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator recordNextBatchProcessInitStateWithCurrKFEstimate:currKfTimestamp:currHmmGoodModeProbability:andCurrBadStateDetectedTimestamp:]", "%s\n", v62);
    if (v63 != buf)
    {
      free(v63);
    }
  }
}

- (void)_forwardProcessingWithGpsAltitudeArray:(id)array andElevationArray:(id)elevationArray andKFEstimatesBuffer:(id)buffer
{
  v114 = 0;
  [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:0];
  v10 = v9;
  [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:0];
  v12 = v11;
  v13 = objc_alloc_init(CLKFRunningEstimates);
  v14 = [[CLPressureQualityHiddenMarkovModel alloc] initWithIterationRound:[(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount]];
  p_elevationProfileContextManager = &self->_elevationProfileContextManager;
  nextWorkoutProfileStartTime = self->_nextWorkoutProfileStartTime;
  if (nextWorkoutProfileStartTime == 1.79769313e308 || v10 < nextWorkoutProfileStartTime)
  {
    nextInitBadStateDetectedTimestamp = v12 + -0.000001;
    -[CLElevationProfileEstimator _initKalmanFilter:withFirstLocation:andMeanSeaLevelPressure:andMeanSeaLevelPressureUnc:andTaskType:](self, "_initKalmanFilter:withFirstLocation:andMeanSeaLevelPressure:andMeanSeaLevelPressureUnc:andTaskType:", v13, [array firstObject], 2, self->_mslpAtStartOfWorkout, self->_mslpUncAtStartOfWorkout);
    if (self->_firstTimeOfExternalWetStateInWorkout.__engaged_ && (workoutStartTime = self->_workoutStartTime, workoutStartTime > self->_firstTimeOfExternalWetStateInWorkout.var0.__val_))
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916BCC();
      }

      v18 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        Current = CFAbsoluteTimeGetCurrent();
        workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134218240;
        *v122 = Current;
        *&v122[8] = 1024;
        *&v122[10] = workoutSmootherRunsCount;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#altimeter,initialize workout HMM at start of workout in bad state,now,%.3f,workoutSmootherRunsCount,%d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101917EF8(p_elevationProfileContextManager);
      }

      LODWORD(workoutStartTime) = 981668463;
    }

    else
    {
      LODWORD(workoutStartTime) = 1065336439;
    }

    [(CLPressureQualityHiddenMarkovModel *)v14 setGoodStateProbability:workoutStartTime];
  }

  else
  {
    [(CLKFRunningEstimates *)v13 assignFromObject:self->_nextKfInitEstimate];
    *&v21 = self->_nextHmmGoodStateInitProbability;
    [(CLPressureQualityHiddenMarkovModel *)v14 setGoodStateProbability:v21];
    nextInitBadStateDetectedTimestamp = self->_nextInitBadStateDetectedTimestamp;
  }

  if (qword_1025D4410 != -1)
  {
    sub_101916CCC();
  }

  v23 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    [(CLKFRunningEstimates *)v13 fState];
    v25 = v24;
    [(CLKFRunningEstimates *)v13 fState];
    v27 = v26;
    workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134219008;
    *v122 = v25;
    *&v122[8] = 2048;
    *&v122[10] = v27;
    *&v122[18] = 2048;
    v123 = nextInitBadStateDetectedTimestamp;
    *v124 = 2048;
    *&v124[2] = v10;
    v125 = 1024;
    v126 = workoutSmootherRunsCount2;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "initialize workout Kalman filter,elevation,%f,mslp,%f,badStateDetectedTimestamp,%f,firstPressureTimestamp,%f,workoutSmootherRunsCount,%d", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v99 = qword_1025D4418;
    [(CLKFRunningEstimates *)v13 fState];
    v101 = v100;
    [(CLKFRunningEstimates *)v13 fState];
    v103 = v102;
    workoutSmootherRunsCount3 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
    v115 = 134219008;
    *v116 = v101;
    *&v116[8] = 2048;
    *&v116[10] = v103;
    *&v116[18] = 2048;
    v117 = nextInitBadStateDetectedTimestamp;
    *v118 = 2048;
    *&v118[2] = v10;
    v119 = 1024;
    v120 = workoutSmootherRunsCount3;
    LODWORD(v107) = 48;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v99, 0, "initialize workout Kalman filter,elevation,%f,mslp,%f,badStateDetectedTimestamp,%f,firstPressureTimestamp,%f,workoutSmootherRunsCount,%d", COERCE_DOUBLE(&v115), v107, v108, v109, v111);
    v106 = v105;
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v105);
    if (v106 != buf)
    {
      free(v106);
    }
  }

  if (qword_1025D4410 != -1)
  {
    sub_101916CCC();
  }

  v29 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    [(CLPressureQualityHiddenMarkovModel *)v14 getCurrGoodModeProbability];
    v31 = v30;
    workoutSmootherRunsCount4 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134218240;
    *v122 = v31;
    *&v122[8] = 1024;
    *&v122[10] = workoutSmootherRunsCount4;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "initialize workout HMM,GoodStateProbability,%f,workoutSmootherRunsCount,%d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101918028(&v14->super.isa, p_elevationProfileContextManager, v33, v34, v35, v36, v37, v38);
  }

  [(CLElevationProfileEstimator *)self _updateKFEstimatesBuffer:buffer withCurrEstimate:v13 measurementState:1 andCurrTimestamp:v10];
  *&v39 = 134218240;
  v112 = v39;
  while (1)
  {
    v40 = SHIDWORD(v114);
    if ([array count] <= v40)
    {
      v41 = v114;
      if ([elevationArray count] <= v41)
      {
        break;
      }
    }

    [(CLElevationProfileEstimator *)self _getTimestampWithAltitudeArray:array atIndex:HIDWORD(v114)];
    v43 = v42;
    [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:v114];
    v45 = v44;
    if (v43 >= v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = v43;
    }

    if (v43 < v44)
    {
      v47 = v43;
      v48 = [array objectAtIndex:SHIDWORD(v114)];
      if (![(CLPressureQualityHiddenMarkovModel *)v14 forwardPropagateHmmWithCurrentAltitude:v48])
      {
        goto LABEL_46;
      }

      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v49 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        currentHmmState = [(CLPressureQualityHiddenMarkovModel *)v14 currentHmmState];
        workoutSmootherRunsCount5 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 67109632;
        *v122 = currentHmmState;
        *&v122[4] = 2048;
        *&v122[6] = v43;
        *&v122[14] = 1024;
        *&v122[16] = workoutSmootherRunsCount5;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "HMM state transits into,currState,%d,kfTimestamp,%f,rounds,%d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v84 = qword_1025D4418;
        currentHmmState2 = [(CLPressureQualityHiddenMarkovModel *)v14 currentHmmState];
        workoutSmootherRunsCount6 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        v115 = 67109632;
        *v116 = currentHmmState2;
        *&v116[4] = 2048;
        *&v116[6] = v43;
        *&v116[14] = 1024;
        *&v116[16] = workoutSmootherRunsCount6;
        LODWORD(v107) = 24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v84, 0, "HMM state transits into,currState,%d,kfTimestamp,%f,rounds,%d", &v115, v107, LODWORD(v108));
        v88 = v87;
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v87);
        if (v88 != buf)
        {
          free(v88);
        }
      }

      if ([(CLPressureQualityHiddenMarkovModel *)v14 currentHmmState]!= 1 || v43 <= nextInitBadStateDetectedTimestamp || !self->_backwardPropagationEnabled || (v52 = [(CLPressureQualityHiddenMarkovModel *)v14 backwardPropagateBadState], v52 < 1))
      {
LABEL_46:
        [(CLElevationProfileEstimator *)self _measurementUpdate:v13 withLocation:v48];
        ++HIDWORD(v114);
        v53 = v114;
        workoutKsPeriodInStepCountCadence = self->_workoutKsPeriodInStepCountCadence;
        goto LABEL_73;
      }

      v69 = v52;
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v70 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        v71 = HIDWORD(v114);
        LODWORD(v109) = v114;
        v72 = [buffer count];
        workoutSmootherRunsCount7 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134219264;
        *v122 = v43;
        *&v122[8] = 1024;
        *&v122[10] = v71;
        *&v122[14] = 1024;
        *&v122[16] = LODWORD(v109);
        LOWORD(v123) = 1024;
        *(&v123 + 2) = v69;
        HIWORD(v123) = 1024;
        *v124 = v72;
        *&v124[4] = 1024;
        *&v124[6] = workoutSmootherRunsCount7;
        _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "HMM state transits into bad state and the backward propagation is triggered at,kfTimestamp,%f,altitudeIndex,%d,pressureIndex,%d,numberOfPredictionRemove,%d,KFbufferSize,%d,rounds,%d", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v110 = qword_1025D4418;
        v94 = v114;
        v93 = HIDWORD(v114);
        v95 = [buffer count];
        workoutSmootherRunsCount8 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        v115 = 134219264;
        *v116 = v43;
        *&v116[8] = 1024;
        *&v116[10] = v93;
        *&v116[14] = 1024;
        *&v116[16] = v94;
        LOWORD(v117) = 1024;
        *(&v117 + 2) = v69;
        HIWORD(v117) = 1024;
        *v118 = v95;
        *&v118[4] = 1024;
        *&v118[6] = workoutSmootherRunsCount8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v110, 0, "HMM state transits into bad state and the backward propagation is triggered at,kfTimestamp,%f,altitudeIndex,%d,pressureIndex,%d,numberOfPredictionRemove,%d,KFbufferSize,%d,rounds,%d", COERCE_DOUBLE(&v115), 42, LODWORD(v108), v110, v112, DWORD2(v112));
        v98 = v97;
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v97);
        if (v98 != buf)
        {
          free(v98);
        }
      }

      [(CLElevationProfileEstimator *)self _resetKFEstimatesBuffer:buffer andCurrKFEstimate:v13 andAltitudeIndex:&v114 + 4 andPressureIndex:&v114 withNumOfKfPredictionStepReset:v69];
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v74 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:v114];
        v76 = v75;
        workoutSmootherRunsCount9 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = v112;
        *v122 = v76;
        *&v122[8] = 1024;
        *&v122[10] = workoutSmootherRunsCount9;
        _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEFAULT, "HMM and Kalman filter are reset to,restartTimestamp,%f,rounds,%d", buf, 0x12u);
      }

      nextInitBadStateDetectedTimestamp = v43 + 0.000001;
      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v78 = qword_1025D4418;
        [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:v114];
        v80 = v79;
        workoutSmootherRunsCount10 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        v115 = v112;
        *v116 = v80;
        *&v116[8] = 1024;
        *&v116[10] = workoutSmootherRunsCount10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v78, 0, "HMM and Kalman filter are reset to,restartTimestamp,%f,rounds,%d", COERCE_DOUBLE(&v115), 18);
        v83 = v82;
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v82);
        if (v83 != buf)
        {
          free(v83);
        }
      }
    }

    else
    {
      v55 = v43 + -0.000001;
      v56 = [elevationArray count] - 1;
      if (v114 + 1 < v56)
      {
        v57 = v114 + 1;
      }

      else
      {
        v57 = v56;
      }

      if (v55 >= v45)
      {
        [(CLPressureQualityHiddenMarkovModel *)v14 updatePressureGpsAlignmentBufferWithData:0.0 andTimestamp:v45];
        [(CLPressureQualityHiddenMarkovModel *)v14 updateGoodModeProbabilityBufferWithTimestamp:v45];
      }

      else
      {
        -[CLPressureQualityHiddenMarkovModel predictCovarianceWithCurrentState:withElevation:withNextElevation:](v14, "predictCovarianceWithCurrentState:withElevation:withNextElevation:", v13, [elevationArray objectAtIndex:?], objc_msgSend(elevationArray, "objectAtIndex:", v57));
      }

      currentHmmState3 = [(CLPressureQualityHiddenMarkovModel *)v14 currentHmmState];
      if (v45 <= nextInitBadStateDetectedTimestamp)
      {
        if (self->_workoutElevationVerboseLogging)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v65 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            workoutSmootherRunsCount11 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
            *buf = 67109888;
            *v122 = currentHmmState3;
            *&v122[4] = 1024;
            *&v122[6] = 1;
            *&v122[10] = 2048;
            *&v122[12] = v45;
            LOWORD(v123) = 1024;
            *(&v123 + 2) = workoutSmootherRunsCount11;
            _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEFAULT, "Kalman filter mode,currHmmState,%d,overWrittenByBadState,%d,kfTimestamp,%f,rounds,%d", buf, 0x1Eu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v89 = qword_1025D4418;
            workoutSmootherRunsCount12 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
            v115 = 67109888;
            *v116 = currentHmmState3;
            *&v116[4] = 1024;
            *&v116[6] = 1;
            *&v116[10] = 2048;
            *&v116[12] = v45;
            LOWORD(v117) = 1024;
            *(&v117 + 2) = workoutSmootherRunsCount12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v89, 0, "Kalman filter mode,currHmmState,%d,overWrittenByBadState,%d,kfTimestamp,%f,rounds,%d", &v115, 30, v108, LODWORD(v109));
            v92 = v91;
            sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v91);
            if (v92 != buf)
            {
              free(v92);
            }
          }
        }

        currentHmmState3 = 1;
      }

      else if (self->_workoutElevationVerboseLogging)
      {
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v59 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          workoutSmootherRunsCount13 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
          *buf = 67109888;
          *v122 = currentHmmState3;
          *&v122[4] = 1024;
          *&v122[6] = 0;
          *&v122[10] = 2048;
          *&v122[12] = v45;
          LOWORD(v123) = 1024;
          *(&v123 + 2) = workoutSmootherRunsCount13;
          _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEFAULT, "Kalman filter mode,currHmmState,%d,overWrittenByBadState,%d,kfTimestamp,%f,rounds,%d", buf, 0x1Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v61 = qword_1025D4418;
          workoutSmootherRunsCount14 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
          v115 = 67109888;
          *v116 = currentHmmState3;
          *&v116[4] = 1024;
          *&v116[6] = 0;
          *&v116[10] = 2048;
          *&v116[12] = v45;
          LOWORD(v117) = 1024;
          *(&v117 + 2) = workoutSmootherRunsCount14;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v61, 0, "Kalman filter mode,currHmmState,%d,overWrittenByBadState,%d,kfTimestamp,%f,rounds,%d", &v115, 30, v108, LODWORD(v109));
          v64 = v63;
          sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v63);
          if (v64 != buf)
          {
            free(v64);
          }
        }
      }

      -[CLElevationProfileEstimator _predictionUpdate:withElevation:withNextElevation:withCurrentHmmState:withTravelVelocity:](self, "_predictionUpdate:withElevation:withNextElevation:withCurrentHmmState:withTravelVelocity:", v13, [elevationArray objectAtIndex:v114], objc_msgSend(elevationArray, "objectAtIndex:", v57), currentHmmState3, 0.0);
      v53 = v114 + 1;
      LODWORD(v114) = v114 + 1;
      if (v55 >= v45)
      {
        workoutKsPeriodInStepCountCadence = self->_workoutKsPeriodInStepCountCadence;
        v47 = v45;
LABEL_73:
        if (v53 == workoutKsPeriodInStepCountCadence)
        {
          [(CLPressureQualityHiddenMarkovModel *)v14 getCurrGoodModeProbability];
          LODWORD(v68) = v67;
          [(CLElevationProfileEstimator *)self recordNextBatchProcessInitStateWithCurrKFEstimate:v13 currKfTimestamp:v47 currHmmGoodModeProbability:v68 andCurrBadStateDetectedTimestamp:nextInitBadStateDetectedTimestamp];
        }
      }

      [(CLElevationProfileEstimator *)self _updateKFEstimatesBuffer:buffer withCurrEstimate:v13 measurementState:v43 < v45 andCurrTimestamp:v46];
    }
  }
}

- (BOOL)_forwardProcessingWithLocationArray:(id)array andElevationArray:(id)elevationArray andKFEstimatesBuffer:(id)buffer andKeepAllLocations:(BOOL)locations andTaskType:(unint64_t)type
{
  v58 = 0.0;
  v12 = objc_alloc_init(CLKFRunningEstimates);
  typeCopy = type;
  -[CLElevationProfileEstimator _initKalmanFilter:withFirstLocation:andElevationArray:andTaskType:](self, "_initKalmanFilter:withFirstLocation:andElevationArray:andTaskType:", v12, [objc_msgSend(array "firstObject")], elevationArray, type);
  v56 = 0;
  v13 = 0;
  v14 = 0;
  *&v15 = 134218752;
  v53 = v15;
  while (1)
  {
    v16 = v14;
    if ([array count] <= v14 && objc_msgSend(elevationArray, "count") <= v13)
    {
      break;
    }

    [(CLElevationProfileEstimator *)self _getTimestampWithLocationArray:array atIndex:v14];
    v18 = v17;
    [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:v13];
    v20 = v19;
    if (v18 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    if (v18 < v19)
    {
      v22 = [array objectAtIndex:v14];
      v23 = [array count] - 1;
      v14 = (v14 + 1);
      if (v14 < v23)
      {
        v23 = v16 + 1;
      }

      v24 = [array objectAtIndex:v23];
      if (locations || !-[CLElevationProfileEstimator _rejectOutlyingLocation:withKFEstimates:](self, "_rejectOutlyingLocation:withKFEstimates:", [v22 altitudeData], v12))
      {
        [(CLElevationProfileEstimator *)self updateTravelVelocity:&v58 withCurrLocation:v22 andNextLocation:v24];
        -[CLElevationProfileEstimator _measurementUpdate:withLocation:](self, "_measurementUpdate:withLocation:", v12, [v22 altitudeData]);
        goto LABEL_18;
      }

      if (self->_isVerboseLogging)
      {
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v29 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
        {
          [objc_msgSend(v22 "altitudeData")];
          v31 = v30;
          [objc_msgSend(v22 "altitudeData")];
          v33 = v32;
          [objc_msgSend(v22 "altitudeData")];
          *buf = v53;
          v70 = typeCopy;
          v71 = 2048;
          v72 = v31;
          v73 = 2048;
          v74 = v33;
          v75 = 2048;
          v76 = v34;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "reject location outlier,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v35 = qword_1025D4418;
          [objc_msgSend(v22 "altitudeData")];
          v37 = v36;
          [objc_msgSend(v22 "altitudeData")];
          v39 = v38;
          [objc_msgSend(v22 "altitudeData")];
          v59 = v53;
          v60 = typeCopy;
          v61 = 2048;
          v62 = v37;
          v63 = 2048;
          v64 = v39;
          v65 = 2048;
          v66 = v40;
          LODWORD(v52) = 42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 2, "reject location outlier,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f", &v59, v52, *&v53, *(&v53 + 1));
          v42 = v41;
          sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithLocationArray:andElevationArray:andKFEstimatesBuffer:andKeepAllLocations:andTaskType:]", "%s\n", v41);
          if (v42 != buf)
          {
            free(v42);
          }
        }
      }

      ++v56;
    }

    else
    {
      v25 = [elevationArray count];
      if (v13 + 1 < (v25 - 1))
      {
        v26 = v13 + 1;
      }

      else
      {
        v26 = v25 - 1;
      }

      v27 = [elevationArray objectAtIndex:v13];
      v28 = [elevationArray objectAtIndex:v26];
      [(CLElevationProfileEstimator *)self _predictionUpdate:v12 withElevation:v27 withNextElevation:v28 withCurrentHmmState:0 withTravelVelocity:v58];
      v13 = (v13 + 1);
LABEL_18:
      [(CLElevationProfileEstimator *)self _updateKFEstimatesBuffer:buffer withCurrEstimate:v12 measurementState:v18 < v20 andCurrTimestamp:v21];
    }
  }

  v43 = v56 / [array count];
  maxOutlierRatio = self->_maxOutlierRatio;
  if (!locations)
  {
    if (qword_1025D4310 != -1)
    {
      sub_101918168();
    }

    v45 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
    {
      v46 = [array count];
      *buf = 134219008;
      v70 = typeCopy;
      v71 = 2048;
      v72 = v56;
      v73 = 2048;
      v74 = v46;
      v75 = 2048;
      v76 = v43;
      v77 = 1024;
      v78 = v43 > maxOutlierRatio;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "outlier rejection summary,taskType,%lu,outlierCount,%lu,totalCount,%lu,outlierRatio,%f,isRepeatKF,%d", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4310 != -1)
      {
        sub_101918168();
      }

      v48 = qword_1025D4318;
      v49 = [array count];
      v59 = 134219008;
      v60 = typeCopy;
      v61 = 2048;
      v62 = v56;
      v63 = 2048;
      v64 = v49;
      v65 = 2048;
      v66 = v43;
      v67 = 1024;
      v68 = v43 > maxOutlierRatio;
      LODWORD(v52) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v48, 2, "outlier rejection summary,taskType,%lu,outlierCount,%lu,totalCount,%lu,outlierRatio,%f,isRepeatKF,%d", &v59, *&v52, v53, *(&v53 + 1), v54);
      v51 = v50;
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithLocationArray:andElevationArray:andKFEstimatesBuffer:andKeepAllLocations:andTaskType:]", "%s\n", v50);
      if (v51 != buf)
      {
        free(v51);
      }
    }
  }

  return v43 > maxOutlierRatio;
}

- (void)_updateKFEstimatesBuffer:(id)buffer withCurrEstimate:(id)estimate measurementState:(BOOL)state andCurrTimestamp:(double)timestamp
{
  stateCopy = state;
  v11 = objc_alloc_init(CLKalmanFilterEstimates);
  [estimate fState];
  [(CLKalmanFilterEstimates *)v11 setFState:?];
  if (estimate)
  {
    objc_msgSend_fP(estimate);
  }

  else
  {
    *v37 = 0;
    v36 = 0;
  }

  *&v12 = sub_10070F05C(&v36, 0, 0);
  [(CLKalmanFilterEstimates *)v11 setFCovariance:v12];
  [(CLKalmanFilterEstimates *)v11 setIsMeasurement:stateCopy];
  [(CLKalmanFilterEstimates *)v11 setTimestamp:timestamp];
  [estimate F01];
  [(CLKalmanFilterEstimates *)v11 setF01:?];
  [buffer addObject:v11];
  if (self->_isVerboseLogging || self->_workoutElevationVerboseLogging)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v13 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      isMeasurement = [(CLKalmanFilterEstimates *)v11 isMeasurement];
      [(CLKalmanFilterEstimates *)v11 timestamp];
      v16 = v15;
      [(CLKalmanFilterEstimates *)v11 fState];
      v18 = v17;
      [(CLKalmanFilterEstimates *)v11 fState];
      v20 = v19;
      [(CLKalmanFilterEstimates *)v11 fCovariance];
      v22 = v21;
      [(CLKalmanFilterEstimates *)v11 fCovariance];
      v24 = v23;
      [(CLKalmanFilterEstimates *)v11 fCovariance];
      v26 = v25;
      [(CLKalmanFilterEstimates *)v11 fCovariance];
      v28 = v27;
      workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      LODWORD(v36) = 67111168;
      HIDWORD(v36) = isMeasurement;
      *v37 = 2048;
      *&v37[2] = v16;
      v38 = 2048;
      v39 = v18;
      v40 = 2048;
      v41 = v20;
      v42 = 2048;
      v43 = v22;
      v44 = 2048;
      v45 = v24;
      v46 = 2048;
      v47 = v26;
      v48 = 2048;
      v49 = v28;
      v50 = 1024;
      v51 = workoutSmootherRunsCount;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "enumerate KF estimates,isMeasurement,%d,kfTimestamp,%f,elevation,%f,mslp,%f,P00,%f,P01,%f,P10,%f,P11,%f,rounds,%d", &v36, 0x54u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101918190(v11, &self->super.isa, v30, v31, v32, v33, v34, v35);
    }
  }
}

- (void)updateTravelVelocity:(double *)velocity withCurrLocation:(id)location andNextLocation:(id)nextLocation
{
  [objc_msgSend(nextLocation "altitudeData")];
  v9 = v8;
  [objc_msgSend(location "altitudeData")];
  v11 = v9 - v10;
  v12 = 0.0;
  if (v11 != 0.0)
  {
    [location latitude];
    v14 = v13;
    [location longitude];
    v16 = v15;
    [nextLocation latitude];
    v18 = v17;
    [nextLocation longitude];
    v12 = fabs(fabs(sub_100117154(v14, v16, v18, v19)) / v11);
  }

  *velocity = v12;
}

- (int)_getLastPredictionIndexWithKFEstimatesBuffer:(id)buffer fromIndex:(int)index
{
  indexCopy = index;
  v6 = index - 1;
  do
  {
    v7 = __OFSUB__(indexCopy--, 1);
    if (indexCopy < 0 != v7)
    {
      break;
    }

    v8 = [objc_msgSend(buffer objectAtIndex:{v6--), "isMeasurement"}];
  }

  while ((v8 & 1) != 0);
  return indexCopy;
}

- (void)_kalmanSmootherUpdateWithKFEstimatesBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer andCurrPredictionIndex:(int)index andNextPredictionIndex:(int)predictionIndex
{
  v11 = predictionIndex - 1;
  [objc_msgSend(buffer objectAtIndex:{v11), "fState"}];
  v83 = v13;
  v84 = v12;
  [objc_msgSend(buffer objectAtIndex:{v11), "fCovariance"}];
  v98 = v14;
  v99 = v15;
  v100 = v16;
  v101 = v17;
  [objc_msgSend(buffer objectAtIndex:{predictionIndex), "fState"}];
  v82 = v18;
  v20 = v19;
  [objc_msgSend(buffer objectAtIndex:{predictionIndex), "fCovariance"}];
  v94[0] = v21;
  v94[1] = v22;
  v94[2] = v23;
  v94[3] = v24;
  v95 = 0;
  v96 = 0;
  [objc_msgSend(buffer objectAtIndex:{predictionIndex), "F01"}];
  v26 = v25;
  if ([(CLElevationProfileEstimator *)self _isInGoodMode:?])
  {
    HIDWORD(v95) = v26;
  }

  else
  {
    LODWORD(v95) = 1065353216;
  }

  v97 = 1065353216;
  [objc_msgSend(estimatesBuffer "lastObject")];
  v28 = v27;
  v30 = v29;
  [objc_msgSend(estimatesBuffer "lastObject")];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v81 = v37;
  v88[0] = sub_10070AF68(&v98, &v95);
  v88[1] = v38;
  v88[2] = v39;
  v88[3] = v40;
  sub_10070B064(v88, v91);
  sub_10070B064(v94, v93);
  sub_100707AFC(v87, v93);
  v41 = 0;
  v42 = 1;
  do
  {
    v43 = v42;
    v44 = *sub_100705FC8(v91, 0, v41);
    *sub_100705F8C(v92, 0) = v44;
    v45 = *sub_100705FC8(v91, 1, v41);
    *sub_100705F8C(v92, 1uLL) = v45;
    sub_10070B12C(v87, v92);
    v46 = *sub_100705F8C(v92, 0);
    *sub_100705FC8(v89, 0, v41) = v46;
    v47 = *sub_100705F8C(v92, 1uLL);
    v48 = sub_100705FC8(v89, 1, v41);
    v42 = 0;
    *v48 = v47;
    v41 = 1;
  }

  while ((v43 & 1) != 0);
  sub_10070B064(v89, v90);
  v49 = objc_alloc_init(CLKalmanSmootherEstimates);
  [objc_msgSend(buffer objectAtIndex:{index), "timestamp"}];
  [(CLKalmanSmootherEstimates *)v49 setTimestamp:?];
  *buf = v28 - v82;
  *&v103 = v30 - v20;
  *&v50 = v84 + sub_10070B310(v90, buf);
  *&v52 = v83 + v51;
  [(CLKalmanSmootherEstimates *)v49 setFState:v50, v52];
  v53 = v98;
  v54 = v99;
  v56 = v100;
  v55 = v101;
  v85[0] = sub_10070B42C(v94, v32, v34, v36, v81);
  v85[1] = v57;
  v85[2] = v58;
  v85[3] = v59;
  v86[0] = sub_10070AF68(v90, v85);
  v86[1] = v60;
  v86[2] = v61;
  v86[3] = v62;
  *buf = sub_10070AF68(v86, v89);
  v103 = __PAIR64__(v64, v63);
  v104[0] = v65;
  *&v66 = sub_10070B3C0(buf, v53, v54, v56, v55);
  [(CLKalmanSmootherEstimates *)v49 setFCovariance:v66];
  LODWORD(v67) = v26;
  [(CLKalmanSmootherEstimates *)v49 setFHmmState:[(CLElevationProfileEstimator *)self _isInGoodMode:v67]^ 1];
  if ([estimatesBuffer count])
  {
    [objc_msgSend(estimatesBuffer "lastObject")];
    v69 = v68;
    [(CLKalmanSmootherEstimates *)v49 timestamp];
    if (v69 < v70)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v71 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
      {
        [(CLKalmanSmootherEstimates *)v49 timestamp];
        v73 = v72;
        [objc_msgSend(estimatesBuffer "lastObject")];
        *buf = 3.9123e-34;
        v103 = v73;
        LOWORD(v104[0]) = 2050;
        *(v104 + 2) = v74;
        _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_INFO, "Time order error in Kalman smoother estimate,currEntryTimestamp,%{public}f,prevEntryTimestamp,%{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101918378(v49, estimatesBuffer, v75, v76, v77, v78, v79, v80);
      }
    }
  }

  [estimatesBuffer addObject:v49];
}

- (void)_backwardProcessingWithKFEstimatesBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer
{
  v7 = [buffer count];
  if (v7)
  {
    v8 = objc_alloc_init(CLKalmanSmootherEstimates);
    lastObject = [buffer lastObject];
    [lastObject timestamp];
    [(CLKalmanSmootherEstimates *)v8 setTimestamp:?];
    [lastObject fState];
    [(CLKalmanSmootherEstimates *)v8 setFState:?];
    [lastObject fCovariance];
    [(CLKalmanSmootherEstimates *)v8 setFCovariance:?];
    [lastObject F01];
    [(CLKalmanSmootherEstimates *)v8 setFHmmState:[(CLElevationProfileEstimator *)self _isInGoodMode:?]^ 1];
    [estimatesBuffer addObject:v8];

    v10 = [(CLElevationProfileEstimator *)self _getLastPredictionIndexWithKFEstimatesBuffer:buffer fromIndex:v7];
    for (i = [(CLElevationProfileEstimator *)self _getLastPredictionIndexWithKFEstimatesBuffer:buffer fromIndex:v10]; (i & 0x80000000) == 0; v10 = v12)
    {
      v12 = i;
      [(CLElevationProfileEstimator *)self _kalmanSmootherUpdateWithKFEstimatesBuffer:buffer andKSEstimatesBuffer:estimatesBuffer andCurrPredictionIndex:i andNextPredictionIndex:v10];
      i = [(CLElevationProfileEstimator *)self _getLastPredictionIndexWithKFEstimatesBuffer:buffer fromIndex:v12];
    }

    [buffer removeAllObjects];
    v13 = [objc_msgSend(objc_msgSend(estimatesBuffer "reverseObjectEnumerator")];
    [estimatesBuffer removeAllObjects];
    [estimatesBuffer addObjectsFromArray:v13];
  }
}

- (void)_elevationBatchProcessingWithStartTime:(double)time andEndTime:(double)endTime andLocationBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer andTaskType:(unint64_t)type andCompletionBlock:(id)block
{
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v12 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    typeCopy = type;
    v25 = 2048;
    timeCopy = time;
    v27 = 2048;
    endTimeCopy = endTime;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "start elevation batch processing,taskType,%lu,startTime,%f,endTime,%f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v17 = 134218496;
    typeCopy2 = type;
    v19 = 2048;
    timeCopy2 = time;
    v21 = 2048;
    endTimeCopy2 = endTime;
    LODWORD(v15) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 2, "start elevation batch processing,taskType,%lu,startTime,%f,endTime,%f", &v17, v15, v16);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _elevationBatchProcessingWithStartTime:andEndTime:andLocationBuffer:andKSEstimatesBuffer:andTaskType:andCompletionBlock:]", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  objc_alloc_init(NSMutableArray);
  [CLContextManagerElevationProfile getStoredVisit:"getStoredVisit:betweenStartTime:andEndTime:withCompletionBlock:" betweenStartTime:time andEndTime:endTime withCompletionBlock:?];
}

- (void)computeElevationProfileWithStartTime:(double)time andEndTime:(double)endTime andCompletionBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10070BE7C;
  v7[3] = &unk_10246C860;
  selfCopy = self;
  blockCopy = block;
  v9 = [[CLOSTransaction alloc] initWithDescription:"CLElevationProfileEstimator.computeElevationProfileWithStartTime"];
  [(CLElevationProfileEstimator *)selfCopy _elevationBatchProcessingWithStartTime:objc_alloc_init(NSMutableArray) andEndTime:objc_alloc_init(NSMutableArray) andLocationBuffer:1 andKSEstimatesBuffer:v7 andTaskType:time andCompletionBlock:endTime];
}

- (void)_logValuesOfLocationArray:(id)array andElevationArray:(id)elevationArray andTaskType:(unint64_t)type
{
  if (self->_isVerboseLogging)
  {
    if ([array count])
    {
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(array);
      if (v6)
      {
        v8 = v6;
        v9 = MEMORY[0];
        *&v7 = 134218752;
        v44 = v7;
        do
        {
          v10 = 0;
          do
          {
            if (MEMORY[0] != v9)
            {
              objc_enumerationMutation(array);
            }

            v11 = *(8 * v10);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v12 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
            {
              [objc_msgSend(v11 "altitudeData")];
              v14 = v13;
              [objc_msgSend(v11 "altitudeData")];
              v16 = v15;
              [objc_msgSend(v11 "altitudeData")];
              *buf = v44;
              typeCopy3 = type;
              v58 = 2048;
              v59 = v14;
              v60 = 2048;
              v61 = v16;
              v62 = 2048;
              v63 = v17;
              _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "enumerate locations,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              v18 = qword_1025D4418;
              [objc_msgSend(v11 "altitudeData")];
              v20 = v19;
              [objc_msgSend(v11 "altitudeData")];
              v22 = v21;
              [objc_msgSend(v11 "altitudeData")];
              v48 = v44;
              typeCopy4 = type;
              v50 = 2048;
              v51 = v20;
              v52 = 2048;
              v53 = v22;
              v54 = 2048;
              v55 = v23;
              LODWORD(v43) = 42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v18, 2, "enumerate locations,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f", &v48, v43, *&v44, *(&v44 + 1));
              v25 = v24;
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _logValuesOfLocationArray:andElevationArray:andTaskType:]", "%s\n", v24);
              if (v25 != buf)
              {
                free(v25);
              }
            }

            v10 = v10 + 1;
          }

          while (v8 != v10);
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(array);
          v8 = v26;
        }

        while (v26);
      }
    }

    if ([elevationArray count])
    {
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(elevationArray);
      if (v27)
      {
        v28 = v27;
        v29 = MEMORY[0];
        v45 = 134218496;
        do
        {
          v30 = 0;
          do
          {
            if (MEMORY[0] != v29)
            {
              objc_enumerationMutation(elevationArray);
            }

            v31 = *(8 * v30);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v32 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
            {
              [v31 timestamp];
              v34 = v33;
              [v31 pressure];
              *buf = v45;
              typeCopy3 = type;
              v58 = 2048;
              v59 = v34;
              v60 = 2048;
              v61 = v35;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "enumerate elevations,taskType,%lu,timestamp,%f,pressure,%f", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              v36 = qword_1025D4418;
              [v31 timestamp];
              v38 = v37;
              [v31 pressure];
              v48 = v45;
              typeCopy4 = type;
              v50 = 2048;
              v51 = v38;
              v52 = 2048;
              v53 = v39;
              LODWORD(v43) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v36, 2, "enumerate elevations,taskType,%lu,timestamp,%f,pressure,%f", &v48, v43, *&v45);
              v41 = v40;
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _logValuesOfLocationArray:andElevationArray:andTaskType:]", "%s\n", v40);
              if (v41 != buf)
              {
                free(v41);
              }
            }

            v30 = v30 + 1;
          }

          while (v28 != v30);
          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(elevationArray);
          v28 = v42;
        }

        while (v42);
      }
    }
  }
}

- (void)_logValuesOfFilteredLocations:(id)locations andTaskType:(unint64_t)type
{
  if (self->_isVerboseLogging)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(locations, a2, &v34, v58, 16);
    if (v5)
    {
      v7 = v5;
      v8 = *v35;
      *&v6 = 134219008;
      v31 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(locations);
          }

          v10 = *(*(&v34 + 1) + 8 * v9);
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v11 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
          {
            [objc_msgSend(v10 "altitudeData")];
            v13 = v12;
            [objc_msgSend(v10 "altitudeData")];
            v15 = v14;
            [objc_msgSend(v10 "altitudeData")];
            v17 = v16;
            [v10 interpPressure];
            *buf = v31;
            typeCopy = type;
            v50 = 2048;
            v51 = v13;
            v52 = 2048;
            v53 = v15;
            v54 = 2048;
            v55 = v17;
            v56 = 2048;
            v57 = v18;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "enumerate filtered locations,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f,interpPressure,%f", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v19 = qword_1025D4418;
            [objc_msgSend(v10 "altitudeData")];
            v21 = v20;
            [objc_msgSend(v10 "altitudeData")];
            v23 = v22;
            [objc_msgSend(v10 "altitudeData")];
            v25 = v24;
            [v10 interpPressure];
            v38 = v31;
            typeCopy2 = type;
            v40 = 2048;
            v41 = v21;
            v42 = 2048;
            v43 = v23;
            v44 = 2048;
            v45 = v25;
            v46 = 2048;
            v47 = v26;
            LODWORD(v30) = 52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v19, 2, "enumerate filtered locations,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f,interpPressure,%f", &v38, v30, *&v31, *(&v31 + 1), v32);
            v28 = v27;
            sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _logValuesOfFilteredLocations:andTaskType:]", "%s\n", v27);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(locations);
        v7 = v29;
      }

      while (v29);
    }
  }
}

- (void)computeWorkoutElevationProfile
{
  v87 = [[CLOSTransaction alloc] initWithDescription:"CLElevationProfileEstimator.computeWorkoutElevationProfile"];
  Current = CFAbsoluteTimeGetCurrent();
  selfCopy = self;
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v4 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    workoutStartTime = self->_workoutStartTime;
    workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134218496;
    v109 = workoutStartTime;
    v110 = 2048;
    v111 = Current;
    v112 = 1024;
    LODWORD(v113) = workoutSmootherRunsCount;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "workout Kalman smoother got triggered,startTime,%f,endTime,%f,rounds,%d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019187CC(self, Current);
  }

  selfCopy2 = self;
  dataBuffers = self->_dataBuffers;
  v9 = dataBuffers[77];
  if (v9)
  {
    v10 = dataBuffers[73];
    v11 = dataBuffers[76];
    v12 = *(v10 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v83 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = dataBuffers[77];
      v11 = dataBuffers[76];
      v10 = dataBuffers[73];
    }

    v15 = *(v10 + (((v9 + v11 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v9 + v11 - 1);
    v17 = *v15;
    v16 = *(v15 + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = dataBuffers;
    v82 = v16;
    v85 = objc_alloc_init(NSMutableArray);
    v18 = objc_alloc_init(NSMutableArray);
    v86 = objc_alloc_init(NSMutableArray);
    nextWorkoutProfileStartTime = selfCopy->_workoutStartTime;
    if (Current - nextWorkoutProfileStartTime > selfCopy->_workoutProfileLookbackInSec)
    {
      nextWorkoutProfileStartTime = selfCopy->_nextWorkoutProfileStartTime;
    }

    if ([(CLElevationProfileEstimator *)selfCopy _fetchWorkoutPressureArray:v18 withStartTime:nextWorkoutProfileStartTime andEndTime:Current])
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
        selfCopy2 = selfCopy;
      }

      v20 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v18 count];
        v22 = *v14;
        v23 = *v17;
        v24 = v84[77];
        workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134219520;
        v109 = nextWorkoutProfileStartTime;
        v110 = 2048;
        v111 = Current;
        v112 = 2048;
        v113 = v21;
        v114 = 2048;
        v115 = v22;
        v116 = 2048;
        v117 = v23;
        v118 = 2048;
        v119 = v24;
        v120 = 1024;
        v121 = workoutSmootherRunsCount2;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "fetch workout pressure and Gps,pressureStartTime,%f,pressureEndTime,%f,pressureArraySize,%lu,firstGpsTimestamp,%f,lastGpsTimestamp,%f,gpsArraySize,%lu,rounds,%d", buf, 0x44u);
        selfCopy2 = selfCopy;
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191890C(buf);
        v73 = qword_1025D4418;
        v74 = [v18 count];
        v75 = *v14;
        v76 = *v17;
        v77 = v84[77];
        workoutSmootherRunsCount3 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
        v94 = 134219520;
        v95 = nextWorkoutProfileStartTime;
        v96 = 2048;
        v97 = Current;
        v98 = 2048;
        v99 = v74;
        v100 = 2048;
        v101 = v75;
        v102 = 2048;
        v103 = v76;
        v104 = 2048;
        v105 = v77;
        v106 = 1024;
        v107 = workoutSmootherRunsCount3;
        LODWORD(v81) = 68;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v73, 0, "fetch workout pressure and Gps,pressureStartTime,%f,pressureEndTime,%f,pressureArraySize,%lu,firstGpsTimestamp,%f,lastGpsTimestamp,%f,gpsArraySize,%lu,rounds,%d", COERCE_DOUBLE(&v94), v81, v82, *&v83, *&v84, v85, v86);
        v80 = v79;
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator computeWorkoutElevationProfile]", "%s\n", v79);
        selfCopy2 = selfCopy;
        if (v80 != buf)
        {
          free(v80);
        }
      }

      if (selfCopy2->_workoutElevationVerboseLogging)
      {
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18);
        if (v26)
        {
          v27 = *v91;
          do
          {
            v28 = 0;
            do
            {
              if (*v91 != v27)
              {
                objc_enumerationMutation(v18);
              }

              v29 = *(*(&v90 + 1) + 8 * v28);
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              v30 = qword_1025D4418;
              if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
              {
                [v29 timestamp];
                v32 = v31;
                [v29 pressure];
                v34 = v33;
                workoutSmootherRunsCount4 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
                *buf = 134218496;
                v109 = v32;
                v110 = 2048;
                v111 = v34;
                v112 = 1024;
                LODWORD(v113) = workoutSmootherRunsCount4;
                _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "enumerate workout elevations fetched from DB,sampleTimestamp,%f,pressure,%f,rounds,%d", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_10191890C(buf);
                v36 = qword_1025D4418;
                [v29 timestamp];
                v38 = v37;
                [v29 pressure];
                v40 = v39;
                workoutSmootherRunsCount5 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
                v94 = 134218496;
                v95 = v38;
                v96 = 2048;
                v97 = v40;
                v98 = 1024;
                LODWORD(v99) = workoutSmootherRunsCount5;
                LODWORD(v81) = 28;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v36, 2, "enumerate workout elevations fetched from DB,sampleTimestamp,%f,pressure,%f,rounds,%d", COERCE_DOUBLE(&v94), v81, v82);
                v43 = v42;
                sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator computeWorkoutElevationProfile]", "%s\n", v42);
                if (v43 != buf)
                {
                  free(v43);
                }
              }

              v28 = v28 + 1;
            }

            while (v26 != v28);
            v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18);
            v26 = v44;
          }

          while (v44);
        }

        v45 = v84[73];
        if (v84[74] != v45)
        {
          v46 = v84[76];
          v47 = (v45 + 8 * (v46 >> 8));
          v48 = *v47 + 16 * v46;
          v49 = *(v45 + (((v84[77] + v46) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v84 + 616) + v46);
          while (v48 != v49)
          {
            v50 = *v48;
            v51 = *(v48 + 8);
            if (v51)
            {
              atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v52 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
            {
              v54 = *v50;
              v53 = v50[1];
              v55 = *(v50 + 2);
              workoutSmootherRunsCount6 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
              *buf = 134218752;
              v109 = v54;
              v110 = 2048;
              v111 = v53;
              v112 = 2048;
              v113 = v55;
              v114 = 1024;
              LODWORD(v115) = workoutSmootherRunsCount6;
              _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "enumerate workout gps in the buffer queue,sampleTimestamp,%f,altitude,%f,uncertainty,%f,rounds,%d", buf, 0x26u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191890C(buf);
              v58 = qword_1025D4418;
              v60 = *v50;
              v59 = v50[1];
              v61 = *(v50 + 2);
              workoutSmootherRunsCount7 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
              v94 = 134218752;
              v95 = v60;
              v96 = 2048;
              v97 = v59;
              v98 = 2048;
              v99 = v61;
              v100 = 1024;
              LODWORD(v101) = workoutSmootherRunsCount7;
              LODWORD(v81) = 38;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v58, 2, "enumerate workout gps in the buffer queue,sampleTimestamp,%f,altitude,%f,uncertainty,%f,rounds,%d", COERCE_DOUBLE(&v94), v81, *&v82, v83);
              v64 = v63;
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator computeWorkoutElevationProfile]", "%s\n", v63);
              if (v64 != buf)
              {
                free(v64);
              }
            }

            if (v51)
            {
              sub_100008080(v51);
            }

            v48 += 16;
            if (v48 - *v47 == 4096)
            {
              v57 = v47[1];
              ++v47;
              v48 = v57;
            }
          }
        }
      }

      sub_100014198(v89, v84 + 72);
      [(CLElevationProfileEstimator *)selfCopy _interpolateWorkoutGpsAltitude:v85 toPressureArray:v18 andBufferGpsSamplesQueue:v89];
      sub_10001423C(v89);
      [(CLElevationProfileEstimator *)selfCopy _computeWorkoutElevationProfile:v86 withGpsAltitude:v85 andPressureArray:v18];
      [(CLElevationProfileEstimator *)selfCopy _pushWorkoutElevationProfile:v86];
      [v18 removeAllObjects];

      [v85 removeAllObjects];
      [v86 removeAllObjects];
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
        selfCopy2 = selfCopy;
      }

      v67 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        workoutSmootherRunsCount8 = [(CLContextManagerElevationProfileBase *)selfCopy2->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 67109120;
        LODWORD(v109) = workoutSmootherRunsCount8;
        _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEFAULT, "no workout pressure data to calculate elevation profile,rounds,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191890C(buf);
        v69 = qword_1025D4418;
        workoutSmootherRunsCount9 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
        v94 = 67109120;
        LODWORD(v95) = workoutSmootherRunsCount9;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v69, 0, "no workout pressure data to calculate elevation profile,rounds,%d", &v94);
        v72 = v71;
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator computeWorkoutElevationProfile]", "%s\n", v71);
        if (v72 != buf)
        {
          free(v72);
        }
      }
    }

    if (v82)
    {
      sub_100008080(v82);
    }

    if (v83)
    {
      sub_100008080(v83);
    }
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v65 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      workoutSmootherRunsCount10 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      *buf = 67109120;
      LODWORD(v109) = workoutSmootherRunsCount10;
      _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEFAULT, "no workout gps data to calculate elevation profile,rounds,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101918950(&self->super.isa);
    }
  }
}

- (BOOL)_fetchWorkoutPressureArray:(id)array withStartTime:(double)time andEndTime:(double)endTime
{
  if ([CLContextManagerElevationProfileBase isQueryValidWithStartTime:"isQueryValidWithStartTime:andEndTime:" andEndTime:?])
  {
    LODWORD(v9) = vcvtad_u64_f64((endTime - time + endTime - time) / 2.56);
    [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager fetchElevationsWithStartTime:[NSNumber numberWithUnsignedInt:?]andElevationArray:array, time, endTime];
    return [array count] != 0;
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v11 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      timeCopy = time;
      v15 = 2048;
      endTimeCopy = endTime;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "query workout pressure with false startTime,%f,endTime,%f", &v13, 0x16u);
    }

    v12 = sub_10000A100(121, 0);
    result = 0;
    if (v12)
    {
      sub_101918A64();
      return 0;
    }
  }

  return result;
}

- (void)_pushWorkoutElevationProfile:(id)profile
{
  if ([profile count])
  {
    sub_100014198(v5, self->_dataBuffers + 78);
    [(CLBarometerCalibrationSourceAggregator *)self->_sourceAggregator clearBufferForSource:13];
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(profile))
    {
      operator new();
    }

    operator new();
  }
}

- (void)_computeWorkoutElevationProfile:(id)profile withGpsAltitude:(id)altitude andPressureArray:(id)array
{
  v9 = objc_alloc_init(NSMutableArray);
  [(CLElevationProfileEstimator *)self _forwardProcessingWithGpsAltitudeArray:altitude andElevationArray:array andKFEstimatesBuffer:v9];
  [array removeAllObjects];
  [altitude removeAllObjects];
  [(CLElevationProfileEstimator *)self _backwardProcessingWithKFEstimatesBuffer:v9 andKSEstimatesBuffer:profile];
}

- (void)_interpolateWorkoutGpsAltitude:(id)altitude toPressureArray:(id)array andBufferGpsSamplesQueue:()deque<std:(std::allocator<std::shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>>> *)std :shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>
{
  v7 = (*(std->__map_.__begin_ + ((std->__start_ >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * std->__start_ + 1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = v7;
  [objc_msgSend(array objectAtIndex:{0), "timestamp"}];
  HIDWORD(v127) = 0;
  v134 = 0;
  v8 = 0;
  v130 = 0x7FFFFFFF;
  v131 = 0x7FFFFFFFLL;
  v128 = 0x7FFFFFFFLL;
  v129 = 0x7FFFFFFFLL;
  while ([array count] > v134 && std->__size_ - 1 > v8)
  {
    start = std->__start_;
    begin = std->__map_.__begin_;
    v11 = *(begin + (((start + v8) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (start + v8);
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      start = std->__start_;
      begin = std->__map_.__begin_;
    }

    v14 = v8;
    v15 = (v8 + 1);
    v16 = *(begin + (((start + v8 + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (start + v8 + 1);
    v17 = *v16;
    v18 = *(v16 + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [objc_msgSend(array objectAtIndex:{v134), "timestamp"}];
    v20 = v19;
    v21 = *v12;
    v22 = *v17;
    if (v19 > self->_lastWorkoutProfileEndTime)
    {
      v23 = v134;
      if (v131 != 0x7FFFFFFF)
      {
        [objc_msgSend(array objectAtIndexedSubscript:{v134), "pressure"}];
        v25 = v24;
        [objc_msgSend(array objectAtIndexedSubscript:{v131), "pressure"}];
        v23 = v131;
        if (v25 < v26)
        {
          v23 = v134;
        }
      }

      if (v130 == 0x7FFFFFFF || ([objc_msgSend(array objectAtIndexedSubscript:{v134), "pressure"}], v28 = v27, objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v130), "pressure"), v28 > v29))
      {
        v130 = v134;
      }

      v131 = v23;
    }

    if (v20 < v21)
    {
      v134 = (v134 + 1);
      v8 = v14;
      if (!v18)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_100008080(v18);
      goto LABEL_36;
    }

    if (v20 > v22 || v22 - v21 > 5.12)
    {
      v8 = v15;
      if (v18)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v30 = objc_alloc_init(CLAltitudeData);
      v8 = v14;
      [(CLAltitudeData *)v30 setTimestamp:v20];
      [CLElevationLocationFilter interpolateWithStartTime:v21 andStartValue:v12[1] andEndTime:v22 andEndValue:v17[1] atTargetTime:v20];
      [(CLAltitudeData *)v30 setElevation:?];
      v31 = v12[2];
      if (v31 < v17[2])
      {
        v31 = v17[2];
      }

      [(CLAltitudeData *)v30 setVerticalAccuracy:v31];
      [altitude addObject:v30];
      if (v20 > self->_lastWorkoutProfileEndTime)
      {
        if (v129 == 0x7FFFFFFF || (-[CLAltitudeData elevation](v30, "elevation"), v33 = v32, [objc_msgSend(altitude objectAtIndexedSubscript:{v129), "elevation"}], v33 <= v34))
        {
          v129 = [altitude count] - 1;
        }

        ++HIDWORD(v127);
        if (v128 == 0x7FFFFFFF || (-[CLAltitudeData elevation](v30, "elevation"), v36 = v35, [objc_msgSend(altitude objectAtIndexedSubscript:{v128), "elevation"}], v36 >= v37))
        {
          v128 = [altitude count] - 1;
        }
      }

      v134 = (v134 + 1);
      if (v18)
      {
        goto LABEL_35;
      }
    }

LABEL_36:
    if (v13)
    {
      sub_100008080(v13);
    }
  }

  [objc_msgSend(array "lastObject")];
  self->_lastWorkoutProfileEndTime = v38;
  if (v131 != 0x7FFFFFFF && v130 != 0x7FFFFFFF)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v39 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      [objc_msgSend(array objectAtIndexedSubscript:{v131), "timestamp"}];
      v41 = v40;
      [objc_msgSend(array objectAtIndexedSubscript:{v131), "pressure"}];
      v43 = v42;
      [objc_msgSend(array objectAtIndexedSubscript:{v130), "timestamp"}];
      v45 = v44;
      [objc_msgSend(array objectAtIndexedSubscript:{v130), "pressure"}];
      v47 = v46;
      workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      *buf = 134219008;
      v152 = v41;
      v153 = 2048;
      v154 = v43;
      v155 = 2048;
      v156 = v45;
      v157 = 2048;
      v158 = v47;
      v159 = 1024;
      LODWORD(v160) = workoutSmootherRunsCount;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "final pressure for workout Kalman smoother in the last cadence,minTimestamp,%f,minPressure,%f,maxTimestamp,%f,maxPressure,%f,rounds,%d", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191890C(buf);
      v97 = qword_1025D4418;
      [objc_msgSend(array objectAtIndexedSubscript:{v131), "timestamp"}];
      v99 = v98;
      [objc_msgSend(array objectAtIndexedSubscript:{v131), "pressure"}];
      v101 = v100;
      [objc_msgSend(array objectAtIndexedSubscript:{v130), "timestamp"}];
      v103 = v102;
      [objc_msgSend(array objectAtIndexedSubscript:{v130), "pressure"}];
      v105 = v104;
      workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      v135 = 134219008;
      v136 = v99;
      v137 = 2048;
      v138 = v101;
      v139 = 2048;
      v140 = v103;
      v141 = 2048;
      v142 = v105;
      v143 = 1024;
      LODWORD(v144) = workoutSmootherRunsCount2;
      LODWORD(v125) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v97, 0, "final pressure for workout Kalman smoother in the last cadence,minTimestamp,%f,minPressure,%f,maxTimestamp,%f,maxPressure,%f,rounds,%d", COERCE_DOUBLE(&v135), v125, *&v126, v127, v128);
      v108 = v107;
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _interpolateWorkoutGpsAltitude:toPressureArray:andBufferGpsSamplesQueue:]", "%s\n", v107);
      if (v108 != buf)
      {
        free(v108);
      }
    }
  }

  if (v129 != 0x7FFFFFFF && v128 != 0x7FFFFFFF)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v49 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      [objc_msgSend(altitude objectAtIndexedSubscript:{v129), "timestamp"}];
      v51 = v50;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v129), "elevation"}];
      v53 = v52;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v129), "verticalAccuracy"}];
      v55 = v54;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v128), "timestamp"}];
      v57 = v56;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v128), "elevation"}];
      v59 = v58;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v128), "verticalAccuracy"}];
      v61 = v60;
      workoutSmootherRunsCount3 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      *buf = 134219776;
      v152 = v51;
      v153 = 2048;
      v154 = v53;
      v155 = 2048;
      v156 = v55;
      v157 = 2048;
      v158 = v57;
      v159 = 2048;
      v160 = v59;
      v161 = 2048;
      v162 = v61;
      v163 = 1024;
      v164 = HIDWORD(v127);
      v165 = 1024;
      v166 = workoutSmootherRunsCount3;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "final interpolated Gps for workout Kalman smoother in the last cadence,minTimestamp,%f,minGpsElevation,%f,minGpsUnceretainty,%f,maxTimestamp,%f,maxGpsElevation,%f,maxGpsUnceretainty,%f,totalGpsCount,%d,rounds,%d", buf, 0x4Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191890C(buf);
      v109 = qword_1025D4418;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v129), "timestamp"}];
      v111 = v110;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v129), "elevation"}];
      v113 = v112;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v129), "verticalAccuracy"}];
      v115 = v114;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v128), "timestamp"}];
      v117 = v116;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v128), "elevation"}];
      v119 = v118;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v128), "verticalAccuracy"}];
      v121 = v120;
      workoutSmootherRunsCount4 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      v135 = 134219776;
      v136 = v111;
      v137 = 2048;
      v138 = v113;
      v139 = 2048;
      v140 = v115;
      v141 = 2048;
      v142 = v117;
      v143 = 2048;
      v144 = v119;
      v145 = 2048;
      v146 = v121;
      v147 = 1024;
      v148 = HIDWORD(v127);
      v149 = 1024;
      v150 = workoutSmootherRunsCount4;
      LODWORD(v125) = 74;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v109, 0, "final interpolated Gps for workout Kalman smoother in the last cadence,minTimestamp,%f,minGpsElevation,%f,minGpsUnceretainty,%f,maxTimestamp,%f,maxGpsElevation,%f,maxGpsUnceretainty,%f,totalGpsCount,%d,rounds,%d", COERCE_DOUBLE(&v135), v125, *&v126, v127, *&v128, *&v129, v130, v131);
      v124 = v123;
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _interpolateWorkoutGpsAltitude:toPressureArray:andBufferGpsSamplesQueue:]", "%s\n", v123);
      if (v124 != buf)
      {
        free(v124);
      }
    }
  }

  if (self->_workoutElevationVerboseLogging)
  {
    for (i = 0; i < [altitude count]; ++i)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v64 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "timestamp"}];
        v66 = v65;
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "elevation"}];
        v68 = v67;
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "verticalAccuracy"}];
        v70 = v69;
        workoutSmootherRunsCount5 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134218752;
        v152 = v66;
        v153 = 2048;
        v154 = v68;
        v155 = 2048;
        v156 = v70;
        v157 = 1024;
        LODWORD(v158) = workoutSmootherRunsCount5;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEFAULT, "enumerate final interpolated Gps used in workout Kalman smoother,sampleTimestamp,%f,altitude,%f,uncertainty,%f,rounds,%d", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191890C(buf);
        v72 = qword_1025D4418;
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "timestamp"}];
        v74 = v73;
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "elevation"}];
        v76 = v75;
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "verticalAccuracy"}];
        v78 = v77;
        workoutSmootherRunsCount6 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        v135 = 134218752;
        v136 = v74;
        v137 = 2048;
        v138 = v76;
        v139 = 2048;
        v140 = v78;
        v141 = 1024;
        LODWORD(v142) = workoutSmootherRunsCount6;
        LODWORD(v125) = 38;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v72, 0, "enumerate final interpolated Gps used in workout Kalman smoother,sampleTimestamp,%f,altitude,%f,uncertainty,%f,rounds,%d", COERCE_DOUBLE(&v135), v125, *&v126, LODWORD(v127));
        v81 = v80;
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _interpolateWorkoutGpsAltitude:toPressureArray:andBufferGpsSamplesQueue:]", "%s\n", v80);
        if (v81 != buf)
        {
          free(v81);
        }
      }
    }

    for (j = 0; j < [array count]; ++j)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v83 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(array objectAtIndexedSubscript:{j), "timestamp"}];
        v85 = v84;
        [objc_msgSend(array objectAtIndexedSubscript:{j), "pressure"}];
        v87 = v86;
        workoutSmootherRunsCount7 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134218496;
        v152 = v85;
        v153 = 2048;
        v154 = v87;
        v155 = 1024;
        LODWORD(v156) = workoutSmootherRunsCount7;
        _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEFAULT, "enumerate final pressure used in workout Kalman smoother,sampleTimestamp,%f,pressure,%f,rounds,%d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191890C(buf);
        v89 = qword_1025D4418;
        [objc_msgSend(array objectAtIndexedSubscript:{j), "timestamp"}];
        v91 = v90;
        [objc_msgSend(array objectAtIndexedSubscript:{j), "pressure"}];
        v93 = v92;
        workoutSmootherRunsCount8 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        v135 = 134218496;
        v136 = v91;
        v137 = 2048;
        v138 = v93;
        v139 = 1024;
        LODWORD(v140) = workoutSmootherRunsCount8;
        LODWORD(v125) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v89, 0, "enumerate final pressure used in workout Kalman smoother,sampleTimestamp,%f,pressure,%f,rounds,%d", COERCE_DOUBLE(&v135), v125, v126);
        v96 = v95;
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _interpolateWorkoutGpsAltitude:toPressureArray:andBufferGpsSamplesQueue:]", "%s\n", v95);
        if (v96 != buf)
        {
          free(v96);
        }
      }
    }
  }

  if (v126)
  {
    sub_100008080(v126);
  }
}

- (void)resetWorkoutSessionStates
{
  *&self->_workoutStartTime = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  self->_lastWorkoutProfileEndTime = 0.0;
  self->_nextHmmGoodStateInitProbability = 3.4028e38;
  self->_nextInitBadStateDetectedTimestamp = 1.79769313e308;
  [(CLKFRunningEstimates *)self->_nextKfInitEstimate setFState:0.0, 0.0];
  nextKfInitEstimate = self->_nextKfInitEstimate;
  if (nextKfInitEstimate)
  {
    objc_msgSend_fP(nextKfInitEstimate);
  }

  self->_mslpAtStartOfWorkout = 0.0;
  self->_mslpUncAtStartOfWorkout = 0.0;
  if (self->_firstTimeOfExternalWetStateInWorkout.__engaged_)
  {
    self->_firstTimeOfExternalWetStateInWorkout.__engaged_ = 0;
  }
}

- (void)startWorkoutAtTime:(double)time andMeanSeaLevelPressure:(double)pressure andMeanSeaLevelPressureUncertainty:(double)uncertainty andTimeOfExternalWetState:(optional<double>)state
{
  self->_workoutStartTime = time;
  self->_mslpAtStartOfWorkout = pressure;
  self->_mslpUncAtStartOfWorkout = uncertainty;
  self->_firstTimeOfExternalWetStateInWorkout = state;
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v7 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    workoutStartTime = self->_workoutStartTime;
    mslpAtStartOfWorkout = self->_mslpAtStartOfWorkout;
    mslpUncAtStartOfWorkout = self->_mslpUncAtStartOfWorkout;
    if (self->_firstTimeOfExternalWetStateInWorkout.__engaged_)
    {
      val = self->_firstTimeOfExternalWetStateInWorkout.var0.__val_;
    }

    else
    {
      val = -1.0;
    }

    *buf = 134218752;
    v28 = workoutStartTime;
    v29 = 2048;
    v30 = mslpAtStartOfWorkout;
    v31 = 2048;
    v32 = mslpUncAtStartOfWorkout;
    v33 = 2048;
    v34 = val;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#altimeter,workout start,timestamp,%.3f,mslp,%.2f,mslpUnc,%.2f,startTimeOfWetState,%.3f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v12 = self->_workoutStartTime;
    v14 = self->_mslpAtStartOfWorkout;
    v13 = self->_mslpUncAtStartOfWorkout;
    if (self->_firstTimeOfExternalWetStateInWorkout.__engaged_)
    {
      v15 = self->_firstTimeOfExternalWetStateInWorkout.var0.__val_;
    }

    else
    {
      v15 = -1.0;
    }

    v19 = 134218752;
    v20 = v12;
    v21 = 2048;
    v22 = v14;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v15;
    LODWORD(v18) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "#altimeter,workout start,timestamp,%.3f,mslp,%.2f,mslpUnc,%.2f,startTimeOfWetState,%.3f", COERCE_DOUBLE(&v19), v18);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator startWorkoutAtTime:andMeanSeaLevelPressure:andMeanSeaLevelPressureUncertainty:andTimeOfExternalWetState:]", "%s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

- (void)stopWorkoutAtTime:(double)time
{
  [(CLElevationProfileEstimator *)self resetWorkoutSessionStates];
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v4 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    timeCopy = time;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#altimeter,workout stop,timestamp,%.3f", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101918B70(time);
  }
}

- (void)handleTimeOfExternalWetStateDeclaration:(double)declaration
{
  if ([(CLElevationProfileEstimator *)self currentlyInWorkout])
  {
    if (!self->_firstTimeOfExternalWetStateInWorkout.__engaged_)
    {
      self->_firstTimeOfExternalWetStateInWorkout.var0.__val_ = declaration;
      self->_firstTimeOfExternalWetStateInWorkout.__engaged_ = 1;
    }
  }
}

- (id).cxx_construct
{
  *(self + 192) = 0;
  *(self + 200) = 0;
  return self;
}

@end