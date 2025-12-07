@interface NIServerAnalyticsManager
- (BOOL)_isSemiStaticFromVIO:(optional<nearby:(optional<nearby:(double)o :algorithms::common::Pose> *)a4 :algorithms::common::Pose> *)a3 ::;
- (NIServerAnalyticsManager)initWithBundleIdentifier:(id)identifier;
- (VectorAggregateErrors)_calculateErrorStatsFromVector:(SEL)vector;
- (double)_deltaDistanceFromVIOPoses:(optional<nearby:(optional<nearby::algorithms::common::Pose> *)poses :algorithms::common::Pose> *)a3 :;
- (double)_finderTimeFromFirstPoseTo:(double)to;
- (id).cxx_construct;
- (id)_algorithmSourceToString:(int)string;
- (void)_calculateAndLogErrorsFromIODeltaP:(NIServerAnalyticsManager *)self vioDeltaP:(SEL)p vioPos:;
- (void)_calculateIOMetrics:(double)metrics;
- (void)_calculatePoseSplicingMetrics;
- (void)_calculateStraightLineDistance;
- (void)_onVIOReset;
- (void)_sessionStoppedWithTimestamp:(double)timestamp;
- (void)_submitFindingSessionEndStats;
- (void)_updateAlignedPDRMetrics:(const void *)metrics;
- (void)_updateMinMaxRangeAndRSSI:(double)i uwbRSSI:(double)sI nbRSSI:(optional<double>)sSI;
- (void)_updateUserMovedDistanceWithPose:(const void *)pose lastPoseInfo:(void *)info;
- (void)appBecameNotVisibleWithTimestamp:(double)timestamp;
- (void)appBecameVisibleWithTimestamp:(double)timestamp;
- (void)appPresentedLiveActivity;
- (void)dealloc;
- (void)lifecycleTimeoutAfterTrackingForDiscoveryToken:(id)token;
- (void)lifecycleTimeoutBeforeTrackingForDiscoveryToken:(id)token;
- (void)nearbyObjectUpdated:(id)updated;
- (void)sessionConfiguredAccessoryWithTimestamp:(double)timestamp;
- (void)sessionConfiguredAccessoryWithTimestamp:(double)timestamp withTxPower:(int)power;
- (void)sessionConnectedToAccessoryWithTimestamp:(double)timestamp;
- (void)sessionInterruptedWithTimestamp:(double)timestamp;
- (void)sessionInvalidatedWithTimestamp:(double)timestamp;
- (void)sessionPausedWithTimestamp:(double)timestamp;
- (void)sessionSuccessfullyRanWithConfig:(id)config withTimestamp:(double)timestamp;
- (void)updateFindButtonTime:(double)time;
- (void)updateWithAcquisitionReason:(int)reason;
- (void)updateWithBTRSSIMeasurementWithTimestamp:(double)timestamp withRssi:(double)rssi;
- (void)updateWithFindeePeerData:(const void *)data;
- (void)updateWithFinderPeerData:(const void *)data;
- (void)updateWithMissedRange;
- (void)updateWithNewRegion:(id)region withTimestamp:(double)timestamp;
- (void)updateWithPDR:(const void *)r;
- (void)updateWithPeerDeviceType:(BOOL)type;
- (void)updateWithPeerLocationFromFMF;
- (void)updateWithPose:(const void *)pose;
- (void)updateWithRangeResult:(RangeResult *)result;
- (void)updateWithRangingMode:(int)mode;
- (void)updateWithSASolution:(Solution *)solution;
- (void)updateWithSelfLocation:(const LocationInput *)location;
- (void)updateWithSolution:(const void *)solution;
- (void)updateWithSuccessfulRange:(double)range uwbRSSI:(double)i nbRSSI:(optional<double>)sI;
- (void)updateWithVIOPose:(Pose *)pose;
@end

@implementation NIServerAnalyticsManager

- (NIServerAnalyticsManager)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = NIServerAnalyticsManager;
  v6 = [(NIServerAnalyticsManager *)&v26 init];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    bundleIdentifier = v8->_bundleIdentifier;
    if (bundleIdentifier)
    {
      uTF8String = [(NSString *)bundleIdentifier UTF8String];
      v11 = strlen(uTF8String);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100013AEC();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v25) = v11;
      if (v11)
      {
        memmove(&__dst, uTF8String, v11);
      }

      *(&__dst + v12) = 0;
      if (*(&v8->_bundleIdAsStdString.__rep_.__l + 23) < 0)
      {
        operator delete(v7->_bundleIdAsStdString.__rep_.__l.__data_);
      }

      *v7->_bundleIdAsStdString.__rep_.__s.__data_ = __dst;
      *(&v7->_bundleIdAsStdString.__rep_.__l + 2) = v25;
    }

    else
    {
      std::string::assign(&v7->_bundleIdAsStdString, "");
    }

    v8->_isRunning = 0;
    v8->_runTimestamp = 0.0;
    v8->_isVisible = 1;
    v8->_timeSpentVisible = 0.0;
    v8->_timeSpentNotVisible = 0.0;
    v8->_visibilityUpdateTimestamp = 0.0;
    *&v8->_isLiveActivityEverActive = 0;
    *&v8->_firstDistance = 0u;
    *&v8->_maxDistance = 0u;
    lifecycleTimeoutType = v8->_lifecycleTimeoutType;
    v8->_lifecycleTimeoutType = @"None";

    v8->_sessionType = 0;
    v8->_backgroundMode = 0;
    *&v8->_hasAccessoryDataRate = 0;
    v8->_hasVerticallyConverged = 0;
    *&v8->_lastVIOPosition[8] = 0;
    v8->_firstRangeMeasurementTime = 0.0;
    *v8->_lastVIOPosition = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v8->_distanceMovedToHorizontalConvergence = _Q0;
    *&v8->_totalDistanceMoved = _Q0;
    v22 = _Q0;
    *&v8->_rangeAtVerticalConvergence = _Q0;
    v8->_timeToVerticalConvergence = -1.0;
    *&v8->_numberOfInvalidPose = 0;
    v8->_numberOfLostVerticalConvergence = 0;
    v8->_timeAtLastLocationUpdate = -1.0;
    v8->_timeAtFirstLocationUpdate = -1.0;
    if (v8->_lastLocationType.__engaged_)
    {
      v8->_lastLocationType.__engaged_ = 0;
    }

    *&v7->_timeLocationFromPipeline = 0u;
    *&v7->_timeLocationFromWiFi = 0u;
    *&v7->_timeLocationFromGPSCoarse = 0u;
    *&v7->_timeLocationFromLOIOverride = 0u;
    *&v7->_timeLocationFromAccessory = 0u;
    *&v7->_timeLocationFromCompensated = 0u;
    *&v19 = -1;
    *(&v19 + 1) = -1;
    *&v7->_numberOfPeerData = v19;
    *&v7->_numberOfDeltaVelocityFromPeerData = v19;
    *&v7->_numberOfStatic = v19;
    v8->_timeAtFirstPeerData = -1.0;
    v8->_timeAtLastBoundedDisplacementUpdate = -1.0;
    if (v8->_lastMotionCategory.__engaged_)
    {
      v8->_lastMotionCategory.__engaged_ = 0;
    }

    *&v8->_timeFindeeWasSlowlyMoving = 0u;
    *&v8->_timeFindeeWasWalkingOrUnknown = 0u;
    *&v8->_pdrTimeAtFirstPDRUpdate = xmmword_100549700;
    *&v8->_pdrTimeAtLastPDRUpdate = xmmword_100549700;
    v8->_pdrIsYieldingDeltaPosition = 0;
    v8->_timeAtFirstPose = -1.0;
    *&v8->_timeAtFirstValidPose = v22;
    *&v8->_timeAtFirstOutputRange = v22;
    *&v8->_timeAtFirstFindeeData = v22;
    *&v8->_timeAtFirstSelfLocation = v22;
    *&v8->_timeAtFirstPeerLocationFromFindeeData = v22;
    *&v8->_timeAtFirstPDRFromFindeeData = v22;
    *&v8->_timeAtFirstDeltaVelocityFromFindeeData = v22;
    *&v8->_timeAtEndOfSession = v22;
    *&v8->_firstArrowAlgorithmSource = 0;
    v8->_armsReachAlgorithmSource = 0;
    *&v7->_numberOfArrowRevokes = -1;
    *&v7->_numberOfSolutions = -1;
    *&v7->_numberOfPeerDataFinder = -1;
    *&v8->_lastSolutionHadArrow = 0;
    v8->_lastPoseHadNormalTrackingState = 0;
    if (v8->_anon_3b8[72] == 1)
    {
      v8->_anon_3b8[72] = 0;
    }

    [(NIServerAnalyticsManager *)v8 _onVIOReset];
    if (v8->_isFinderAPhone.__engaged_)
    {
      v8->_isFinderAPhone.__engaged_ = 0;
    }

    if (v8->_isFindeeAPhone.__engaged_)
    {
      v8->_isFindeeAPhone.__engaged_ = 0;
    }

    v8->_timePDRAndVIOWasAvailable = 0.0;
    v8->_timeAtLastIOUpdate = -1.0;
    *&v7->_pdrPathLengthWhenVIOAvailable = 0u;
    if (v8->_anon_c28[72] == 1)
    {
      v8->_anon_c28[72] = 0;
    }

    *&v8->_pathLengthError = v23;
    *&v8->_radialDisplacementError = v23;
    *&v8->_stdSpeedFromVIO = v23;
    *&v8->_timeSSFromVIO = 0uLL;
    *&v8->_timeSSFromIOAndSSFromVIO = 0uLL;
    *&v8->_pdrSSDetectionTruePositiveRate = v23;
    *&v8->_percentTimeSSFromVIO = v23;
    *&v8->_runningMeanSpeedFromVIO = 0uLL;
    *&v8->_acquisitionReason = 0xFFFFFFFF00000000;
    v8->_firstDistance_finding = -1.0;
    *&v8->_firstNBRSSI = 0uLL;
    v8->_lastDistance_finding = -1.0;
    *&v7->_lastNBRSSI = 0uLL;
    v8->_maxDistance_finding = -1.79769313e308;
    *&v8->_maxNBRSSI = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *&v8->_minDistance_finding = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&v8->_minYCoordinateFinder = xmmword_100549710;
    *&v8->_minUWBRSSI = xmmword_100549710;
    v8->_minYCoordinateFindee = 1.79769313e308;
    *&v8->_didFinderChangeFloor = 0;
    if (v8->_lastDisplacementSourceFindee.__engaged_)
    {
      v8->_lastDisplacementSourceFindee.__engaged_ = 0;
    }

    *&v7->_firstRawRangeValue = 0u;
    v8->_maxRawRangeValue = -1.79769313e308;
    *&v8->_minRawRangeValue = xmmword_100549720;
    v8->_rangeAtFirstArrow = -1.0;
    v8->_lastOdometryAvailabilityState = 0;
    v8->_vioPathLength = 0.0;
    *&v7->_vioAvailableTime = 0u;
    *&v7->_deltaVSourceTime = 0u;
    *&v7->_isOwner = 1;
    v8->_timeAtFindButton = -1.0;
    *&v8->_timeAtConnect = v23;
    v8->_rangingMode = -1;
    v8->_armsLengthDistance = 2.0;
    *&v8->_firstOutputDistance = v23;
    *&v8->_maxOutputDistance = v23;
    v8->_clientRequestIndex = 0;
    if (v7->_itemBtTxPower.__engaged_)
    {
      v7->_itemBtTxPower.__engaged_ = 0;
    }

    *&v8->_timeAtFirstBtRssiMeasurement = v23;
    v8->_lastBtRssi = -1.0;
    lastRegion = v8->_lastRegion;
    *&v8->_numberOfRegionFoundEvents = 0uLL;
  }

  return v8;
}

- (void)dealloc
{
  [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:sub_100005288()];
  v3.receiver = self;
  v3.super_class = NIServerAnalyticsManager;
  [(NIServerAnalyticsManager *)&v3 dealloc];
}

- (void)sessionSuccessfullyRanWithConfig:(id)config withTimestamp:(double)timestamp
{
  configCopy = config;
  if (!configCopy)
  {
    v83 = +[NSAssertionHandler currentHandler];
    [v83 handleFailureInMethod:a2 object:self file:@"NIServerAnalyticsManager.mm" lineNumber:679 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v8 = qword_1009ECD20;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    *buf = 138412802;
    *&buf[4] = bundleIdentifier;
    v90 = 2112;
    *v91 = configCopy;
    *&v91[8] = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#ni-ca,[%@] sessionSuccessfullyRanWithConfig: %@ withTimestamp: %f [s]", buf, 0x20u);
  }

  if (!self->_isRunning)
  {
LABEL_24:
    self->_isRunning = 1;
    self->_runTimestamp = timestamp;
    self->_visibilityUpdateTimestamp = timestamp;
    self->_receivedDistance = 0;
    self->_timeSpentVisible = 0.0;
    self->_timeSpentNotVisible = 0.0;
    *&self->_firstDistance = 0u;
    *&self->_maxDistance = 0u;
    lifecycleTimeoutType = self->_lifecycleTimeoutType;
    self->_lifecycleTimeoutType = @"None";

    *&self->_isCurrentlyTrackingVIO = 0;
    *&self->_receivedRangeMeasurement = 0;
    *&self->_lastVIOPosition[8] = 0;
    self->_firstRangeMeasurementTime = 0.0;
    *self->_lastVIOPosition = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&self->_distanceMovedToHorizontalConvergence = _Q0;
    *&self->_totalDistanceMoved = _Q0;
    v84 = _Q0;
    *&self->_rangeAtVerticalConvergence = _Q0;
    self->_timeToVerticalConvergence = -1.0;
    *&self->_numberOfInvalidPose = 0;
    self->_numberOfLostVerticalConvergence = 0;
    self->_timeAtLastLocationUpdate = -1.0;
    self->_timeAtFirstLocationUpdate = -1.0;
    if (self->_lastLocationType.__engaged_)
    {
      self->_lastLocationType.__engaged_ = 0;
    }

    *&self->_timeLocationFromPipeline = 0u;
    *&self->_timeLocationFromWiFi = 0u;
    *&self->_timeLocationFromGPSCoarse = 0u;
    *&self->_timeLocationFromLOIOverride = 0u;
    *&self->_timeLocationFromAccessory = 0u;
    *&self->_timeLocationFromCompensated = 0u;
    *&v30 = -1;
    *(&v30 + 1) = -1;
    *&self->_numberOfPeerData = v30;
    *&self->_numberOfDeltaVelocityFromPeerData = v30;
    *&self->_numberOfStatic = v30;
    self->_timeAtFirstPeerData = -1.0;
    self->_timeAtLastBoundedDisplacementUpdate = -1.0;
    if (self->_lastMotionCategory.__engaged_)
    {
      self->_lastMotionCategory.__engaged_ = 0;
    }

    *&self->_timeFindeeWasSlowlyMoving = 0uLL;
    *&self->_timeFindeeWasWalkingOrUnknown = 0uLL;
    *&self->_pdrTimeAtFirstPDRUpdate = xmmword_100549700;
    *&self->_pdrTimeAtLastPDRUpdate = xmmword_100549700;
    self->_pdrIsYieldingDeltaPosition = 0;
    self->_timeAtFirstPose = -1.0;
    *&self->_timeAtFirstValidPose = _Q0;
    *&self->_timeAtFirstOutputRange = _Q0;
    self->_timeAtFirstRawUWBRange = -1.0;
    *&self->_timeAtFirstSelfLocation = _Q0;
    *&self->_timeAtFirstPeerLocationFromFindeeData = _Q0;
    *&self->_timeAtFirstPDRFromFindeeData = _Q0;
    *&self->_timeAtFirstDeltaVelocityFromFindeeData = _Q0;
    *&self->_timeAtEndOfSession = _Q0;
    *&self->_firstArrowAlgorithmSource = 0;
    self->_armsReachAlgorithmSource = 0;
    *&self->_numberOfArrowRevokes = -1;
    *&self->_numberOfSolutions = -1;
    *&self->_numberOfPeerDataFinder = -1;
    *&self->_lastSolutionHadArrow = 0;
    self->_lastPoseHadNormalTrackingState = 0;
    if (self->_anon_3b8[72] == 1)
    {
      self->_anon_3b8[72] = 0;
    }

    [(NIServerAnalyticsManager *)self _onVIOReset];
    if (self->_isFinderAPhone.__engaged_)
    {
      self->_isFinderAPhone.__engaged_ = 0;
    }

    if (self->_isFindeeAPhone.__engaged_)
    {
      self->_isFindeeAPhone.__engaged_ = 0;
    }

    self->_timePDRAndVIOWasAvailable = 0.0;
    self->_timeAtLastIOUpdate = -1.0;
    *&self->_pdrPathLengthWhenVIOAvailable = 0u;
    if (self->_anon_c28[72] == 1)
    {
      self->_anon_c28[72] = 0;
    }

    *&self->_pathLengthError = v84;
    *&self->_radialDisplacementError = v84;
    *&self->_stdSpeedFromVIO = v84;
    *&self->_timeSSFromVIO = 0uLL;
    *&self->_timeSSFromIOAndSSFromVIO = 0uLL;
    *&self->_pdrSSDetectionTruePositiveRate = v84;
    *&self->_percentTimeSSFromVIO = v84;
    *&self->_runningMeanSpeedFromVIO = 0uLL;
    *&self->_acquisitionReason = 0xFFFFFFFF00000000;
    self->_firstDistance_finding = -1.0;
    *&self->_firstNBRSSI = 0uLL;
    self->_lastDistance_finding = -1.0;
    *&self->_lastNBRSSI = 0uLL;
    self->_maxDistance_finding = -1.79769313e308;
    *&self->_maxNBRSSI = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *&self->_minDistance_finding = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&self->_minYCoordinateFinder = xmmword_100549710;
    *&self->_minUWBRSSI = xmmword_100549710;
    self->_minYCoordinateFindee = 1.79769313e308;
    *&self->_didFinderChangeFloor = 0;
    if (self->_lastDisplacementSourceFindee.__engaged_)
    {
      self->_lastDisplacementSourceFindee.__engaged_ = 0;
    }

    *&self->_firstRawRangeValue = 0u;
    self->_maxRawRangeValue = -1.79769313e308;
    *&self->_minRawRangeValue = xmmword_100549720;
    self->_rangeAtFirstArrow = -1.0;
    self->_askedToRange = 0;
    self->_timeAtFindButton = -1.0;
    *&self->_firstOutputDistance = v84;
    *&self->_maxOutputDistance = v84;
    if (self->_itemBtTxPower.__engaged_)
    {
      self->_itemBtTxPower.__engaged_ = 0;
    }

    *&self->_timeAtFirstBtRssiMeasurement = v84;
    self->_lastBtRssi = -1.0;
    lastRegion = self->_lastRegion;
    *&self->_numberOfRegionFoundEvents = 0uLL;

    self->_sessionType = 0;
    p_sessionType = &self->_sessionType;
    self->_backgroundMode = 0;
    p_backgroundMode = &self->_backgroundMode;
    *&self->_isCameraAssistanceEnabled = 0;
    v34 = objc_opt_class();
    if (v34 == objc_opt_class())
    {
      *p_sessionType = 1;
      v41 = configCopy;
      *p_backgroundMode = [v41 backgroundMode];
      self->_isCameraAssistanceEnabled = [v41 _internalIsCameraAssistanceEnabled];
      self->_isExtendedDistanceMeasurementEnabled = [v41 isExtendedDistanceMeasurementEnabled];
      goto LABEL_96;
    }

    v35 = objc_opt_class();
    if (v35 != objc_opt_class())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_97;
      }

      v36 = configCopy;
      discoveryTokenVariant = [v36 discoveryTokenVariant];
      if (discoveryTokenVariant == 1)
      {
        if ([v36 isFinder])
        {
          self->_sessionType = 4;
          v40 = 2.0;
          goto LABEL_66;
        }

        v64 = 3;
      }

      else
      {
        if (discoveryTokenVariant != 2)
        {
          goto LABEL_96;
        }

        preferredUpdateRate = [v36 preferredUpdateRate];
        self->_askedToRange = preferredUpdateRate == 2;
        if (preferredUpdateRate == 2)
        {
          [(NIServerAnalyticsManager *)self updateFindButtonTime:timestamp];
        }

        requestedMeasurementQuality = [v36 requestedMeasurementQuality];
        if (requestedMeasurementQuality != 3)
        {
          if (requestedMeasurementQuality == 1)
          {
            self->_sessionType = 5;
            v40 = 1.0;
LABEL_66:
            self->_armsLengthDistance = v40;
          }

LABEL_96:

LABEL_97:
          std::mutex::lock(&stru_1009E9B50);
          v66 = ++byte_1009ECD78;
          *buf = &self->_sessionType;
          v67 = sub_10004EFB0(&xmmword_1009ECD28, &self->_sessionType, &unk_100548C50, buf);
          v68 = *(v67 + 20) + 1;
          *(v67 + 20) = v68;
          if (self->_bundleIdentifier)
          {
            size = *(&self->_bundleIdAsStdString.__rep_.__l + 23);
            if ((size & 0x8000000000000000) != 0)
            {
              size = self->_bundleIdAsStdString.__rep_.__l.__size_;
            }

            if (!size)
            {
              __assert_rtn("[NIServerAnalyticsManager sessionSuccessfullyRanWithConfig:withTimestamp:]", "NIServerAnalyticsManager.mm", 1016, "!_bundleIdAsStdString.empty()");
            }

            *buf = &self->_bundleIdAsStdString;
            v70 = sub_10004F1E4(&xmmword_1009ECD50, &self->_bundleIdAsStdString, &unk_100548C50, buf, &v86);
            v71 = *(v70 + 40) + 1;
            *(v70 + 40) = v71;
            v72 = v71;
          }

          else
          {
            v72 = 0;
          }

          std::mutex::unlock(&stru_1009E9B50);
          v10 = objc_alloc_init(NSMutableDictionary);
          v73 = [NSNumber numberWithInt:v66];
          [v10 setObject:v73 forKey:@"numSimultaneousSessions_All"];

          v74 = *p_sessionType;
          if (*p_sessionType > 2)
          {
            if (v74 == 3)
            {
              v75 = [NSNumber numberWithInt:v68];
              [v10 setObject:v75 forKey:@"com.apple.nearbyinteraction.peopleFindingSession.FindeeSummary"];
              goto LABEL_112;
            }

            if (v74 == 4)
            {
              v75 = [NSNumber numberWithInt:v68];
              [v10 setObject:v75 forKey:@"com.apple.nearbyinteraction.peopleFindingSession.FinderSummary"];
              goto LABEL_112;
            }
          }

          else
          {
            if (v74 == 1)
            {
              v75 = [NSNumber numberWithInt:v68];
              [v10 setObject:v75 forKey:@"numSimultaneousSessions_Peer"];
              goto LABEL_112;
            }

            if (v74 == 2)
            {
              v75 = [NSNumber numberWithInt:v68];
              [v10 setObject:v75 forKey:@"numSimultaneousSessions_Accessory"];
LABEL_112:
            }
          }

          v76 = self->_bundleIdentifier;
          if (v76)
          {
            [v10 setObject:v76 forKey:@"appBundleID"];
            v77 = [NSNumber numberWithInt:v72];
            [v10 setObject:v77 forKey:@"numSimultaneousSessions_ThisApp"];
          }

          v78 = [v10 mutableCopy];
          v79 = qword_1009ECD20;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            v80 = self->_bundleIdentifier;
            v81 = [v78 description];
            *buf = 138412802;
            *&buf[4] = v80;
            v90 = 2112;
            *v91 = @"com.apple.nearbyinteractionv2.start";
            *&v91[8] = 2112;
            timestampCopy = *&v81;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
          }

          v85 = v78;
          AnalyticsSendEventLazy();

          goto LABEL_118;
        }

        v65 = qword_1009ECD20;
        if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#ni-ca,NIItemFinderBTFinding", buf, 2u);
        }

        v64 = 6;
      }

      *p_sessionType = v64;
      goto LABEL_96;
    }

    *p_sessionType = 2;
    v42 = configCopy;
    *p_backgroundMode = [v42 backgroundMode];
    self->_isCameraAssistanceEnabled = [v42 _internalIsCameraAssistanceEnabled];
    accessoryConfigData = [v42 accessoryConfigData];
    v44 = accessoryConfigData;
    bytes = [accessoryConfigData bytes];

    accessoryConfigData2 = [v42 accessoryConfigData];
    v47 = [accessoryConfigData2 length];
    v86 = 0;
    v87 = 0;
    v88 = 0;
    sub_1000069DC(&v86, bytes, &v47[bytes], v47);

    v48 = v86;
    v49 = v87 - v86;
    if ((v87 - v86) < 0x14)
    {
      goto LABEL_52;
    }

    v50 = *v86;
    v51 = !v86[1] && v50 == 1;
    v52 = v86[1] && v50 == 1;
    v53 = v86[8];
    v54 = v86[9];
    v55 = &word_1005497B2;
    v56 = 16;
    while (__PAIR64__(v54, v53) != __PAIR64__(*v55, *(v55 - 1)))
    {
      v55 += 2;
      v56 -= 4;
      if (!v56)
      {
        v57 = 0;
        goto LABEL_68;
      }
    }

    v57 = 1;
LABEL_68:
    _ZF = v86[9] && v53 == 2;
    v59 = _ZF;
    v60 = v53 <= 2 ? v59 : 1;
    v61 = v50 > 1 || v51;
    if (((v61 | v52) & 1) == 0 || ((v57 | v60) & 1) == 0)
    {
      goto LABEL_52;
    }

    if (!v57)
    {
      if (v60)
      {
        if (v49 < 0x30 || *(v86 + 15) < 0x20u)
        {
          goto LABEL_53;
        }

        v49 = 48;
      }

      else
      {
        v49 = 0;
      }

LABEL_124:
      v94 = 0;
      memcpy(buf, v86, v49);
      v82 = buf[4];
      if (buf[4] <= 0x14u && ((1 << buf[4]) & 0x100401) != 0 && v93 <= 1u && v94 <= 1u && HIBYTE(v94) <= 8u && ((1 << SHIBYTE(v94)) & 0x10D) != 0)
      {
        self->_hasAccessoryDataRate = 1;
        self->_accessoryDataRate = v82;
      }

LABEL_52:
      if (!v48)
      {
        goto LABEL_96;
      }

LABEL_53:
      v87 = v48;
      operator delete(v48);
      goto LABEL_96;
    }

    if (v53 == 2)
    {
      if (!v86[9])
      {
        v62 = 32;
        v63 = 48;
        goto LABEL_122;
      }
    }

    else if (v53 == 1 && v54 < 3)
    {
      v62 = 2 * v54 + 19;
      v63 = 2 * v54 + 35;
LABEL_122:
      if (v49 != v63 || *(v86 + 15) != v62)
      {
        goto LABEL_53;
      }

      goto LABEL_124;
    }

    __assert_rtn("UWBConfigDataTotalLengthBytes", "NIFiRaDefinitions.h", 418, "false");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
LABEL_17:
    v20 = qword_1009ECD20;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = self->_bundleIdentifier;
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "#ni-ca,[%@] Session is already running. Stop it first.", buf, 0xCu);
    }

    [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:timestamp];
    if (v12)
    {
      ++self->_clientRequestIndex;
      v22 = qword_1009ECD20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = self->_bundleIdentifier;
        clientRequestIndex = self->_clientRequestIndex;
        *buf = 138412546;
        *&buf[4] = v23;
        v90 = 1024;
        *v91 = clientRequestIndex;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "#ni-ca,[%@] NIItemFinderPrecisionFinding going back to prewarming - clientRequestIndex incremented to %d", buf, 0x12u);
      }
    }

    self->_isRunning = 0;
    goto LABEL_24;
  }

  v10 = configCopy;
  v11 = self->_sessionType - 5;
  v12 = v11 < 2;
  if (v11 > 1)
  {
LABEL_16:

    goto LABEL_17;
  }

  v13 = qword_1009ECD20;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = self->_bundleIdentifier;
    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#ni-ca,[%@] NIItemFinderPrecisionFinding ran again while running", buf, 0xCu);
  }

  askedToRange = self->_askedToRange;
  v16 = [v10 preferredUpdateRate] == 2;
  self->_askedToRange = v16;
  if (askedToRange != v16)
  {
    v17 = qword_1009ECD20;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = self->_bundleIdentifier;
      v19 = self->_askedToRange;
      *buf = 138412802;
      *&buf[4] = v18;
      v90 = 1024;
      *v91 = askedToRange;
      *&v91[4] = 1024;
      *&v91[6] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#ni-ca,[%@] NIItemFinderPrecisionFinding askedToRange changed from %d to %d", buf, 0x18u);
    }

    if (self->_askedToRange)
    {
      [(NIServerAnalyticsManager *)self updateFindButtonTime:timestamp];
      goto LABEL_118;
    }

    goto LABEL_16;
  }

LABEL_118:
}

- (void)sessionPausedWithTimestamp:(double)timestamp
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = 138412546;
    v8 = bundleIdentifier;
    v9 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] sessionPausedWithTimestamp: %f [s]", &v7, 0x16u);
  }

  [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:timestamp];
}

- (void)sessionInterruptedWithTimestamp:(double)timestamp
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = 138412546;
    v8 = bundleIdentifier;
    v9 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] sessionInterruptedWithTimestamp: %f [s]", &v7, 0x16u);
  }

  [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:timestamp];
}

- (void)sessionInvalidatedWithTimestamp:(double)timestamp
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = 138412546;
    v8 = bundleIdentifier;
    v9 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] sessionInvalidatedWithTimestamp: %f [s]", &v7, 0x16u);
  }

  [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:timestamp];
}

- (void)appBecameVisibleWithTimestamp:(double)timestamp
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v9 = 138412546;
    v10 = bundleIdentifier;
    v11 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] appBecameVisibleWithTimestamp: %f [s]", &v9, 0x16u);
  }

  if (self->_isVisible)
  {
    v7 = qword_1009ECD20;
    if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      v8 = self->_bundleIdentifier;
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#ni-ca,[%@] App already visible. Ignore duplicate call.", &v9, 0xCu);
    }
  }

  else
  {
    self->_timeSpentNotVisible = self->_timeSpentNotVisible + timestamp - self->_visibilityUpdateTimestamp;
    self->_visibilityUpdateTimestamp = timestamp;
    self->_isVisible = 1;
  }
}

- (void)appBecameNotVisibleWithTimestamp:(double)timestamp
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v10 = 138412546;
    v11 = bundleIdentifier;
    v12 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] appBecameNotVisibleWithTimestamp: %f [s]", &v10, 0x16u);
  }

  if (self->_isVisible)
  {
    v7 = self->_timeSpentVisible + timestamp - self->_visibilityUpdateTimestamp;
    self->_visibilityUpdateTimestamp = timestamp;
    self->_timeSpentVisible = v7;
    self->_isVisible = 0;
  }

  else
  {
    v8 = qword_1009ECD20;
    if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      v9 = self->_bundleIdentifier;
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#ni-ca,[%@] App already not visible. Ignore duplicate call.", &v10, 0xCu);
    }
  }
}

- (void)appPresentedLiveActivity
{
  v3 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v5 = 138412290;
    v6 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#ni-ca,[%@] appPresentedLiveActivity [s]", &v5, 0xCu);
  }

  self->_isLiveActivityEverActive = 1;
}

- (void)updateWithRangeResult:(RangeResult *)result
{
  if (self->_isCameraAssistanceEnabled && !self->_receivedRangeMeasurement)
  {
    self->_receivedRangeMeasurement = 1;
    self->_firstRangeMeasurementTime = result->var1;
  }
}

- (void)updateWithVIOPose:(Pose *)pose
{
  if (self->_isCameraAssistanceEnabled)
  {
    if (pose[1].source.var0.__val_ == 2)
    {
      if (!self->_isCurrentlyTrackingVIO)
      {
        self->_isCurrentlyTrackingVIO = 1;
      }

      lightEstimate = pose[1].lightEstimate;
      if (self->_hasStartedVIOTracking)
      {
        v4 = vsubq_f32(*self->_lastVIOPosition, lightEstimate);
        v5 = vmulq_f32(v4, v4);
        self->_totalDistanceMoved = self->_totalDistanceMoved + sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
      }

      else
      {
        self->_hasStartedVIOTracking = 1;
        self->_totalDistanceMoved = 0.0;
      }
    }

    else
    {
      if (!self->_isCurrentlyTrackingVIO)
      {
        return;
      }

      ++self->_numberOfInvalidPose;
      self->_isCurrentlyTrackingVIO = 0;
      lightEstimate = 0;
    }

    *self->_lastVIOPosition = lightEstimate;
  }
}

- (void)updateWithSASolution:(Solution *)solution
{
  if (self->_isCameraAssistanceEnabled)
  {
    if (solution->var2.__engaged_)
    {
      if (!self->_isCurrentlyHorizontallyConverged)
      {
        self->_isCurrentlyHorizontallyConverged = 1;
      }

      if (!self->_hasHorizontallyConverged)
      {
        self->_hasHorizontallyConverged = 1;
        if (!solution->var1.var1)
        {
          sub_10049CF74();
        }

        self->_timeToHorizontalConvergence = solution->var1.var0.var1.var1 - self->_firstRangeMeasurementTime;
        self->_rangeAtHorizontalConvergence = solution->var1.var0.var1.var2;
        self->_distanceMovedToHorizontalConvergence = self->_totalDistanceMoved;
      }
    }

    else if (self->_isCurrentlyHorizontallyConverged)
    {
      self->_isCurrentlyHorizontallyConverged = 0;
      ++self->_numberOfLostHorizontalConvergence;
    }

    if (solution->var0.var0 == 1)
    {
      if (!self->_isCurrentlyVerticallyConverged)
      {
        self->_isCurrentlyVerticallyConverged = 1;
      }

      if (!self->_hasVerticallyConverged)
      {
        self->_hasVerticallyConverged = 1;
        if (!solution->var1.var1)
        {
          sub_10049CFA0();
        }

        self->_timeToVerticalConvergence = solution->var1.var0.var1.var1 - self->_firstRangeMeasurementTime;
        self->_rangeAtVerticalConvergence = solution->var1.var0.var1.var2;
        self->_distanceMovedToVerticalConvergence = self->_totalDistanceMoved;
      }
    }

    else if (self->_isCurrentlyVerticallyConverged)
    {
      self->_isCurrentlyVerticallyConverged = 0;
      ++self->_numberOfLostVerticalConvergence;
    }
  }
}

- (void)updateWithPeerDeviceType:(BOOL)type
{
  sessionType = self->_sessionType;
  if (sessionType == 4)
  {
    v4 = 3010;
  }

  else
  {
    if (sessionType != 3)
    {
      return;
    }

    v4 = 3008;
  }

  *(&self->super.isa + v4) = type | 0x100;
}

- (void)updateWithFindeePeerData:(const void *)data
{
  if (self->_sessionType != 3)
  {
    return;
  }

  numberOfPeerData = self->_numberOfPeerData;
  v6 = __CFADD__(numberOfPeerData, 1);
  v7 = numberOfPeerData + 1;
  if (v6)
  {
    v7 = 1;
  }

  self->_numberOfPeerData = v7;
  if (self->_timeAtFirstPeerData == -1.0)
  {
    self->_timeAtFirstPeerData = sub_100005288();
    if ((*(data + 16) & 1) == 0)
    {
      goto LABEL_40;
    }

    self->_lastMotionCategory.var0.__val_ = *(data + 2);
    self->_lastMotionCategory.__engaged_ = 1;
    self->_timeAtLastBoundedDisplacementUpdate = sub_100005288();
    if (*(data + 72) == 1)
    {
      self->_lastDisplacementSourceFindee.var0.__val_ = *(data + 10);
      self->_lastDisplacementSourceFindee.__engaged_ = 1;
    }
  }

  if (*(data + 16) == 1)
  {
    numberOfBoundedDisplacementFromPeerData = self->_numberOfBoundedDisplacementFromPeerData;
    v6 = __CFADD__(numberOfBoundedDisplacementFromPeerData, 1);
    v9 = numberOfBoundedDisplacementFromPeerData + 1;
    if (v6)
    {
      v9 = 1;
    }

    self->_numberOfBoundedDisplacementFromPeerData = v9;
    v10 = *(data + 2);
    if (v10 <= 2)
    {
      v11 = qword_1005497C0[v10];
      v12 = *(&self->super.isa + v11);
      v6 = __CFADD__(v12, 1);
      v13 = v12 + 1;
      if (v6)
      {
        v13 = 1;
      }

      *(&self->super.isa + v11) = v13;
    }

    if (self->_lastMotionCategory.__engaged_)
    {
      val = self->_lastMotionCategory.var0.__val_;
      if (val <= 2)
      {
        v15 = qword_1005497D8[val];
        *(&self->super.isa + v15) = *(&self->super.isa + v15) + sub_100005288() - self->_timeAtLastBoundedDisplacementUpdate;
        self->_lastMotionCategory.var0.__val_ = val;
        self->_lastMotionCategory.__engaged_ = 1;
      }

      self->_timeAtLastBoundedDisplacementUpdate = sub_100005288();
      goto LABEL_22;
    }

LABEL_40:
    sub_1000195BC();
  }

LABEL_22:
  if (*(data + 72) == 1)
  {
    v16 = 412;
    if (*(data + 10) == 1)
    {
      v16 = 400;
    }

    v17 = *(&self->super.isa + v16);
    v6 = __CFADD__(v17, 1);
    v18 = v17 + 1;
    if (v6)
    {
      v18 = 1;
    }

    *(&self->super.isa + v16) = v18;
  }

  if (*(data + 112) == 1)
  {
    numberOfDeltaVelocityFromPeerData = self->_numberOfDeltaVelocityFromPeerData;
    v6 = __CFADD__(numberOfDeltaVelocityFromPeerData, 1);
    v20 = numberOfDeltaVelocityFromPeerData + 1;
    if (v6)
    {
      v20 = 1;
    }

    self->_numberOfDeltaVelocityFromPeerData = v20;
  }

  if (*(data + 160) == 1)
  {
    numberOfLocationFromPeerData = self->_numberOfLocationFromPeerData;
    v6 = __CFADD__(numberOfLocationFromPeerData, 1);
    v22 = numberOfLocationFromPeerData + 1;
    if (v6)
    {
      v22 = 1;
    }

    self->_numberOfLocationFromPeerData = v22;
  }
}

- (void)updateWithMissedRange
{
  if (self->_sessionType == 3)
  {
    numberOfMissedRanges = self->_numberOfMissedRanges;
    v3 = __CFADD__(numberOfMissedRanges, 1);
    v4 = numberOfMissedRanges + 1;
    if (v3)
    {
      v4 = 1;
    }

    self->_numberOfMissedRanges = v4;
  }
}

- (void)_calculateAndLogErrorsFromIODeltaP:(NIServerAnalyticsManager *)self vioDeltaP:(SEL)p vioPos:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v9 = sub_100005288();
  v10 = atan2f((-COERCE_FLOAT(*(v7 + 8)) * COERCE_FLOAT(*v6)) + (COERCE_FLOAT(*v7) * COERCE_FLOAT(v6->i64[1])), vmuls_lane_f32(COERCE_FLOAT(*(v7 + 8)), *v6, 2) + (COERCE_FLOAT(*v7) * COERCE_FLOAT(*v6))) * 57.2957795;
  v19 = v10;
  LOBYTE(v17) = 0;
  v18 = 0;
  engaged = self->_lastAngleError.__engaged_;
  if (engaged)
  {
    v17 = v10 - self->_lastAngleError.var0.__val_;
    v18 = 1;
  }

  self->_lastAngleError.var0.__val_ = v10;
  self->_lastAngleError.__engaged_ = 1;
  if ((self->_deltaAngleErrorHistory.__end_ - self->_deltaAngleErrorHistory.__begin_) <= 0x4AF && (self->_angleErrorHistory.__end_ - self->_angleErrorHistory.__begin_) <= 0x4AF && v9 - self->_timeOfLastSplicedPoseErrorLogging >= 0.5 && (self->_pointToPointErrorHistory.__end_ - self->_pointToPointErrorHistory.__begin_) <= 0x4AF)
  {
    if (engaged)
    {
      sub_100046F58(&self->_deltaAngleErrorHistory.__begin_, &v17);
    }

    sub_100046F58(&self->_angleErrorHistory.__begin_, &v19);
    vioPathLength = self->_vioPathLength;
    if (vioPathLength > 0.0)
    {
      v13 = vsubq_f32(*self->_integratedPDRVIOFrame, *v5);
      v14 = vmulq_f32(v13, v13);
      v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) / vioPathLength;
      v16 = v15;
      sub_100046F58(&self->_pointToPointErrorHistory.__begin_, &v16);
    }

    self->_timeOfLastSplicedPoseErrorLogging = v9;
  }
}

- (void)_updateAlignedPDRMetrics:(const void *)metrics
{
  v5 = sub_10003F5C8();
  v6 = sub_100005288();
  *v7.i64 = v6 - v5;
  v8 = *metrics + v6 - v5;
  if (!self->_timeAtFirstIOPose.__engaged_ && *(metrics + 32) == 1 && *(metrics + 48) == 1)
  {
    v9 = *(metrics + 24);
    v7.i64[1] = *(metrics + 5);
    *v7.f32 = vcvt_f32_f64(v7);
    *v7.i64 = sqrtf(vaddv_f32(vmul_f32(*v7.f32, *v7.f32))) / 0.1;
    if (*v7.i64 > 0.15)
    {
      self->_timeAtFirstIOPose.var0.__val_ = v6;
      self->_timeAtFirstIOPose.__engaged_ = 1;
    }
  }

  sub_1003FC0A8(&self->_pdrAligner, metrics, &v27, v8, v7);
  v10 = sub_1003FBC7C(&self->_pdrAligner);
  v11.n128_f64[0] = v8;
  sub_1003FC038(&self->_pdrAligner._poseHistory.__map_.__first_, v24, v11);
  if (v10 != 5)
  {
    self->_lastOdometryAvailabilityState = v10;
    return;
  }

  if (self->_lastOdometryAvailabilityState == 5)
  {
    v22.i8[0] = 0;
    v23 = 0;
    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *self->_integratedPDRVIOFrame = 0u;
    self->_vioPathLength = 0.0;
    if (self->_anon_f72[14] == 1)
    {
      self->_anon_f72[14] = 0;
    }

    if (v26 != 1)
    {
      return;
    }

    *self->_currentVIOOffsetPosition = v25;
    self->_lastOdometryAvailabilityState = 5;
    v22.i8[0] = 0;
    v23 = 0;
  }

  v12 = vsubq_f32(v25, *self->_currentVIOOffsetPosition);
  v21 = 1;
  v20 = v12;
  v13 = self->_anon_f72[14];
  if (v13 != 1)
  {
    v17 = 0;
    LOBYTE(v13) = 1;
    goto LABEL_22;
  }

  if (!self->_timeOfLastPDRUpdate.__engaged_)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v14 = vsubq_f32(v12, *&self->_previousAdjustedRotatedVioPosition.var0.__null_state_);
  v23 = 1;
  v22 = v14;
  v15 = v8 - self->_timeOfLastPDRUpdate.var0.__val_;
  if (v15 > 0.0)
  {
    LOBYTE(v13) = 0;
    v16 = vmulq_f32(v14, v14);
    *v16.i64 = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
    self->_vioPathLength = self->_vioPathLength + *v16.i64;
    v17 = *v16.i64 / v15 > 0.15;
LABEL_22:
    *&self->_previousAdjustedRotatedVioPosition.var0.__null_state_ = v20;
    self->_anon_f72[14] = v21;
    self->_timeOfLastPDRUpdate.var0.__val_ = v8;
    self->_timeOfLastPDRUpdate.__engaged_ = 1;
    if (v28)
    {
      v18 = v27;
      *self->_integratedPDRVIOFrame = vaddq_f32(v27, *self->_integratedPDRVIOFrame);
      if ((v13 & 1) == 0)
      {
        v19 = vmulq_f32(v18, v18);
        if (sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) / 0.1 > 0.15 && v17)
        {
          [(NIServerAnalyticsManager *)self _calculateAndLogErrorsFromIODeltaP:&v27 vioDeltaP:&v22 vioPos:&v20];
        }
      }
    }

    return;
  }

  if (v28 == 1)
  {
    *self->_integratedPDRVIOFrame = vaddq_f32(v27, *self->_integratedPDRVIOFrame);
  }
}

- (void)updateWithPDR:(const void *)r
{
  sessionType = self->_sessionType;
  if (sessionType == 4)
  {
    [(NIServerAnalyticsManager *)self _updateAlignedPDRMetrics:r];
    timeAtLastIOUpdate = self->_timeAtLastIOUpdate;
    v8 = *r;
    if (timeAtLastIOUpdate == -1.0)
    {
      self->_timeAtLastIOUpdate = v8;
      timeAtLastIOUpdate = v8;
    }

    v9 = *(r + 7);
    v70 = *(r + 6);
    v71 = v9;
    v10 = *(r + 9);
    v72 = *(r + 8);
    v73 = v10;
    v11 = *(r + 3);
    v66 = *(r + 2);
    v67 = v11;
    v12 = *(r + 5);
    v68 = *(r + 4);
    v69 = v12;
    v13 = *(r + 1);
    v64 = *r;
    v65 = v13;
    if (![(NIServerAnalyticsManager *)self _isPDRAvailable:&v64]|| !self->_lastPoseHadNormalTrackingState)
    {
      goto LABEL_34;
    }

    v14 = v8 - timeAtLastIOUpdate;
    self->_timePDRAndVIOWasAvailable = v14 + self->_timePDRAndVIOWasAvailable;
    numberOfPDRUpdates = self->_numberOfPDRUpdates;
    if (numberOfPDRUpdates == -1.0)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = numberOfPDRUpdates + 1.0;
    }

    self->_numberOfPDRUpdates = v16;
    if ((*(r + 32) & 1) == 0 || (*(r + 48) & 1) == 0)
    {
      goto LABEL_36;
    }

    v17 = sqrt(*(r + 5) * *(r + 5) + *(r + 3) * *(r + 3));
    self->_pdrPathLengthWhenVIOAvailable = self->_pdrPathLengthWhenVIOAvailable + v17;
    v18 = *&self->_anon_3b8[56];
    v70 = *&self->_anon_3b8[40];
    v71 = v18;
    v72 = *&self->_anon_3b8[72];
    v19 = *&self->_lastPose.__engaged_;
    v66 = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
    v67 = v19;
    v20 = *&self->_anon_3b8[24];
    v68 = *&self->_anon_3b8[8];
    v69 = v20;
    lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
    v64 = *&self->_lastPose.var0.__null_state_;
    v65 = lightEstimate;
    v22 = *&self->_anon_c28[24];
    v23 = *&self->_anon_c28[56];
    v61 = *&self->_anon_c28[40];
    v62 = v23;
    v63 = *&self->_anon_c28[72];
    v24 = self->_vioPoseAtLastPDRUpdate.var0.__val_.lightEstimate;
    v25 = *&self->_vioPoseAtLastPDRUpdate.__engaged_;
    v57 = *&self->_vioPoseAtLastPDRUpdate.var0.__val_.source.var0.__null_state_;
    v58 = v25;
    v59 = *&self->_anon_c28[8];
    v60 = v22;
    v55 = *&self->_vioPoseAtLastPDRUpdate.var0.__null_state_;
    v56 = v24;
    [(NIServerAnalyticsManager *)self _deltaDistanceFromVIOPoses:&v64];
    self->_vioPathLengthWhenPDRIsAvailable = v26 + self->_vioPathLengthWhenPDRIsAvailable;
    if (v14 <= 0.0)
    {
      v31 = 0;
    }

    else
    {
      v27 = v26 / v14;
      runningMeanSpeedFromVIO = self->_runningMeanSpeedFromVIO;
      v29 = v27 - runningMeanSpeedFromVIO;
      v30 = runningMeanSpeedFromVIO + (v27 - runningMeanSpeedFromVIO) / self->_numberOfPDRUpdates;
      self->_runningMeanSpeedFromVIO = v30;
      self->_m2 = self->_m2 + v29 * (v27 - v30);
      v31 = v17 / v14 == 0.0;
    }

    v40 = *&self->_anon_3b8[56];
    v70 = *&self->_anon_3b8[40];
    v71 = v40;
    v72 = *&self->_anon_3b8[72];
    v41 = *&self->_lastPose.__engaged_;
    v66 = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
    v67 = v41;
    v42 = *&self->_anon_3b8[24];
    v68 = *&self->_anon_3b8[8];
    v69 = v42;
    v43 = self->_lastPose.var0.__val_.lightEstimate;
    v64 = *&self->_lastPose.var0.__null_state_;
    v65 = v43;
    v44 = *&self->_anon_c28[56];
    v61 = *&self->_anon_c28[40];
    v62 = v44;
    v63 = *&self->_anon_c28[72];
    v45 = *&self->_vioPoseAtLastPDRUpdate.__engaged_;
    v57 = *&self->_vioPoseAtLastPDRUpdate.var0.__val_.source.var0.__null_state_;
    v58 = v45;
    v46 = *&self->_anon_c28[24];
    v59 = *&self->_anon_c28[8];
    v60 = v46;
    v47 = self->_vioPoseAtLastPDRUpdate.var0.__val_.lightEstimate;
    v55 = *&self->_vioPoseAtLastPDRUpdate.var0.__null_state_;
    v56 = v47;
    v48 = [(NIServerAnalyticsManager *)self _isSemiStaticFromVIO:&v64];
    if (v31)
    {
      if (v48)
      {
        self->_timeSSFromIOAndSSFromVIO = v14 + self->_timeSSFromIOAndSSFromVIO;
LABEL_30:
        v49 = 3248;
LABEL_33:
        *(&self->super.isa + v49) = v14 + *(&self->super.isa + v49);
LABEL_34:
        v50 = *&self->_anon_3b8[8];
        *&self->_anon_c28[24] = *&self->_anon_3b8[24];
        v51 = *&self->_anon_3b8[56];
        *&self->_anon_c28[40] = *&self->_anon_3b8[40];
        *&self->_anon_c28[56] = v51;
        v52 = *&self->_lastPose.var0.__null_state_;
        self->_vioPoseAtLastPDRUpdate.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
        v53 = *&self->_lastPose.__engaged_;
        *&self->_vioPoseAtLastPDRUpdate.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
        *&self->_vioPoseAtLastPDRUpdate.__engaged_ = v53;
        *&self->_anon_c28[8] = v50;
        self->_anon_c28[72] = self->_anon_3b8[72];
        *&self->_vioPoseAtLastPDRUpdate.var0.__null_state_ = v52;
        v54 = *r;
        self->_pdrTimeAtLastPDRUpdate = *r;
        self->_timeAtLastIOUpdate = v54;
        return;
      }

      self->_timeSSFromIOAndNotSSFromVIO = v14 + self->_timeSSFromIOAndNotSSFromVIO;
    }

    else if (v48)
    {
      goto LABEL_30;
    }

    v49 = 3256;
    goto LABEL_33;
  }

  if (sessionType == 3)
  {
    if (self->_pdrTimeAtFirstPDRUpdate == -1.0)
    {
      v6 = *r;
      self->_pdrTimeAtFirstPDRUpdate = *r;
LABEL_24:
      self->_pdrTimeAtLastPDRUpdate = v6;
      return;
    }

    pdrIsYieldingDeltaPosition = self->_pdrIsYieldingDeltaPosition;
    v33 = *(r + 7);
    v70 = *(r + 6);
    v71 = v33;
    v34 = *(r + 9);
    v72 = *(r + 8);
    v73 = v34;
    v35 = *(r + 3);
    v66 = *(r + 2);
    v67 = v35;
    v36 = *(r + 5);
    v68 = *(r + 4);
    v69 = v36;
    v37 = *(r + 1);
    v64 = *r;
    v65 = v37;
    if (![(NIServerAnalyticsManager *)self _isPDRAvailable:&v64])
    {
LABEL_23:
      v6 = *r;
      goto LABEL_24;
    }

    self->_pdrIsYieldingDeltaPosition = 1;
    if (*(r + 32) & 1) != 0 && (*(r + 48))
    {
      v38 = sqrt(*(r + 5) * *(r + 5) + *(r + 3) * *(r + 3));
      if (pdrIsYieldingDeltaPosition)
      {
        v39 = *r - self->_pdrTimeAtLastPDRUpdate;
        if (v38 / v39 < 0.1)
        {
          self->_timePDRIndicatesStatic = v39 + self->_timePDRIndicatesStatic;
        }
      }

      self->_distanceTraveledFromPDR = v38 + self->_distanceTraveledFromPDR;
      goto LABEL_23;
    }

LABEL_36:
    sub_1000195BC();
  }
}

- (void)updateWithSuccessfulRange:(double)range uwbRSSI:(double)i nbRSSI:(optional<double>)sI
{
  sessionType = self->_sessionType;
  switch(sessionType)
  {
    case 5:
      [(NIServerAnalyticsManager *)self _updateMinMaxRangeAndRSSI:*&sI.var0.__val_ uwbRSSI:*&sI.__engaged_ nbRSSI:range, i];
      if (self->_timeAtFirstRawUWBRange == -1.0)
      {
        self->_timeAtFirstRawUWBRange = sub_100005288();
        self->_firstRawRangeValue = range;
        if (self->_timeAtFirstValidPose != -1.0)
        {
          v13 = *&self->_anon_3b8[8];
          *&self->_anon_5f8[24] = *&self->_anon_3b8[24];
          v14 = *&self->_anon_3b8[56];
          *&self->_anon_5f8[40] = *&self->_anon_3b8[40];
          *&self->_anon_5f8[56] = v14;
          v15 = *&self->_lastPose.var0.__null_state_;
          self->_firstInputRangePose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
          v16 = *&self->_lastPose.__engaged_;
          *&self->_firstInputRangePose.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
          *&self->_firstInputRangePose.__engaged_ = v16;
          *&self->_anon_5f8[8] = v13;
          self->_anon_5f8[72] = self->_anon_3b8[72];
          *&self->_firstInputRangePose.var0.__null_state_ = v15;
        }
      }

      numberOfRawRanges = self->_numberOfRawRanges;
      v9 = __CFADD__(numberOfRawRanges, 1);
      v18 = numberOfRawRanges + 1;
      if (v9)
      {
        v18 = 1;
      }

      self->_numberOfRawRanges = v18;
      self->_currentRawRangeValue = range;
      break;
    case 4:
      [(NIServerAnalyticsManager *)self _updateMinMaxRangeAndRSSI:*&sI.var0.__val_ uwbRSSI:*&sI.__engaged_ nbRSSI:range, i];
      if (self->_timeAtFirstRawUWBRange == -1.0)
      {
        self->_timeAtFirstRawUWBRange = sub_100005288();
      }

      v11 = self->_numberOfRawRanges;
      v9 = __CFADD__(v11, 1);
      v12 = v11 + 1;
      if (v9)
      {
        v12 = 1;
      }

      self->_numberOfRawRanges = v12;
      break;
    case 3:
      numberOfSuccessfulRanges = self->_numberOfSuccessfulRanges;
      v9 = __CFADD__(numberOfSuccessfulRanges, 1);
      v10 = numberOfSuccessfulRanges + 1;
      if (v9)
      {
        v10 = 1;
      }

      self->_numberOfSuccessfulRanges = v10;

      [(NIServerAnalyticsManager *)self _updateMinMaxRangeAndRSSI:*&sI.var0.__val_ uwbRSSI:*&sI.__engaged_ nbRSSI:range, i];
      break;
  }
}

- (void)updateWithSelfLocation:(const LocationInput *)location
{
  sessionType = self->_sessionType;
  if (sessionType == 3)
  {
    var11 = location->var11;
    timeAtFirstLocationUpdate = self->_timeAtFirstLocationUpdate;
    v7 = sub_100005288();
    if (timeAtFirstLocationUpdate == -1.0)
    {
      self->_timeAtFirstLocationUpdate = v7;
LABEL_7:
      self->_lastLocationType.var0.__val_ = var11;
      self->_lastLocationType.__engaged_ = 1;
      self->_timeAtLastLocationUpdate = sub_100005288();
      return;
    }

    if (!self->_lastLocationType.__engaged_)
    {
      sub_1000195BC();
    }

    val = self->_lastLocationType.var0.__val_;
    if (val > 7)
    {
      if (val > 10)
      {
        switch(val)
        {
          case 11:
            v16 = v7 - self->_timeAtLastLocationUpdate;
            if (v16 > 10.0)
            {
              v16 = 10.0;
            }

            self->_timeLocationFromWiFi2 = self->_timeLocationFromWiFi2 + v16;
            goto LABEL_7;
          case 12:
            v19 = v7 - self->_timeAtLastLocationUpdate;
            if (v19 > 10.0)
            {
              v19 = 10.0;
            }

            self->_timeLocationFromCompensated = self->_timeLocationFromCompensated + v19;
            goto LABEL_7;
          case 13:
            v11 = v7 - self->_timeAtLastLocationUpdate;
            if (v11 > 10.0)
            {
              v11 = 10.0;
            }

            self->_timeLocationFromLOIOverride = self->_timeLocationFromLOIOverride + v11;
            goto LABEL_7;
        }

        goto LABEL_58;
      }

      if (val == 8)
      {
        v14 = v7 - self->_timeAtLastLocationUpdate;
        if (v14 > 10.0)
        {
          v14 = 10.0;
        }

        self->_timeLocationFromMCC = self->_timeLocationFromMCC + v14;
        goto LABEL_7;
      }

      if (val == 9)
      {
        v18 = v7 - self->_timeAtLastLocationUpdate;
        if (v18 > 10.0)
        {
          v18 = 10.0;
        }

        self->_timeLocationFromGPSCoarse = self->_timeLocationFromGPSCoarse + v18;
        goto LABEL_7;
      }
    }

    else
    {
      if (val <= 3)
      {
        switch(val)
        {
          case 0:
            v13 = v7 - self->_timeAtLastLocationUpdate;
            if (v13 > 10.0)
            {
              v13 = 10.0;
            }

            self->_timeLocationFromUnknown = self->_timeLocationFromUnknown + v13;
            goto LABEL_7;
          case 1:
            v17 = v7 - self->_timeAtLastLocationUpdate;
            if (v17 > 10.0)
            {
              v17 = 10.0;
            }

            self->_timeLocationFromGPS = self->_timeLocationFromGPS + v17;
            goto LABEL_7;
          case 3:
            v9 = v7 - self->_timeAtLastLocationUpdate;
            if (v9 > 10.0)
            {
              v9 = 10.0;
            }

            self->_timeLocationFromAccessory = self->_timeLocationFromAccessory + v9;
            goto LABEL_7;
        }

LABEL_58:
        v20 = qword_1009ECD20;
        if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_ERROR))
        {
          sub_10049CFCC(v20);
        }

        goto LABEL_7;
      }

      if (val == 4)
      {
        v15 = v7 - self->_timeAtLastLocationUpdate;
        if (v15 > 10.0)
        {
          v15 = 10.0;
        }

        self->_timeLocationFromWiFi = self->_timeLocationFromWiFi + v15;
        goto LABEL_7;
      }

      if (val != 6)
      {
        if (val == 7)
        {
          v10 = v7 - self->_timeAtLastLocationUpdate;
          if (v10 > 10.0)
          {
            v10 = 10.0;
          }

          self->_timeLocationFromLAC = self->_timeLocationFromLAC + v10;
          goto LABEL_7;
        }

        goto LABEL_58;
      }
    }

    v12 = v7 - self->_timeAtLastLocationUpdate;
    if (v12 > 10.0)
    {
      v12 = 10.0;
    }

    self->_timeLocationFromCell = self->_timeLocationFromCell + v12;
    goto LABEL_7;
  }

  if (sessionType == 4 && self->_timeAtFirstSelfLocation == -1.0)
  {
    self->_timeAtFirstSelfLocation = sub_100005288();
  }
}

- (void)updateWithAcquisitionReason:(int)reason
{
  if ((self->_sessionType - 3) <= 1)
  {
    self->_acquisitionReason = reason;
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [NSNumber numberWithInt:self->_acquisitionReason];
    [v4 setObject:v5 forKey:@"AcquisitionReason"];

    v6 = [v4 mutableCopy];
    v7 = qword_1009ECD20;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = self->_bundleIdentifier;
      v9 = [v6 description];
      *buf = 138412802;
      v12 = bundleIdentifier;
      v13 = 2112;
      v14 = @"com.apple.nearbyinteraction.findingsession.begin";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
    }

    v10 = v6;
    AnalyticsSendEventLazy();
  }
}

- (void)updateWithPose:(const void *)pose
{
  if ((self->_sessionType & 0xFFFFFFFE) == 4)
  {
    v5 = sub_100005288();
    if (!self->_lastPoseHadNormalTrackingState || *(pose + 20) == 2)
    {
      v7 = v5;
      if (self->_timeAtFirstPose == -1.0)
      {
        self->_timeAtFirstPose = v5;
        self->_rangeAtFirstPose = self->_lastDistance_finding;
      }

      v8 = *(pose + 5);
      v118[4] = *(pose + 4);
      v119 = v8;
      v9 = *(pose + 7);
      v120 = *(pose + 6);
      v121 = v9;
      v10 = *(pose + 1);
      v118[0] = *pose;
      v118[1] = v10;
      v11 = *(pose + 3);
      v118[2] = *(pose + 2);
      v118[3] = v11;
      if (self->_lastSolutionHadDriftingVIO)
      {
        LODWORD(v119) = 1;
      }

      sub_1003FCA04(&self->_pdrAligner, v118, v117);
      if (*(pose + 20) == 2)
      {
        self->_lastPoseHadNormalTrackingState = 1;
        minYCoordinateFinder = *(pose + 17);
        maxYCoordinateFinder = self->_maxYCoordinateFinder;
        if (maxYCoordinateFinder <= minYCoordinateFinder)
        {
          maxYCoordinateFinder = *(pose + 17);
        }

        self->_maxYCoordinateFinder = maxYCoordinateFinder;
        if (self->_minYCoordinateFinder < minYCoordinateFinder)
        {
          minYCoordinateFinder = self->_minYCoordinateFinder;
        }

        self->_minYCoordinateFinder = minYCoordinateFinder;
        self->_didFinderChangeFloor |= maxYCoordinateFinder - minYCoordinateFinder > 2.5;
        if (self->_timeAtFirstValidPose == -1.0)
        {
          self->_timeAtFirstValidPose = v7;
          p_firstPose = &self->_firstPose;
          v15 = *pose;
          v16 = *(pose + 1);
          v17 = *(pose + 3);
          if (self->_anon_328[72] == 1)
          {
            *&self->_firstPose.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_firstPose.__engaged_ = v17;
            *&p_firstPose->var0.__null_state_ = v15;
            self->_firstPose.var0.__val_.lightEstimate = v16;
            v18 = *(pose + 4);
            v19 = *(pose + 5);
            v20 = *(pose + 6);
            *&self->_anon_328[56] = *(pose + 14);
            *&self->_anon_328[24] = v19;
            *&self->_anon_328[40] = v20;
            *&self->_anon_328[8] = v18;
          }

          else
          {
            *&self->_firstPose.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_firstPose.__engaged_ = v17;
            *&p_firstPose->var0.__null_state_ = v15;
            self->_firstPose.var0.__val_.lightEstimate = v16;
            v24 = *(pose + 4);
            v25 = *(pose + 5);
            v26 = *(pose + 7);
            *&self->_anon_328[40] = *(pose + 6);
            *&self->_anon_328[56] = v26;
            *&self->_anon_328[8] = v24;
            *&self->_anon_328[24] = v25;
            self->_anon_328[72] = 1;
          }

          p_firstArrowUserMovedDistance = &self->_firstArrowUserMovedDistance;
          v28 = *pose;
          v29 = *(pose + 1);
          v30 = *(pose + 3);
          if (self->_anon_778[8] == 1)
          {
            *&self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_firstArrowUserMovedDistance.previousPoseOfUser.__engaged_ = v30;
            *&p_firstArrowUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v28;
            self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v29;
            v31 = *(pose + 4);
            v32 = *(pose + 5);
            v33 = *(pose + 6);
            self->_firstArrowUserMovedDistance.traveledDistance = *(pose + 14);
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v32;
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = v33;
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v31;
          }

          else
          {
            *&self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_firstArrowUserMovedDistance.previousPoseOfUser.__engaged_ = v30;
            *&p_firstArrowUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v28;
            self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v29;
            v34 = *(pose + 4);
            v35 = *(pose + 5);
            v36 = *(pose + 7);
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = *(pose + 6);
            *&self->_firstArrowUserMovedDistance.traveledDistance = v36;
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v34;
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v35;
            self->_anon_778[8] = 1;
          }

          p_firstOutputRangeUserMovedDistance = &self->_firstOutputRangeUserMovedDistance;
          v38 = *pose;
          v39 = *(pose + 1);
          v40 = *(pose + 3);
          if (self->_anon_8a8[8] == 1)
          {
            *&self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.__engaged_ = v40;
            *&p_firstOutputRangeUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v38;
            self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v39;
            v41 = *(pose + 4);
            v42 = *(pose + 5);
            v43 = *(pose + 6);
            self->_firstOutputRangeUserMovedDistance.traveledDistance = *(pose + 14);
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v42;
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = v43;
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v41;
          }

          else
          {
            *&self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.__engaged_ = v40;
            *&p_firstOutputRangeUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v38;
            self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v39;
            v44 = *(pose + 4);
            v45 = *(pose + 5);
            v46 = *(pose + 7);
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = *(pose + 6);
            *&self->_firstOutputRangeUserMovedDistance.traveledDistance = v46;
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v44;
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v45;
            self->_anon_8a8[8] = 1;
          }

          p_armsReachUserMovedDistance = &self->_armsReachUserMovedDistance;
          v48 = *pose;
          v49 = *(pose + 1);
          v50 = *(pose + 3);
          if (self->_anon_9d8[8] == 1)
          {
            *&self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_armsReachUserMovedDistance.previousPoseOfUser.__engaged_ = v50;
            *&p_armsReachUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v48;
            self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v49;
            v51 = *(pose + 4);
            v52 = *(pose + 5);
            v53 = *(pose + 6);
            self->_armsReachUserMovedDistance.traveledDistance = *(pose + 14);
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v52;
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = v53;
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v51;
          }

          else
          {
            *&self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_armsReachUserMovedDistance.previousPoseOfUser.__engaged_ = v50;
            *&p_armsReachUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v48;
            self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v49;
            v54 = *(pose + 4);
            v55 = *(pose + 5);
            v56 = *(pose + 7);
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = *(pose + 6);
            *&self->_armsReachUserMovedDistance.traveledDistance = v56;
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v54;
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v55;
            self->_anon_9d8[8] = 1;
          }

          p_totalUserMovedDistance = &self->_totalUserMovedDistance;
          v58 = *pose;
          v59 = *(pose + 1);
          v60 = *(pose + 3);
          if (self->_anon_b08[8] == 1)
          {
            *&self->_totalUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_totalUserMovedDistance.previousPoseOfUser.__engaged_ = v60;
            *&p_totalUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v58;
            self->_totalUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v59;
            v61 = *(pose + 4);
            v62 = *(pose + 5);
            v63 = *(pose + 6);
            self->_totalUserMovedDistance.traveledDistance = *(pose + 14);
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v62;
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = v63;
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v61;
          }

          else
          {
            *&self->_totalUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(pose + 2);
            *&self->_totalUserMovedDistance.previousPoseOfUser.__engaged_ = v60;
            *&p_totalUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v58;
            self->_totalUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v59;
            v64 = *(pose + 4);
            v65 = *(pose + 5);
            v66 = *(pose + 7);
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = *(pose + 6);
            *&self->_totalUserMovedDistance.traveledDistance = v66;
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v64;
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v65;
            self->_anon_b08[8] = 1;
          }

          v67 = &self->_anon_778[24];
          v68 = *pose;
          v69 = *(pose + 1);
          v70 = *(pose + 3);
          if (self->_anon_778[152] == 1)
          {
            *&self->_anon_778[56] = *(pose + 2);
            *&self->_anon_778[72] = v70;
            *v67 = v68;
            *&self->_anon_778[40] = v69;
            v71 = *(pose + 4);
            v72 = *(pose + 5);
            v73 = *(pose + 6);
            *&self->_anon_778[136] = *(pose + 14);
            *&self->_anon_778[104] = v72;
            *&self->_anon_778[120] = v73;
            *&self->_anon_778[88] = v71;
          }

          else
          {
            *&self->_anon_778[56] = *(pose + 2);
            *&self->_anon_778[72] = v70;
            *v67 = v68;
            *&self->_anon_778[40] = v69;
            v74 = *(pose + 4);
            v75 = *(pose + 5);
            v76 = *(pose + 7);
            *&self->_anon_778[120] = *(pose + 6);
            *&self->_anon_778[136] = v76;
            *&self->_anon_778[88] = v74;
            *&self->_anon_778[104] = v75;
            self->_anon_778[152] = 1;
          }

          v77 = &self->_anon_8a8[24];
          v78 = *pose;
          v79 = *(pose + 1);
          v80 = *(pose + 3);
          if (self->_anon_8a8[152] == 1)
          {
            *&self->_anon_8a8[56] = *(pose + 2);
            *&self->_anon_8a8[72] = v80;
            *v77 = v78;
            *&self->_anon_8a8[40] = v79;
            v81 = *(pose + 4);
            v82 = *(pose + 5);
            v83 = *(pose + 6);
            *&self->_anon_8a8[136] = *(pose + 14);
            *&self->_anon_8a8[104] = v82;
            *&self->_anon_8a8[120] = v83;
            *&self->_anon_8a8[88] = v81;
          }

          else
          {
            *&self->_anon_8a8[56] = *(pose + 2);
            *&self->_anon_8a8[72] = v80;
            *v77 = v78;
            *&self->_anon_8a8[40] = v79;
            v84 = *(pose + 4);
            v85 = *(pose + 5);
            v86 = *(pose + 7);
            *&self->_anon_8a8[120] = *(pose + 6);
            *&self->_anon_8a8[136] = v86;
            *&self->_anon_8a8[88] = v84;
            *&self->_anon_8a8[104] = v85;
            self->_anon_8a8[152] = 1;
          }

          v87 = &self->_anon_9d8[24];
          v88 = *pose;
          v89 = *(pose + 1);
          v90 = *(pose + 3);
          if (self->_anon_9d8[152] == 1)
          {
            *&self->_anon_9d8[56] = *(pose + 2);
            *&self->_anon_9d8[72] = v90;
            *v87 = v88;
            *&self->_anon_9d8[40] = v89;
            v91 = *(pose + 4);
            v92 = *(pose + 5);
            v93 = *(pose + 6);
            *&self->_anon_9d8[136] = *(pose + 14);
            *&self->_anon_9d8[104] = v92;
            *&self->_anon_9d8[120] = v93;
            *&self->_anon_9d8[88] = v91;
          }

          else
          {
            *&self->_anon_9d8[56] = *(pose + 2);
            *&self->_anon_9d8[72] = v90;
            *v87 = v88;
            *&self->_anon_9d8[40] = v89;
            v94 = *(pose + 4);
            v95 = *(pose + 5);
            v96 = *(pose + 7);
            *&self->_anon_9d8[120] = *(pose + 6);
            *&self->_anon_9d8[136] = v96;
            *&self->_anon_9d8[88] = v94;
            *&self->_anon_9d8[104] = v95;
            self->_anon_9d8[152] = 1;
          }

          v97 = &self->_anon_b08[24];
          v98 = *pose;
          v99 = *(pose + 1);
          v100 = *(pose + 3);
          if (self->_anon_b08[152] == 1)
          {
            *&self->_anon_b08[56] = *(pose + 2);
            *&self->_anon_b08[72] = v100;
            *v97 = v98;
            *&self->_anon_b08[40] = v99;
            v101 = *(pose + 4);
            v102 = *(pose + 5);
            v103 = *(pose + 6);
            *&self->_anon_b08[136] = *(pose + 14);
            *&self->_anon_b08[104] = v102;
            *&self->_anon_b08[120] = v103;
            *&self->_anon_b08[88] = v101;
          }

          else
          {
            *&self->_anon_b08[56] = *(pose + 2);
            *&self->_anon_b08[72] = v100;
            *v97 = v98;
            *&self->_anon_b08[40] = v99;
            v104 = *(pose + 4);
            v105 = *(pose + 5);
            v106 = *(pose + 7);
            *&self->_anon_b08[120] = *(pose + 6);
            *&self->_anon_b08[136] = v106;
            *&self->_anon_b08[88] = v104;
            *&self->_anon_b08[104] = v105;
            self->_anon_b08[152] = 1;
          }

          *&self->_anon_778[168] = 0;
          *&self->_anon_8a8[168] = 0;
          *&self->_anon_9d8[168] = 0;
          *&self->_anon_b08[168] = 0;
        }

        if (self->_timeAtFirstArrow == -1.0)
        {
          [(NIServerAnalyticsManager *)self _updateUserMovedDistanceWithPose:pose lastPoseInfo:&self->_firstArrowUserMovedDistance];
        }

        if (self->_timeAtFirstOutputRange == -1.0)
        {
          [(NIServerAnalyticsManager *)self _updateUserMovedDistanceWithPose:pose lastPoseInfo:&self->_firstOutputRangeUserMovedDistance];
        }

        if (self->_timeAtArmsLength == -1.0)
        {
          [(NIServerAnalyticsManager *)self _updateUserMovedDistanceWithPose:pose lastPoseInfo:&self->_armsReachUserMovedDistance];
        }

        [(NIServerAnalyticsManager *)self _updateUserMovedDistanceWithPose:pose lastPoseInfo:&self->_totalUserMovedDistance];
      }

      p_lastPose = &self->_lastPose;
      v108 = *pose;
      v109 = *(pose + 1);
      v110 = *(pose + 3);
      if (self->_anon_3b8[72] == 1)
      {
        *&self->_lastPose.var0.__val_.source.var0.__null_state_ = *(pose + 2);
        *&self->_lastPose.__engaged_ = v110;
        *&p_lastPose->var0.__null_state_ = v108;
        self->_lastPose.var0.__val_.lightEstimate = v109;
        v111 = *(pose + 4);
        v112 = *(pose + 5);
        v113 = *(pose + 6);
        *&self->_anon_3b8[56] = *(pose + 14);
        *&self->_anon_3b8[24] = v112;
        *&self->_anon_3b8[40] = v113;
        *&self->_anon_3b8[8] = v111;
      }

      else
      {
        *&self->_lastPose.var0.__val_.source.var0.__null_state_ = *(pose + 2);
        *&self->_lastPose.__engaged_ = v110;
        *&p_lastPose->var0.__null_state_ = v108;
        self->_lastPose.var0.__val_.lightEstimate = v109;
        v114 = *(pose + 4);
        v115 = *(pose + 5);
        v116 = *(pose + 7);
        *&self->_anon_3b8[40] = *(pose + 6);
        *&self->_anon_3b8[56] = v116;
        *&self->_anon_3b8[8] = v114;
        *&self->_anon_3b8[24] = v115;
        self->_anon_3b8[72] = 1;
      }
    }

    else
    {
      numberOfVIOResets = self->_numberOfVIOResets;
      v22 = __CFADD__(numberOfVIOResets, 1);
      v23 = numberOfVIOResets + 1;
      if (v22)
      {
        v23 = 1;
      }

      self->_numberOfVIOResets = v23;
      [(NIServerAnalyticsManager *)self _onVIOReset];
      self->_lastPoseHadNormalTrackingState = 0;
      self->_maxYCoordinateFindee = -1.79769313e308;
      self->_minYCoordinateFindee = 1.79769313e308;
    }
  }
}

- (void)_updateUserMovedDistanceWithPose:(const void *)pose lastPoseInfo:(void *)info
{
  if (*(info + 128) == 1 && *(info + 272) == 1)
  {
    v4 = *(pose + 4);
    v5 = vsubq_f32(*(info + 4), v4);
    v6 = vmulq_f32(v5, v5);
    v7 = vsubq_f32(*(info + 13), v4);
    v8 = vmulq_f32(v7, v7);
    v9 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v6, v6, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v6.i8), vzip2_s32(*v8.i8, *v6.i8))));
    *v8.i8 = vcgt_f32(v9, 0x3F0000003F000000);
    if (v8.i32[1] & v8.i32[0])
    {
      *(info + 36) = *(info + 36) + v9.f32[1];
      v10 = *(info + 3);
      *(info + 11) = *(info + 2);
      *(info + 12) = v10;
      *(info + 272) = *(info + 128);
      v11 = *(info + 7);
      *(info + 15) = *(info + 6);
      *(info + 16) = v11;
      v12 = *(info + 5);
      *(info + 13) = *(info + 4);
      *(info + 14) = v12;
      v13 = *(info + 1);
      *(info + 9) = *info;
      *(info + 10) = v13;
      v14 = *pose;
      v15 = *(pose + 1);
      v16 = *(pose + 3);
      *(info + 2) = *(pose + 2);
      *(info + 3) = v16;
      *info = v14;
      *(info + 1) = v15;
      v17 = *(pose + 4);
      v18 = *(pose + 5);
      v19 = *(pose + 6);
      *(info + 14) = *(pose + 14);
      *(info + 5) = v18;
      *(info + 6) = v19;
      *(info + 4) = v17;
    }
  }
}

- (void)updateWithFinderPeerData:(const void *)data
{
  if (self->_sessionType != 4)
  {
    return;
  }

  v5 = sub_100005288();
  if (self->_timeAtFirstPeerData == -1.0)
  {
    self->_timeAtFirstPeerData = v5;
    if (*(data + 72) == 1)
    {
      self->_lastDisplacementSourceFindee.var0.__val_ = *(data + 10);
      self->_lastDisplacementSourceFindee.__engaged_ = 1;
    }
  }

  if (*(data + 72) == 1)
  {
    v6 = *(data + 10);
    if (self->_timeAtFirstPDRFromFindeeData == -1.0 && v6 == 1)
    {
      p_timeAtFirstPDRFromFindeeData = &self->_timeAtFirstPDRFromFindeeData;
    }

    else
    {
      if (self->_timeAtFirstVIOFromFindeeData != -1.0 || v6 != 0)
      {
        goto LABEL_19;
      }

      p_timeAtFirstPDRFromFindeeData = &self->_timeAtFirstVIOFromFindeeData;
    }

    *p_timeAtFirstPDRFromFindeeData = v5;
LABEL_19:
    if (self->_lastDisplacementSourceFindee.__engaged_ && self->_lastDisplacementSourceFindee.var0.__val_ == v6)
    {
      minYCoordinateFindee = *(data + 8);
      maxYCoordinateFindee = self->_maxYCoordinateFindee;
      if (minYCoordinateFindee >= maxYCoordinateFindee)
      {
        maxYCoordinateFindee = *(data + 8);
      }

      self->_maxYCoordinateFindee = maxYCoordinateFindee;
      if (self->_minYCoordinateFindee < minYCoordinateFindee)
      {
        minYCoordinateFindee = self->_minYCoordinateFindee;
      }

      self->_minYCoordinateFindee = minYCoordinateFindee;
      self->_didFindeeChangeFloor |= vabdd_f64(maxYCoordinateFindee, minYCoordinateFindee) > 2.5;
      if ((*(data + 72) & 1) == 0)
      {
        sub_1000195BC();
      }
    }

    else
    {
      self->_maxYCoordinateFindee = -1.79769313e308;
      self->_minYCoordinateFindee = 1.79769313e308;
    }

    self->_lastDisplacementSourceFindee.var0.__val_ = v6;
    self->_lastDisplacementSourceFindee.__engaged_ = 1;
    goto LABEL_29;
  }

  self->_maxYCoordinateFindee = -1.79769313e308;
  self->_minYCoordinateFindee = 1.79769313e308;
LABEL_29:
  if (*(data + 112) == 1 && self->_timeAtFirstDeltaVelocityFromFindeeData == -1.0)
  {
    self->_timeAtFirstDeltaVelocityFromFindeeData = v5;
  }

  if (*(data + 16) == 1 && !*(data + 2) && self->_timeAtFirstStaticFromFindeeData == -1.0)
  {
    self->_timeAtFirstStaticFromFindeeData = v5;
  }

  if (*(data + 160) == 1)
  {
    if (self->_timeAtFirstPeerLocationFromFindeeData == -1.0)
    {
      self->_timeAtFirstPeerLocationFromFindeeData = v5;
    }

    if (self->_timeAtFirstPeerLocation == -1.0)
    {
      self->_timeAtFirstPeerLocation = v5;
    }
  }

  numberOfPeerDataFinder = self->_numberOfPeerDataFinder;
  v13 = __CFADD__(numberOfPeerDataFinder, 1);
  v14 = numberOfPeerDataFinder + 1;
  if (v13)
  {
    v14 = 1;
  }

  self->_numberOfPeerDataFinder = v14;
}

- (void)updateWithSolution:(const void *)solution
{
  if ((self->_sessionType & 0xFFFFFFFE) == 4)
  {
    v5 = sub_100005288();
    if (*(solution + 408) == 1 && self->_lastSolutionTime.__engaged_)
    {
      v6 = *(solution + 101);
      if (v6 <= 5)
      {
        *(&self->super.isa + qword_1005497F0[v6]) = v5 - self->_lastSolutionTime.var0.__val_ + *(&self->super.isa + qword_1005497F0[v6]);
      }
    }

    if (self->_timeAtFirstPose != -1.0)
    {
      if (self->_lastSolutionHadArrow && (*(solution + 256) & 1) == 0 && self->_timeAtArmsLength == -1.0)
      {
        numberOfArrowRevokes = self->_numberOfArrowRevokes;
        v8 = __CFADD__(numberOfArrowRevokes, 1);
        v9 = numberOfArrowRevokes + 1;
        if (v8)
        {
          v9 = 1;
        }

        self->_numberOfArrowRevokes = v9;
      }

      self->_lastSolutionHadDriftingVIO = *(solution + 428);
      if (*(solution + 256) == 1)
      {
        self->_lastSolutionHadArrow = 1;
        timeAtFirstArrow = self->_timeAtFirstArrow;
        if (timeAtFirstArrow == -1.0)
        {
          self->_timeAtFirstArrow = v5;
          if (*(solution + 416))
          {
            v11 = *(solution + 103);
          }

          else
          {
            v11 = 0;
          }

          self->_firstArrowAlgorithmSource = v11;
          if (*(solution + 240) == 1)
          {
            v12 = *(solution + 6);
            if (v12 != 1.1755e-38)
            {
              self->_rangeAtFirstArrow = v12;
            }
          }

          timeAtFirstArrow = v5;
          if (self->_timeAtFirstValidPose != -1.0)
          {
            v13 = *&self->_anon_3b8[8];
            *&self->_anon_448[24] = *&self->_anon_3b8[24];
            v14 = *&self->_anon_3b8[56];
            *&self->_anon_448[40] = *&self->_anon_3b8[40];
            *&self->_anon_448[56] = v14;
            v15 = *&self->_lastPose.var0.__null_state_;
            self->_firstArrowPose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
            v16 = *&self->_lastPose.__engaged_;
            *&self->_firstArrowPose.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
            *&self->_firstArrowPose.__engaged_ = v16;
            *&self->_anon_448[8] = v13;
            v17 = self->_anon_3b8[72];
            *&self->_firstArrowPose.var0.__null_state_ = v15;
            timeAtFirstArrow = v5;
            self->_anon_448[72] = v17;
          }
        }

        if (timeAtFirstArrow != -1.0 && self->_timeAtArmsLength == -1.0)
        {
          numberOfArrowAvailabilityAfterFirstArrow = self->_numberOfArrowAvailabilityAfterFirstArrow;
          v8 = __CFADD__(numberOfArrowAvailabilityAfterFirstArrow, 1);
          v19 = numberOfArrowAvailabilityAfterFirstArrow + 1;
          if (v8)
          {
            v19 = 1;
          }

          self->_numberOfArrowAvailabilityAfterFirstArrow = v19;
        }
      }

      else
      {
        self->_lastSolutionHadArrow = 0;
      }

      if (*(solution + 240) == 1 && *(solution + 6) != 1.1755e-38)
      {
        if (self->_timeAtFirstOutputRange == -1.0)
        {
          self->_timeAtFirstOutputRange = v5;
          v20 = *(solution + 416) ? *(solution + 103) : 0;
          self->_firstOutputRangeAlgorithmSource = v20;
          if (self->_timeAtFirstValidPose != -1.0)
          {
            v21 = *&self->_anon_3b8[24];
            *&self->_anon_568[8] = *&self->_anon_3b8[8];
            v22 = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
            *&self->_firstOutputRangePose.__engaged_ = *&self->_lastPose.__engaged_;
            *&self->_firstOutputRangePose.var0.__val_.source.var0.__null_state_ = v22;
            v23 = *&self->_lastPose.var0.__null_state_;
            self->_firstOutputRangePose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
            v24 = *&self->_anon_3b8[40];
            *&self->_anon_568[56] = *&self->_anon_3b8[56];
            *&self->_anon_568[40] = v24;
            *&self->_anon_568[24] = v21;
            self->_anon_568[72] = self->_anon_3b8[72];
            *&self->_firstOutputRangePose.var0.__null_state_ = v23;
            if ((*(solution + 240) & 1) == 0)
            {
              sub_1000195BC();
            }
          }
        }

        v25 = *(solution + 6);
        if (self->_firstOutputDistance == -1.0)
        {
          self->_firstOutputDistance = v25;
          minOutputDistance = v25;
          maxOutputDistance = v25;
        }

        else
        {
          maxOutputDistance = self->_maxOutputDistance;
          minOutputDistance = self->_minOutputDistance;
        }

        self->_lastOutputDistance = v25;
        if (maxOutputDistance <= v25)
        {
          maxOutputDistance = v25;
        }

        self->_maxOutputDistance = maxOutputDistance;
        if (minOutputDistance >= v25)
        {
          minOutputDistance = v25;
        }

        self->_minOutputDistance = minOutputDistance;
        if (self->_timeAtArmsLength == -1.0 && self->_armsLengthDistance >= v25)
        {
          self->_timeAtArmsLength = v5;
          v28 = *(solution + 416) ? *(solution + 103) : 0;
          self->_armsReachAlgorithmSource = v28;
          if (self->_timeAtFirstValidPose != -1.0)
          {
            v29 = *&self->_anon_3b8[8];
            *&self->_anon_4d8[24] = *&self->_anon_3b8[24];
            v30 = *&self->_anon_3b8[56];
            *&self->_anon_4d8[40] = *&self->_anon_3b8[40];
            *&self->_anon_4d8[56] = v30;
            v31 = *&self->_lastPose.var0.__null_state_;
            self->_armsReachPose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
            v32 = *&self->_lastPose.__engaged_;
            *&self->_armsReachPose.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
            *&self->_armsReachPose.__engaged_ = v32;
            *&self->_anon_4d8[8] = v29;
            self->_anon_4d8[72] = self->_anon_3b8[72];
            *&self->_armsReachPose.var0.__null_state_ = v31;
          }
        }
      }

      if (self->_timeAtFirstArrow != -1.0 && self->_timeAtArmsLength == -1.0)
      {
        numberOfSolutions = self->_numberOfSolutions;
        v8 = __CFADD__(numberOfSolutions, 1);
        v34 = numberOfSolutions + 1;
        if (v8)
        {
          v34 = 1;
        }

        self->_numberOfSolutions = v34;
      }
    }

    self->_lastSolutionTime.var0.__val_ = v5;
    self->_lastSolutionTime.__engaged_ = 1;
  }
}

- (void)updateWithPeerLocationFromFMF
{
  if (self->_sessionType == 4)
  {
    v3 = sub_100005288();
    if (self->_timeAtFirstPeerLocation == -1.0)
    {
      self->_timeAtFirstPeerLocation = v3;
    }

    if (self->_timeAtFirstPeerLocationFromFMF == -1.0)
    {
      self->_timeAtFirstPeerLocationFromFMF = v3;
    }
  }
}

- (void)nearbyObjectUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v14 = 138412546;
    v15 = bundleIdentifier;
    v16 = 2112;
    v17 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] nearbyObjectUpdated: %@", &v14, 0x16u);
  }

  [updatedCopy distance];
  if (v7 == NINearbyObjectDistanceNotAvailable)
  {
    v8 = qword_1009ECD20;
    if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      v9 = self->_bundleIdentifier;
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#ni-ca,[%@] nearby object does not contain distance", &v14, 0xCu);
    }
  }

  else
  {
    [updatedCopy distance];
    v11 = v10;
    if (self->_receivedDistance)
    {
      maxDistance = self->_maxDistance;
      minDistance = self->_minDistance;
      if (maxDistance <= v11)
      {
        maxDistance = v11;
      }

      self->_lastDistance = v11;
      self->_maxDistance = maxDistance;
      if (minDistance < v11)
      {
        v11 = minDistance;
      }

      self->_minDistance = v11;
    }

    else
    {
      self->_firstDistance = v11;
      self->_lastDistance = v11;
      self->_maxDistance = v11;
      self->_minDistance = v11;
      self->_receivedDistance = 1;
    }
  }
}

- (void)lifecycleTimeoutBeforeTrackingForDiscoveryToken:(id)token
{
  tokenCopy = token;
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = 138412546;
    v9 = bundleIdentifier;
    v10 = 2112;
    v11 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] lifecycleTimeoutBeforeTrackingForDiscoveryToken: %@", &v8, 0x16u);
  }

  lifecycleTimeoutType = self->_lifecycleTimeoutType;
  self->_lifecycleTimeoutType = @"Before Tracking";
}

- (void)lifecycleTimeoutAfterTrackingForDiscoveryToken:(id)token
{
  tokenCopy = token;
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = 138412546;
    v9 = bundleIdentifier;
    v10 = 2112;
    v11 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] lifecycleTimeoutAfterTrackingForDiscoveryToken: %@", &v8, 0x16u);
  }

  lifecycleTimeoutType = self->_lifecycleTimeoutType;
  self->_lifecycleTimeoutType = @"After Tracking";
}

- (void)updateFindButtonTime:(double)time
{
  if (self->_timeAtFindButton == -1.0)
  {
    self->_timeAtFindButton = time;
  }
}

- (void)sessionConnectedToAccessoryWithTimestamp:(double)timestamp
{
  if (self->_timeAtConnect == -1.0)
  {
    self->_timeAtConnect = timestamp;
    if (self->_timeAtFirstValidPose != -1.0)
    {
      v3 = *&self->_anon_3b8[8];
      *&self->_anon_688[24] = *&self->_anon_3b8[24];
      v4 = *&self->_anon_3b8[56];
      *&self->_anon_688[40] = *&self->_anon_3b8[40];
      *&self->_anon_688[56] = v4;
      v5 = *&self->_lastPose.var0.__null_state_;
      self->_firstBTConnectionPose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
      v6 = *&self->_lastPose.__engaged_;
      *&self->_firstBTConnectionPose.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
      *&self->_firstBTConnectionPose.__engaged_ = v6;
      *&self->_anon_688[8] = v3;
      self->_anon_688[72] = self->_anon_3b8[72];
      *&self->_firstBTConnectionPose.var0.__null_state_ = v5;
    }
  }
}

- (void)sessionConfiguredAccessoryWithTimestamp:(double)timestamp
{
  if (self->_timeAtConfigure == -1.0)
  {
    self->_timeAtConfigure = timestamp;
  }
}

- (void)sessionConfiguredAccessoryWithTimestamp:(double)timestamp withTxPower:(int)power
{
  if (self->_timeAtConfigure == -1.0)
  {
    self->_timeAtConfigure = timestamp;
    self->_itemBtTxPower.var0.__val_ = power;
    self->_itemBtTxPower.__engaged_ = 1;
  }
}

- (void)updateWithRangingMode:(int)mode
{
  if (self->_rangingMode == -1)
  {
    self->_rangingMode = mode;
  }
}

- (void)updateWithBTRSSIMeasurementWithTimestamp:(double)timestamp withRssi:(double)rssi
{
  if (self->_timeAtFirstBtRssiMeasurement == -1.0)
  {
    self->_timeAtFirstBtRssiMeasurement = timestamp;
    self->_firstBtRssi = rssi;
  }

  self->_lastBtRssi = rssi;
}

- (void)updateWithNewRegion:(id)region withTimestamp:(double)timestamp
{
  regionCopy = region;
  v7 = regionCopy;
  lastRegion = self->_lastRegion;
  if (regionCopy && !lastRegion)
  {
    ++self->_numberOfRegionFoundEvents;
LABEL_8:
    if ([(NIRegionPredicate *)regionCopy devicePresencePreset]== 1 && self->_timeAtArmsLength == -1.0)
    {
      self->_timeAtArmsLength = timestamp;
    }

    goto LABEL_11;
  }

  if (!regionCopy && lastRegion)
  {
    ++self->_numberOfRegionRevokes;
    goto LABEL_11;
  }

  if (regionCopy)
  {
    goto LABEL_8;
  }

LABEL_11:
  v9 = self->_lastRegion;
  self->_lastRegion = v7;
}

- (void)_updateMinMaxRangeAndRSSI:(double)i uwbRSSI:(double)sI nbRSSI:(optional<double>)sSI
{
  if (self->_firstDistance_finding == -1.0)
  {
    self->_firstDistance_finding = i;
    self->_firstUWBRSSI = sI;
  }

  lastNBRSSI = self->_lastNBRSSI;
  v6 = lastNBRSSI != 0.0 && sSI.__engaged_;
  if (lastNBRSSI == 0.0 && sSI.__engaged_)
  {
    self->_firstNBRSSI = sSI.var0.__val_;
    self->_lastNBRSSI = sSI.var0.__val_;
    v6 = 1;
  }

  self->_lastDistance_finding = i;
  maxDistance_finding = self->_maxDistance_finding;
  if (maxDistance_finding <= i)
  {
    maxDistance_finding = i;
  }

  self->_maxDistance_finding = maxDistance_finding;
  minUWBRSSI = self->_minUWBRSSI;
  if (minUWBRSSI >= sI)
  {
    minUWBRSSI = sI;
  }

  self->_minUWBRSSI = minUWBRSSI;
  v9 = *&self->_maxUWBRSSI;
  v10.f64[0] = self->_maxUWBRSSI;
  v10.f64[1] = i;
  v11.f64[1] = self->_minDistance_finding;
  v11.f64[0] = sI;
  self->_lastUWBRSSI = sI;
  v12 = vcgtq_f64(v10, v11);
  v10.f64[0] = sI;
  *&self->_maxUWBRSSI = vbslq_s8(v12, v9, v10);
  if (v6)
  {
    val = sSI.var0.__val_;
    self->_lastNBRSSI = sSI.var0.__val_;
    minNBRSSI = self->_minNBRSSI;
    if (minNBRSSI >= sSI.var0.__val_)
    {
      minNBRSSI = sSI.var0.__val_;
    }

    self->_minNBRSSI = minNBRSSI;
    if (self->_maxNBRSSI > sSI.var0.__val_)
    {
      val = self->_maxNBRSSI;
    }

    self->_maxNBRSSI = val;
  }
}

- (double)_finderTimeFromFirstPoseTo:(double)to
{
  v3 = -1.0;
  if (to != -1.0)
  {
    timeAtFirstPose = self->_timeAtFirstPose;
    if (timeAtFirstPose != -1.0)
    {
      return to - timeAtFirstPose;
    }
  }

  return v3;
}

- (id)_algorithmSourceToString:(int)string
{
  if (string > 7)
  {
    return @"None";
  }

  else
  {
    return off_10098B5F0[string];
  }
}

- (void)_calculateStraightLineDistance
{
  if (self->_anon_328[72] == 1)
  {
    v4 = *&self->_anon_328[8];
    if (self->_anon_448[72] == 1)
    {
      v5 = vsubq_f32(v4, *&self->_anon_448[8]);
      v6 = vmulq_f32(v5, v5);
      self->_firstArrowStraightLineDistance = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
    }

    if (self->_anon_568[72] == 1)
    {
      v7 = vsubq_f32(v4, *&self->_anon_568[8]);
      v8 = vmulq_f32(v7, v7);
      self->_firstOutputRangeStraightLineDistance = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    }

    if (self->_anon_4d8[72] == 1)
    {
      v9 = vsubq_f32(v4, *&self->_anon_4d8[8]);
      v10 = vmulq_f32(v9, v9);
      self->_armsReachStraightLineDistance = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
    }

    if (self->_anon_3b8[72] == 1)
    {
      v11 = vsubq_f32(*&self->_firstPose.__engaged_, *&self->_lastPose.__engaged_);
      self->_radialDisplacementFromVIO = sqrtf(vaddv_f32(*&vmulq_f32(v11, v11)));
    }

    if (self->_anon_688[72] == 1 && self->_anon_5f8[72] == 1)
    {
      v12 = vsubq_f32(*&self->_anon_688[8], *&self->_anon_5f8[8]);
      v13 = vmulq_f32(v12, v12);
      self->_straightLineDistanceFromConnectToFirstRange = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
    }
  }

  else
  {
    v16 = v2;
    v17 = v3;
    v14 = qword_1009ECD20;
    if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#ni-ca,Unable to calculate straight line distance between finder and findee (first pose doesn't have value)", v15, 2u);
    }
  }
}

- (void)_onVIOReset
{
  if (self->_anon_778[152] == 1)
  {
    self->_anon_778[152] = 0;
  }

  if (self->_anon_778[8] == 1)
  {
    self->_anon_778[8] = 0;
  }

  if (self->_anon_8a8[152] == 1)
  {
    self->_anon_8a8[152] = 0;
  }

  if (self->_anon_8a8[8] == 1)
  {
    self->_anon_8a8[8] = 0;
  }

  *&self->_anon_778[168] = 0xBFF0000000000000;
  if (self->_anon_9d8[152] == 1)
  {
    self->_anon_9d8[152] = 0;
  }

  if (self->_anon_9d8[8] == 1)
  {
    self->_anon_9d8[8] = 0;
  }

  *&self->_anon_9d8[168] = 0xBFF0000000000000;
  if (self->_anon_b08[152] == 1)
  {
    self->_anon_b08[152] = 0;
  }

  if (self->_anon_b08[8] == 1)
  {
    self->_anon_b08[8] = 0;
  }

  *&self->_anon_b08[168] = 0xBFF0000000000000;
  if (self->_anon_448[72] == 1)
  {
    self->_anon_448[72] = 0;
  }

  if (self->_anon_5f8[72] == 1)
  {
    self->_anon_5f8[72] = 0;
  }

  if (self->_anon_568[72] == 1)
  {
    self->_anon_568[72] = 0;
  }

  if (self->_anon_4d8[72] == 1)
  {
    self->_anon_4d8[72] = 0;
  }

  if (self->_anon_328[72] == 1)
  {
    self->_anon_328[72] = 0;
  }

  if (self->_anon_688[72] == 1)
  {
    self->_anon_688[72] = 0;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_firstArrowStraightLineDistance = _Q0;
  self->_radialDisplacementFromVIO = -1.0;
  *&self->_firstOutputRangeStraightLineDistance = _Q0;
  *self->_integratedPDRVIOFrame = 0u;
  self->_vioPathLength = 0.0;
}

- (double)_deltaDistanceFromVIOPoses:(optional<nearby:(optional<nearby::algorithms::common::Pose> *)poses :algorithms::common::Pose> *)a3 :
{
  result = 0.0;
  if (a3[2].var0.__val_.lightEstimate.var0.__null_state_ == 1 && poses[2].var0.__val_.lightEstimate.var0.__null_state_ == 1)
  {
    v5 = vsubq_f32(*&poses[1].var0.__val_.trackingState, *&a3[1].var0.__val_.trackingState);
    v6 = vmulq_f32(v5, v5);
    return sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  }

  return result;
}

- (BOOL)_isSemiStaticFromVIO:(optional<nearby:(optional<nearby:(double)o :algorithms::common::Pose> *)a4 :algorithms::common::Pose> *)a3 ::
{
  result = 0;
  if (a3[2].var0.__val_.lightEstimate.var0.__null_state_ == 1 && a4[2].var0.__val_.lightEstimate.var0.__null_state_ == 1)
  {
    v6 = *&a3[2].var0.__null_state_;
    v17[6] = *&a3[1].var0.__val_.odometryAvailability.var0.__null_state_;
    v17[7] = v6;
    v17[8] = a3[2].var0.__val_.lightEstimate;
    v7 = *&a3->__engaged_;
    v17[2] = *&a3->var0.__val_.source.var0.__null_state_;
    v17[3] = v7;
    v8 = *&a3[1].var0.__val_.lightEstimate.__engaged_;
    v17[4] = *&a3[1].var0.__val_.trackingState;
    v17[5] = v8;
    lightEstimate = a3->var0.__val_.lightEstimate;
    v17[0] = *&a3->var0.__null_state_;
    v17[1] = lightEstimate;
    v10 = *&a4[2].var0.__null_state_;
    v16[6] = *&a4[1].var0.__val_.odometryAvailability.var0.__null_state_;
    v16[7] = v10;
    v16[8] = a4[2].var0.__val_.lightEstimate;
    v11 = *&a4->__engaged_;
    v16[2] = *&a4->var0.__val_.source.var0.__null_state_;
    v16[3] = v11;
    v12 = *&a4[1].var0.__val_.lightEstimate.__engaged_;
    v16[4] = *&a4[1].var0.__val_.trackingState;
    v16[5] = v12;
    v13 = a4->var0.__val_.lightEstimate;
    v16[0] = *&a4->var0.__null_state_;
    v16[1] = v13;
    [(NIServerAnalyticsManager *)self _deltaDistanceFromVIOPoses:v17];
    if (v14 / o < 0.15)
    {
      return 1;
    }
  }

  return result;
}

- (void)_calculateIOMetrics:(double)metrics
{
  vioPathLengthWhenPDRIsAvailable = self->_vioPathLengthWhenPDRIsAvailable;
  if (vioPathLengthWhenPDRIsAvailable > 0.0)
  {
    self->_pathLengthError = (self->_pdrPathLengthWhenVIOAvailable - vioPathLengthWhenPDRIsAvailable) / vioPathLengthWhenPDRIsAvailable;
  }

  timePDRAndVIOWasAvailable = self->_timePDRAndVIOWasAvailable;
  if (timePDRAndVIOWasAvailable <= 0.0)
  {
    timeSSFromVIO = self->_timeSSFromVIO;
  }

  else
  {
    self->_meanSpeedFromVIO = vioPathLengthWhenPDRIsAvailable / timePDRAndVIOWasAvailable;
    self->_meanSpeedFromVIOError = (self->_pdrPathLengthWhenVIOAvailable - vioPathLengthWhenPDRIsAvailable) / timePDRAndVIOWasAvailable;
    timeSSFromVIO = self->_timeSSFromVIO;
    self->_percentTimeSSFromVIO = timeSSFromVIO / timePDRAndVIOWasAvailable;
  }

  if (timeSSFromVIO > 0.0)
  {
    self->_pdrSSDetectionTruePositiveRate = self->_timeSSFromIOAndSSFromVIO / timeSSFromVIO;
  }

  timeNotSSFromVIO = self->_timeNotSSFromVIO;
  if (timeNotSSFromVIO > 0.0)
  {
    self->_pdrSSDetectionFalsePositiveRate = self->_timeSSFromIOAndNotSSFromVIO / timeNotSSFromVIO;
  }

  numberOfPDRUpdates = self->_numberOfPDRUpdates;
  if (numberOfPDRUpdates > 2.0)
  {
    self->_stdSpeedFromVIO = self->_m2 / numberOfPDRUpdates;
  }
}

- (VectorAggregateErrors)_calculateErrorStatsFromVector:(SEL)vector
{
  if (a4->__end_ == a4->__begin_)
  {
    sub_10049D010();
  }

  result = std::__sort<std::__less<float,float> &,float *>();
  begin = a4->__begin_;
  end = a4->__end_;
  v9 = end - a4->__begin_;
  v10 = v9 >> 2;
  v11 = &a4->__begin_[v9 >> 3];
  if ((v9 & 4) != 0)
  {
    v12 = *v11;
  }

  else
  {
    v12 = (*(v11 - 1) + *v11) * 0.5;
  }

  v13 = begin[(v10 * 0.95)];
  if (begin == end)
  {
    v17 = 0.0 / v10;
    v18 = 0.0;
  }

  else
  {
    v14 = 0.0;
    v15 = a4->__begin_;
    do
    {
      v16 = *v15++;
      v14 = v14 + v16;
    }

    while (v15 != end);
    v17 = v14 / v10;
    v18 = 0.0;
    do
    {
      v19 = *begin++;
      v18 = v18 + (v19 * v19);
    }

    while (begin != end);
  }

  retstr->var0 = v17;
  retstr->var1 = sqrt(v18 / v10 - (v17 * v17));
  retstr->var2 = v12;
  retstr->var3 = v13;
  retstr->var4 = v10;
  return result;
}

- (void)_calculatePoseSplicingMetrics
{
  std::__sort<std::__less<float,float> &,float *>();
  end = self->_angleErrorHistory.__end_;
  begin = self->_angleErrorHistory.__begin_;
  v5 = end - begin;
  v6 = &begin[(end - begin) >> 3];
  if (((end - begin) & 4) != 0)
  {
    v7 = *v6;
  }

  else
  {
    v7 = (*(v6 - 1) + *v6) * 0.5;
  }

  if (begin == end)
  {
    v11 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v8 = 0.0;
    v9 = self->_angleErrorHistory.__begin_;
    do
    {
      v10 = *v9++;
      v8 = v8 + v10;
    }

    while (v9 != end);
    v11 = 0.0;
    v12 = self->_angleErrorHistory.__begin_;
    do
    {
      v13 = *v12++;
      v11 = v11 + (v13 * v13);
    }

    while (v12 != end);
  }

  v14 = begin[(v5 * 0.95)];
  v15 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v8 / v5;
    v17 = 134218752;
    v18 = v16;
    v19 = 2048;
    v20 = sqrt(v11 / v5 - (v16 * v16));
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ni-ca,DoT error, mean: %f, std: %f, median: %f, 95th: %f", &v17, 0x2Au);
  }
}

- (void)_submitFindingSessionEndStats
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithDouble:self->_firstDistance_finding];
  [v3 setObject:v4 forKey:@"FirstDistance"];

  v5 = [NSNumber numberWithDouble:self->_lastDistance_finding];
  [v3 setObject:v5 forKey:@"LastDistance"];

  v6 = [NSNumber numberWithDouble:self->_firstNBRSSI];
  [v3 setObject:v6 forKey:@"FirstNBRSSI"];

  v7 = [NSNumber numberWithDouble:self->_lastNBRSSI];
  [v3 setObject:v7 forKey:@"LastNBRSSI"];

  v8 = [NSNumber numberWithDouble:self->_minNBRSSI];
  [v3 setObject:v8 forKey:@"MinNBRSSI"];

  v9 = [NSNumber numberWithDouble:self->_maxNBRSSI];
  [v3 setObject:v9 forKey:@"MaxNBRSSI"];

  v10 = [NSNumber numberWithDouble:self->_firstUWBRSSI];
  [v3 setObject:v10 forKey:@"FirstUWBRSSI"];

  v11 = [NSNumber numberWithDouble:self->_lastUWBRSSI];
  [v3 setObject:v11 forKey:@"LastUWBRSSI"];

  v12 = [NSNumber numberWithDouble:self->_minUWBRSSI];
  [v3 setObject:v12 forKey:@"MinUWBRSSI"];

  v13 = [NSNumber numberWithDouble:self->_maxUWBRSSI];
  [v3 setObject:v13 forKey:@"MaxUWBRSSI"];

  if (self->_sessionType == 4)
  {
    [NSNumber numberWithInt:1];
  }

  else
  {
    [NSNumber numberWithInt:2];
  }
  v14 = ;
  [v3 setObject:v14 forKey:@"RangingRole"];

  v15 = [v3 mutableCopy];
  v16 = qword_1009ECD20;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v18 = [v15 description];
    *buf = 138412802;
    v21 = bundleIdentifier;
    v22 = 2112;
    v23 = @"com.apple.nearbyinteraction.findingsession.end";
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
  }

  v19 = v15;
  AnalyticsSendEventLazy();
}

- (void)_sessionStoppedWithTimestamp:(double)timestamp
{
  if (!self->_isRunning)
  {
    v24 = qword_1009ECD20;
    if (!os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      return;
    }

    bundleIdentifier = self->_bundleIdentifier;
    *buf = 138412290;
    *&buf[4] = bundleIdentifier;
    v26 = "#ni-ca,[%@] Session already stopped. Ignore duplicate call.";
    goto LABEL_21;
  }

  self->_isRunning = 0;
  runTimestamp = self->_runTimestamp;
  v6 = timestamp - self->_visibilityUpdateTimestamp;
  v7 = 80;
  if (self->_isVisible)
  {
    v7 = 72;
  }

  *(&self->super.isa + v7) = *(&self->super.isa + v7) + v6;
  timeAtFirstLocationUpdate = self->_timeAtFirstLocationUpdate;
  pdrTimeAtLastPDRUpdate = self->_pdrTimeAtLastPDRUpdate;
  pdrTimeAtFirstPDRUpdate = self->_pdrTimeAtFirstPDRUpdate;
  self->_timeToSessionEnd = timestamp - self->_timeAtFirstPeerData;
  std::mutex::lock(&stru_1009E9B50);
  --byte_1009ECD78;
  p_sessionType = &self->_sessionType;
  *buf = &self->_sessionType;
  v12 = sub_10004EFB0(&xmmword_1009ECD28, &self->_sessionType, &unk_100548C50, buf);
  --*(v12 + 20);
  if (self->_bundleIdentifier)
  {
    size = *(&self->_bundleIdAsStdString.__rep_.__l + 23);
    if ((size & 0x8000000000000000) != 0)
    {
      size = self->_bundleIdAsStdString.__rep_.__l.__size_;
    }

    if (!size)
    {
      __assert_rtn("[NIServerAnalyticsManager _sessionStoppedWithTimestamp:]", "NIServerAnalyticsManager.mm", 2339, "!_bundleIdAsStdString.empty()");
    }

    *buf = &self->_bundleIdAsStdString;
    v14 = sub_10004F1E4(&xmmword_1009ECD50, &self->_bundleIdAsStdString, &unk_100548C50, buf, &v401);
    --*(v14 + 40);
  }

  std::mutex::unlock(&stru_1009E9B50);
  if (!self->_bundleIdentifier)
  {
    v24 = qword_1009ECD20;
    if (!os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v27 = self->_bundleIdentifier;
    *buf = 138412290;
    *&buf[4] = v27;
    v26 = "#ni-ca,[%@] Not logging summary event without bundle identifier.";
    goto LABEL_21;
  }

  if (!*p_sessionType)
  {
    v24 = qword_1009ECD20;
    if (!os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v28 = self->_bundleIdentifier;
    *buf = 138412290;
    *&buf[4] = v28;
    v26 = "#ni-ca,[%@] Not logging summary event for unspecified session types.";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
    return;
  }

  v388 = objc_alloc_init(NSMutableDictionary);
  [v388 setObject:self->_bundleIdentifier forKey:@"appBundleID"];
  v15 = timestamp - runTimestamp;
  v16 = [NSNumber numberWithDouble:v15];
  [v388 setObject:v16 forKey:@"totalDuration"];

  v17 = [NSNumber numberWithDouble:self->_timeSpentNotVisible];
  [v388 setObject:v17 forKey:@"backgroundDuration"];

  [v388 setObject:&off_1009C3D88 forKey:@"sessionCount"];
  v18 = [NSNumber numberWithInt:LODWORD(self->_backgroundMode)];
  [v388 setObject:v18 forKey:@"configuredBackgroundMode"];

  [v388 setObject:self->_lifecycleTimeoutType forKey:@"lifecycleTimeout"];
  v19 = [NSNumber numberWithBool:self->_isCameraAssistanceEnabled];
  [v388 setObject:v19 forKey:@"isCameraAssistanceEnabled"];

  v20 = [NSNumber numberWithBool:self->_isExtendedDistanceMeasurementEnabled];
  [v388 setObject:v20 forKey:@"isExtendedDistanceMeasurementEnabled"];

  v21 = [NSNumber numberWithBool:self->_isLiveActivityEverActive];
  [v388 setObject:v21 forKey:@"isLiveActivityActive"];

  v22 = *p_sessionType;
  if (*p_sessionType > 3)
  {
    switch(v22)
    {
      case 4:
        v23 = @"Finder";
        break;
      case 5:
        v23 = @"ItemPrecisionFinding";
        break;
      case 6:
        v23 = @"ItemBTFinding";
        break;
      default:
        goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = @"Accessory";
    }

    else
    {
      v23 = @"Findee";
    }

    goto LABEL_31;
  }

  if (v22 == 1)
  {
    v23 = @"Peer";
LABEL_31:
    [v388 setObject:v23 forKey:@"configType"];
    goto LABEL_32;
  }

  if (!v22)
  {
    __assert_rtn("[NIServerAnalyticsManager _sessionStoppedWithTimestamp:]", "NIServerAnalyticsManager.mm", 2390, "false");
  }

LABEL_32:
  if (self->_hasAccessoryDataRate)
  {
    v29 = [NSNumber numberWithInt:self->_accessoryDataRate];
    [v388 setObject:v29 forKey:@"configuredAccessoryDataRate"];
  }

  if (self->_receivedDistance)
  {
    v30 = [NSNumber numberWithDouble:self->_firstDistance];
    [v388 setObject:v30 forKey:@"firstDistance"];

    v31 = [NSNumber numberWithDouble:self->_lastDistance];
    [v388 setObject:v31 forKey:@"lastDistance"];

    v32 = [NSNumber numberWithDouble:self->_minDistance];
    [v388 setObject:v32 forKey:@"minDistance"];

    v33 = [NSNumber numberWithDouble:self->_maxDistance];
    [v388 setObject:v33 forKey:@"maxDistance"];
  }

  v387 = [v388 mutableCopy];
  v34 = qword_1009ECD20;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = self->_bundleIdentifier;
    v36 = [v387 description];
    *buf = 138412802;
    *&buf[4] = v35;
    v420 = 2112;
    v421 = @"com.apple.nearbyinteraction.sessionV2.summary";
    v422 = 2112;
    v423 = *&v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
  }

  v414 = _NSConcreteStackBlock;
  v415 = 3221225472;
  v416 = sub_10004DE3C;
  v417 = &unk_10098AED8;
  v37 = v387;
  v418 = v37;
  AnalyticsSendEventLazy();
  if (!self->_isCameraAssistanceEnabled)
  {
    goto LABEL_49;
  }

  v38 = objc_alloc_init(NSMutableDictionary);
  [v38 setObject:self->_bundleIdentifier forKey:@"appBundleID"];
  v39 = *p_sessionType;
  if (*p_sessionType == 1)
  {
    v40 = @"Peer";
  }

  else
  {
    if (v39 != 2)
    {
      if (!v39)
      {
        __assert_rtn("[NIServerAnalyticsManager _sessionStoppedWithTimestamp:]", "NIServerAnalyticsManager.mm", 2435, "false");
      }

      goto LABEL_46;
    }

    v40 = @"Accessory";
  }

  [v38 setObject:v40 forKey:@"configType"];
LABEL_46:
  v41 = [NSNumber numberWithDouble:self->_distanceMovedToHorizontalConvergence];
  [v38 setObject:v41 forKey:@"DistanceMovedToHorizontalConvergence"];

  v42 = [NSNumber numberWithDouble:self->_distanceMovedToVerticalConvergence];
  [v38 setObject:v42 forKey:@"DistanceMovedToVerticalConvergence"];

  v43 = [NSNumber numberWithInt:self->_numberOfInvalidPose];
  [v38 setObject:v43 forKey:@"NumberOfInvalidPoseEvents"];

  v44 = [NSNumber numberWithInt:self->_numberOfLostVerticalConvergence];
  [v38 setObject:v44 forKey:@"NumberOfLostConvergence"];

  v45 = [NSNumber numberWithInt:self->_numberOfLostHorizontalConvergence];
  [v38 setObject:v45 forKey:@"NumberOfLostHorizontalConvergence"];

  v46 = [NSNumber numberWithDouble:self->_rangeAtHorizontalConvergence];
  [v38 setObject:v46 forKey:@"RangeAtHorizontalConvergence"];

  v47 = [NSNumber numberWithDouble:self->_rangeAtVerticalConvergence];
  [v38 setObject:v47 forKey:@"RangeAtVerticalConvergence"];

  v48 = [NSNumber numberWithDouble:self->_timeToHorizontalConvergence];
  [v38 setObject:v48 forKey:@"TimeToHorizontalConvergence"];

  v49 = [NSNumber numberWithDouble:self->_timeToVerticalConvergence];
  [v38 setObject:v49 forKey:@"TimeToVerticalConvergence"];

  v50 = [NSNumber numberWithDouble:self->_totalDistanceMoved];
  [v38 setObject:v50 forKey:@"TotalDistanceMoved"];

  v51 = [v38 mutableCopy];
  v52 = qword_1009ECD20;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = v37;
    v54 = self->_bundleIdentifier;
    v55 = [v51 description];
    *buf = 138412802;
    *&buf[4] = v54;
    v420 = 2112;
    v421 = @"com.apple.nearbyinteraction.camereEnabledSession.summary";
    v422 = 2112;
    v423 = *&v55;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);

    v37 = v53;
    p_sessionType = &self->_sessionType;
  }

  v409 = _NSConcreteStackBlock;
  v410 = 3221225472;
  v411 = sub_10004DE44;
  v412 = &unk_10098AED8;
  v56 = v51;
  v413 = v56;
  AnalyticsSendEventLazy();

LABEL_49:
  v57 = *p_sessionType;
  if (*p_sessionType == 3)
  {
    if (self->_numberOfPeerData == -1)
    {
      v58 = qword_1009ECD20;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "#ni-ca,Dummy findee CA event", buf, 2u);
      }
    }

    else
    {
      [(NIServerAnalyticsManager *)self _submitFindingSessionEndStats];
      v58 = objc_alloc_init(NSMutableDictionary);
      [v58 setObject:self->_bundleIdentifier forKey:@"appBundleID"];
      numberOfBoundedDisplacementFromPeerData = self->_numberOfBoundedDisplacementFromPeerData;
      v60 = 0.0;
      if (numberOfBoundedDisplacementFromPeerData != -1)
      {
        numberOfPeerData = self->_numberOfPeerData;
        if (numberOfPeerData)
        {
          v60 = (numberOfBoundedDisplacementFromPeerData / numberOfPeerData);
        }
      }

      v62 = [NSNumber numberWithDouble:v60];
      [v58 setObject:v62 forKey:@"SessionWithBoundedDisplacement_percentage"];

      numberOfPDRFromPeerData = self->_numberOfPDRFromPeerData;
      v64 = 0.0;
      if (numberOfPDRFromPeerData != -1)
      {
        v65 = self->_numberOfPeerData;
        if (v65)
        {
          v64 = (numberOfPDRFromPeerData / v65);
        }
      }

      v66 = [NSNumber numberWithDouble:v64];
      [v58 setObject:v66 forKey:@"SessionWithDeltaPositionPDR_percentage"];

      numberOfVIOFromPeerData = self->_numberOfVIOFromPeerData;
      v68 = 0.0;
      if (numberOfVIOFromPeerData != -1)
      {
        v69 = self->_numberOfPeerData;
        if (v69)
        {
          v68 = (numberOfVIOFromPeerData / v69);
        }
      }

      v70 = [NSNumber numberWithDouble:v68];
      [v58 setObject:v70 forKey:@"SessionWithVIO_percentage"];

      numberOfDeltaVelocityFromPeerData = self->_numberOfDeltaVelocityFromPeerData;
      v72 = 0.0;
      if (numberOfDeltaVelocityFromPeerData != -1)
      {
        v73 = self->_numberOfPeerData;
        if (v73)
        {
          v72 = (numberOfDeltaVelocityFromPeerData / v73);
        }
      }

      v74 = [NSNumber numberWithDouble:v72];
      [v58 setObject:v74 forKey:@"SessionWithDeltaVelocity_percentage"];

      numberOfLocationFromPeerData = self->_numberOfLocationFromPeerData;
      v76 = 0.0;
      if (numberOfLocationFromPeerData != -1)
      {
        v77 = self->_numberOfPeerData;
        if (v77)
        {
          v76 = (numberOfLocationFromPeerData / v77);
        }
      }

      v78 = [NSNumber numberWithDouble:v76];
      [v58 setObject:v78 forKey:@"SessionWithLocation_percentage"];

      numberOfStatic = self->_numberOfStatic;
      v80 = 0.0;
      if (numberOfStatic != -1)
      {
        v81 = self->_numberOfBoundedDisplacementFromPeerData;
        if (v81)
        {
          v80 = (numberOfStatic / v81);
        }
      }

      v82 = [NSNumber numberWithDouble:v80];
      [v58 setObject:v82 forKey:@"Findee_Static_percentage"];

      numberOfSlowlyMoving = self->_numberOfSlowlyMoving;
      v84 = 0.0;
      if (numberOfSlowlyMoving != -1)
      {
        v85 = self->_numberOfBoundedDisplacementFromPeerData;
        if (v85)
        {
          v84 = (numberOfSlowlyMoving / v85);
        }
      }

      v86 = [NSNumber numberWithDouble:v84];
      [v58 setObject:v86 forKey:@"Findee_SlowlyMoving_percentage"];

      numberOfWalkingOrkUnknown = self->_numberOfWalkingOrkUnknown;
      v88 = 0.0;
      if (numberOfWalkingOrkUnknown != -1)
      {
        v89 = self->_numberOfBoundedDisplacementFromPeerData;
        if (v89)
        {
          v88 = (numberOfWalkingOrkUnknown / v89);
        }
      }

      v90 = [NSNumber numberWithDouble:v88];
      [v58 setObject:v90 forKey:@"Findee_WalkingOrUnknown_percentage"];

      if (self->_timeAtFirstLocationUpdate != -1.0)
      {
        v91 = timestamp - timeAtFirstLocationUpdate;
        timeLocationFromAccessory = self->_timeLocationFromAccessory;
        v93 = 0.0;
        if (timeLocationFromAccessory != -1.0 && v91 != 0.0)
        {
          v94 = timeLocationFromAccessory;
          v95 = v91;
          v93 = (v94 / v95);
        }

        v96 = [NSNumber numberWithDouble:v93];
        [v58 setObject:v96 forKey:@"LocationFromAccessory_percentage"];

        timeLocationFromCell = self->_timeLocationFromCell;
        v98 = 0.0;
        if (timeLocationFromCell != -1.0 && v91 != 0.0)
        {
          v99 = timeLocationFromCell;
          v100 = v91;
          v98 = (v99 / v100);
        }

        v101 = [NSNumber numberWithDouble:v98];
        [v58 setObject:v101 forKey:@"LocationFromCell_percentage"];

        timeLocationFromCompensated = self->_timeLocationFromCompensated;
        v103 = 0.0;
        if (timeLocationFromCompensated != -1.0 && v91 != 0.0)
        {
          v104 = timeLocationFromCompensated;
          v105 = v91;
          v103 = (v104 / v105);
        }

        v106 = [NSNumber numberWithDouble:v103];
        [v58 setObject:v106 forKey:@"LocationFromCompensated_percentage"];

        timeLocationFromGPS = self->_timeLocationFromGPS;
        v108 = 0.0;
        if (timeLocationFromGPS != -1.0 && v91 != 0.0)
        {
          v109 = timeLocationFromGPS;
          v110 = v91;
          v108 = (v109 / v110);
        }

        v111 = [NSNumber numberWithDouble:v108];
        [v58 setObject:v111 forKey:@"LocationFromGPS_percentage"];

        timeLocationFromGPSCoarse = self->_timeLocationFromGPSCoarse;
        v113 = 0.0;
        if (timeLocationFromGPSCoarse != -1.0 && v91 != 0.0)
        {
          v114 = timeLocationFromGPSCoarse;
          v115 = v91;
          v113 = (v114 / v115);
        }

        v116 = [NSNumber numberWithDouble:v113];
        [v58 setObject:v116 forKey:@"LocationFromGPSCoarse_percentage"];

        v117 = self->_timeLocationFromCell;
        v118 = 0.0;
        if (v117 != -1.0 && v91 != 0.0)
        {
          v119 = v117;
          v120 = v91;
          v118 = (v119 / v120);
        }

        v121 = [NSNumber numberWithDouble:v118];
        [v58 setObject:v121 forKey:@"LocationFromCell_percentage"];

        timeLocationFromLAC = self->_timeLocationFromLAC;
        v123 = 0.0;
        if (timeLocationFromLAC != -1.0 && v91 != 0.0)
        {
          v124 = timeLocationFromLAC;
          v125 = v91;
          v123 = (v124 / v125);
        }

        v126 = [NSNumber numberWithDouble:v123];
        [v58 setObject:v126 forKey:@"LocationFromLAC_percentage"];

        timeLocationFromLOIOverride = self->_timeLocationFromLOIOverride;
        v128 = 0.0;
        if (timeLocationFromLOIOverride != -1.0 && v91 != 0.0)
        {
          v129 = timeLocationFromLOIOverride;
          v130 = v91;
          v128 = (v129 / v130);
        }

        v131 = [NSNumber numberWithDouble:v128];
        [v58 setObject:v131 forKey:@"LocationFromLOIOverride_percentage"];

        timeLocationFromMCC = self->_timeLocationFromMCC;
        v133 = 0.0;
        if (timeLocationFromMCC != -1.0 && v91 != 0.0)
        {
          v134 = timeLocationFromMCC;
          v135 = v91;
          v133 = (v134 / v135);
        }

        v136 = [NSNumber numberWithDouble:v133];
        [v58 setObject:v136 forKey:@"LocationFromMCC_percentage"];

        timeLocationFromPipeline = self->_timeLocationFromPipeline;
        v138 = 0.0;
        if (timeLocationFromPipeline != -1.0 && v91 != 0.0)
        {
          v139 = timeLocationFromPipeline;
          v140 = v91;
          v138 = (v139 / v140);
        }

        v141 = [NSNumber numberWithDouble:v138];
        [v58 setObject:v141 forKey:@"LocationFromPipeline_percentage"];

        timeLocationFromUnknown = self->_timeLocationFromUnknown;
        v143 = 0.0;
        if (timeLocationFromUnknown != -1.0 && v91 != 0.0)
        {
          v144 = timeLocationFromUnknown;
          v145 = v91;
          v143 = (v144 / v145);
        }

        v146 = [NSNumber numberWithDouble:v143];
        [v58 setObject:v146 forKey:@"LocationFromUnknown_percentage"];

        timeLocationFromWiFi = self->_timeLocationFromWiFi;
        v148 = 0.0;
        if (timeLocationFromWiFi != -1.0 && v91 != 0.0)
        {
          v149 = timeLocationFromWiFi;
          v150 = v91;
          v148 = (v149 / v150);
        }

        v151 = [NSNumber numberWithDouble:v148];
        [v58 setObject:v151 forKey:@"LocationFromWiFi_percentage"];

        timeLocationFromWiFi2 = self->_timeLocationFromWiFi2;
        v153 = 0.0;
        if (timeLocationFromWiFi2 != -1.0 && v91 != 0.0)
        {
          v154 = timeLocationFromWiFi2;
          v155 = v91;
          v153 = (v154 / v155);
        }

        v156 = [NSNumber numberWithDouble:v153];
        [v58 setObject:v156 forKey:@"LocationFromWiFi2_percentage"];
      }

      if (self->_pdrTimeAtFirstPDRUpdate != -1.0)
      {
        timePDRIndicatesStatic = self->_timePDRIndicatesStatic;
        v158 = 0.0;
        if (timePDRIndicatesStatic != -1.0 && pdrTimeAtLastPDRUpdate - pdrTimeAtFirstPDRUpdate != 0.0)
        {
          v159 = timePDRIndicatesStatic;
          v160 = pdrTimeAtLastPDRUpdate - pdrTimeAtFirstPDRUpdate;
          v158 = (v159 / v160);
        }

        v161 = [NSNumber numberWithDouble:v158];
        [v58 setObject:v161 forKey:@"PDR_indicates_static_percentage"];
      }

      if (self->_timeAtFirstPeerData != -1.0)
      {
        v162 = [NSNumber numberWithDouble:self->_timeFindeeWasStatic];
        [v58 setObject:v162 forKey:@"TimeFindeeWasStatic"];

        v163 = [NSNumber numberWithDouble:self->_timeFindeeWasSlowlyMoving];
        [v58 setObject:v163 forKey:@"TimeFindeeWasSlowlyMoving"];

        v164 = [NSNumber numberWithDouble:self->_timeFindeeWasWalkingOrUnknown];
        [v58 setObject:v164 forKey:@"TimeFindeeWasWalkingOrUnknown"];

        v165 = [NSNumber numberWithDouble:self->_timeToSessionEnd];
        [v58 setObject:v165 forKey:@"TimeToSessionEnd"];
      }

      v166 = [NSNumber numberWithDouble:self->_distanceTraveledFromPDR];
      [v58 setObject:v166 forKey:@"DistanceTraveledFromPDR"];

      numberOfMissedRanges = self->_numberOfMissedRanges;
      if (numberOfMissedRanges == -1)
      {
        v168 = 0;
      }

      else
      {
        v168 = numberOfMissedRanges;
      }

      v169 = [NSNumber numberWithInt:v168];
      [v58 setObject:v169 forKey:@"NumberOfMissedRanges"];

      numberOfSuccessfulRanges = self->_numberOfSuccessfulRanges;
      if (numberOfSuccessfulRanges == -1)
      {
        v171 = 0;
      }

      else
      {
        v171 = numberOfSuccessfulRanges;
      }

      v172 = [NSNumber numberWithInt:v171];
      [v58 setObject:v172 forKey:@"NumberOfSuccessfulRanges"];

      v173 = self->_numberOfSuccessfulRanges;
      v174 = 0.0;
      if (v173 != -1)
      {
        v175 = self->_numberOfMissedRanges + v173;
        if (v175)
        {
          v174 = (v173 / v175);
        }
      }

      v176 = [NSNumber numberWithDouble:v174];
      [v58 setObject:v176 forKey:@"SuccesfulRangesToTotalRangingAttempts_percentage"];

      if (self->_isFinderAPhone.__engaged_)
      {
        v177 = [NSNumber numberWithBool:self->_isFinderAPhone.var0.__null_state_];
        [v58 setObject:v177 forKey:@"FinderIsPhone"];
      }

      v178 = [v58 mutableCopy];
      v179 = qword_1009ECD20;
      if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
      {
        v180 = p_sessionType;
        v181 = v37;
        v182 = self->_bundleIdentifier;
        v183 = [v178 description];
        *buf = 138412802;
        *&buf[4] = v182;
        v420 = 2112;
        v421 = @"com.apple.nearbyinteraction.peopleFindingSession.FindeeSummary";
        v422 = 2112;
        v423 = *&v183;
        _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);

        v37 = v181;
        p_sessionType = v180;
      }

      v404 = _NSConcreteStackBlock;
      v405 = 3221225472;
      v406 = sub_10004DE4C;
      v407 = &unk_10098AED8;
      v184 = v178;
      v408 = v184;
      AnalyticsSendEventLazy();
    }

    v57 = *p_sessionType;
  }

  p_engaged = &self->_lastSolutionTime.__engaged_;
  if (v57 == 4)
  {
    [(NIServerAnalyticsManager *)self _submitFindingSessionEndStats];
    if (self->_timeAtFirstPose == -1.0)
    {
      v186 = qword_1009ECD20;
      if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_INFO, "#ni-ca,Dummy finder CA event", buf, 2u);
      }
    }

    else
    {
      v186 = objc_alloc_init(NSMutableDictionary);
      [v186 setObject:self->_bundleIdentifier forKey:@"appBundleID"];
      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:timestamp];
      v188 = v187;
      if (self->_timeAtFirstOutputRange != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v189 = [NSNumber numberWithDouble:?];
        [v186 setObject:v189 forKey:@"TimeToFirstOutputRange"];
      }

      if (self->_timeAtFirstPeerLocation != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v190 = [NSNumber numberWithDouble:?];
        [v186 setObject:v190 forKey:@"TimeToFirstPeerLocation"];
      }

      if (self->_timeAtFirstPeerLocationFromFMF != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v191 = [NSNumber numberWithDouble:?];
        [v186 setObject:v191 forKey:@"TimeToFirstPeerLocationFromFMF"];
      }

      if (self->_timeAtFirstPeerLocationFromFindeeData != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v192 = [NSNumber numberWithDouble:?];
        [v186 setObject:v192 forKey:@"TimeToFirstPeerLocationFromFindeeData"];
      }

      if (self->_timeAtFirstRawUWBRange != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v193 = [NSNumber numberWithDouble:?];
        [v186 setObject:v193 forKey:@"TimeToFirstRawUWBRange"];
      }

      if (self->_timeAtFirstArrow != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v194 = [NSNumber numberWithDouble:?];
        [v186 setObject:v194 forKey:@"TimeToFirstArrow"];
      }

      if (self->_timeAtArmsLength != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v195 = [NSNumber numberWithDouble:?];
        [v186 setObject:v195 forKey:@"TimeToArmsReach"];
      }

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstValidPose];
      v196 = [NSNumber numberWithDouble:?];
      [v186 setObject:v196 forKey:@"TimeToFirstPose"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstPeerData];
      v197 = [NSNumber numberWithDouble:?];
      [v186 setObject:v197 forKey:@"TimeToFirstFindeeData"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstSelfLocation];
      v198 = [NSNumber numberWithDouble:?];
      [v186 setObject:v198 forKey:@"TimeToFirstSelfLocation"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstPDRFromFindeeData];
      v199 = [NSNumber numberWithDouble:?];
      [v186 setObject:v199 forKey:@"TimeToFirstPDRFromFindeeData"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstVIOFromFindeeData];
      v200 = [NSNumber numberWithDouble:?];
      [v186 setObject:v200 forKey:@"TimeToFirstVIOFromFindeeData"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstDeltaVelocityFromFindeeData];
      v201 = [NSNumber numberWithDouble:?];
      [v186 setObject:v201 forKey:@"TimeToFirstDeltaVelocityFromFindeeData"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstStaticFromFindeeData];
      v202 = [NSNumber numberWithDouble:?];
      [v186 setObject:v202 forKey:@"TimeToFirstStaticFromFindeeData"];

      v203 = [NSNumber numberWithDouble:v188];
      [v186 setObject:v203 forKey:@"TimeToEndSession"];

      v204 = [(NIServerAnalyticsManager *)self _algorithmSourceToString:self->_firstArrowAlgorithmSource];
      [v186 setObject:v204 forKey:@"FirstArrowAlgorithmSource"];

      v205 = [(NIServerAnalyticsManager *)self _algorithmSourceToString:self->_firstOutputRangeAlgorithmSource];
      [v186 setObject:v205 forKey:@"FirstOutputRangeAlgorithmSource"];

      v206 = [(NIServerAnalyticsManager *)self _algorithmSourceToString:self->_armsReachAlgorithmSource];
      [v186 setObject:v206 forKey:@"ArmsReachAlgorithmSource"];

      numberOfArrowAvailabilityAfterFirstArrow = self->_numberOfArrowAvailabilityAfterFirstArrow;
      v208 = 0.0;
      if (numberOfArrowAvailabilityAfterFirstArrow != -1)
      {
        numberOfSolutions = self->_numberOfSolutions;
        if (numberOfSolutions)
        {
          v208 = (numberOfArrowAvailabilityAfterFirstArrow / numberOfSolutions);
        }
      }

      v210 = [NSNumber numberWithDouble:v208];
      [v186 setObject:v210 forKey:@"ArrowAvailabilityAfterFirstArrow"];

      numberOfArrowRevokes = self->_numberOfArrowRevokes;
      if (numberOfArrowRevokes == -1)
      {
        v212 = 0;
      }

      else
      {
        v212 = numberOfArrowRevokes;
      }

      v213 = [NSNumber numberWithInt:v212];
      [v186 setObject:v213 forKey:@"NumberOfArrowRevokes"];

      numberOfVIOResets = self->_numberOfVIOResets;
      if (numberOfVIOResets == -1)
      {
        v215 = 0;
      }

      else
      {
        v215 = numberOfVIOResets;
      }

      v216 = [NSNumber numberWithInt:v215];
      [v186 setObject:v216 forKey:@"NumberOfVIOResets"];

      numberOfPeerDataFinder = self->_numberOfPeerDataFinder;
      v218 = 0.0;
      if (numberOfPeerDataFinder != -1)
      {
        numberOfRawRanges = self->_numberOfRawRanges;
        if (numberOfRawRanges)
        {
          v218 = (numberOfPeerDataFinder / numberOfRawRanges);
        }
      }

      v220 = [NSNumber numberWithDouble:v218];
      [v186 setObject:v220 forKey:@"RatioOfSuccessfulPeerDataToTotalNumRange"];

      v221 = [NSNumber numberWithBool:self->_didFinderChangeFloor];
      [v186 setObject:v221 forKey:@"DidFinderChangeFloors"];

      v222 = [NSNumber numberWithBool:self->_didFindeeChangeFloor];
      [v186 setObject:v222 forKey:@"DidFindeeChangeFloors"];

      if (self->_numberOfRawRanges >= 1)
      {
        v223 = [NSNumber numberWithDouble:self->_maxDistance_finding];
        [v186 setObject:v223 forKey:@"MaxRawRangeValueDuringSession"];

        v224 = [NSNumber numberWithDouble:self->_minDistance_finding];
        [v186 setObject:v224 forKey:@"MinimumRange"];

        v225 = [NSNumber numberWithDouble:self->_firstDistance_finding];
        [v186 setObject:v225 forKey:@"FirstRawRangeValueDuringSession"];

        v226 = [NSNumber numberWithDouble:self->_lastDistance_finding];
        [v186 setObject:v226 forKey:@"LastRange"];

        v227 = [NSNumber numberWithDouble:self->_rangeAtFirstPose];
        [v186 setObject:v227 forKey:@"RangeAtFirstPose"];

        v228 = [NSNumber numberWithDouble:self->_rangeAtFirstArrow];
        [v186 setObject:v228 forKey:@"RangeAtFirstArrow"];

        v229 = [NSNumber numberWithBool:vabdd_f64(self->_lastDistance_finding, self->_rangeAtFirstPose) < 2.0];
        [v186 setObject:v229 forKey:@"SessionEndedWithNoRange"];
      }

      if (self->_numberOfVIOResets == -1)
      {
        [(NIServerAnalyticsManager *)self _calculateStraightLineDistance];
        v231 = [NSNumber numberWithDouble:self->_firstArrowStraightLineDistance];
        [v186 setObject:v231 forKey:@"StraightLineDistanceToFirstArrow"];

        v232 = [NSNumber numberWithDouble:self->_firstOutputRangeStraightLineDistance];
        [v186 setObject:v232 forKey:@"StraightLineDistanceToFirstArrow"];

        v233 = [NSNumber numberWithDouble:self->_armsReachStraightLineDistance];
        [v186 setObject:v233 forKey:@"StraightLineDistanceToArmsReach"];

        v234 = [NSNumber numberWithDouble:self->_radialDisplacementFromVIO];
        [v186 setObject:v234 forKey:@"RadialDisplacementVIO"];

        v235 = [NSNumber numberWithDouble:*&self->_anon_778[168]];
        [v186 setObject:v235 forKey:@"UserMovedDistanceToFirstArrow"];

        v236 = [NSNumber numberWithDouble:*&self->_anon_8a8[168]];
        [v186 setObject:v236 forKey:@"UserMovedDistanceToFirstOutputRange"];

        v237 = [NSNumber numberWithDouble:*&self->_anon_9d8[168]];
        [v186 setObject:v237 forKey:@"UserMovedDistanceToArmsReach"];

        v238 = [NSNumber numberWithDouble:*&self->_anon_b08[168]];
        [v186 setObject:v238 forKey:@"TotalUserMovedDistance"];

        [(NIServerAnalyticsManager *)self _calculateIOMetrics:v188];
        v239 = [NSNumber numberWithDouble:self->_stdSpeedFromVIO];
        [v186 setObject:v239 forKey:@"PDRSpeedErrorStandardDeviation"];

        v240 = [NSNumber numberWithDouble:self->_pathLengthError];
        [v186 setObject:v240 forKey:@"PathLengthPDRVsVIOError"];

        v241 = [NSNumber numberWithDouble:self->_radialDisplacementError];
        [v186 setObject:v241 forKey:@"RadialDisplacementError"];

        v242 = [NSNumber numberWithDouble:self->_meanSpeedFromVIO];
        [v186 setObject:v242 forKey:@"MeanSpeedFromVIO"];

        v243 = [NSNumber numberWithDouble:self->_meanSpeedFromVIOError];
        [v186 setObject:v243 forKey:@"MeanSpeedFromVIOError"];

        v244 = [NSNumber numberWithDouble:self->_pdrSSDetectionTruePositiveRate];
        [v186 setObject:v244 forKey:@"PDRStationaryDetectionTruePositiveRate"];

        v245 = [NSNumber numberWithDouble:self->_pdrSSDetectionFalsePositiveRate];
        [v186 setObject:v245 forKey:@"PDRStationaryDetectionTrueNegativeRate"];

        v230 = [NSNumber numberWithDouble:self->_percentTimeSSFromVIO];
        [v186 setObject:v230 forKey:@"TimeSSFromVIO_percentage"];
      }

      else
      {
        v230 = qword_1009ECD20;
        if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_INFO, "#ni-ca,Unable to send user distances between finder and findee (we had VIO reset(s))", buf, 2u);
        }
      }

      if (self->_timeAtFirstIOPose.__engaged_)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstIOPose.var0.__val_];
        v246 = [NSNumber numberWithDouble:?];
        [v186 setObject:v246 forKey:@"TimeToFirstIOPoseAfterFindButtonPressed"];

        v247 = qword_1009ECD20;
        if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
        {
          [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstValidPose];
          if (!self->_timeAtFirstIOPose.__engaged_)
          {
            sub_1000195BC();
          }

          v249 = v248;
          [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstIOPose.var0.__val_];
          *buf = 134218240;
          *&buf[4] = v249;
          v420 = 2048;
          v421 = v250;
          _os_log_impl(&_mh_execute_header, v247, OS_LOG_TYPE_DEFAULT, "#ni-ca,pose times, vio: %f, io: %f", buf, 0x16u);
        }
      }

      vioAvailableTime = self->_vioAvailableTime;
      ioSourceTime = self->_ioSourceTime;
      deltaVSourceTime = self->_deltaVSourceTime;
      noOdometryAvailableTime = self->_noOdometryAvailableTime;
      v255 = vioAvailableTime + ioSourceTime + deltaVSourceTime + noOdometryAvailableTime;
      v256 = vioAvailableTime / v255;
      v257 = ioSourceTime / v255;
      v258 = deltaVSourceTime / v255;
      v259 = noOdometryAvailableTime / v255;
      v260 = qword_1009ECD20;
      if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *&buf[4] = v256;
        v420 = 2048;
        v421 = *&v257;
        v422 = 2048;
        v423 = v258;
        v424 = 2048;
        v425 = v259;
        _os_log_impl(&_mh_execute_header, v260, OS_LOG_TYPE_DEFAULT, "#ni-ca,odometry source ratio, VIO: %f, IO: %f, DeltaV: %f, None: %f", buf, 0x2Au);
      }

      v261 = [NSNumber numberWithDouble:v256];
      [v186 setObject:v261 forKey:@"OdometrySourceVIO"];

      v262 = [NSNumber numberWithDouble:v257];
      [v186 setObject:v262 forKey:@"OdometrySourceIO"];

      v263 = [NSNumber numberWithDouble:v258];
      [v186 setObject:v263 forKey:@"OdometrySourceDeltaV"];

      v264 = [NSNumber numberWithDouble:v259];
      [v186 setObject:v264 forKey:@"OdometrySourceNone"];

      end = self->_pointToPointErrorHistory.__end_;
      begin = self->_pointToPointErrorHistory.__begin_;
      v267 = end - begin;
      if (v267 >= 0xB)
      {
        v403 = 0;
        v401 = 0u;
        v402 = 0u;
        v399 = 0;
        v400 = 0;
        __p = 0;
        sub_10004F564(&__p, begin, end, v267);
        objc_msgSend__calculateErrorStatsFromVector_(self);
        if (__p)
        {
          v399 = __p;
          operator delete(__p);
        }

        v268 = qword_1009ECD20;
        if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219008;
          *&buf[4] = v401;
          v420 = 2048;
          v421 = *(&v401 + 1);
          v422 = 2048;
          v423 = *&v402;
          v424 = 2048;
          v425 = *(&v402 + 1);
          v426 = 2048;
          v427 = v403;
          _os_log_impl(&_mh_execute_header, v268, OS_LOG_TYPE_DEFAULT, "#ni-ca,point errors mean: %f, std: %f, median: %f, 95th: %f, n: %zu", buf, 0x34u);
        }

        v269 = [NSNumber numberWithDouble:*&v401];
        [v186 setObject:v269 forKey:@"PointToPointErrorMean"];

        v270 = [NSNumber numberWithDouble:*(&v401 + 1)];
        [v186 setObject:v270 forKey:@"PointToPointErrorStd"];

        v271 = [NSNumber numberWithDouble:*&v402];
        [v186 setObject:v271 forKey:@"PointToPointErrorMedian"];

        v272 = [NSNumber numberWithDouble:*(&v402 + 1)];
        [v186 setObject:v272 forKey:@"PointToPointError95th"];

        v273 = [NSNumber numberWithDouble:v403];
        [v186 setObject:v273 forKey:@"PointToPointErrorN"];
      }

      v274 = self->_deltaAngleErrorHistory.__end_;
      v275 = self->_deltaAngleErrorHistory.__begin_;
      v276 = v274 - v275;
      if (v276 >= 0xB)
      {
        v403 = 0;
        v401 = 0u;
        v402 = 0u;
        v396 = 0;
        v397 = 0;
        v395 = 0;
        sub_10004F564(&v395, v275, v274, v276);
        objc_msgSend__calculateErrorStatsFromVector_(self);
        if (v395)
        {
          v396 = v395;
          operator delete(v395);
        }

        v277 = qword_1009ECD20;
        if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219008;
          *&buf[4] = v401;
          v420 = 2048;
          v421 = *(&v401 + 1);
          v422 = 2048;
          v423 = *&v402;
          v424 = 2048;
          v425 = *(&v402 + 1);
          v426 = 2048;
          v427 = v403;
          _os_log_impl(&_mh_execute_header, v277, OS_LOG_TYPE_DEFAULT, "#ni-ca,delta dot errors mean: %f, std: %f, median: %f, 95th: %f, n: %zu", buf, 0x34u);
        }

        v278 = [NSNumber numberWithDouble:*&v401];
        [v186 setObject:v278 forKey:@"IODirectionOfTravelErrorDeltaDegreesMean"];

        v279 = [NSNumber numberWithDouble:*(&v401 + 1)];
        [v186 setObject:v279 forKey:@"IODirectionOfTravelErrorDeltaDegreesStd"];

        v280 = [NSNumber numberWithDouble:*&v402];
        [v186 setObject:v280 forKey:@"IODirectionOfTravelErrorDeltaDegreesMedian"];

        v281 = [NSNumber numberWithDouble:*(&v402 + 1)];
        [v186 setObject:v281 forKey:@"IODirectionOfTravelErrorDeltaDegrees95th"];

        v282 = [NSNumber numberWithDouble:v403];
        [v186 setObject:v282 forKey:@"IODirectionOfTravelErrorDeltaDegreesN"];
      }

      v283 = self->_angleErrorHistory.__end_;
      v284 = self->_angleErrorHistory.__begin_;
      v285 = v283 - v284;
      if (v285 >= 0xB)
      {
        v403 = 0;
        v401 = 0u;
        v402 = 0u;
        v393 = 0;
        v394 = 0;
        v392 = 0;
        sub_10004F564(&v392, v284, v283, v285);
        objc_msgSend__calculateErrorStatsFromVector_(self);
        if (v392)
        {
          v393 = v392;
          operator delete(v392);
        }

        v286 = qword_1009ECD20;
        if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219008;
          *&buf[4] = v401;
          v420 = 2048;
          v421 = *(&v401 + 1);
          v422 = 2048;
          v423 = *&v402;
          v424 = 2048;
          v425 = *(&v402 + 1);
          v426 = 2048;
          v427 = v403;
          _os_log_impl(&_mh_execute_header, v286, OS_LOG_TYPE_DEFAULT, "#ni-ca,dot errors mean: %f, std: %f, median: %f, 95th: %f, n: %zu", buf, 0x34u);
        }

        v287 = [NSNumber numberWithDouble:*&v401];
        [v186 setObject:v287 forKey:@"IODirectionOfTravelErrorDegreesMean"];

        v288 = [NSNumber numberWithDouble:*(&v401 + 1)];
        [v186 setObject:v288 forKey:@"IODirectionOfTravelErrorDegreesStd"];

        v289 = [NSNumber numberWithDouble:*&v402];
        [v186 setObject:v289 forKey:@"IODirectionOfTravelErrorDegreesMedian"];

        v290 = [NSNumber numberWithDouble:*(&v402 + 1)];
        [v186 setObject:v290 forKey:@"IODirectionOfTravelErrorDegrees95th"];

        v291 = [NSNumber numberWithDouble:v403];
        [v186 setObject:v291 forKey:@"IODirectionOfTravelErrorDegreesN"];
      }

      if (self->_isFindeeAPhone.__engaged_)
      {
        v292 = [NSNumber numberWithBool:self->_isFindeeAPhone.var0.__null_state_];
        [v186 setObject:v292 forKey:@"FindeeIsPhone"];
      }

      v293 = [v186 mutableCopy];
      v294 = qword_1009ECD20;
      if (os_log_type_enabled(v294, OS_LOG_TYPE_INFO))
      {
        v295 = self->_bundleIdentifier;
        v296 = [v293 description];
        *buf = 138412802;
        *&buf[4] = v295;
        v420 = 2112;
        v421 = @"com.apple.nearbyinteraction.peopleFindingSession.FinderSummary";
        v422 = 2112;
        v423 = *&v296;
        _os_log_impl(&_mh_execute_header, v294, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);

        p_engaged = &self->_lastSolutionTime.__engaged_;
      }

      v391 = v293;
      AnalyticsSendEventLazy();
    }
  }

  v297 = *p_sessionType;
  if (*p_sessionType == 5)
  {
    v298 = qword_1009ECD20;
    if (os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v298, OS_LOG_TYPE_INFO, "#ni-ca,Item PF event submission", buf, 2u);
    }

    v299 = objc_alloc_init(NSMutableDictionary);
    v300 = [NSNumber numberWithDouble:v15];
    [v299 setObject:v300 forKey:@"sessionDuration"];

    v301 = [NSNumber numberWithBool:p_engaged[80]];
    [v299 setObject:v301 forKey:@"isOwner"];

    v302 = [NSNumber numberWithInt:self->_clientRequestIndex];
    [v299 setObject:v302 forKey:@"clientRequestIndex"];

    typeName = self->_typeName;
    if (typeName)
    {
      [v299 setObject:typeName forKey:@"productName"];
    }

    v304 = [NSNumber numberWithBool:p_engaged[81]];
    [v299 setObject:v304 forKey:@"askedToRange"];

    timeAtFindButton = self->_timeAtFindButton;
    if (timeAtFindButton != -1.0)
    {
      v306 = [NSNumber numberWithDouble:timeAtFindButton - self->_runTimestamp];
      [v299 setObject:v306 forKey:@"timeToRangeRequest"];

      v307 = [NSNumber numberWithDouble:timestamp - self->_timeAtFindButton];
      [v299 setObject:v307 forKey:@"rangingDuration"];

      timeAtFirstRawUWBRange = self->_timeAtFirstRawUWBRange;
      if (timeAtFirstRawUWBRange == -1.0)
      {
        [v299 setObject:&off_1009C3DA0 forKey:@"timeToFirstRange"];
        [v299 setObject:&off_1009C3DA0 forKey:@"timeFromFindButtonToFirstRange"];
        [v299 setObject:&off_1009C3DA0 forKey:@"timeFromConnectToFirstRange"];
        [v299 setObject:&off_1009C3DA0 forKey:@"firstRawRange"];
        [v299 setObject:&off_1009C3DA0 forKey:@"lastRawRange"];
      }

      else
      {
        v309 = [NSNumber numberWithDouble:timeAtFirstRawUWBRange - self->_runTimestamp];
        [v299 setObject:v309 forKey:@"timeToFirstRange"];

        v310 = [NSNumber numberWithDouble:self->_timeAtFirstRawUWBRange - self->_timeAtFindButton];
        [v299 setObject:v310 forKey:@"timeFromFindButtonToFirstRange"];

        v311 = [NSNumber numberWithDouble:self->_timeAtFirstRawUWBRange - self->_timeAtConnect];
        [v299 setObject:v311 forKey:@"timeFromConnectToFirstRange"];

        v312 = [NSNumber numberWithDouble:self->_firstDistance_finding];
        [v299 setObject:v312 forKey:@"firstRawRange"];

        v313 = [NSNumber numberWithDouble:self->_lastDistance_finding];
        [v299 setObject:v313 forKey:@"lastRawRange"];
      }

      if (self->_firstOutputDistance == -1.0)
      {
        [v299 setObject:&off_1009C3DA0 forKey:@"firstOutputRange"];
        [v299 setObject:&off_1009C3DA0 forKey:@"lastOutputRange"];
        [v299 setObject:&off_1009C3DA0 forKey:@"maximumOutputRange"];
        [v299 setObject:&off_1009C3DA0 forKey:@"minimumOutputRange"];
      }

      else
      {
        v314 = [NSNumber numberWithDouble:?];
        [v299 setObject:v314 forKey:@"firstOutputRange"];

        v315 = [NSNumber numberWithDouble:self->_lastOutputDistance];
        [v299 setObject:v315 forKey:@"lastOutputRange"];

        v316 = [NSNumber numberWithDouble:self->_maxOutputDistance];
        [v299 setObject:v316 forKey:@"maximumOutputRange"];

        v317 = [NSNumber numberWithDouble:self->_minOutputDistance];
        [v299 setObject:v317 forKey:@"minimumOutputRange"];
      }

      timeAtFirstValidPose = self->_timeAtFirstValidPose;
      if (timeAtFirstValidPose == -1.0)
      {
        [v299 setObject:&off_1009C3DA0 forKey:@"timeToFirstPose"];
        [v299 setObject:&off_1009C3DA0 forKey:@"timeFromFindButtonToFirstPose"];
      }

      else
      {
        v319 = [NSNumber numberWithDouble:timeAtFirstValidPose - self->_runTimestamp];
        [v299 setObject:v319 forKey:@"timeToFirstPose"];

        v320 = [NSNumber numberWithDouble:self->_timeAtFirstValidPose - self->_timeAtFindButton];
        [v299 setObject:v320 forKey:@"timeFromFindButtonToFirstPose"];

        v321 = self->_numberOfVIOResets;
        if (v321 == -1)
        {
          v322 = 0;
        }

        else
        {
          v322 = v321;
        }

        v323 = [NSNumber numberWithInt:v322];
        [v299 setObject:v323 forKey:@"numberOfVIOResets"];

        if (self->_numberOfVIOResets == -1)
        {
          [(NIServerAnalyticsManager *)self _calculateStraightLineDistance];
          v324 = [NSNumber numberWithDouble:self->_firstArrowStraightLineDistance];
          [v299 setObject:v324 forKey:@"straightLineDistanceToFirstArrow"];

          v325 = [NSNumber numberWithDouble:self->_firstOutputRangeStraightLineDistance];
          [v299 setObject:v325 forKey:@"straightLineDistanceToFirstOutputRange"];

          v326 = [NSNumber numberWithDouble:self->_armsReachStraightLineDistance];
          [v299 setObject:v326 forKey:@"straightLineDistanceToArmsReach"];

          v327 = [NSNumber numberWithDouble:*&self->_anon_778[168]];
          [v299 setObject:v327 forKey:@"userMovedDistanceToFirstArrow"];

          v328 = [NSNumber numberWithDouble:*&self->_anon_8a8[168]];
          [v299 setObject:v328 forKey:@"userMovedDistanceToFirstOutputRange"];

          v329 = [NSNumber numberWithDouble:*&self->_anon_9d8[168]];
          [v299 setObject:v329 forKey:@"userMovedDistanceToArmsReach"];

          v330 = [NSNumber numberWithDouble:*&self->_anon_b08[168]];
          [v299 setObject:v330 forKey:@"totalUserMovedDistance"];

          if (self->_anon_688[72] == 1 && self->_anon_5f8[72] == 1)
          {
            v331 = [NSNumber numberWithDouble:self->_straightLineDistanceFromConnectToFirstRange];
            [v299 setObject:v331 forKey:@"straightLineDistanceFromConnectToFirstRange"];
          }
        }
      }

      timeAtFirstArrow = self->_timeAtFirstArrow;
      if (timeAtFirstArrow == -1.0)
      {
        [v299 setObject:&off_1009C3DA0 forKey:@"timeToFirstArrow"];
        [v299 setObject:&off_1009C3DA0 forKey:@"timeFromFindButtonToFirstArrow"];
        [v299 setObject:&off_1009C3DA0 forKey:@"timeFromFirstRangeToFirstArrow"];
        [v299 setObject:&off_1009C3DA0 forKey:@"numberOfArrowRevokes"];
        [v299 setObject:&off_1009C3DA0 forKey:@"arrowAvailabilityAfterFirstArrow"];
        [v299 setObject:&off_1009C3DA0 forKey:@"rangeAtFirstArrow"];
      }

      else
      {
        v333 = [NSNumber numberWithDouble:timeAtFirstArrow - self->_runTimestamp];
        [v299 setObject:v333 forKey:@"timeToFirstArrow"];

        v334 = [NSNumber numberWithDouble:self->_timeAtFirstArrow - self->_timeAtFindButton];
        [v299 setObject:v334 forKey:@"timeFromFindButtonToFirstArrow"];

        v335 = [NSNumber numberWithDouble:self->_timeAtFirstArrow - self->_timeAtFirstRawUWBRange];
        [v299 setObject:v335 forKey:@"timeFromFirstRangeToFirstArrow"];

        v336 = self->_numberOfArrowRevokes;
        if (v336 == -1)
        {
          v337 = 0;
        }

        else
        {
          v337 = v336;
        }

        v338 = [NSNumber numberWithInt:v337];
        [v299 setObject:v338 forKey:@"numberOfArrowRevokes"];

        v339 = self->_numberOfArrowAvailabilityAfterFirstArrow;
        v340 = -1.0;
        if (v339 != -1)
        {
          v341 = self->_numberOfSolutions;
          if (v341)
          {
            v340 = (v339 / v341);
          }
        }

        v342 = [NSNumber numberWithDouble:v340];
        [v299 setObject:v342 forKey:@"arrowAvailabilityAfterFirstArrow"];

        v343 = [NSNumber numberWithDouble:self->_rangeAtFirstArrow];
        [v299 setObject:v343 forKey:@"rangeAtFirstArrow"];
      }

      if (self->_timeAtArmsLength == -1.0)
      {
        v344 = [NSNumber numberWithBool:0];
        [v299 setObject:v344 forKey:@"enteredArmsReach"];

        [v299 setObject:&off_1009C3DA0 forKey:@"timeToArmsReach"];
        [v299 setObject:&off_1009C3DA0 forKey:@"timeFromFindButtonToArmsReach"];
        [v299 setObject:&off_1009C3DA0 forKey:@"timeFromFirstRangeToArmsReach"];
      }

      else
      {
        v345 = [NSNumber numberWithBool:1];
        [v299 setObject:v345 forKey:@"enteredArmsReach"];

        v346 = [NSNumber numberWithDouble:self->_timeAtArmsLength - self->_runTimestamp];
        [v299 setObject:v346 forKey:@"timeToArmsReach"];

        v347 = [NSNumber numberWithDouble:self->_timeAtArmsLength - self->_timeAtFindButton];
        [v299 setObject:v347 forKey:@"timeFromFindButtonToArmsReach"];

        v348 = [NSNumber numberWithDouble:self->_timeAtArmsLength - self->_timeAtFirstRawUWBRange];
        [v299 setObject:v348 forKey:@"timeFromFirstRangeToArmsReach"];
      }
    }

    timeAtConnect = self->_timeAtConnect;
    if (timeAtConnect == -1.0)
    {
      [v299 setObject:&off_1009C3DA0 forKey:@"timeToConnect"];
    }

    else
    {
      v350 = [NSNumber numberWithDouble:timeAtConnect - self->_runTimestamp];
      [v299 setObject:v350 forKey:@"timeToConnect"];

      v351 = self->_timeAtFindButton;
      if (v351 != -1.0)
      {
        v351 = [NSNumber numberWithDouble:self->_timeAtConnect - v351];
        [v299 setObject:v351 forKey:@"timeFromFindButtonToConnect"];
      }
    }

    timeAtConfigure = self->_timeAtConfigure;
    if (timeAtConfigure == -1.0)
    {
      [v299 setObject:&off_1009C3DA0 forKey:@"timeToConfigure"];
    }

    else
    {
      v354 = [NSNumber numberWithDouble:timeAtConfigure - self->_runTimestamp];
      [v299 setObject:v354 forKey:@"timeToConfigure"];

      v355 = self->_timeAtFindButton;
      if (v355 != -1.0)
      {
        v355 = [NSNumber numberWithDouble:self->_timeAtConfigure - v355];
        [v299 setObject:v355 forKey:@"timeFromFindButtonToConfigure"];
      }
    }

    if (self->_rangingMode != -1)
    {
      v357 = [NSNumber numberWithInt:?];
      [v299 setObject:v357 forKey:@"rangingMode"];
    }

    v358 = [v299 mutableCopy];
    v359 = qword_1009ECD20;
    if (os_log_type_enabled(v359, OS_LOG_TYPE_INFO))
    {
      v386 = v299;
      v360 = p_engaged;
      v361 = self->_bundleIdentifier;
      v362 = [v358 description];
      *buf = 138412802;
      *&buf[4] = v361;
      v420 = 2112;
      v421 = @"com.apple.nearbyinteraction.itemLocalizerSession.Summary";
      v422 = 2112;
      v423 = *&v362;
      _os_log_impl(&_mh_execute_header, v359, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);

      p_engaged = v360;
      v299 = v386;
    }

    v390 = v358;
    AnalyticsSendEventLazy();

    v297 = *p_sessionType;
  }

  if (v297 == 6)
  {
    v363 = qword_1009ECD20;
    if (os_log_type_enabled(v363, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v363, OS_LOG_TYPE_INFO, "#ni-ca,Item BT finding event submission", buf, 2u);
    }

    v364 = objc_alloc_init(NSMutableDictionary);
    v365 = [NSNumber numberWithDouble:v15];
    [v364 setObject:v365 forKey:@"sessionDuration"];

    v366 = [NSNumber numberWithBool:p_engaged[80]];
    [v364 setObject:v366 forKey:@"isOwner"];

    v367 = self->_typeName;
    if (v367)
    {
      [v364 setObject:v367 forKey:@"productName"];
    }

    v368 = self->_timeAtConnect;
    if (v368 == -1.0)
    {
      [v364 setObject:&off_1009C3DA0 forKey:@"timeToConnect"];
    }

    else
    {
      v369 = [NSNumber numberWithDouble:v368 - self->_runTimestamp];
      [v364 setObject:v369 forKey:@"timeToConnect"];
    }

    v370 = self->_timeAtConfigure;
    if (v370 == -1.0)
    {
      [v364 setObject:&off_1009C3DA0 forKey:@"timeToConfigure"];
    }

    else
    {
      v371 = [NSNumber numberWithDouble:v370 - self->_runTimestamp];
      [v364 setObject:v371 forKey:@"timeToConfigure"];

      if (p_engaged[168] == 1)
      {
        v372 = [NSNumber numberWithInt:self->_itemBtTxPower.var0.__val_];
        [v364 setObject:v372 forKey:@"txPower"];
      }
    }

    timeAtFirstBtRssiMeasurement = self->_timeAtFirstBtRssiMeasurement;
    if (timeAtFirstBtRssiMeasurement != -1.0)
    {
      v374 = [NSNumber numberWithDouble:timeAtFirstBtRssiMeasurement - self->_runTimestamp];
      [v364 setObject:v374 forKey:@"timeToFirstMeasurement"];

      v375 = [NSNumber numberWithDouble:self->_firstBtRssi];
      [v364 setObject:v375 forKey:@"firstRSSI"];

      v376 = [NSNumber numberWithDouble:self->_lastBtRssi];
      [v364 setObject:v376 forKey:@"finalRSSI"];
    }

    timeAtArmsLength = self->_timeAtArmsLength;
    if (timeAtArmsLength == -1.0)
    {
      [v364 setObject:&off_1009C3DA0 forKey:@"timeToArmsReach"];
      [NSNumber numberWithBool:0];
    }

    else
    {
      v379 = [NSNumber numberWithDouble:timeAtArmsLength - self->_runTimestamp];
      [v364 setObject:v379 forKey:@"timeToArmsReach"];

      [NSNumber numberWithBool:1];
    }
    v378 = ;
    [v364 setObject:v378 forKey:@"enteredArmsReach"];

    v380 = [NSNumber numberWithInt:self->_numberOfRegionFoundEvents];
    [v364 setObject:v380 forKey:@"numberOfLevelFoundEvents"];

    v381 = [NSNumber numberWithInt:self->_numberOfRegionRevokes];
    [v364 setObject:v381 forKey:@"numberOfRevokes"];

    v382 = [v364 mutableCopy];
    v383 = qword_1009ECD20;
    if (os_log_type_enabled(v383, OS_LOG_TYPE_INFO))
    {
      v384 = self->_bundleIdentifier;
      v385 = [v382 description];
      *buf = 138412802;
      *&buf[4] = v384;
      v420 = 2112;
      v421 = @"com.apple.nearbyinteraction.btLocalizerSession.Summary";
      v422 = 2112;
      v423 = *&v385;
      _os_log_impl(&_mh_execute_header, v383, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
    }

    v389 = v382;
    AnalyticsSendEventLazy();
  }
}

- (id).cxx_construct
{
  p_engaged = &self->_lastSolutionTime.__engaged_;
  *self->_bundleIdAsStdString.__rep_.__s.__data_ = 0uLL;
  *(&self->_bundleIdAsStdString.__rep_.__l + 2) = 0;
  self->_lastLocationType.var0.__null_state_ = 0;
  self->_lastLocationType.__engaged_ = 0;
  self->_lastMotionCategory.var0.__null_state_ = 0;
  self->_lastMotionCategory.__engaged_ = 0;
  self->_firstPose.var0.__null_state_ = 0;
  self->_anon_328[72] = 0;
  self->_lastPose.var0.__null_state_ = 0;
  self->_anon_3b8[72] = 0;
  self->_firstArrowPose.var0.__null_state_ = 0;
  self->_anon_448[72] = 0;
  self->_armsReachPose.var0.__null_state_ = 0;
  self->_anon_4d8[72] = 0;
  self->_firstOutputRangePose.var0.__null_state_ = 0;
  self->_anon_568[72] = 0;
  self->_firstInputRangePose.var0.__null_state_ = 0;
  self->_anon_5f8[72] = 0;
  self->_firstBTConnectionPose.var0.__null_state_ = 0;
  self->_anon_688[72] = 0;
  self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__null_state_ = 0;
  self->_anon_778[8] = 0;
  self->_anon_778[24] = 0;
  self->_anon_778[152] = 0;
  self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__null_state_ = 0;
  self->_anon_8a8[8] = 0;
  self->_anon_8a8[24] = 0;
  self->_anon_8a8[152] = 0;
  self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__null_state_ = 0;
  self->_anon_9d8[8] = 0;
  self->_anon_9d8[24] = 0;
  self->_anon_9d8[152] = 0;
  self->_totalUserMovedDistance.previousPoseOfUser.var0.__null_state_ = 0;
  self->_anon_b08[8] = 0;
  self->_anon_b08[24] = 0;
  self->_anon_b08[152] = 0;
  self->_vioPoseAtLastPDRUpdate.var0.__null_state_ = 0;
  self->_anon_c28[72] = 0;
  self->_lastDisplacementSourceFindee.var0.__null_state_ = 0;
  self->_lastDisplacementSourceFindee.__engaged_ = 0;
  *&self->_isFinderAPhone.var0.__null_state_ = 0;
  sub_1003FBC84(&self->_pdrAligner);
  self->_previousAdjustedRotatedVioPosition.var0.__null_state_ = 0;
  self->_anon_f72[14] = 0;
  self->_timeOfLastPDRUpdate.var0.__null_state_ = 0;
  self->_timeOfLastPDRUpdate.__engaged_ = 0;
  self->_lastAngleError.__engaged_ = 0;
  self->_lastSolutionTime.var0.__null_state_ = 0;
  *p_engaged = 0;
  p_engaged[48] = 0;
  p_engaged[56] = 0;
  p_engaged[164] = 0;
  p_engaged[168] = 0;
  *&self->_angleErrorHistory.__begin_ = 0u;
  *&self->_angleErrorHistory.__cap_ = 0u;
  *&self->_deltaAngleErrorHistory.__end_ = 0u;
  *&self->_pointToPointErrorHistory.__begin_ = 0u;
  *(&self->_pointToPointErrorHistory.__end_ + 1) = 0u;
  return self;
}

@end