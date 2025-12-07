@interface NINearbyUpdatesEngine
- (AoARad)_convertFromPointingCoordinatesToSpatial:(const void *)spatial;
- (BOOL)_shouldConsumeRoseSolution:(const void *)solution;
- (FindeeAlgorithmConfig)_getFindeeAlgorithmConfig;
- (ItemFinderAlgorithmConfig)_getItemFinderAlgorithmConfig;
- (NINearbyUpdatesEngine)initWithConfiguration:(id)configuration queue:(id)queue delegate:(id)delegate dataSource:(id)source analyticsManager:(id)manager protobufLogger:(shared_ptr<rose:(id *)logger :protobuf::Logger>)a8 error:;
- (NINearbyUpdatesEngineDataSource)dataSource;
- (NINearbyUpdatesEngineDelegate)delegate;
- (PeopleFinderAlgorithmConfig)_getPeopleFinderAlgorithmConfig;
- (PeopleFinderAlgorithmConfig)_getPeopleFinderAlgorithmConfigForPeerSessions;
- (id).cxx_construct;
- (id)_configureForLocalization:(id)localization;
- (id)_configureForRegionMonitoring:(id)monitoring;
- (id)_consolidateInputToMLModel:(const void *)model;
- (id)_convertPEAnchorMessages:(const void *)messages;
- (id)_convertPEResponderAnchorMessage:(const void *)message;
- (id)_handleRangeAndAoASolution:(const void *)solution;
- (id)_handleRangeOnlySolution:(const void *)solution;
- (id)configure:(id)configure;
- (id)nearbyObjectFromDeviceIdentifier:(unint64_t)identifier;
- (id)nearbyObjectFromRangeResult:(const void *)result;
- (id)nearbyObjectFromSolution:(const void *)solution;
- (id)nearbyObjectFromSolution:(const void *)solution forPeer:(id)peer;
- (id)nearbyObjectFromToken:(id)token;
- (id)niConvergenceStateFromSolution:(const void *)solution;
- (int)_setReadValidateDefaultsWriteForTypeOfPredictor;
- (set<NIRegionSizeCategory,)_getRegionSizeCategoriesFromRegions:(std:(NINearbyUpdatesEngine *)self :(SEL)a3 allocator<NIRegionSizeCategory>> *__return_ptr)retstr;
- (void)_configureRangeBiasEstimator;
- (void)_createDeviceFinderAlgoContainer;
- (void)_createFindeeAlgoContainer;
- (void)_createItemFinderAlgoContainer;
- (void)_createPeerFindingAlgoContainer;
- (void)_createPeopleFinderAlgoContainer;
- (void)_createSyntheticApertureAlgoContainer:(BOOL)container;
- (void)_createWatchItemFinderAlgoContainer;
- (void)_handleBoundedRegionRange:(double)range forDevice:(unint64_t)device rangeResult:(optional<nearby::algorithms::common::RangeResult> *)result;
- (void)_handleDeviceMonitorActivation:(BOOL)activation forDevice:(unint64_t)device timestamp:(double)timestamp regionSizeCategory:(int)category regions:(optional<std:(int)regions :vector<nearby::algorithms::region_monitoring::Region>> *)a7 predictorType:;
- (void)_handleRegionChangeForDevice:(unint64_t)device currentRegion:(optional<nearby::algorithms::region_monitoring::Region> *)region prevRegion:timestamp:rangeResult:intentPrediction:regionTransitionSuppressed:;
- (void)_handleWiFiRangeResults:(const void *)results;
- (void)_sendTimeTupleToAlgorithms;
- (void)acceptAltimeterData:(const AltimeterInput *)data;
- (void)acceptBluetoothSample:(const void *)sample coarseEstimation:(BOOL)estimation regionCategory:(int64_t)category;
- (void)acceptDTTagMeasurements:(const void *)measurements;
- (void)acceptDeviceMotion:(const void *)motion;
- (void)acceptDeviceMotionInput:(const void *)input;
- (void)acceptDeviceMovingState:(BOOL)state;
- (void)acceptDevicePDRInput:(const void *)input;
- (void)acceptDiscoveryEventForPeer:(id)peer;
- (void)acceptGnssSatelliteData:(const void *)data;
- (void)acceptHeadingData:(const HeadingInput *)data;
- (void)acceptMagneticFieldStrength:(double)strength;
- (void)acceptMotionActivity:(const MotionActivityInput *)activity;
- (void)acceptNearbyObjectMovement:(BOOL)movement;
- (void)acceptPedometerData:(const PedometerDataInput *)data;
- (void)acceptPedometerEvent:(const PedometerEventInput *)event;
- (void)acceptPeerData:(const void *)data fromPeer:(id)peer;
- (void)acceptPeerDeviceType:(BOOL)type;
- (void)acceptPeerLocationData:(const LocationInput *)data forPeer:(id)peer;
- (void)acceptPositionDisplacement:(const void *)displacement;
- (void)acceptRoseSolution:(const void *)solution;
- (void)acceptRoseSolution:(const void *)solution withProcessingOptions:(const AlgorithmProcessingOptions *)options;
- (void)acceptSelfLocationData:(const LocationInput *)data;
- (void)acceptUnsuccessfulRoseSolution:(const void *)solution;
- (void)acceptVisionInput:(id)input;
- (void)acceptWatchOrientation:(const WatchOrientationInput *)orientation;
- (void)clearStateForToken:(id)token;
- (void)fillNearbyObject:(id)object fromRangeResult:(const void *)result;
- (void)fillNearbyObject:(id)object fromSolution:(const void *)solution;
- (void)getPeerDataFromFindingContainerWithToken:(id)token;
- (void)invalidate;
- (void)logSolution:(const void *)solution;
- (void)probeRegions;
- (void)processUWBResultForRegionMonitoring:(id)monitoring roseSolution:(const void *)solution processingOptions:(const AlgorithmProcessingOptions *)options;
- (void)processUWBResultForSyntheticAperture:(id)aperture roseSolution:(const void *)solution;
- (void)provideFindingSolution:(id)solution;
- (void)reportAndLogNearbyObject:(id)object;
- (void)setFindingPeerToken:(id)token;
@end

@implementation NINearbyUpdatesEngine

- (NINearbyUpdatesEngine)initWithConfiguration:(id)configuration queue:(id)queue delegate:(id)delegate dataSource:(id)source analyticsManager:(id)manager protobufLogger:(shared_ptr<rose:(id *)logger :protobuf::Logger>)a8 error:
{
  v10 = v9;
  configurationCopy = configuration;
  queueCopy = queue;
  delegateCopy = delegate;
  sourceCopy = source;
  managerCopy = manager;
  if (configurationCopy)
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }

LABEL_23:
    v37 = +[NSAssertionHandler currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"NIServerNearbyUpdatesEngine.mm" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    if (sourceCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v36 = +[NSAssertionHandler currentHandler];
  [v36 handleFailureInMethod:a2 object:self file:@"NIServerNearbyUpdatesEngine.mm" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

  if (!delegateCopy)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (sourceCopy)
  {
    goto LABEL_4;
  }

LABEL_24:
  v38 = +[NSAssertionHandler currentHandler];
  [v38 handleFailureInMethod:a2 object:self file:@"NIServerNearbyUpdatesEngine.mm" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];

LABEL_4:
  if (!a8.__ptr_)
  {
    v39 = +[NSAssertionHandler currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"NIServerNearbyUpdatesEngine.mm" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v43.receiver = self;
  v43.super_class = NINearbyUpdatesEngine;
  v21 = [(NINearbyUpdatesEngine *)&v43 init];
  v22 = v21;
  v23 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_queue, queue);
    objc_storeWeak(&v22->_delegate, delegateCopy);
    objc_storeWeak(&v22->_dataSource, sourceCopy);
    v25 = *v10;
    v24 = v10[1];
    if (v24)
    {
      atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
    }

    cntrl = v23->_protobufLogger.__cntrl_;
    v23->_protobufLogger.__ptr_ = v25;
    v23->_protobufLogger.__cntrl_ = v24;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }

    objc_storeStrong(&v22->_analyticsManager, manager);
    if (sourceCopy)
    {
      objc_msgSend_uniqueIdentifierForEngine_(sourceCopy);
    }

    else
    {
      v41 = 0uLL;
      v42 = 0;
    }

    if (*(&v23->_uniqueIdentifier.__rep_.__l + 23) < 0)
    {
      operator delete(v22->_uniqueIdentifier.__rep_.__l.__data_);
    }

    *v22->_uniqueIdentifier.__rep_.__s.__data_ = v41;
    *(&v22->_uniqueIdentifier.__rep_.__l + 2) = v42;
    v23->_rangeMeasSourcePref = 0;
    v28 = objc_opt_new();
    convStateForObject = v23->_convStateForObject;
    v23->_convStateForObject = v28;

    *&v23->_shouldBypassBiasCorrection = 1;
    v30 = +[NSUserDefaults standardUserDefaults];
    v23->_onlySendKinematicFindeeData = [v30 BOOLForKey:@"NIFindingOnlySendKinematicPeerData"];

    *&v23->_findingLatencyBookkeeping.receivedFirstMeasurement = 0u;
    *&v23->_findingLatencyBookkeeping.lastProcessTimeSeconds = 0u;
    previousNIObjectUpdate = v23->_previousNIObjectUpdate;
    v23->_previousNIObjectUpdate = 0;

    v32 = [(NINearbyUpdatesEngine *)v23 configure:configurationCopy];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
      v27 = 0;
      *a8.__ptr_ = v33;
    }

    else
    {
      v27 = v23;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)_configureRangeBiasEstimator
{
  self->_shouldBypassBiasCorrection = 0;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"NIHomeBypassResponderBiasEstimation"];

  if (v4)
  {
    v5 = [v3 BOOLForKey:@"NIHomeBypassResponderBiasEstimation"];
    self->_shouldBypassBiasCorrection = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (self->_shouldBypassBiasCorrection)
  {
LABEL_3:
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#bias-est Bypassing range bias estimation", buf, 2u);
    }

    goto LABEL_17;
  }

  if (byte_1009F7537 >= 0)
  {
    v7 = &qword_1009F7520;
  }

  else
  {
    v7 = qword_1009F7520;
  }

  v8 = [NSString stringWithUTF8String:v7];
  if (byte_1009F754F >= 0)
  {
    v9 = &qword_1009F7538;
  }

  else
  {
    v9 = qword_1009F7538;
  }

  v10 = [NSString stringWithUTF8String:v9];
  v11 = [[NIMLModelResourceFileHandler alloc] initWithResourceBundleDirectory:v8 bundleName:v10];
  v12 = objc_alloc_init(RangeBiasEstimatorSingleAntennaModel);
  rangeBiasEstimatorSingleAntennaModel = self->_rangeBiasEstimatorSingleAntennaModel;
  self->_rangeBiasEstimatorSingleAntennaModel = v12;

  if (![(RangeBiasEstimatorSingleAntennaModel *)self->_rangeBiasEstimatorSingleAntennaModel configureWithResourceFileHandler:v11])
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C5AD0();
    }

    self->_shouldBypassBiasCorrection = 1;
  }

LABEL_17:
  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    if (self->_shouldBypassBiasCorrection)
    {
      LOBYTE(v24[0]) = 0;
      v25 = 0;
      sub_1002E5478(ptr, 0, 0, v24);
      if (v25 == 1)
      {
        v15 = v24[0];
        if (v24[0])
        {
          v24[1] = v24[0];
LABEL_27:
          operator delete(v15);
        }
      }
    }

    else
    {
      *buf = 0;
      v22 = 0;
      v23 = 0;
      sub_100019AC4(buf, qword_10056DC58, &xmmword_10056DCB0, 0xBuLL);
      v16 = self->_protobufLogger.__ptr_;
      v18 = 0;
      v19 = 0;
      __p = 0;
      sub_100012F38(&__p, *buf, v22, (v22 - *buf) >> 3);
      v20 = 1;
      sub_1002E5478(v16, 1, 0x100000002, &__p);
      if (v20 == 1 && __p)
      {
        v18 = __p;
        operator delete(__p);
      }

      v15 = *buf;
      if (*buf)
      {
        v22 = *buf;
        goto LABEL_27;
      }
    }
  }
}

- (id)configure:(id)configure
{
  configureCopy = configure;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v50) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nrby-eng,configure", &v50, 2u);
  }

  objc_storeStrong(&self->_configuration, configure);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NINearbyUpdatesEngine *)self _configureRangeBiasEstimator];
    v7 = self->_configuration;
    monitoredRegions = [(NIConfiguration *)v7 monitoredRegions];
    v9 = [(NINearbyUpdatesEngine *)self _configureForRegionMonitoring:monitoredRegions];

    self->_rangeMeasSourcePref = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NINearbyUpdatesEngine *)self _configureRangeBiasEstimator];
LABEL_8:
    v9 = 0;
    self->_rangeMeasSourcePref = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = self->_configuration;
    debugParameters = [(NIConfiguration *)v20 debugParameters];
    if (debugParameters)
    {
      debugParameters2 = [(NIConfiguration *)v20 debugParameters];
      v23 = [debugParameters2 objectForKey:@"enableAdditionalUWBSignalFeatures"];
      v24 = v23 == 0;

      if (!v24)
      {
        [(NINearbyUpdatesEngine *)self _configureRangeBiasEstimator];
      }
    }

    self->_rangeMeasSourcePref = 0;

    goto LABEL_72;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(NINearbyUpdatesEngine *)self _configureForLocalization:self->_configuration];
      goto LABEL_9;
    }

LABEL_72:
    v9 = 0;
    goto LABEL_9;
  }

  v34 = self->_configuration;
  monitoredRegions2 = [(NIConfiguration *)v34 monitoredRegions];
  v36 = monitoredRegions2 == 0;

  if (v36)
  {
    innerBoundary = [(NIConfiguration *)v34 innerBoundary];
    v52[0] = innerBoundary;
    outerBoundary = [(NIConfiguration *)v34 outerBoundary];
    v52[1] = outerBoundary;
    v49 = [NSArray arrayWithObjects:v52 count:2];
    v9 = [(NINearbyUpdatesEngine *)self _configureForRegionMonitoring:v49];
  }

  else
  {
    innerBoundary = [(NIConfiguration *)v34 monitoredRegions];
    v9 = [(NINearbyUpdatesEngine *)self _configureForRegionMonitoring:innerBoundary];
  }

LABEL_9:
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"ForcePeerFindingAlgorithms"];

  if (v11)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v50) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#nrby-eng,ForcePeerFindingAlgorithms set.  ", &v50, 2u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      p_uniqueIdentifier = &self->_uniqueIdentifier;
      if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
      {
        p_uniqueIdentifier = p_uniqueIdentifier->__rep_.__l.__data_;
      }

      v50 = 136315138;
      v51 = p_uniqueIdentifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_configuration is NIFindingConfiguration. Unique identifier: %s", &v50, 0xCu);
    }

    v15 = self->_configuration;
    discoveryTokenVariant = [(NIConfiguration *)v15 discoveryTokenVariant];
    if (discoveryTokenVariant > 1)
    {
      if (discoveryTokenVariant == 2)
      {
        requestedMeasurementQuality = [(NIConfiguration *)v15 requestedMeasurementQuality];
        if (requestedMeasurementQuality == 3)
        {
          monitoredRegions3 = [(NIConfiguration *)v15 monitoredRegions];
          v41 = monitoredRegions3 == 0;

          if (!v41)
          {
            monitoredRegions4 = [(NIConfiguration *)v15 monitoredRegions];
            v43 = [(NINearbyUpdatesEngine *)self _configureForRegionMonitoring:monitoredRegions4];

            v9 = v43;
          }
        }

        else if (requestedMeasurementQuality == 1)
        {
          v31 = +[NSUserDefaults standardUserDefaults];
          v32 = [v31 BOOLForKey:@"EnableWatchItemFindingOnPhone"];

          if (v32)
          {
            v33 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v50) = 0;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#nrby-eng,For test purposes enabling watch item finding on phone", &v50, 2u);
            }

            [(NINearbyUpdatesEngine *)self _createWatchItemFinderAlgoContainer];
            LOWORD(v50) = 0;
            [(NINearbyUpdatesEngine *)self acceptWatchOrientation:&v50];
          }

          else
          {
            v46 = sub_1000054A8();
            if (sub_100003AA8(v46[144]))
            {
              [(NINearbyUpdatesEngine *)self _createItemFinderAlgoContainer];
            }
          }

          self->_shouldUseRawRangeAndSensorFusionAngle = 1;
        }

        goto LABEL_81;
      }

      if (discoveryTokenVariant != 3)
      {
LABEL_81:

        goto LABEL_82;
      }
    }

    else if (discoveryTokenVariant)
    {
      if (discoveryTokenVariant == 1)
      {
        if (([(NIConfiguration *)v15 isFinder]& 1) != 0)
        {
          v17 = +[NSUserDefaults standardUserDefaults];
          v18 = [v17 BOOLForKey:@"EnableDeviceFindingOnPhone"];

          if (v18)
          {
            v19 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v50) = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#nrby-eng,For rdar://102527413 (Test hook to use Wenda arrow interface on phone), enabling device finding on phone", &v50, 2u);
            }

            [(NINearbyUpdatesEngine *)self _createDeviceFinderAlgoContainer];
          }

          else
          {
            v45 = sub_1000054A8();
            if (sub_100003AA8(v45[144]))
            {
              [(NINearbyUpdatesEngine *)self _createPeopleFinderAlgoContainer];
            }
          }
        }

        else
        {
          [(NINearbyUpdatesEngine *)self _createFindeeAlgoContainer];
        }
      }

      goto LABEL_81;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C5B0C();
    }

    goto LABEL_81;
  }

  if (v11)
  {
LABEL_26:
    [(NINearbyUpdatesEngine *)self _createPeerFindingAlgoContainer];
    goto LABEL_82;
  }

  if ([(NIConfiguration *)self->_configuration _internalIsExtendedDistanceMeasurementEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = self->_configuration;
      if (![(NIConfiguration *)v15 useCase])
      {
        [(NINearbyUpdatesEngine *)self _createPeerFindingAlgoContainer];
      }

      goto LABEL_81;
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      data = &self->_uniqueIdentifier;
      if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
      {
        data = data->__rep_.__l.__data_;
      }

      v50 = 136315138;
      v51 = data;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_configuration is NIItemLocalizerConfiguration. Unique identifier: %s", &v50, 0xCu);
    }

    v27 = +[NSUserDefaults standardUserDefaults];
    v28 = [v27 BOOLForKey:@"EnableWatchItemFindingOnPhone"];

    if (v28)
    {
      v29 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v50) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#nrby-eng,For test purposes enabling watch item finding on phone", &v50, 2u);
      }

      [(NINearbyUpdatesEngine *)self _createWatchItemFinderAlgoContainer];
      LOWORD(v50) = 0;
      [(NINearbyUpdatesEngine *)self acceptWatchOrientation:&v50];
    }

    else
    {
      v44 = sub_1000054A8();
      if (sub_100003AA8(v44[144]))
      {
        [(NINearbyUpdatesEngine *)self _createItemFinderAlgoContainer];
      }
    }

    self->_shouldUseRawRangeAndSensorFusionAngle = 1;
  }

  else if ([(NIConfiguration *)self->_configuration _internalIsCameraAssistanceEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v38 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v39 = &self->_uniqueIdentifier;
        if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
        {
          v39 = v39->__rep_.__l.__data_;
        }

        v50 = 136315138;
        v51 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_configuration is NINearbyPeerConfiguration|NINearbyAccessoryConfiguration. Unique identifier: %s", &v50, 0xCu);
      }

      [(NINearbyUpdatesEngine *)self _createSyntheticApertureAlgoContainer:1];
    }
  }

LABEL_82:

  return v9;
}

- (id)_configureForRegionMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  if ([monitoringCopy count])
  {
    selfCopy = self;
    v4 = objc_opt_new();
    regionDict = selfCopy->_regionDict;
    selfCopy->_regionDict = v4;

    v153 = 0;
    v152 = 0;
    v154 = 0;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    obj = monitoringCopy;
    v6 = [obj countByEnumeratingWithState:&v148 objects:v236 count:16];
    if (v6)
    {
      v7 = *v149;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v149 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v148 + 1) + 8 * i);
          v10 = [NIRegionKey alloc];
          name = [v9 name];
          v12 = -[NIRegionKey initWithName:regionSizeCategory:](v10, "initWithName:regionSizeCategory:", name, [v9 regionSizeCategory]);

          [(NSMutableDictionary *)selfCopy->_regionDict setObject:v9 forKey:v12];
          name2 = [v9 name];
          v14 = name2;
          sub_100004A08(v119, [name2 UTF8String]);
          [v9 radius];
          v16 = v15;
          regionSizeCategory = [v9 regionSizeCategory];
          preferredUpdateRate = [v9 preferredUpdateRate];
          if ((preferredUpdateRate - 1) >= 3)
          {
            v19 = 1;
          }

          else
          {
            v19 = preferredUpdateRate + 1;
          }

          devicePresencePreset = [v9 devicePresencePreset];
          if ((devicePresencePreset - 1) >= 8)
          {
            v21 = 1;
          }

          else
          {
            v21 = devicePresencePreset + 1;
          }

          requiresUserIntent = [v9 requiresUserIntent];
          if (SHIBYTE(v120[0]) < 0)
          {
            sub_1000056BC(__p, v119[0], v119[1]);
          }

          else
          {
            *__p = *v119;
            *&__p[16] = v120[0];
          }

          *&__p[24] = v16;
          *&__p[28] = regionSizeCategory;
          *&__p[32] = v19;
          *&__p[36] = v21;
          LOWORD(v171) = requiresUserIntent;
          v23 = v153;
          if (v153 >= v154)
          {
            v153 = sub_10038C618(&v152, __p);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          else
          {
            v24 = *__p;
            *(v153 + 16) = *&__p[16];
            *v23 = v24;
            memset(__p, 0, 24);
            v25 = v171;
            *(v23 + 24) = *&__p[24];
            *(v23 + 40) = v25;
            v153 = v23 + 48;
          }

          if (SHIBYTE(v120[0]) < 0)
          {
            operator delete(v119[0]);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v148 objects:v236 count:16];
      }

      while (v6);
    }

    v26 = qword_1009F9820;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C5B48(v235, [(NSMutableDictionary *)selfCopy->_regionDict count], v26);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v27 = selfCopy->_regionDict;
    v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v144 objects:v234 count:16];
    if (v28)
    {
      v29 = 0;
      v30 = *v145;
      do
      {
        v31 = 0;
        do
        {
          if (*v145 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v144 + 1) + 8 * v31);
          v33 = qword_1009F9820;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v34 = [v32 description];
            v35 = [(NSMutableDictionary *)selfCopy->_regionDict objectForKey:v32];
            v36 = [v35 description];
            *__p = 67109634;
            *&__p[4] = v29;
            *&__p[8] = 2112;
            *&__p[10] = v34;
            *&__p[18] = 2112;
            *&__p[20] = v36;
            _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "#nrby-eng,#region-class _regionDict (%d) key %@: %@", __p, 0x1Cu);
          }

          ++v29;
          v31 = v31 + 1;
        }

        while (v28 != v31);
        v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v144 objects:v234 count:16];
      }

      while (v28);
    }

    v37 = qword_1009F9820;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      p_uniqueIdentifier = &selfCopy->_uniqueIdentifier;
      if (*(&selfCopy->_uniqueIdentifier.__rep_.__l + 23) < 0)
      {
        p_uniqueIdentifier = p_uniqueIdentifier->__data_;
      }

      v39 = selfCopy->_regionDict;
      *__p = 136315394;
      *&__p[4] = p_uniqueIdentifier;
      *&__p[12] = 2112;
      *&__p[14] = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions _configureForRegionMonitoring. Unique identifier: %s. Regions: %@", __p, 0x16u);
    }

    v113 = +[NSUserDefaults standardUserDefaults];
    [v113 doubleForKey:@"RegMonFilterAlphaOverride"];
    v41 = v40;
    [v113 doubleForKey:@"RegMonHystEnterDistMOverride"];
    v43 = v42;
    [v113 doubleForKey:@"RegMonHystExitDistMOverride"];
    v45 = v44;
    [v113 doubleForKey:@"HandoffUserIntentScoreThresholdOverride"];
    v47 = v46;
    v111 = DWORD1(xmmword_1009F7568);
    v48 = *&xmmword_1009F7568;
    v49 = *(&xmmword_1009F7568 + 3);
    v50 = *(&xmmword_1009F7568 + 2);
    v51 = qword_1009F7578;
    v231 = unk_1009F75A0;
    v232 = *&dword_1009F75B0;
    v233 = qword_1009F75C0;
    v229 = unk_1009F7580;
    v230 = *&qword_1009F7590;
    if (v41 > 0.0 && v41 < 1.0)
    {
      v52 = qword_1009F9820;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 134217984;
        *&__p[4] = v41;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override regMonFilterAlphaOverride = %f", __p, 0xCu);
      }

      v48 = v41;
    }

    if (v43 > 0.0)
    {
      v53 = qword_1009F9820;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 134217984;
        *&__p[4] = v43;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override regMonHystEnterDistMOverride = %f", __p, 0xCu);
      }

      v49 = v43;
    }

    if (v45 > 0.0)
    {
      v54 = qword_1009F9820;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 134217984;
        *&__p[4] = v45;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override regMonHystExitDistMOverride = %f", __p, 0xCu);
      }

      v50 = v45;
    }

    if (v47 > 0.0)
    {
      v55 = qword_1009F9820;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 134217984;
        *&__p[4] = v47;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override handoffUserIntentScoreThresholdOverride = %f", __p, 0xCu);
      }

      v51 = *&v47;
    }

    v56 = byte_1009F75C8;
    v227 = unk_1009F7629;
    v228[0] = *(&xmmword_1009F7638 + 1);
    *(v228 + 15) = qword_1009F7648;
    v223 = unk_1009F75E9;
    v224 = *(&xmmword_1009F75F8 + 1);
    v225 = *(&qword_1009F7608 + 1);
    v226 = *(&xmmword_1009F7618 + 1);
    v221 = unk_1009F75C9;
    v222 = *(&xmmword_1009F75D8 + 1);
    if ([v113 BOOLForKey:@"RegMonDisableRVKalmanFilter"])
    {
      v57 = qword_1009F9820;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override disabled rv kalman filters", __p, 2u);
      }

      v56 = 1;
    }

    sub_10038C990(v142, qword_1009F7550);
    v110 = qword_1009F7650;
    v58 = *&xmmword_1009F7658;
    v139 = *(&xmmword_1009F7658 + 8);
    v140 = unk_1009F7670;
    v141 = *(&xmmword_1009F7678 + 8);
    v60 = *(&xmmword_1009F7690 + 1);
    v59 = xmmword_1009F7690;
    v61 = qword_1009F76A0;
    v220[0] = *(&xmmword_1009F76D0 + 8);
    v220[1] = *&qword_1009F76E8;
    v218 = *&qword_1009F76B8;
    v219 = unk_1009F76C8;
    v217 = xmmword_1009F76A8;
    [v113 doubleForKey:@"RegMonKalmanFilterHystUpperOverride"];
    v109 = v62;
    [v113 doubleForKey:@"RegMonKalmanFilterHystLowerOverride"];
    v108 = v63;
    v64 = [v113 integerForKey:@"RegMonKalmanFilterNStartupMeasurementsOverride"];
    [v113 doubleForKey:@"RegMonKalmanFilterProcessStdOverride"];
    v66 = v65;
    v67 = [v113 integerForKey:@"RegMonKalmanFilterTimeoutSeconds"];
    if (v64 > 0)
    {
      v68 = qword_1009F9820;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 67109120;
        *&__p[4] = v64;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override RegMonKalmanFilterNStartupMeasurementsOverride = %i", __p, 8u);
      }

      v59 = v64 & 0x7FFFFFFF;
    }

    if (v66 > 0.0)
    {
      v69 = qword_1009F9820;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 134217984;
        *&__p[4] = v66;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override RegMonKalmanFilterProcessStdOverride = %f", __p, 0xCu);
      }

      v58 = v66;
    }

    if (v67 >= 1)
    {
      v70 = qword_1009F9820;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 67109120;
        *&__p[4] = v67;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override RegMonKalmanFilterTimeoutSeconds = %i", __p, 8u);
      }

      v60 = v67 & 0x7FFFFFFF;
    }

    v71 = [v113 integerForKey:@"RegMonThresholdDetectorBufferSize"];
    *v119 = xmmword_1009F76F8;
    sub_10029F1D8(v120, algn_1009F7708);
    v121[0] = xmmword_1009F7720;
    *(v121 + 12) = *(&xmmword_1009F7720 + 12);
    sub_10029F2B8(v122, &byte_1009F7740);
    v135 = xmmword_1009F7800;
    v136 = *&dword_1009F7810;
    v137 = xmmword_1009F7820;
    v131 = xmmword_1009F77C0;
    v132 = unk_1009F77D0;
    v133 = xmmword_1009F77E0;
    v134 = unk_1009F77F0;
    v127 = *(&xmmword_1009F7778 + 8);
    v128 = *(&xmmword_1009F7788 + 8);
    v129 = *(&xmmword_1009F7798 + 8);
    v130 = xmmword_1009F77B0;
    v125 = xmmword_1009F7760;
    v138 = qword_1009F7830;
    v126 = *&byte_1009F7770;
    if (v71 >= 1)
    {
      LODWORD(v119[0]) = v71;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = selfCopy->_configuration;
      token = [v72 token];
      v74 = token == 0;

      if (!v74)
      {
        BYTE8(v125) = 1;
        LOBYTE(v126) = 0;
      }

LABEL_77:

      goto LABEL_78;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = +[NSUserDefaults standardUserDefaults];
      v80 = [v79 BOOLForKey:@"HomeDeviceSessionBTLeechingEnabled"];

      if (v80)
      {
        BYTE8(v125) = 1;
        LOBYTE(v126) = 0;
        *&v130 = 1;
        v72 = qword_1009F9820;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions #config-override Enable BT-based region monitoring in Home session with HomeDeviceSessionBTLeechingEnabled.", __p, 2u);
        }

        goto LABEL_77;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v72 = selfCopy->_configuration;
        if ([v72 requestedMeasurementQuality]== 3)
        {
          sub_10029E5A4(v119);
        }

        goto LABEL_77;
      }
    }

LABEL_78:
    v75 = [v113 integerForKey:@"RegMonBoundedRegionRangeEstimatorType"];
    if (v75 < 1)
    {
      goto LABEL_99;
    }

    if (v75 == 1)
    {
      HIDWORD(v125) = 1;
      v76 = qword_1009F9820;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        v77 = "#nrby-eng,#regions #config-override RegMonBoundedRegionRangeEstimatorType = KALMAN_FILTER";
        goto LABEL_97;
      }
    }

    else if (v75 == 2)
    {
      HIDWORD(v125) = 2;
      v76 = qword_1009F9820;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        v77 = "#nrby-eng,#regions #config-override RegMonBoundedRegionRangeEstimatorType = MAX_OF_MEAN_OF_CHAN_FILTER";
LABEL_97:
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, v77, __p, 2u);
      }
    }

    else
    {
      v76 = qword_1009F9820;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        v77 = "#nrby-eng,#regions #config-override Invalid value specified for RegMonBoundedRegionRangeEstimatorType, NOT overriding";
        goto LABEL_97;
      }
    }

LABEL_99:
    sub_10038C990(__p, v142);
    v81.f64[0] = v109;
    v81.f64[1] = v108;
    *&__p[24] = v48;
    *&__p[28] = v111;
    *&__p[32] = v50;
    *&__p[36] = v49;
    v171 = v51;
    v174 = v231;
    v175 = v232;
    v176 = v233;
    v172 = v229;
    v173 = v230;
    v177 = v56;
    v178 = v221;
    v182 = v225;
    v181 = v224;
    v180 = v223;
    v179 = v222;
    *&v185[15] = *(v228 + 15);
    *v185 = v228[0];
    v184 = v227;
    v183 = v226;
    v186 = v110;
    v187 = v58;
    v188 = v139;
    v189 = v140;
    v190 = v141;
    v191 = v59;
    v192 = v60;
    v193 = vbsl_s8(vmovn_s64(vcgtzq_f64(v81)), vcvt_f32_f64(v81), v61);
    v196 = v219;
    v197[0] = v220[0];
    *(v197 + 12) = *(v220 + 12);
    v194 = v217;
    v195 = v218;
    v197[2] = *v119;
    sub_10029F1D8(v198, v120);
    *(v199 + 12) = *(v121 + 12);
    v199[0] = v121[0];
    sub_10029F2B8(&v200, v122);
    v213 = v135;
    v214 = v136;
    v215 = v137;
    v216 = v138;
    v209 = v131;
    v210 = v132;
    v211 = v133;
    v212 = v134;
    v205 = v127;
    v206 = v128;
    v207 = v129;
    v208 = v130;
    v203 = v125;
    v204 = v126;
    v82 = selfCopy;
    selfCopy->_localIntentPredictorPreference = [(NINearbyUpdatesEngine *)selfCopy _setReadValidateDefaultsWriteForTypeOfPredictor];
    sub_10030302C(v118);
    localIntentPredictorPreference = selfCopy->_localIntentPredictorPreference;
    if (localIntentPredictorPreference <= 1)
    {
      if (localIntentPredictorPreference)
      {
        if (localIntentPredictorPreference != 1)
        {
LABEL_133:
          v166 = 0;
          v164 = 0;
          v162 = 0;
          v160 = 0;
          v158 = 0;
          objc_msgSend__getRegionSizeCategoriesFromRegions_(v82);
          if (v116 != &v117)
          {
            sub_100303030(&buf, v118);
            operator new();
          }

          sub_10002074C(&v116, v117);
          ptr = selfCopy->_protobufLogger.__ptr_;
          if (ptr)
          {
            v103 = sub_100015080(v101);
            v104 = v103;
            sub_100004A08(&buf, [v103 UTF8String]);
            v155 = 0;
            v156 = 1;
            sub_1002E2058(ptr, &selfCopy->_uniqueIdentifier, &v152, __p, &buf, &v155);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          sub_10038CC70(v157);
          sub_10038CBF0(v159);
          sub_10038CB70(v161);
          sub_10038CAF0(v163);
          sub_10038CA70(v165);
          for (j = 0; j != -64; j -= 32)
          {
            v106 = &v118[j];
            if (v118[j + 56] == 1 && *(v106 + 55) < 0)
            {
              operator delete(v106[4]);
            }
          }

          if (v202 == 1 && v201 < 0)
          {
            operator delete(v200);
          }

          sub_10002074C(v198, v198[1]);
          sub_10002074C(__p, *&__p[8]);
          if (v124 == 1 && v123 < 0)
          {
            operator delete(v122[0]);
          }

          sub_10002074C(v120, v120[1]);
          sub_10002074C(v142, v143);

          *__p = &v152;
          sub_10038C574(__p);

          goto LABEL_151;
        }

        goto LABEL_106;
      }

      v95 = qword_1009F9820;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = 0xBFB999999999999ALL;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#spatialGesturesPredictor Using default user intent threshold value for (no AoA + no spatial gestures) predictor: %f", &buf, 0xCu);
      }
    }

    else
    {
      if (localIntentPredictorPreference != 2)
      {
        if (localIntentPredictorPreference != 3)
        {
          if (localIntentPredictorPreference == 4)
          {
            __assert_rtn("[NINearbyUpdatesEngine _configureForRegionMonitoring:]", "NIServerNearbyUpdatesEngine.mm", 756, "false");
          }

          goto LABEL_133;
        }

LABEL_106:
        sub_100303030(&buf, v118);
        v84 = 0;
        v85 = v168;
        do
        {
          v86 = (&buf.__r_.__value_.__l.__data_ + v84);
          if (v169[v84] == 1 && *(v86 + 55) < 0)
          {
            operator delete(v86[4]);
          }

          v84 -= 32;
        }

        while (v84 != -64);
        v87 = qword_1009F9820;
        v88 = v87;
        if (!v85)
        {
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            sub_1004C5B90();
          }

          v82 = selfCopy;
          selfCopy->_localIntentPredictorPreference = 0;
          goto LABEL_133;
        }

        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#spatialGesturesPredictor Successfully obtained trained model weights filepath", &buf, 2u);
        }

        v89 = +[NSUserDefaults standardUserDefaults];
        v90 = [v89 objectForKey:@"SpatialGesturesIntentPredictorThresholdSingleAntenna"];
        v91 = v90 == 0;

        if (!v91)
        {
          [v89 doubleForKey:@"SpatialGesturesIntentPredictorThresholdSingleAntenna"];
          v93 = v92;
          v94 = qword_1009F9820;
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
            *(buf.__r_.__value_.__r.__words + 4) = v93;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#spatialGesturesPredictor Setting user intent threshold value for spatial gestures single antenna predictor: %f", &buf, 0xCu);
          }
        }

        v96 = [v89 objectForKey:@"SpatialGesturesIntentPredictorThresholdDualAntenna"];
        v97 = v96 == 0;

        if (!v97)
        {
          [v89 doubleForKey:@"SpatialGesturesIntentPredictorThresholdDualAntenna"];
          v99 = v98;
          v100 = qword_1009F9820;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
            *(buf.__r_.__value_.__r.__words + 4) = v99;
            _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#spatialGesturesPredictor Setting user intent threshold value for spatial gestures dual antenna predictor: %f", &buf, 0xCu);
          }
        }

        goto LABEL_132;
      }

      v95 = qword_1009F9820;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = 0x3FE8000000000000;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#spatialGesturesPredictor Using default user intent threshold value for AoA predictor: %f", &buf, 0xCu);
      }
    }

LABEL_132:
    v82 = selfCopy;
    goto LABEL_133;
  }

  v78 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions No regions to be monitored.", __p, 2u);
  }

LABEL_151:

  return 0;
}

- (id)_configureForLocalization:(id)localization
{
  v8 = 1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"NIDLTDOADisableSensorFusion"];

  if (v5)
  {
    LOBYTE(v8) = 0;
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E91B0(ptr, &v8);
  }

  operator new();
}

- (int)_setReadValidateDefaultsWriteForTypeOfPredictor
{
  v2 = +[NSUserDefaults standardUserDefaults];
  if ((atomic_load_explicit(&qword_1009F7960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F7960))
  {
    dword_1009F7958 = *(sub_1000054A8() + 144);
    __cxa_guard_release(&qword_1009F7960);
  }

  v3 = [v2 objectForKey:@"HandoffIntentPredictorType"];

  if (!v3)
  {
    if (dword_1009F7958 > 99)
    {
      if (dword_1009F7958 > 199)
      {
        if ((dword_1009F7958 - 200) >= 3 && dword_1009F7958 != 997 && dword_1009F7958 != 999)
        {
          goto LABEL_3;
        }
      }

      else if ((dword_1009F7958 - 100) >= 0x1B)
      {
        goto LABEL_3;
      }

      v6 = qword_1009F9820;
      v5 = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#intentPredictorDefaultsWrite Intent predictor not enabled for this device type", v9, 2u);
        v5 = 0;
      }

      goto LABEL_33;
    }

    if (dword_1009F7958 < 0x1C)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#intentPredictorDefaultsWrite Intent predictor type for this device: Spatial Gestures", buf, 2u);
      }

      v5 = 3;
      goto LABEL_33;
    }
  }

LABEL_3:
  v4 = [v2 integerForKey:@"HandoffIntentPredictorType"];
  v5 = 0;
  if (dword_1009F7958 <= 199)
  {
    if ((dword_1009F7958 - 100) < 0x1B)
    {
      goto LABEL_33;
    }

    if ((dword_1009F7958 - 11) >= 0x11)
    {
      if (dword_1009F7958 >= 0xB || v4 < 4)
      {
        goto LABEL_25;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        sub_1004C5BCC();
      }
    }

    else
    {
      if (v4 <= 3 && v4 != 2)
      {
        goto LABEL_25;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }
    }

    v5 = 1;
    goto LABEL_33;
  }

  if ((dword_1009F7958 - 200) >= 3 && dword_1009F7958 != 997 && dword_1009F7958 != 999)
  {
LABEL_25:
    v5 = v4;
  }

LABEL_33:

  return v5;
}

- (PeopleFinderAlgorithmConfig)_getPeopleFinderAlgorithmConfigForPeerSessions
{
  objc_msgSend__getPeopleFinderAlgorithmConfig(self, a3);
  *&retstr->var8 = vdupq_n_s64(0x7FF0000000000000uLL);
  *&retstr->var11 = 0u;
  *&retstr->var13 = 0u;
  retstr->var19 = INFINITY;
  retstr->var20 = 1;
  v4 = qword_1009F9820;
  result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    var11 = retstr->var11;
    var12 = retstr->var12;
    var13 = retstr->var13;
    var14 = retstr->var14;
    var8 = retstr->var8;
    var9 = retstr->var9;
    v12 = 134219264;
    v13 = var8;
    v14 = 2048;
    v15 = var11;
    v16 = 2048;
    v17 = var12;
    v18 = 2048;
    v19 = var13;
    v20 = 2048;
    v21 = var14;
    v22 = 2048;
    v23 = var9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#nrby-eng,People-finder yield for peer session config set to maxUWBRange, %f, minUWBRangeRate, %f, rangeRateWindow, %f, groupFindingMinUWBRangeRate, %f, groupFindingRangeRateWindow, %f,  maxUWBRangeInFavorableGnssConditions, %f", &v12, 0x3Eu);
  }

  return result;
}

- (PeopleFinderAlgorithmConfig)_getPeopleFinderAlgorithmConfig
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v91 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsDisableCL"];
  v90 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsDisablePF"];
  v89 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsDisableSA"];
  v88 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsDisableSAWithFindeeVIO"];
  v5 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsDisableSARangeOnly"];
  v6 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsEnableStraightPathFilter"];
  v7 = [v4 BOOLForKey:@"DisableUseOfRangesWithStatus7"];
  [v4 doubleForKey:@"PeopleFinderAlgorithmsYieldMaxRange"];
  v9 = v8;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsYieldMaxRangeInFavorableGnssConditions"];
  v11 = v10;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsYieldMinUWBRangeRate"];
  v13 = v12;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsYieldRangeRateWindow"];
  v15 = v14;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsYieldGroupFindingMinUWBRangeRate"];
  v17 = v16;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsYieldGroupFindingRangeRateWindow"];
  v19 = v18;
  v20 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsDisableRelaxedYieldCriteria"];
  v93 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsDisableStrictSABoxSpanRequirement"];
  v92 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsDisableFinderIO"];
  [v4 doubleForKey:@"PeopleFinderMinSvTrackedToAvailableRatioForFavorableGnssConditions"];
  v85 = v21;
  [v4 doubleForKey:@"PeopleFinderMinGnssSatelliteElevationDeg"];
  v83 = v22;
  v87 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsParticleFilterSeedWithCL"];
  v23 = [v4 BOOLForKey:@"PeopleFinderAlgorithmsParticleFilterDisableSeedWithSA"];
  v86 = [v4 integerForKey:@"PeopleFinderAlgorithmsParticleFilterNumParticles"];
  [v4 doubleForKey:@"PeopleFinderAlgorithmsParticleFilterPDRFrameRotationNoiseRads"];
  v84 = v24;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsParticleFilterPDRScaleNoiseMuLognormal"];
  v82 = v25;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsParticleFilterPDRScaleNoiseSigmaLognormal"];
  v81 = v26;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsParticleFilterMultipathProcessVarianceScaling"];
  v80 = v27;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsParticleFilterMultipathMeasurementStd"];
  v79 = v28;
  [v4 doubleForKey:@"PeopleFinderAlgorithmsParticleFilterTrailingMeasurementStdThreshold"];
  v78 = v29;
  v30 = [v4 integerForKey:@"PeopleFinderAlgorithmsParticleFilterNLOSTimeoutSec"];
  v31 = [v4 integerForKey:@"PeopleFinderAlgorithmsParticleFilterNoMeasurementTimeoutSec"];
  v32 = [v4 integerForKey:@"PeopleFinderAlgorithmsParticleFilterConservativeNLOSTimeoutSec"];
  [v4 doubleForKey:@"PeopleFindingFindButtonTimeoutSecondsOverride"];
  v34 = v33;
  *&retstr->var7 = xmmword_10056DB60;
  *&retstr->var9 = xmmword_10056DB70;
  *&retstr->var11 = xmmword_10056DB80;
  __asm { FMOV            V0.2D, #2.0 }

  *&retstr->var13 = _Q0;
  *&retstr->var15.var0 = 0;
  retstr->var15.var2 = 0.05;
  retstr->var15.var3 = 20000;
  *&retstr->var15.var4 = xmmword_10056DB90;
  *&retstr->var15.var6 = xmmword_10056DBA0;
  *&retstr->var15.var8 = xmmword_10056DBB0;
  *&retstr->var15.var10 = xmmword_10056DBC0;
  retstr->var15.var12 = 1;
  retstr->var15.var13 = 5.0;
  retstr->var17 = xmmword_10056DBD0;
  retstr->var19 = 10.0;
  retstr->var20 = 0;
  retstr->var22 = 0;
  LOWORD(_Q0) = v91;
  WORD1(_Q0) = v90;
  WORD2(_Q0) = v89;
  WORD3(_Q0) = v5;
  retstr->var4 = v88 ^ 1;
  *&_Q0 = vbic_s8(0x1000100010001, *&_Q0);
  *&retstr->var0 = vuzp1_s8(*&_Q0, *&_Q0).u32[0];
  retstr->var5 = v6;
  retstr->var6 = v7 ^ 1;
  retstr->var16 = v20 ^ 1;
  retstr->var18 = v93 ^ 1;
  retstr->var21 = v92 ^ 1;
  v40 = +[NSUserDefaults standardUserDefaults];
  v41 = [v40 objectForKey:@"PeopleFinderLowPassFilterTimeConstant"];

  if (v41)
  {
    v42 = +[NSUserDefaults standardUserDefaults];
    [v42 doubleForKey:@"PeopleFinderLowPassFilterTimeConstant"];
    v44 = v43;

    retstr->var7 = v44;
    v45 = qword_1009F9820;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v44;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Setting PeopleFinderAlgorithms low pass filter time constant to %3.2f", buf, 0xCu);
    }
  }

  if (v9 > 0.0)
  {
    retstr->var8 = v9;
  }

  if (v11 > 0.0)
  {
    retstr->var9 = v11;
  }

  if (v13 > 0.0 && v15 > 0.0)
  {
    retstr->var11 = v13;
    retstr->var12 = v15;
  }

  if (v17 > 0.0 && v19 > 0.0)
  {
    retstr->var13 = v17;
    retstr->var14 = v19;
  }

  if (v34 > 0.0)
  {
    retstr->var19 = v34;
  }

  v46 = qword_1009F9820;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    var11 = retstr->var11;
    var12 = retstr->var12;
    var13 = retstr->var13;
    var14 = retstr->var14;
    var16 = retstr->var16;
    var8 = retstr->var8;
    var9 = retstr->var9;
    *buf = 134219520;
    *v95 = var8;
    *&v95[8] = 2048;
    v96 = var11;
    *v97 = 2048;
    *&v97[2] = var12;
    v98 = 2048;
    v99 = var13;
    v100 = 2048;
    v101 = var14;
    v102 = 1024;
    v103 = var16;
    v104 = 2048;
    v105 = var9;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#nrby-eng,People-finder yield config set to maxUWBRange, %f, minUWBRangeRate, %f, rangeRateWindow, %f, groupFindingMinUWBRangeRate, %f, groupFindingRangeRateWindow, %f, enableRelaxedYieldCriteriaInFavorableGnssConditions, %d, maxUWBRangeInFavorableGnssConditions, %f", buf, 0x44u);
  }

  if (!retstr->var1 || !retstr->var2 || !retstr->var4 || !retstr->var3 || !retstr->var0)
  {
    v54 = qword_1009F9820;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      var1 = retstr->var1;
      var2 = retstr->var2;
      var4 = retstr->var4;
      var3 = retstr->var3;
      var0 = retstr->var0;
      *buf = 67110144;
      *v95 = var1;
      *&v95[4] = 1024;
      *&v95[6] = var2;
      LOWORD(v96) = 1024;
      *(&v96 + 2) = var4;
      HIWORD(v96) = 1024;
      *v97 = var3;
      *&v97[4] = 1024;
      *&v97[6] = var0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#nrby-eng,WARNING: One or more estimators disabled via default,pf,%d,sa,%d,savio,%d,saro,%d,cl,%d", buf, 0x20u);
    }
  }

  if (retstr->var5)
  {
    v60 = qword_1009F9820;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Straight path estimator enabled via default", buf, 2u);
    }
  }

  if (v93)
  {
    v61 = qword_1009F9820;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Strict SA box span requirement disabled via default", buf, 2u);
    }
  }

  if (v92)
  {
    v62 = qword_1009F9820;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Finder IO usage enabled via default", buf, 2u);
    }
  }

  if (v86 >= 1)
  {
    retstr->var15.var3 = v86;
    v63 = qword_1009F9820;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v86;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, number of particles in PF: %ld", buf, 0xCu);
    }
  }

  if (v87)
  {
    retstr->var15.var0 = v87;
    v64 = qword_1009F9820;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#nrby-eng,People-finder enabling seeding PF solution with CL arrow", buf, 2u);
    }
  }

  if (v23)
  {
    retstr->var15.var1 = v23;
    v65 = qword_1009F9820;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Disabling the ability to seed PF with SA solution when findee motion detected", buf, 2u);
    }
  }

  if (v84 > 0.0)
  {
    retstr->var15.var2 = v84;
    v66 = qword_1009F9820;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v84;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, pdrFrameRotationNoise: %f rads", buf, 0xCu);
    }
  }

  if (v82 > 0.0)
  {
    retstr->var15.var10 = v82;
    v67 = qword_1009F9820;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v82;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, pdrScaleMu: %f", buf, 0xCu);
    }
  }

  if (v81 > 0.0)
  {
    retstr->var15.var11 = v81;
    v68 = qword_1009F9820;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v81;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, pdrScalSigma: %f", buf, 0xCu);
    }
  }

  if (v80 > 0.0)
  {
    retstr->var15.var4 = v80;
    v69 = qword_1009F9820;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v80;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, processVarInnovationScale: %f", buf, 0xCu);
    }
  }

  if (v79 > 0.0)
  {
    retstr->var15.var5 = v79;
    v70 = qword_1009F9820;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v79;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, measurementStdForInnovationCheck: %f", buf, 0xCu);
    }
  }

  if (v78 > 0.0)
  {
    retstr->var15.var6 = v78;
    v71 = qword_1009F9820;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v78;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, trailingStdThreshold: %f", buf, 0xCu);
    }
  }

  if (v30 >= 1)
  {
    retstr->var15.var7 = v30;
    v72 = qword_1009F9820;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v30;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, nlosTimeThreshSec: %f", buf, 0xCu);
    }
  }

  if (v31 >= 1)
  {
    retstr->var15.var9 = v31;
    v73 = qword_1009F9820;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v31;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, timeoutAfterNoMeasurementsSec: %f", buf, 0xCu);
    }
  }

  if (v32 >= 1)
  {
    retstr->var15.var8 = v32;
    v74 = qword_1009F9820;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v32;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding PF parameter, conservativeNlosTimeThreshSec: %f", buf, 0xCu);
    }
  }

  if (v85 > 0.0)
  {
    retstr->var17.var0 = v85;
    v75 = qword_1009F9820;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v85;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding GRI parameter, minSvTrackedToAvailableRatioForFavorableGnssConditions: %.2lf", buf, 0xCu);
    }
  }

  if (v83 > 0.0 && v83 <= 90.0)
  {
    retstr->var17.var1 = v83;
    v76 = qword_1009F9820;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v95 = v83;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding GRI parameter, minGnssSatelliteElevationDeg: %f", buf, 0xCu);
    }
  }

  return result;
}

- (FindeeAlgorithmConfig)_getFindeeAlgorithmConfig
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"FindeeMinSvTrackedToAvailableRatioForFavorableGnssConditions"];
  v4 = v3;
  [v2 doubleForKey:@"FindeeMinGnssSatelliteElevationDeg"];
  v6 = v5;
  v7 = 0.5;
  if (v4 > 0.0)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding GRI parameter, minSvTrackedToAvailableRatioForFavorableGnssConditions: %.2lf", &v13, 0xCu);
    }

    v7 = v4;
  }

  v9 = 15.0;
  if (v6 > 0.0 && v6 <= 90.0)
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Overriding GRI parameter, minGnssSatelliteElevationDeg: %f", &v13, 0xCu);
    }

    v9 = v6;
  }

  v11 = v7;
  v12 = v9;
  result.var0.var1 = v12;
  result.var0.var0 = v11;
  return result;
}

- (ItemFinderAlgorithmConfig)_getItemFinderAlgorithmConfig
{
  v2 = _os_feature_enabled_impl();
  v3 = qword_1009F9820;
  v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nrby-eng,finder io enabled via feature flag", buf, 2u);
    }

    LOBYTE(v4) = 1;
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nrby-eng,finder io disabled via feature flag", v5, 2u);
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_sendTimeTupleToAlgorithms
{
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (sub_10000A0D4(&v7, &v6, &v5))
  {
    ptr = self->_findingAlgorithmContainer.__ptr_;
    if (ptr)
    {
      *v4 = v5;
      *&v4[1] = v6;
      *&v4[2] = v7;
      if (self->_protobufLogger.__ptr_)
      {
        sub_1002E8D68(self->_protobufLogger.__ptr_, &self->_uniqueIdentifier, v5, v6, v7);
        ptr = self->_findingAlgorithmContainer.__ptr_;
      }

      (*(*ptr + 16))(ptr, v4);
    }
  }
}

- (void)_createSyntheticApertureAlgoContainer:(BOOL)container
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_syntheticApertureFilter created", buf, 2u);
  }

  operator new();
}

- (void)_createPeerFindingAlgoContainer
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_findingAlgorithmContainer = PeerFindingAlgorithms", buf, 2u);
  }

  objc_msgSend__getPeopleFinderAlgorithmConfigForPeerSessions(self);
  [(NINearbyUpdatesEngine *)self _getFindeeAlgorithmConfig];
  operator new();
}

- (void)_createPeopleFinderAlgoContainer
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_findingAlgorithmContainer = PeopleFinderAlgorithms", v4, 2u);
  }

  objc_msgSend__getPeopleFinderAlgorithmConfig(self);
  operator new();
}

- (void)_createDeviceFinderAlgoContainer
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_findingAlgorithmContainer = DeviceFinderAlgorithms", v3, 2u);
  }

  operator new();
}

- (void)_createFindeeAlgoContainer
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_findingAlgorithmContainer = FindeeAlgorithms", v6, 2u);
  }

  [(NINearbyUpdatesEngine *)self _getFindeeAlgorithmConfig];
  v6[0] = v4;
  v6[1] = v5;
  operator new();
}

- (void)_createItemFinderAlgoContainer
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_findingAlgorithmContainer = ItemFinderAlgorithms", v4, 2u);
  }

  [(NINearbyUpdatesEngine *)self _getItemFinderAlgorithmConfig];
  operator new();
}

- (void)_createWatchItemFinderAlgoContainer
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#nrby-eng,_findingAlgorithmContainer = WatchItemFinderAlgorithms", v3, 2u);
  }

  operator new();
}

- (void)provideFindingSolution:(id)solution
{
  solutionCopy = solution;
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    sub_100224EF8(728958076, 1, 0, 0, 0, 0);
    (**self->_findingAlgorithmContainer.__ptr_)(v45);
    sub_100224EF8(728958076, 2, 0, 0, 0, 0);
    ptr = self->_protobufLogger.__ptr_;
    if (ptr)
    {
      sub_1002E8224(ptr, &self->_uniqueIdentifier, v45);
    }

    [(NINearbyUpdatesEngine *)self logSolution:v45];
    v7 = [(NINearbyUpdatesEngine *)self nearbyObjectFromSolution:v45];
    if (v7 || self->_findingPeerToken && ([(NINearbyUpdatesEngine *)self nearbyObjectFromSolution:v45 forPeer:?], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = self->_protobufLogger.__ptr_;
      if (v8)
      {
        [v7 timestamp];
        v10 = v9;
        sub_1002D63A8(v7, &__p);
        memset(&v41, 0, sizeof(v41));
        sub_10038E568(&v41, &__p, v45, 1uLL);
        sub_1002E16FC(v8, &self->_uniqueIdentifier, &v41, v10);
        v40.__r_.__value_.__r.__words[0] = &v41;
        sub_10038E814(&v40);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      analyticsManager = self->_analyticsManager;
      if (analyticsManager)
      {
        [(NIServerAnalyticsManager *)analyticsManager updateWithSolution:v45];
      }

      if (solutionCopy)
      {
        [v7 setNbRxStatus:{objc_msgSend(solutionCopy, "nbRxStatus")}];
        [v7 setMmsRxStatus:{objc_msgSend(solutionCopy, "mmsRxStatus")}];
        [solutionCopy nbRssi];
        [v7 setNbRssi:?];
        [solutionCopy signalStrength];
        [v7 setSignalStrength:?];
      }

      sub_100004A08(&v41, "");
      sub_100004A08(&v40, "RawDist = ");
      if (solutionCopy)
      {
        objc_storeStrong(&self->_previousNIObjectUpdate, solution);
        [solutionCopy distance];
      }

      else
      {
        [(NINearbyObject *)self->_previousNIObjectUpdate distance];
      }

      sub_100383530(2, v12 * 3.28);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v40, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v40;
      }

      else
      {
        v15 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = v40.__r_.__value_.__l.__size_;
      }

      std::string::append(&v41, v15, v16);
      std::string::append(&v41, " ");
      std::string::append(&v41, ", ");
      if ((v46 & 0x100000000) != 0)
      {
        v17 = (&off_1009A8868)[v46];
      }

      else
      {
        v17 = "Unavailable";
      }

      sub_100004A08(&v37, v17);
      v18 = std::string::append(&v37, " : ");
      v19 = *&v18->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (v45[0].i32[0])
      {
        v20 = "Converged   ";
      }

      else if ((*v45 & 0x100000000) != 0)
      {
        v20 = "LowDisp     ";
      }

      else if ((*v45 & 0x100000000000000) != 0)
      {
        v20 = "LowLighting ";
      }

      else if ((*v45 & 0x10000000000) != 0)
      {
        v20 = "LowHorzDisp ";
      }

      else if ((*v45 & 0x1000000000000) != 0)
      {
        v20 = "LowVertDisp ";
      }

      else
      {
        v20 = "NotConverged";
      }

      sub_100004A08(v35, v20);
      if ((v36 & 0x80u) == 0)
      {
        v21 = v35;
      }

      else
      {
        v21 = v35[0];
      }

      if ((v36 & 0x80u) == 0)
      {
        v22 = v36;
      }

      else
      {
        v22 = v35[1];
      }

      v23 = std::string::append(&__p, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v39 = v23->__r_.__value_.__r.__words[2];
      *v38 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (v39 >= 0)
      {
        v25 = v38;
      }

      else
      {
        v25 = v38[0];
      }

      if (v39 >= 0)
      {
        v26 = HIBYTE(v39);
      }

      else
      {
        v26 = v38[1];
      }

      std::string::append(&v41, v25, v26);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v41;
      }

      else
      {
        v27 = v41.__r_.__value_.__r.__words[0];
      }

      v28 = [NSString stringWithUTF8String:v27];
      [v7 setDebugDisplayInfo:v28];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v42 = v7;
        v30 = [NSArray arrayWithObjects:&v42 count:1];
        [WeakRetained updatesEngine:self didUpdateNearbyObjects:v30];
      }

      if (self->_findingPeerToken)
      {
        v31 = [(NINearbyUpdatesEngine *)self niConvergenceStateFromSolution:v45];
        v32 = [(NSMutableDictionary *)self->_convStateForObject objectForKeyedSubscript:self->_findingPeerToken];
        if (([v32 isEqual:v31] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_convStateForObject setObject:v31 forKeyedSubscript:self->_findingPeerToken];
          v33 = [[NINearbyObject alloc] initWithToken:self->_findingPeerToken];
          if (objc_opt_respondsToSelector())
          {
            [WeakRetained updatesEngine:self didUpdateAlgorithmConvergenceState:v31 forObject:v33];
          }

          v34 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 138412802;
            *(__p.__r_.__value_.__r.__words + 4) = v33;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2112;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v31;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 2112;
            v44 = v32;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#finding, Updated convergence state for object: %@. New state: %@. Previous state: %@", &__p, 0x20u);
          }
        }
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004C5C40();
  }
}

- (void)acceptRoseSolution:(const void *)solution
{
  v3 = xmmword_10056DCB0;
  v4 = 1;
  [(NINearbyUpdatesEngine *)self acceptRoseSolution:solution withProcessingOptions:&v3];
}

- (void)acceptRoseSolution:(const void *)solution withProcessingOptions:(const AlgorithmProcessingOptions *)options
{
  if (*(solution + 24))
  {
    v7 = *(solution + 8);
    if (v7 > 3)
    {
      if ((v7 - 5) >= 2)
      {
        if (v7 != 4)
        {
          return;
        }

        if (self->_shouldUseRawRangeAndSensorFusionAngle)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      if ((v7 - 2) < 2)
      {
        v8 = [(NINearbyUpdatesEngine *)self _handleRangeAndAoASolution:solution];
LABEL_13:
        v9 = v8;
        if (!v8)
        {
          return;
        }

        if ((*(solution + 24) & 1) == 0)
        {
          sub_1000195BC();
        }

        [v8 setTimestamp:*(solution + 2)];
        [v9 setRequiresBiasCorrection:options->requiresBiasCorrection];
        obj = [v9 discoveryToken];
        v120 = [obj hash];
        buf[0] = &v120;
        v10 = sub_100011060(&self->_hashToTokenMap, &v120, &unk_100548C50, buf);
        objc_storeStrong(v10 + 3, obj);
        [v9 setRangeBiasEstimate:*&NINearbyObjectRangeBiasEstimateNotAvailable];
        [v9 setRangeUncertainty:*&NINearbyObjectRangeUncertaintyNotAvailable];
        if (self->_shouldBypassBiasCorrection)
        {
          v11 = qword_1009F9820;
          if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          buf[0].i16[0] = 0;
          v12 = "#nrby-eng,#bias-est, Bypass estimating bias correction.";
        }

        else
        {
          requiresBiasCorrection = [v9 requiresBiasCorrection];
          v11 = qword_1009F9820;
          v14 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
          if (requiresBiasCorrection)
          {
            if (v14)
            {
              buf[0].i16[0] = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#bias-est This device type requires bias estimation.", buf, 2u);
            }

            if (*(solution + 600))
            {
              if ((*(solution + 215) & 0x100) != 0)
              {
                v11 = qword_1009F9820;
                if (*(solution + 1312) == 1)
                {
                  v22 = qword_1009F9820;
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    if ((*(solution + 600) & 1) == 0)
                    {
                      sub_1000195BC();
                    }

                    v23 = *(solution + 14);
                    buf[0].i32[0] = 67109120;
                    buf[0].i32[1] = v23;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#bias-est Calculating bias for device mac addr : %d", buf, 8u);
                  }

                  if (self->_protobufLogger.__ptr_)
                  {
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
                    {
                      sub_1004C5CF4();
                    }

                    sub_1002E4938(self->_protobufLogger.__ptr_, solution);
                  }

                  v105 = objc_alloc_init(UWBSignalFeatures);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = self->_configuration;
                    debugParameters = [(NIConfiguration *)v24 debugParameters];
                    if (debugParameters)
                    {
                      debugParameters2 = [(NIConfiguration *)v24 debugParameters];
                      v27 = [debugParameters2 objectForKey:@"enableAdditionalUWBSignalFeatures"];
                      v104 = v27 != 0;
                    }

                    else
                    {
                      v104 = 0;
                    }
                  }

                  else
                  {
                    v104 = 0;
                  }

                  v110 = [(NINearbyUpdatesEngine *)self _consolidateInputToMLModel:solution];
                  v106 = [(RangeBiasEstimatorSingleAntennaModel *)self->_rangeBiasEstimatorSingleAntennaModel consumeInputFeatures:?];
                  v108 = [(RangeBiasEstimatorSingleAntennaModel *)self->_rangeBiasEstimatorSingleAntennaModel preprocessInputFeatures:?];
                  v51 = [(RangeBiasEstimatorSingleAntennaModel *)self->_rangeBiasEstimatorSingleAntennaModel predictOutput:v108];
                  biasCorrectionEstimate = [(RangeBiasEstimatorSingleAntennaModel *)self->_rangeBiasEstimatorSingleAntennaModel biasCorrectionEstimate];
                  if (biasCorrectionEstimate && v51)
                  {
                    memset(buf, 0, sizeof(buf));
                    v114 = [[NSMutableString alloc] initWithFormat:&stru_1009B1428];
                    for (i = 0; [v51 count] > i; ++i)
                    {
                      v53 = v51;
                      v54 = [v51 objectAtIndexedSubscript:i];
                      [v54 doubleValue];
                      v56 = v55;

                      [v114 appendFormat:@"%f ", v56];
                      v57 = buf[1];
                      if (*&buf[1] >= *&buf[2])
                      {
                        v59 = buf[0];
                        v60 = *&buf[1] - *buf;
                        v61 = (*&buf[1] - *buf) >> 3;
                        v62 = v61 + 1;
                        if ((v61 + 1) >> 61)
                        {
                          sub_100019B38();
                        }

                        v63 = *&buf[2] - *buf;
                        if ((*&buf[2] - *buf) >> 2 > v62)
                        {
                          v62 = v63 >> 2;
                        }

                        v64 = v63 >= 0x7FFFFFFFFFFFFFF8;
                        v65 = 0x1FFFFFFFFFFFFFFFLL;
                        if (!v64)
                        {
                          v65 = v62;
                        }

                        if (v65)
                        {
                          sub_100012564(buf, v65);
                        }

                        *(8 * v61) = v56;
                        v58 = 8 * v61 + 8;
                        memcpy(0, v59, v60);
                        v66 = buf[0];
                        buf[0] = 0;
                        buf[1] = v58;
                        buf[2] = 0;
                        if (v66)
                        {
                          operator delete(v66);
                        }

                        v51 = v53;
                      }

                      else
                      {
                        **&buf[1] = v56;
                        v58 = *&v57 + 8;
                        v51 = v53;
                      }

                      buf[1] = v58;
                    }

                    v67 = v51;
                    v70 = qword_1009F9820;
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(solution + 600) != 1 || (v71 = *(solution + 215), (v71 & 0x100) == 0))
                      {
                        sub_1000195BC();
                      }

                      *v141 = 67109378;
                      *&v141[4] = v71;
                      *&v141[8] = 2112;
                      *&v141[10] = v114;
                      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#bias-est Output probabilities for antenna mask %d : %@", v141, 0x12u);
                    }

                    v72 = qword_1009F9820;
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      [v9 distance];
                      v74 = v73;
                      [v9 distance];
                      v76 = v75;
                      [biasCorrectionEstimate doubleValue];
                      *v141 = 134218240;
                      *&v141[4] = v74;
                      *&v141[12] = 2048;
                      *&v141[14] = v77 + v76;
                      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#bias-est Range result (raw) = %f, Corrected Range = %f", v141, 0x16u);
                    }

                    [biasCorrectionEstimate doubleValue];
                    [v9 setRangeBiasEstimate:?];
                    v78 = v104;
                    if (!v110)
                    {
                      v78 = 0;
                    }

                    if (v78)
                    {
                      v79 = objc_alloc_init(BiasEstimatorOutputs);
                      [v9 distance];
                      [(BiasEstimatorOutputs *)v79 setRawRange:v80];
                      [v9 distance];
                      v82 = v81;
                      [biasCorrectionEstimate doubleValue];
                      [(BiasEstimatorOutputs *)v79 setCorrectedRange:v83 + v82];
                      [(BiasEstimatorOutputs *)v79 setOutProbabilities:v67];
                      [(UWBSignalFeatures *)v105 setInputFeatures:v110];
                      [(UWBSignalFeatures *)v105 setOutputs:v79];
                      [v9 setUwbSignalFeatures:v105];
                    }

                    if (self->_protobufLogger.__ptr_)
                    {
                      memset(v141, 0, sizeof(v141));
                      v84 = [v106 featureValueForName:@"input"];
                      multiArrayValue = [v84 multiArrayValue];

                      __p = 0;
                      v118 = 0;
                      v119 = 0;
                      v86 = [v108 featureValueForName:@"input"];
                      multiArrayValue2 = [v86 multiArrayValue];

                      for (j = 0; [multiArrayValue count] > j; ++j)
                      {
                        v89 = [multiArrayValue objectAtIndexedSubscript:j];
                        [v89 doubleValue];
                        v116 = v90;
                        sub_100009734(v141, &v116);

                        v91 = [multiArrayValue2 objectAtIndexedSubscript:j];
                        [v91 doubleValue];
                        v116 = v92;
                        sub_100009734(&__p, &v116);
                      }

                      if ((*(solution + 600) & 1) == 0 || (v93 = *(solution + 215), (v93 & 0x100) == 0) || (ptr = self->_protobufLogger.__ptr_, [v9 distance], v96 = v95, objc_msgSend(biasCorrectionEstimate, "doubleValue"), (*(solution + 24) & 1) == 0))
                      {
                        sub_1000195BC();
                      }

                      sub_1002E5170(ptr, v93, v96, v97, *(solution + 2), v141, &__p, buf, *(solution + 18), *(solution + 5));

                      if (__p)
                      {
                        v118 = __p;
                        operator delete(__p);
                      }

                      if (*v141)
                      {
                        *&v141[8] = *v141;
                        operator delete(*v141);
                      }
                    }

                    if (buf[0])
                    {
                      buf[1] = buf[0];
                      operator delete(*buf);
                    }
                  }

                  else
                  {
                    v67 = v51;
                    [(NINearbyUpdatesEngine *)self _getRangeUncertaintyWhenBiasEstimateNotAvailable];
                    [v9 setRangeUncertainty:?];
                    v68 = qword_1009F9820;
                    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                    {
                      [v9 rangeUncertainty];
                      buf[0].i32[0] = 134217984;
                      *(buf + 4) = v69;
                      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#bias-est Could not compute bias estimate, override range uncertainty to %.2f", buf, 0xCu);
                    }
                  }

                  goto LABEL_33;
                }

                if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                {
LABEL_33:
                  v15 = [(NINearbyUpdatesEngine *)self _shouldConsumeRoseSolution:solution];
                  if (!sub_100009BCC(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &options->regionSizeCategory))
                  {
                    goto LABEL_153;
                  }

                  v16 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &options->regionSizeCategory);
                  if (!v16)
                  {
                    sub_10017C290("unordered_map::at: key not found");
                  }

                  if (v16[3])
                  {
                    if (v15)
                    {
                      [(NINearbyUpdatesEngine *)self processUWBResultForRegionMonitoring:v9 roseSolution:solution processingOptions:options];
                    }
                  }

                  else
                  {
LABEL_153:
                    if (self->_syntheticApertureFilter.__ptr_)
                    {
                      [(NINearbyUpdatesEngine *)self processUWBResultForSyntheticAperture:v9 roseSolution:solution];
                    }

                    else if (self->_findingAlgorithmContainer.__ptr_)
                    {
                      discoveryToken = [v9 discoveryToken];
                      [(NINearbyUpdatesEngine *)self setFindingPeerToken:discoveryToken];

                      if (*(solution + 600))
                      {
                        if (*(solution + 752) == 1)
                        {
                          sub_100498E54(buf, solution + 608);
                          v18 = qword_1009F9820;
                          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                          {
                            if (*(solution + 600) != 1 || (*(solution + 24) & 1) == 0)
                            {
                              sub_1000195BC();
                            }

                            v101 = *(solution + 44);
                            v102 = *(solution + 2);
                            p_uniqueIdentifier = &self->_uniqueIdentifier;
                            if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
                            {
                              p_uniqueIdentifier = p_uniqueIdentifier->__rep_.__l.__data_;
                            }

                            *v141 = 134219010;
                            *&v141[4] = v101;
                            *&v141[12] = 2048;
                            *&v141[14] = v102;
                            *&v141[22] = 2048;
                            *v142 = v125;
                            *&v142[8] = 2048;
                            v143 = v124;
                            v144 = 2080;
                            v145 = p_uniqueIdentifier;
                            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "#nrby-eng,#sa_algo,New measurement with distance %4.3f m, timestamp %f, az %4.1f deg, and el %4.1f deg. Unique identifier: %s", v141, 0x34u);
                          }

                          v19 = sub_1000422B8(v125);
                          *&v20 = sub_1000422B8(v124);
                          sub_10002074C(&buf[2], p_data);
                          *&v19 = v19;
                          v107 = LODWORD(v19);
                          v21 = v20 << 32;
                          v113 = 0x100000001;
                        }

                        else
                        {
                          v28 = qword_1009F9820;
                          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                          {
                            if (*(solution + 600) != 1 || (*(solution + 24) & 1) == 0)
                            {
                              sub_1000195BC();
                            }

                            v98 = *(solution + 352);
                            v99 = *(solution + 16);
                            data = &self->_uniqueIdentifier;
                            if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
                            {
                              data = data->__rep_.__l.__data_;
                            }

                            buf[0].i32[0] = 134218498;
                            *(buf + 4) = v98;
                            buf[1].i16[2] = 2048;
                            *(&buf[1] + 6) = v99;
                            buf[2].i16[3] = 2080;
                            p_data = &data->__rep_.__l.__data_;
                            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "#nrby-eng,#sa_algo,New measurement with distance %4.3f m, timestamp %f, no az or el. Unique identifier: %s", buf, 0x20u);
                          }

                          v113 = 0;
                          v21 = 0;
                          v107 = 0;
                        }

                        if (*(solution + 928) == 1)
                        {
                          v29 = *(solution + 114) & 0xFFFFFFFFFFFFFF00;
                          v109 = *(solution + 920);
                          v30 = *(solution + 112) & 0xFFFFFFFFFFFFFF00;
                          v111 = *(solution + 904);
                          v31 = *(solution + 114);
                          v32 = *(solution + 112);
                        }

                        else
                        {
                          v32 = 0;
                          v109 = 0;
                          v111 = 0;
                          v30 = 0;
                          v31 = 0;
                          v29 = 0;
                        }

                        discoveryToken2 = [v9 discoveryToken];
                        v34 = [discoveryToken2 hash];
                        if ((*(solution + 24) & 1) == 0 || *(solution + 600) != 1)
                        {
                          sub_1000195BC();
                        }

                        v35 = *(solution + 16);
                        *&v36 = *(solution + 44);
                        v37 = *(solution + 27);
                        v38 = *(solution + 80) | 0x10000;
                        v39 = *(solution + 257);
                        v40 = *(solution + 280);
                        buf[0] = v34;
                        buf[1] = v35;
                        buf[2] = (v36 | 0x100000000);
                        p_data = (v107 | v21);
                        v123 = v113;
                        LOBYTE(v124) = 0;
                        BYTE4(v124) = 0;
                        LOBYTE(v125) = 0;
                        BYTE4(v125) = 0;
                        v126 = v37;
                        v127 = 1;
                        v128 = 0;
                        memset(v130, 0, 25);
                        v129 = 0u;
                        v130[48] = 0;
                        v131 = 0;
                        v132 = 0;
                        v133 = v38;
                        v134 = v39;
                        v135 = v40;
                        v136 = v29 | v31;
                        v137 = v109;
                        v138 = *(solution + 72);
                        v139 = v30 | v32;
                        v140 = v111;

                        [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
                        v41 = self->_protobufLogger.__ptr_;
                        if (v41)
                        {
                          sub_1002EA2EC(v41, &self->_uniqueIdentifier, buf);
                        }

                        analyticsManager = self->_analyticsManager;
                        if (analyticsManager)
                        {
                          if ((*(solution + 600) & 1) == 0)
                          {
                            sub_1000195BC();
                          }

                          [(NIServerAnalyticsManager *)analyticsManager updateWithSuccessfulRange:*(solution + 28) uwbRSSI:*(solution + 232) nbRSSI:*(solution + 44), *(solution + 27)];
                        }

                        v43 = *&buf[1];
                        lastMeasurementTimeSeconds = self->_findingLatencyBookkeeping.lastMeasurementTimeSeconds;
                        *&self->_findingLatencyBookkeeping.lastMeasurementTimeSeconds = buf[1];
                        v45 = sub_100005288();
                        v46 = v43 - lastMeasurementTimeSeconds;
                        v47 = v45 - self->_findingLatencyBookkeeping.lastProcessTimeSeconds;
                        self->_findingLatencyBookkeeping.lastProcessTimeSeconds = v45;
                        v48 = v47 - v46;
                        if (self->_findingLatencyBookkeeping.receivedFirstMeasurement)
                        {
                          self->_findingLatencyBookkeeping.accumulatedExcessSeconds = v48 + self->_findingLatencyBookkeeping.accumulatedExcessSeconds;
                        }

                        v49 = qword_1009F9820;
                        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                        {
                          accumulatedExcessSeconds = self->_findingLatencyBookkeeping.accumulatedExcessSeconds;
                          *v141 = 134349824;
                          *&v141[4] = v46;
                          *&v141[12] = 2050;
                          *&v141[14] = v47;
                          *&v141[22] = 1026;
                          *v142 = (v48 * 1000.0);
                          *&v142[4] = 1026;
                          *&v142[6] = (accumulatedExcessSeconds * 1000.0);
                          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#nrby-eng,Finding range result latency report. measDelta: %{public}0.3f [s]. processDelta: %{public}0.3f [s]. Excess ms: %{public}d. Accumulated excess ms: %{public}d", v141, 0x22u);
                        }

                        self->_findingLatencyBookkeeping.receivedFirstMeasurement = 1;
                        sub_100224EF8(728958016, 1, 1, 0, 0, 0);
                        (*(*self->_findingAlgorithmContainer.__ptr_ + 24))(self->_findingAlgorithmContainer.__ptr_, buf);
                        sub_100224EF8(728958016, 2, 1, 0, 0, 0);
                        if ((*(*self->_findingAlgorithmContainer.__ptr_ + 32))(self->_findingAlgorithmContainer.__ptr_))
                        {
                          [(NINearbyUpdatesEngine *)self provideFindingSolution:v9];
                        }

                        if ((*(*self->_findingAlgorithmContainer.__ptr_ + 40))(self->_findingAlgorithmContainer.__ptr_))
                        {
                          [(NINearbyUpdatesEngine *)self getPeerDataFromFindingContainerWithToken:obj];
                        }
                      }

                      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                      {
                        sub_1004C5D28();
                      }
                    }

                    else if (v15)
                    {
                      [(NINearbyUpdatesEngine *)self reportAndLogNearbyObject:v9];
                    }
                  }

                  return;
                }

                buf[0].i16[0] = 0;
                v12 = "#nrby-eng,#bias-est Not estimating range bias correction for this range result since no TOA V2 CIRs";
              }

              else
              {
                v11 = qword_1009F9820;
                if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_33;
                }

                buf[0].i16[0] = 0;
                v12 = "#nrby-eng,#bias-est received raw rose range measurement without remoteTxAntennaMask, Bypass estimating bias correction.";
              }
            }

            else
            {
              v11 = qword_1009F9820;
              if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_33;
              }

              buf[0].i16[0] = 0;
              v12 = "#nrby-eng,#bias-est raw_rose_measurement not available, Bypass estimating bias correction.";
            }
          }

          else
          {
            if (!v14)
            {
              goto LABEL_33;
            }

            buf[0].i16[0] = 0;
            v12 = "#nrby-eng,#bias-est This device type does not require bias estimation";
          }
        }

        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
        goto LABEL_33;
      }

      if (v7)
      {
        if (v7 != 1)
        {
          return;
        }

LABEL_6:
        v8 = [(NINearbyUpdatesEngine *)self _handleRangeOnlySolution:solution];
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C5CB8();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C5C7C();
  }
}

- (void)acceptDTTagMeasurements:(const void *)measurements
{
  if (self->_positionEngineManager.__ptr_)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v5 = objc_opt_new();
    v6 = *measurements;
    v7 = *(measurements + 1);
    while (v6 != v7)
    {
      if (*(v6 + 32) != 6 || (*(v6 + 1680) & 1) == 0)
      {
        __assert_rtn("[NINearbyUpdatesEngine acceptDTTagMeasurements:]", "NIServerNearbyUpdatesEngine.mm", 1847, "solType == rose::RoseSolutionType::DTTagEvent && rs.dt_tag_event.has_value()");
      }

      sub_1004014A8(v6 + 1456, &v42);
      if (v65 == 1)
      {
        sub_1003850A0(&v66, &v42);
        if ((v65 & 1) == 0)
        {
          sub_1000195BC();
        }

        v8 = [(NINearbyUpdatesEngine *)self _convertPEAnchorMessages:&v42];
        [v5 addObjectsFromArray:v8];

        if (v65)
        {
          if (__p)
          {
            v64 = __p;
            operator delete(__p);
          }
        }
      }

      v6 += 1688;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained updatesEngine:self didUpdateDLTDOAMeasurements:v5];
    }

    if (v66 == v67)
    {
      goto LABEL_67;
    }

    ptr = self->_protobufLogger.__ptr_;
    if (ptr)
    {
      sub_1002E9374(ptr, &v66);
    }

    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 objectForKey:@"NIDLTDoAAprioriZ"];
    v13 = v12 == 0;

    if (v13)
    {
      v17 = 0.0;
      v18 = 0;
    }

    else
    {
      v14 = +[NSUserDefaults standardUserDefaults];
      [v14 floatForKey:@"NIDLTDoAAprioriZ"];
      v16 = v15;

      v17 = v16;
      v18 = 1;
    }

    sub_100402E78(self->_positionEngineManager.__ptr_, &v66, v17, v18, &v42);
    if (v62 != 1)
    {
      goto LABEL_67;
    }

    v19 = self->_protobufLogger.__ptr_;
    if (v19)
    {
      sub_1002E9ECC(v19, &v42);
    }

    v20 = +[NSUserDefaults standardUserDefaults];
    v21 = [v20 BOOLForKey:@"NIDLTDOAShowCoordinates"];

    if (!v21)
    {
LABEL_46:
      if ((v62 & 1) == 0)
      {
        sub_1000195BC();
      }

      if (v45)
      {
        if (v45 != 1)
        {
          if (v45 == 999)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
            {
              sub_1004C5D64();
            }

            v35 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/UpdatesEngine/NIServerNearbyUpdatesEngine.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1917;
              *&buf[18] = 2080;
              *&buf[20] = "[NINearbyUpdatesEngine acceptDTTagMeasurements:]";
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "#nrby-eng,%s:%d: assertion failure in %s", buf, 0x1Cu);
            }

            abort();
          }

          v27 = 0;
          goto LABEL_56;
        }

        if (v49)
        {
          v40 = v46;
          v36 = v47;
          *&v22 = v48;
          v38 = v22;
          v28 = [NIDLTDOACoordinatesUpdate alloc];
          *&v29 = v40;
          *(&v29 + 1) = v36;
          *buf = v29;
          *&buf[16] = v38;
          v30 = [(NIDLTDOACoordinatesUpdate *)v28 initWithDLTDOACoordinatesType:1 coordinates:buf];
LABEL_55:
          v27 = v30;
LABEL_56:
          if (objc_opt_respondsToSelector())
          {
            [WeakRetained updatesEngine:self didUpdateNICoordinates:v27];
          }

          if (v62)
          {
            if (v60)
            {
              v61 = v60;
              operator delete(v60);
            }

            if (v58)
            {
              v59 = v58;
              operator delete(v58);
            }

            if (v56)
            {
              v57 = v56;
              operator delete(v56);
            }

            if (v54)
            {
              v55 = v54;
              operator delete(v54);
            }
          }

LABEL_67:

          v42 = &v66;
          sub_10038E8C0(&v42);
          return;
        }

        v33 = "tag_pos_sol.relativeCoordinates.has_value()";
        v34 = 1911;
      }

      else
      {
        if (v53 == 1)
        {
          v41 = v50;
          v37 = v51;
          *&v22 = v52;
          v39 = v22;
          v31 = [NIDLTDOACoordinatesUpdate alloc];
          *&v32 = v41;
          *(&v32 + 1) = v37;
          *buf = v32;
          *&buf[16] = v39;
          v30 = [(NIDLTDOACoordinatesUpdate *)v31 initWithDLTDOACoordinatesType:0 coordinates:buf];
          goto LABEL_55;
        }

        v33 = "tag_pos_sol.geodeticCoordinates.has_value()";
        v34 = 1905;
      }

      __assert_rtn("[NINearbyUpdatesEngine acceptDTTagMeasurements:]", "NIServerNearbyUpdatesEngine.mm", v34, v33);
    }

    if ((v62 & 1) == 0)
    {
      sub_1000195BC();
    }

    if (v45)
    {
      if (v45 != 1)
      {
        goto LABEL_46;
      }

      v23 = qword_1009F9820;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      if (v62 != 1 || ((v44 - 1) > 3 ? (v24 = "sc_ils") : (v24 = (&off_1009A88A8)[v44 - 1]), (v49 & 1) == 0))
      {
        sub_1000195BC();
      }

      *buf = 67110146;
      *&buf[4] = v43;
      *&buf[8] = 2080;
      *&buf[10] = v24;
      *&buf[18] = 2048;
      *&buf[20] = v46;
      *&buf[28] = 2048;
      *&buf[30] = v47;
      v70 = 2048;
      v71 = v48;
      v26 = "#nrby-eng,block_idx: %hu, sol_type: %s, x: %.1f, y: %.1f, z: %.1f";
    }

    else
    {
      v23 = qword_1009F9820;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_45:

        goto LABEL_46;
      }

      if (v62 != 1 || ((v44 - 1) > 3 ? (v25 = "sc_ils") : (v25 = (&off_1009A88A8)[v44 - 1]), (v53 & 1) == 0))
      {
        sub_1000195BC();
      }

      *buf = 67110146;
      *&buf[4] = v43;
      *&buf[8] = 2080;
      *&buf[10] = v25;
      *&buf[18] = 2048;
      *&buf[20] = v50;
      *&buf[28] = 2048;
      *&buf[30] = v51;
      v70 = 2048;
      v71 = v52;
      v26 = "#nrby-eng,block_idx: %hu, sol_type: %s, lat: %.8f, lon: %.8f, alt: %.1f";
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v26, buf, 0x30u);
    goto LABEL_45;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C5DA0();
  }
}

- (void)acceptPositionDisplacement:(const void *)displacement
{
  if (self->_positionEngineManager.__ptr_)
  {
    if (self->_protobufLogger.__ptr_)
    {
      sub_1002EA0F8(self->_protobufLogger.__ptr_, displacement);
    }

    nullsub_171();
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C5DA0();
  }
}

- (void)acceptUnsuccessfulRoseSolution:(const void *)solution
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C5DDC();
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"ForwardUnsuccessfulRangingEvents"];

  if (v6)
  {
    v7 = *(solution + 8);
    if (v7 <= 6)
    {
      v8 = 1 << v7;
      if ((v8 & 0x71) == 0)
      {
        if ((v8 & 0xC) != 0)
        {
          [(NINearbyUpdatesEngine *)self _handleRangeAndAoASolution:solution];
        }

        else
        {
          [(NINearbyUpdatesEngine *)self _handleRangeOnlySolution:solution];
        }
        v9 = ;
        if (v9)
        {
          [(NINearbyUpdatesEngine *)self reportAndLogNearbyObject:v9];
        }

        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C5CB8();
      }
    }

    v9 = 0;
LABEL_14:
  }

  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
    if (*(solution + 24) == 1 && *(solution + 600) == 1)
    {
      v10 = *(solution + 280);
      if ((v10 & 0x100) == 0)
      {
        sub_1004C5EE0();
      }

      v11 = *(solution + 80);
      v19 = *(solution + 2);
      LOWORD(v20) = v11;
      BYTE2(v20) = v10;
      ptr = self->_protobufLogger.__ptr_;
      if (ptr)
      {
        sub_1002E7FFC(ptr, &self->_uniqueIdentifier, &v19);
      }

      analyticsManager = self->_analyticsManager;
      if (analyticsManager)
      {
        [(NIServerAnalyticsManager *)analyticsManager updateWithMissedRange:v19];
      }

      if ((*(*self->_findingAlgorithmContainer.__ptr_ + 304))(self->_findingAlgorithmContainer.__ptr_))
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C5E10();
        }

        sub_100224EF8(728958016, 1, 0, 0, 0, 0);
        (*(*self->_findingAlgorithmContainer.__ptr_ + 296))();
        sub_100224EF8(728958016, 2, 0, 0, 0, 0);
        if ((*(*self->_findingAlgorithmContainer.__ptr_ + 312))())
        {
          WeakRetained = objc_loadWeakRetained(&self->_dataSource);
          v15 = [WeakRetained objectFromIdentifier:*(solution + 5)];

          if (v15)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
            {
              sub_1004C5E44();
            }

            discoveryToken = [v15 discoveryToken];
            [(NINearbyUpdatesEngine *)self getPeerDataFromFindingContainerWithToken:discoveryToken];
          }

          else
          {
            findingPeerToken = self->_findingPeerToken;
            v18 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
            if (findingPeerToken)
            {
              if (v18)
              {
                sub_1004C5E78();
              }

              [(NINearbyUpdatesEngine *)self getPeerDataFromFindingContainerWithToken:self->_findingPeerToken, v19, v20];
            }

            else if (v18)
            {
              sub_1004C5EAC();
            }
          }
        }
      }
    }
  }
}

- (void)reportAndLogNearbyObject:(id)object
{
  objectCopy = object;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v14 = objectCopy;
    v6 = [NSArray arrayWithObjects:&v14 count:1];
    [WeakRetained updatesEngine:self didUpdateNearbyObjects:v6];
  }

  analyticsManager = self->_analyticsManager;
  if (analyticsManager)
  {
    [(NIServerAnalyticsManager *)analyticsManager nearbyObjectUpdated:objectCopy];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    [objectCopy timestamp];
    v10 = v9;
    sub_1002D63A8(objectCopy, __p);
    memset(v11, 0, sizeof(v11));
    sub_10038E568(v11, __p, &v14, 1uLL);
    sub_1002E16FC(ptr, &self->_uniqueIdentifier, v11, v10);
    v12 = v11;
    sub_10038E814(&v12);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

- (void)acceptDeviceMotion:(const void *)motion
{
  if (*(motion + 16) == 1)
  {
    v12 = *(motion + 1);
    v13 = *(motion + 24);
    v14 = *(motion + 5);
    v15 = *(motion + 3);
    v16 = *(motion + 8);
    v4 = *(motion + 88);
    v17 = *(motion + 72);
    v18 = v4;
    v20 = *(motion + 15);
    v19 = *(motion + 104);
    v5 = *(motion + 152);
    v22 = *(motion + 21);
    v21 = v5;
    v11 = 0;
    if (sub_100009BCC(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v11))
    {
      v10 = 0;
      v6 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v10);
      if (!v6)
      {
        goto LABEL_13;
      }

      if (v6[3])
      {
        v11 = 0;
        v7 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v11);
        if (!v7)
        {
          goto LABEL_13;
        }

        sub_10040FF34(v7[3], &v12, 0);
      }
    }

    v11 = 10;
    if (!sub_100009BCC(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v11))
    {
      return;
    }

    v10 = 10;
    v8 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v10);
    if (v8)
    {
      if (!v8[3])
      {
        return;
      }

      v11 = 10;
      v9 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v11);
      if (v9)
      {
        sub_10040FF34(v9[3], &v12, 0);
        return;
      }
    }

LABEL_13:
    sub_10017C290("unordered_map::at: key not found");
  }
}

- (void)acceptDeviceMovingState:(BOOL)state
{
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    if (sub_100009BCC(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v8))
    {
      v7 = 0;
      v5 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v7);
      if (!v5)
      {
        goto LABEL_8;
      }

      if (!v5[3])
      {
        return;
      }

      v8 = 0;
      v6 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &v8);
      if (!v6)
      {
LABEL_8:
        sub_10017C290("unordered_map::at: key not found");
      }

      sub_1004100E8(v6[3], stateCopy);
    }
  }
}

- (void)acceptMagneticFieldStrength:(double)strength
{
  v5 = sub_100005288();
  engaged = self->_cachedMagneticFieldStrength.__engaged_;
  self->_cachedMagneticFieldStrength.var0.__val_.time = v5;
  self->_cachedMagneticFieldStrength.var0.__val_.value = strength;
  if (!engaged)
  {
    self->_cachedMagneticFieldStrength.__engaged_ = 1;
  }
}

- (void)acceptBluetoothSample:(const void *)sample coarseEstimation:(BOOL)estimation regionCategory:(int64_t)category
{
  estimationCopy = estimation;
  v48[0] = category;
  if (sub_100009BCC(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, v48))
  {
    v8 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, v48);
    if (!v8)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    if (v8[3])
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v10 = [WeakRetained objectFromIdentifier:*(sample + 9)];

      if (v10)
      {
        ptr = self->_protobufLogger.__ptr_;
        if (ptr)
        {
          sub_100009C80(ptr, &self->_uniqueIdentifier, sample);
        }

        obj = [v10 discoveryToken];
        v47 = [obj hash];
        v39[0] = &v47;
        v12 = sub_100011060(&self->_hashToTokenMap, &v47, &unk_100548C50, v39);
        objc_storeStrong(v12 + 3, obj);
        v13 = LODWORD(v48[0]);
        v14 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, v48);
        if (!v14)
        {
          sub_10017C290("unordered_map::at: key not found");
        }

        sub_1000112BC(v14[3], estimationCopy, v13, &v45);
        v44[0] = 0;
        v44[1] = 0;
        v43 = v44;
        v15 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, v48);
        if (!v15)
        {
          goto LABEL_41;
        }

        v16 = sub_100011440(v15[3], *(sample + 9), *(sample + 10));
        if (v16)
        {
          v18 = v45;
          for (i = *v45; ; i = v29)
          {
            v22 = v18[1];
            v20 = v18 + 1;
            v21 = v22;
            if (v22)
            {
              do
              {
                v23 = v21;
                v21 = v21[1];
              }

              while (v21);
            }

            else
            {
              do
              {
                v23 = v20[2];
                v24 = *v23 == v20;
                v20 = v23;
              }

              while (v24);
            }

            if (i == v23)
            {
              break;
            }

            v25 = sub_100385D00(v16, v17);
            v26 = *(i + 17);
            v27 = sub_100015080(v25);
            sub_100004A08(v37, [v27 UTF8String]);
            if (*(sample + 47) < 0)
            {
              sub_1000056BC(__p, *(sample + 3), *(sample + 4));
            }

            else
            {
              *__p = *(sample + 24);
              v36 = *(sample + 5);
            }

            sub_10029E5C4(v25, v26, v37, __p, v39);
            if (SHIBYTE(v36) < 0)
            {
              operator delete(__p[0]);
            }

            if (v38 < 0)
            {
              operator delete(v37[0]);
            }

            sub_10038EFA4(&v43, v39, v39);
            if (v42 == 1 && v41 < 0)
            {
              operator delete(v40[7]);
            }

            sub_10002074C(v40, v40[1]);
            v28 = i[1];
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = i[2];
                v24 = *v29 == i;
                i = v29;
              }

              while (!v24);
            }

            v18 = v45;
          }
        }

        v30 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, v48);
        if (!v30)
        {
LABEL_41:
          sub_10017C290("unordered_map::at: key not found");
        }

        v31 = v30[3];
        sub_1000114B4(v34, &v43);
        v32 = sub_100005288();
        sub_100011594(v31, sample, v32, v34, 0, estimationCopy, v13);
        sub_100013328(v34, v34[1]);
        sub_100013328(&v43, v44[0]);
        if (v46)
        {
          sub_10000AD84(v46);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C5F0C();
      }
    }
  }
}

- (void)clearStateForToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained identifierFromDiscoveryToken:tokenCopy];
    if (v8)
    {
      v9 = v7;
      v10 = sub_100005288();
      for (i = self->_regionMonitorMap.__table_.__first_node_.__next_; i; i = *i)
      {
        v12 = i[3];
        if (v12)
        {
          sub_10040FB98(v12, v9, 0, v10);
        }
      }

      if (self->_protobufLogger.__ptr_)
      {
        v13 = [v6 objectFromIdentifier:v9];
        v14 = v13;
        if (v13)
        {
          ptr = self->_protobufLogger.__ptr_;
          sub_1002D63A8(v13, __p);
          sub_1002E3E44(ptr, __p, v10);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

- (void)invalidate
{
  if (self->_regionMonitorMap.__table_.__size_)
  {
    ptr = self->_protobufLogger.__ptr_;
    if (ptr)
    {
      sub_1002E2A8C(ptr, &self->_uniqueIdentifier);
    }

    for (i = self->_regionMonitorMap.__table_.__first_node_.__next_; i; i = *i)
    {
      sub_100385FA0(i + 3, 0);
    }

    sub_100023AB4(&self->_hashToTokenMap);
    [(NSMutableDictionary *)self->_regionDict removeAllObjects];
    sub_10038F400(&self->_regionMonitorMap);
  }

  self->_localIntentPredictorPreference = 0;
  if (self->_syntheticApertureFilter.__ptr_)
  {
    v5 = self->_protobufLogger.__ptr_;
    if (v5)
    {
      sub_1002E8B6C(v5, &self->_uniqueIdentifier);
    }
  }

  v6 = self->_findingAlgorithmContainer.__ptr_;
  if (v6)
  {
    if ((*(*v6 + 328))(v6, a2))
    {
      (*(*self->_findingAlgorithmContainer.__ptr_ + 336))(self->_findingAlgorithmContainer.__ptr_);
    }

    v7 = self->_protobufLogger.__ptr_;
    if (v7)
    {
      sub_1002E8B6C(v7, &self->_uniqueIdentifier);
    }
  }

  v9 = self->_positionEngineManager.__ptr_;
  p_positionEngineManager = &self->_positionEngineManager;
  if (v9)
  {

    sub_100385FEC(p_positionEngineManager, 0);
  }
}

- (id)_consolidateInputToMLModel:(const void *)model
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#bias-est Consolidating input to bias estimator", buf, 2u);
  }

  if ((*(model + 600) & 1) == 0)
  {
    sub_1000195BC();
  }

  if ((*(model + 1312) & 1) == 0)
  {
    sub_1004C5FEC();
  }

  if ((*(model + 215) & 0x100) == 0)
  {
    sub_1004C6054();
  }

  v5 = sub_100193B78(model + 1208, 0);
  v6 = [Complex alloc];
  v80 = [NSNumber numberWithDouble:*v5];
  v65 = [NSNumber numberWithDouble:v5[1]];
  v68 = [(Complex *)v6 initWithRealPart:v80 imagPart:?];
  v84[0] = v68;
  v7 = [Complex alloc];
  v78 = [NSNumber numberWithDouble:v5[2]];
  v61 = [NSNumber numberWithDouble:v5[3]];
  v63 = [(Complex *)v7 initWithRealPart:v78 imagPart:?];
  v84[1] = v63;
  v8 = [Complex alloc];
  v76 = [NSNumber numberWithDouble:v5[4]];
  v57 = [NSNumber numberWithDouble:v5[5]];
  v59 = [(Complex *)v8 initWithRealPart:v76 imagPart:?];
  v84[2] = v59;
  v9 = [Complex alloc];
  v74 = [NSNumber numberWithDouble:v5[6]];
  v53 = [NSNumber numberWithDouble:v5[7]];
  v55 = [(Complex *)v9 initWithRealPart:v74 imagPart:?];
  v84[3] = v55;
  v10 = [Complex alloc];
  v72 = [NSNumber numberWithDouble:v5[8]];
  v49 = [NSNumber numberWithDouble:v5[9]];
  v51 = [(Complex *)v10 initWithRealPart:v72 imagPart:?];
  v84[4] = v51;
  v11 = [Complex alloc];
  v70 = [NSNumber numberWithDouble:v5[10]];
  v12 = [NSNumber numberWithDouble:v5[11]];
  v13 = [(Complex *)v11 initWithRealPart:v70 imagPart:v12];
  v84[5] = v13;
  v14 = [Complex alloc];
  v15 = [NSNumber numberWithDouble:v5[12]];
  v16 = [NSNumber numberWithDouble:v5[13]];
  v17 = [(Complex *)v14 initWithRealPart:v15 imagPart:v16];
  v84[6] = v17;
  v18 = [Complex alloc];
  v19 = [NSNumber numberWithDouble:v5[14]];
  v20 = [NSNumber numberWithDouble:v5[15]];
  v21 = [(Complex *)v18 initWithRealPart:v19 imagPart:v20];
  v84[7] = v21;
  v67 = [NSArray arrayWithObjects:v84 count:8];

  v22 = sub_100193B78(model + 1208, 1);
  v23 = [Complex alloc];
  v81 = [NSNumber numberWithDouble:*v22];
  v66 = [NSNumber numberWithDouble:v22[1]];
  v64 = [(Complex *)v23 initWithRealPart:v81 imagPart:?];
  v83[0] = v64;
  v24 = [Complex alloc];
  v79 = [NSNumber numberWithDouble:v22[2]];
  v60 = [NSNumber numberWithDouble:v22[3]];
  v62 = [(Complex *)v24 initWithRealPart:v79 imagPart:?];
  v83[1] = v62;
  v25 = [Complex alloc];
  v77 = [NSNumber numberWithDouble:v22[4]];
  v56 = [NSNumber numberWithDouble:v22[5]];
  v58 = [(Complex *)v25 initWithRealPart:v77 imagPart:?];
  v83[2] = v58;
  v26 = [Complex alloc];
  v75 = [NSNumber numberWithDouble:v22[6]];
  v52 = [NSNumber numberWithDouble:v22[7]];
  v54 = [(Complex *)v26 initWithRealPart:v75 imagPart:?];
  v83[3] = v54;
  v27 = [Complex alloc];
  v73 = [NSNumber numberWithDouble:v22[8]];
  v48 = [NSNumber numberWithDouble:v22[9]];
  v50 = [(Complex *)v27 initWithRealPart:v73 imagPart:?];
  v83[4] = v50;
  v28 = [Complex alloc];
  v71 = [NSNumber numberWithDouble:v22[10]];
  v29 = [NSNumber numberWithDouble:v22[11]];
  v30 = [(Complex *)v28 initWithRealPart:v71 imagPart:v29];
  v83[5] = v30;
  v31 = [Complex alloc];
  v32 = [NSNumber numberWithDouble:v22[12]];
  v33 = [NSNumber numberWithDouble:v22[13]];
  v34 = [(Complex *)v31 initWithRealPart:v32 imagPart:v33];
  v83[6] = v34;
  v35 = [Complex alloc];
  v36 = [NSNumber numberWithDouble:v22[14]];
  v37 = [NSNumber numberWithDouble:v22[15]];
  v38 = [(Complex *)v35 initWithRealPart:v36 imagPart:v37];
  v83[7] = v38;
  v69 = [NSArray arrayWithObjects:v83 count:8];

  v39 = objc_alloc_init(BiasEstimatorFeatures);
  v40 = +[NSDate date];
  [v40 timeIntervalSince1970];
  v42 = v41;

  [(BiasEstimatorFeatures *)v39 setTimestamp:v42];
  if ((*(model + 24) & 1) == 0)
  {
    __assert_rtn("[NINearbyUpdatesEngine _consolidateInputToMLModel:]", "NIServerNearbyUpdatesEngine.mm", 2233, "solution.mach_continuous_time_sec.has_value()");
  }

  [(BiasEstimatorFeatures *)v39 setUwbTime:*(model + 2)];
  if ((*(model + 215) & 0x100) == 0)
  {
    sub_1000195BC();
  }

  [(BiasEstimatorFeatures *)v39 setAntennaMask:*(model + 215)];
  [(BiasEstimatorFeatures *)v39 setSoiRssiDbm:*(model + 27)];
  [(BiasEstimatorFeatures *)v39 setRssiDbm:*(model + 26)];
  [(BiasEstimatorFeatures *)v39 setTofPicSecond:*(model + 22)];
  LOWORD(v43) = *(model + 212);
  [(BiasEstimatorFeatures *)v39 setToaNoiseRms:v43];
  LOWORD(v44) = *(model + 213);
  [(BiasEstimatorFeatures *)v39 setToaPpwinRms:v44];
  LOWORD(v45) = *(model + 214);
  [(BiasEstimatorFeatures *)v39 setToaPpwinPeak:v45];
  if (*(model + 110) & 1) != 0 && (*(model + 114) & 1) != 0 && (*(model + 118) & 1) != 0 && (*(model + 122))
  {
    [(BiasEstimatorFeatures *)v39 setRttInitiator:*(model + 54)];
    if ((*(model + 114) & 1) == 0)
    {
      sub_1000195BC();
    }

    [(BiasEstimatorFeatures *)v39 setTatInitiator:*(model + 56)];
    if ((*(model + 118) & 1) == 0)
    {
      sub_1000195BC();
    }

    [(BiasEstimatorFeatures *)v39 setRttResponder:*(model + 58)];
    if ((*(model + 122) & 1) == 0)
    {
      sub_1000195BC();
    }

    [(BiasEstimatorFeatures *)v39 setTatResponder:*(model + 60)];
    [(BiasEstimatorFeatures *)v39 setCirPacket1:v67];
    [(BiasEstimatorFeatures *)v39 setLeadingEdgePacket1:sub_100193B28(model + 1208, 0)];
    [(BiasEstimatorFeatures *)v39 setFirstPathIndexPacket1:sub_100193B00(model + 1208, 0)];
    [(BiasEstimatorFeatures *)v39 setRxAntennaPacket1:sub_100193AD8(model + 1208, 0)];
    [(BiasEstimatorFeatures *)v39 setCirPacket2:v69];
    [(BiasEstimatorFeatures *)v39 setLeadingEdgePacket2:sub_100193B28(model + 1208, 1)];
    [(BiasEstimatorFeatures *)v39 setFirstPathIndexPacket2:sub_100193B00(model + 1208, 1)];
    [(BiasEstimatorFeatures *)v39 setRxAntennaPacket2:sub_100193AD8(model + 1208, 1)];
    v46 = v39;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6018();
    }

    v46 = 0;
  }

  return v46;
}

- (id)_handleRangeAndAoASolution:(const void *)solution
{
  if ((*(solution + 752) & 1) == 0)
  {
    sub_1004C6080();
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained objectFromIdentifier:*(solution + 5)];

  if (v6)
  {
    [(NINearbyUpdatesEngine *)self _convertFromPointingCoordinatesToSpatial:solution + 608];
    v15 = *&v7;
    v16 = v8;
    rangeMeasSourcePref = self->_rangeMeasSourcePref;
    if (rangeMeasSourcePref)
    {
      if (rangeMeasSourcePref != 1)
      {
        goto LABEL_13;
      }

      if (*(solution + 600) != 1)
      {
        *&v7 = NINearbyObjectDistanceNotAvailable;
        goto LABEL_12;
      }

      v7 = *(solution + 44);
    }

    else
    {
      v7 = *(solution + 81);
    }

    *&v7 = v7;
LABEL_12:
    [v6 setDistance:v7];
LABEL_13:
    [v6 setDirection:sub_1000537D8(&v15)];
    [v6 setDistanceMeasurementQuality:1];
    [v6 setQuaternion:{sub_10005372C(v15, v16)}];
    *&v11 = v15;
    [v6 setAzimuth:v11];
    *&v12 = v16;
    [v6 setElevation:v12];
    if (*(solution + 600) == 1)
    {
      [v6 setSignalStrength:*(solution + 27)];
      if ((*(solution + 215) & 0x100) != 0)
      {
        [v6 setRemoteTxAntennaMask:*(solution + 215)];
      }
    }

    v13 = v6;
    goto LABEL_17;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#warning _handleRangeAndAoASolution failed to convert identifier to object.", buf, 2u);
  }

LABEL_17:

  return v6;
}

- (id)_handleRangeOnlySolution:(const void *)solution
{
  if ((*(solution + 600) & 1) == 0)
  {
    sub_1004C60AC();
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained objectFromIdentifier:*(solution + 5)];

  if (v6)
  {
    if ((*(solution + 600) & 1) == 0)
    {
      sub_1000195BC();
    }

    if (self->_rangeMeasSourcePref < 2u)
    {
      v7 = *(solution + 44);
      *&v7 = v7;
      [v6 setDistance:v7];
    }

    [v6 setDirection:*NINearbyObjectDirectionNotAvailable.i64];
    [v6 setDistanceMeasurementQuality:1];
    [v6 setSignalStrength:*(solution + 27)];
    if ((*(solution + 215) & 0x100) != 0)
    {
      [v6 setRemoteTxAntennaMask:*(solution + 215)];
    }

    if ((*(solution + 248) & 0x100) != 0 && (*(solution + 249) & 0x100) != 0)
    {
      [v6 setNbRxStatus:*(solution + 248)];
      if ((*(solution + 249) & 0x100) == 0)
      {
        sub_1000195BC();
      }

      [v6 setMmsRxStatus:*(solution + 249)];
    }

    if (*(solution + 58))
    {
      [v6 setNbRssi:*(solution + 28)];
    }

    v8 = v6;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C60D8();
  }

  return v6;
}

- (BOOL)_shouldConsumeRoseSolution:(const void *)solution
{
  if (*(solution + 600))
  {
    v4 = *(solution + 6);
    v16 = *(solution + 5);
    v17 = v4;
    v5 = *(solution + 4);
    v14 = *(solution + 3);
    v15 = v5;
    v6 = *(solution + 15);
    v18 = *(solution + 14);
    v19 = 0;
    v7 = *(solution + 16);
    v20 = 0;
    v21 = 0;
    sub_100012F38(&v19, v6, v7, (v7 - v6) >> 3);
    v8 = *(solution + 10);
    v22 = *(solution + 9);
    v23 = v8;
    v9 = *(solution + 23);
    v24 = *(solution + 22);
    __p = 0;
    v26 = 0;
    v27 = 0;
    sub_100020574(&__p, v9, *(solution + 24), 0x6DB6DB6DB6DB6DB7 * ((*(solution + 24) - v9) >> 3));
    memcpy(v28, solution + 208, 0x181uLL);
    if ((v28[153] & 0x100) != 0)
    {
      if (LOBYTE(v28[153]) <= 2u)
      {
        v11 = qword_1009F9820;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if ((v28[153] & 0x100) == 0)
          {
            sub_1000195BC();
          }

          v13[0] = 67109120;
          v13[1] = LOBYTE(v28[153]);
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#nrby-eng,mmsValStatus %d does not pass check, rejecting range result event", v13, 8u);
        }

        v10 = 0;
        goto LABEL_14;
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C6150();
    }

    v10 = 1;
LABEL_14:
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    return v10;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C6114();
  }

  return 0;
}

- (void)_handleRegionChangeForDevice:(unint64_t)device currentRegion:(optional<nearby::algorithms::region_monitoring::Region> *)region prevRegion:timestamp:rangeResult:intentPrediction:regionTransitionSuppressed:
{
  v41 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v8;
  v12 = v4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v39 = v9;
    if (region[1].var0.var0 == 1)
    {
      data = region;
      if (*(&region->var0.var1.var0.__rep_.__l + 23) < 0)
      {
        data = region->var0.var1.var0.__rep_.__l.__data_;
      }

      v17 = [NSString stringWithUTF8String:data];
      if ((region[1].var0.var0 & 1) == 0)
      {
        sub_1000195BC();
      }

      v18 = [[NIRegionKey alloc] initWithName:v17 regionSizeCategory:region->var2];
      v19 = [(NSMutableDictionary *)self->_regionDict objectForKey:v18];
      if (!v19 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C6184();
      }
    }

    else
    {
      v19 = 0;
    }

    if (*(v12 + 48) == 1)
    {
      v21 = v12;
      if (*(v12 + 23) < 0)
      {
        v21 = *v12;
      }

      v22 = [NSString stringWithUTF8String:v21];
      if ((*(v12 + 48) & 1) == 0)
      {
        sub_1000195BC();
      }

      v23 = [[NIRegionKey alloc] initWithName:v22 regionSizeCategory:*(v12 + 28)];
      v24 = [(NSMutableDictionary *)self->_regionDict objectForKey:v23];
      if (!v24 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C6184();
      }
    }

    else
    {
      v24 = 0;
    }

    if ((v39 & 0x100000000) != 0)
    {
      std::to_string(&v49, *&v39);
    }

    else
    {
      sub_100004A08(&v49, "N/A");
    }

    if ((v41 & 1) == 0)
    {
      sub_100004A08(&__p, "NONE");
      sub_100004A08(&v48, "NONE");
      if (*(v10 + 232) == 1)
      {
        sub_100387C80(*(v10 + 16));
        if (*(&__p.__rep_.__l + 23) < 0)
        {
          operator delete(__p.__rep_.__l.__data_);
        }

        __p = buf;
        if ((*(v10 + 232) & 1) == 0)
        {
          sub_1000195BC();
        }

        if (*(v10 + 72) == 1)
        {
          sub_100387C80(*(v10 + 64));
          if (*(&v48.__rep_.__l + 23) < 0)
          {
            operator delete(v48.__rep_.__l.__data_);
          }

          v48 = buf;
        }
      }

      v25 = qword_1009F9820;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        p_uniqueIdentifier = &self->_uniqueIdentifier;
        v38 = v24;
        if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
        {
          p_uniqueIdentifier = p_uniqueIdentifier->__rep_.__l.__data_;
        }

        v27 = *(v12 + 48);
        v28 = "NONE";
        if (v27 == 1)
        {
          v28 = &v46;
          sub_1003C7F08(v12);
          if (v47 < 0)
          {
            v28 = v46;
          }
        }

        if (region[1].var0.var0 == 1)
        {
          sub_1003C7F08(region);
          v29 = &v44;
          if (v45 < 0)
          {
            v29 = v44;
          }

          v30 = &v49;
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v30 = v49.__r_.__value_.__r.__words[0];
          }

          p_p = &__p;
          if (*(&__p.__rep_.__l + 23) < 0)
          {
            p_p = __p.__rep_.__l.__data_;
          }

          v32 = &v48;
          if (*(&v48.__rep_.__l + 23) < 0)
          {
            v32 = v48.__rep_.__l.__data_;
          }

          *buf.__rep_.__s.__data_ = 136316674;
          *(&buf.__rep_.__l.__data_ + 4) = p_uniqueIdentifier;
          WORD2(buf.__rep_.__l.__size_) = 2048;
          *(&buf.__rep_.__l.__size_ + 6) = device;
          *(&buf.__rep_.__l + 11) = 2080;
          v51 = v28;
          v52 = 2080;
          v53 = v29;
          v54 = 2080;
          v55 = v30;
          v56 = 2080;
          v57 = p_p;
          v58 = 2080;
          v59 = v32;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#spatialGesturesPredictor #region change ses_id: %s dev: 0x%llx from %s -> %s, intent score: %s, range_m: %s, rssi_dbm: %s", &buf, 0x48u);
          if (v45 < 0)
          {
            operator delete(v44);
          }
        }

        else
        {
          v33 = &v49;
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v33 = v49.__r_.__value_.__r.__words[0];
          }

          v34 = &__p;
          if (*(&__p.__rep_.__l + 23) < 0)
          {
            v34 = __p.__rep_.__l.__data_;
          }

          v35 = &v48;
          if (*(&v48.__rep_.__l + 23) < 0)
          {
            v35 = v48.__rep_.__l.__data_;
          }

          *buf.__rep_.__s.__data_ = 136316674;
          *(&buf.__rep_.__l.__data_ + 4) = p_uniqueIdentifier;
          WORD2(buf.__rep_.__l.__size_) = 2048;
          *(&buf.__rep_.__l.__size_ + 6) = device;
          *(&buf.__rep_.__l + 11) = 2080;
          v51 = v28;
          v52 = 2080;
          v53 = "NONE";
          v54 = 2080;
          v55 = v33;
          v56 = 2080;
          v57 = v34;
          v58 = 2080;
          v59 = v35;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#spatialGesturesPredictor #region change ses_id: %s dev: 0x%llx from %s -> %s, intent score: %s, range_m: %s, rssi_dbm: %s", &buf, 0x48u);
        }

        v24 = v38;
        if (v27 && v47 < 0)
        {
          operator delete(v46);
        }
      }

      if (*(&v48.__rep_.__l + 23) < 0)
      {
        operator delete(v48.__rep_.__l.__data_);
      }

      if (*(&__p.__rep_.__l + 23) < 0)
      {
        operator delete(__p.__rep_.__l.__data_);
      }
    }

    if (*(v10 + 232) == 1)
    {
      [(NINearbyUpdatesEngine *)self nearbyObjectFromRangeResult:v10];
    }

    else
    {
      [(NINearbyUpdatesEngine *)self nearbyObjectFromDeviceIdentifier:device];
    }
    v36 = ;
    if (v19)
    {
      -[NINearbyUpdatesEngine _fillNearbyObject:fromRegionSizeCategory:](self, "_fillNearbyObject:fromRegionSizeCategory:", v36, [v19 regionSizeCategory]);
    }

    if (v36)
    {
      if ([v19 devicePresencePreset] == 7 && *(v10 + 232) == 1)
      {
        [v36 setTimestamp:*(v10 + 8)];
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained updatesEngine:self object:v36 didUpdateRegion:v19 previousRegion:v24 regionTransitionSuppressed:v41];
      }

      if (self->_protobufLogger.__ptr_)
      {
        sub_1002D63A8(v36, &buf.__rep_.__l);
        ptr = self->_protobufLogger.__ptr_;
        if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
        {
          sub_1000056BC(&__p, self->_uniqueIdentifier.__rep_.__l.__data_, self->_uniqueIdentifier.__rep_.__l.__size_);
        }

        else
        {
          __p = self->_uniqueIdentifier;
        }

        v43 = 1;
        sub_1002E3A24(ptr, &__p, &buf, region, v12, v39, v41, v11);
        if (v43 == 1 && *(&__p.__rep_.__l + 23) < 0)
        {
          operator delete(__p.__rep_.__l.__data_);
        }

        if (buf.__rep_.__l.__data_)
        {
          buf.__rep_.__l.__size_ = buf.__rep_.__l.__data_;
          operator delete(buf.__rep_.__l.__data_);
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C61F4();
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf.__rep_.__s.__data_ = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions, no delegate.", &buf, 2u);
    }
  }
}

- (void)_handleBoundedRegionRange:(double)range forDevice:(unint64_t)device rangeResult:(optional<nearby::algorithms::common::RangeResult> *)result
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!result->var1)
  {
    sub_1000195BC();
  }

  v9 = [(NINearbyUpdatesEngine *)self nearbyObjectFromRangeResult:result];
  v10 = v9;
  if (v9)
  {
    if (result->var0.var1.var15.__engaged_)
    {
      val = result->var0.var1.var15.var0.__val_;
      *&val = val;
      [v9 setBoundedRegionRange:val];
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = v10;
      v12 = [NSArray arrayWithObjects:&v14 count:1];
      [WeakRetained updatesEngine:self didUpdateNearbyObjects:v12];
    }

    if (self->_protobufLogger.__ptr_)
    {
      if (result->var0.var1.var15.__engaged_)
      {
        sub_1002D63A8(v10, __p);
        sub_1002E3750(self->_protobufLogger.__ptr_, &self->_uniqueIdentifier, __p, range);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C61F4();
  }
}

- (void)_handleDeviceMonitorActivation:(BOOL)activation forDevice:(unint64_t)device timestamp:(double)timestamp regionSizeCategory:(int)category regions:(optional<std:(int)regions :vector<nearby::algorithms::region_monitoring::Region>> *)a7 predictorType:
{
  activationCopy = activation;
  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C6264(activationCopy, device, v15);
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    if (activationCopy)
    {
      if (!a7->var1)
      {
        sub_1004C6304();
      }

      sub_1002E2CD4(ptr, device, category, a7, regions, timestamp);
    }

    else
    {
      sub_1002E3000(ptr, device);
    }
  }
}

- (void)processUWBResultForRegionMonitoring:(id)monitoring roseSolution:(const void *)solution processingOptions:(const AlgorithmProcessingOptions *)options
{
  monitoringCopy = monitoring;
  v10 = monitoringCopy;
  if ((*(solution + 24) & 1) == 0)
  {
    __assert_rtn("[NINearbyUpdatesEngine processUWBResultForRegionMonitoring:roseSolution:processingOptions:]", "NIServerNearbyUpdatesEngine.mm", 2599, "solution.mach_continuous_time_sec.has_value()");
  }

  v11 = *(solution + 2);
  [monitoringCopy distance];
  if (v12 != NINearbyObjectDistanceNotAvailable)
  {
    [v10 azimuth];
    v13 = 0;
    if (v14 == *&NINearbyObjectAzimuthNotAvailable || ([v10 elevation], v15 == *&NINearbyObjectElevationNotAvailable))
    {
      v18 = 0;
    }

    else
    {
      [v10 azimuth];
      v13 = v16;
      [v10 elevation];
      v5 = v17;
      v18 = 0x100000001;
    }

    discoveryToken = [v10 discoveryToken];
    v56 = [discoveryToken hash];
    if (self->_protobufLogger.__ptr_)
    {
      sub_1002D63A8(v10, __p);
      sub_1002E320C(self->_protobufLogger.__ptr_, *(solution + 18), *(solution + 5), __p, [v10 requiresBiasCorrection], v11);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    remoteTxAntennaMask = [v10 remoteTxAntennaMask];
    if (remoteTxAntennaMask == NINearbyObjectRemoteTxAntennaMaskNotAvailable)
    {
      remoteTxAntennaMask2 = 1;
    }

    else
    {
      remoteTxAntennaMask2 = [v10 remoteTxAntennaMask];
    }

    v21 = 0;
    localIntentPredictorPreference = self->_localIntentPredictorPreference;
    if (localIntentPredictorPreference > 2)
    {
      if (localIntentPredictorPreference == 3)
      {
        intentPredictorConfiguration = options->intentPredictorConfiguration;
        if (intentPredictorConfiguration == 2)
        {
          v24 = 3;
        }

        else
        {
          v24 = 0;
        }

        if (intentPredictorConfiguration == 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v24;
        }
      }

      else if (localIntentPredictorPreference == 4)
      {
        __assert_rtn("[NINearbyUpdatesEngine processUWBResultForRegionMonitoring:roseSolution:processingOptions:]", "NIServerNearbyUpdatesEngine.mm", 2668, "false");
      }
    }

    else if (localIntentPredictorPreference == 1 || localIntentPredictorPreference == 2)
    {
      v21 = self->_localIntentPredictorPreference;
    }

    magneticFieldStrengthCheckOption = options->magneticFieldStrengthCheckOption;
    value = 0.0;
    if (magneticFieldStrengthCheckOption == 1)
    {
      v27 = 0;
    }

    else
    {
      if (self->_cachedMagneticFieldStrength.__engaged_)
      {
        time = self->_cachedMagneticFieldStrength.var0.__val_.time;
        if (vabdd_f64(time, v11) < 0.07)
        {
          v27 = magneticFieldStrengthCheckOption >> 8;
          value = self->_cachedMagneticFieldStrength.var0.__val_.value;
LABEL_32:
          if (sub_100009BCC(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &options->regionSizeCategory))
          {
            v29 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &options->regionSizeCategory);
            if (!v29)
            {
              sub_10017C290("unordered_map::at: key not found");
            }

            if (v29[3])
            {
              v30 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, &options->regionSizeCategory);
              if (!v30)
              {
                sub_10017C290("unordered_map::at: key not found");
              }

              v55 = v30[3];
              [v10 distance];
              v32 = v31;
              [v10 signalStrength];
              v34 = v33;
              [v10 rangeBiasEstimate];
              if (v35 == *&NINearbyObjectRangeBiasEstimateNotAvailable)
              {
                v36 = 0;
                v37 = 0;
              }

              else
              {
                [v10 rangeBiasEstimate];
                v37 = v38;
                v36 = 1;
              }

              [v10 rangeUncertainty];
              if (v39 == *&NINearbyObjectRangeUncertaintyNotAvailable)
              {
                v40 = v18;
                v41 = 0;
                v42 = 0;
              }

              else
              {
                [v10 rangeUncertainty];
                v40 = v18;
                v41 = 1;
              }

              regionSizeCategory = options->regionSizeCategory;
              *buf = v56;
              v44 = magneticFieldStrengthCheckOption | (v27 << 8);
              *v63 = v11;
              v45 = v44 == 1;
              v46 = v44 != 1;
              *&v63[8] = v32;
              if (v45)
              {
                v47 = 0;
              }

              else
              {
                v47 = magneticFieldStrengthCheckOption;
              }

              *v64 = 1;
              *&v64[4] = v13 | (v5 << 32);
              *&v64[12] = v40;
              v65 = 0;
              v66 = 0;
              v67 = 0;
              v68 = 0;
              v69 = v34;
              v70 = 1;
              v71 = remoteTxAntennaMask2 | 0x100;
              v72 = v37;
              v73 = v36;
              v74 = v42;
              v75 = v41;
              v76 = regionSizeCategory;
              v77 = v21;
              v78 = v47;
              v79 = v27;
              v80 = BYTE2(v27);
              v81 = time;
              v82 = value;
              v83 = v46;
              v88 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              sub_10040FCD4(v55, buf, 0, __p);
              if (v60)
              {
                *&v48 = v59;
                [v10 setDistance:v48];
                [v10 setDistanceMeasurementQuality:1];
                [v10 setMotionState:0];
                [v10 setTimestamp:v11];
                v49 = qword_1009F9820;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  if ((v60 & 1) == 0)
                  {
                    sub_1000195BC();
                  }

                  v50 = *(solution + 18);
                  v51 = 0xBFF0000000000000;
                  if (*(solution + 24))
                  {
                    v51 = *(solution + 2);
                  }

                  *buf = 67109888;
                  *&buf[4] = v50;
                  *v63 = 2048;
                  *&v63[2] = v51;
                  *&v63[10] = 2048;
                  *v64 = v56;
                  *&v64[8] = 2048;
                  *&v64[10] = v59;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#regions filtered solution. {'ticket id': %d, 'cont time s': %0.3f, 'identifier': %llx, 'range_m': %0.2f}", buf, 0x26u);
                }

                if (self->_protobufLogger.__ptr_)
                {
                  sub_1002D63A8(v10, buf);
                  sub_1002E34B4(self->_protobufLogger.__ptr_, *(solution + 18), *(solution + 5), buf, v11);
                  if (*buf)
                  {
                    *v63 = *buf;
                    operator delete(*buf);
                  }
                }

                if (v10)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_delegate);
                  if (objc_opt_respondsToSelector())
                  {
                    v61 = v10;
                    v53 = [NSArray arrayWithObjects:&v61 count:1];
                    [WeakRetained updatesEngine:self didUpdateNearbyObjects:v53];
                  }

                  analyticsManager = self->_analyticsManager;
                  if (analyticsManager)
                  {
                    [(NIServerAnalyticsManager *)analyticsManager nearbyObjectUpdated:v10];
                  }
                }
              }
            }
          }

          goto LABEL_61;
        }
      }

      v27 = 0;
      LOBYTE(magneticFieldStrengthCheckOption) = 1;
    }

    time = 0.0;
    goto LABEL_32;
  }

LABEL_61:
}

- (void)_handleWiFiRangeResults:(const void *)results
{
  v3 = *results;
  v32 = *(results + 1);
  if (*results != v32)
  {
    while (1)
    {
      v5 = v3[3];
      if (v3[4] != v5)
      {
        break;
      }

LABEL_36:
      v3 += 7;
      if (v3 == v32)
      {
        return;
      }
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v5 + v6;
      v9 = *v8;
      v10 = sub_100005348(*(v8 + 16));
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v12 = [WeakRetained objectFromIdentifier:*v3];

      if (!v12)
      {
        v29 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          v30 = *v3;
          *buf = 134217984;
          *&buf[4] = v30;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#nrby-eng,_handleWiFiRangeResult failed to create object from address 0x%llx ", buf, 0xCu);
        }

        goto LABEL_35;
      }

      v13 = v9 * 0.0149896229;
      v14 = v13;
      *&v13 = v14;
      [v12 setDistance:v13];
      [v12 setDirection:*NINearbyObjectDirectionNotAvailable.i64];
      [v12 setDistanceMeasurementQuality:2];
      ptr = self->_protobufLogger.__ptr_;
      if (ptr)
      {
        sub_1002E1BC8(ptr, *v3, *(v3[3] + v6 + 8), *(v3[3] + v6 + 9), v3[1], v14, v10);
      }

      *buf = 0;
      if (!sub_100009BCC(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, buf))
      {
        goto LABEL_38;
      }

      v45[0] = 0;
      v16 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, v45);
      if (!v16)
      {
        sub_10017C290("unordered_map::at: key not found");
      }

      if (!v16[3])
      {
LABEL_38:

        return;
      }

      *buf = 0;
      v17 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, buf);
      if (!v17)
      {
        sub_10017C290("unordered_map::at: key not found");
      }

      if (v17[3])
      {
        discoveryToken = [v12 discoveryToken];
        v69 = [discoveryToken hash];
        *buf = &v69;
        v19 = sub_100011060(&self->_hashToTokenMap, &v69, &unk_100548C50, buf);
        objc_storeStrong(v19 + 3, discoveryToken);
        v45[0] = [discoveryToken hash];
        *&v45[1] = v10;
        v20.i64[0] = -256;
        v20.i64[1] = -256;
        v46 = v14;
        v47 = 2;
        v41 &= 0xFFFFFFFFFFFFFF00;
        v42 &= 0xFFFFFF00FFFFFFFFLL;
        v48 = v41;
        v49 = v42;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v39 &= 0xFFFFFFFFFFFFFF00;
        v40 &= 0xFFFFFFFFFFFFFF00;
        v54 = v39;
        v55 = v40;
        v56 = 0;
        v35 = vandq_s8(v35, v20);
        v36 = vandq_s8(v36, v20);
        v57 = v36;
        v58 = v35;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v37 &= 0xFFFFFFFFFFFFFF00;
        v38 &= 0xFFFFFFFFFFFFFF00;
        v62 = v38;
        v63 = v37;
        v33 = vandq_s8(v33, v20);
        v34 = vandq_s8(v34, v20);
        v65 = v34;
        v66 = v33;
        v64 = 0;
        v43 &= 0xFFFFFFFFFFFFFF00;
        v44 &= 0xFFFFFFFFFFFFFF00;
        v67 = v44;
        v68 = v43;
        v21 = v3[3];
        v22 = v3[4];
        *__p = 0;
        v23 = sub_100009978(&self->_regionMonitorMap.__table_.__bucket_list_.__ptr_, __p);
        if (!v23)
        {
          sub_10017C290("unordered_map::at: key not found");
        }

        sub_10040FCD4(v23[3], v45, v7 == 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3) - 1, buf);
        if ((v81 & 1) == 0)
        {
          v31 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 134217984;
            *&__p[4] = v46;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#wifi_regions: measurement processed but no filtered solution returned, Distance: %f m", __p, 0xCu);
          }

          goto LABEL_34;
        }

        *&v24 = v79;
        [v12 setDistance:v24];
        if ((v81 & 1) == 0)
        {
          sub_1000195BC();
        }

        if (v80 > 1.0 && v80 != -1.0)
        {
          [v12 setDistanceMeasurementQuality:{3, v80}];
        }

        if (self->_protobufLogger.__ptr_)
        {
          sub_1002D63A8(v12, __p);
          sub_1002E34B4(self->_protobufLogger.__ptr_, v3[1], *v3, __p, v10);
          if (*__p)
          {
            *&__p[8] = *__p;
            operator delete(*__p);
          }
        }

        v25 = qword_1009F9820;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          if ((v81 & 1) == 0)
          {
            sub_1000195BC();
          }

          v26 = v3[1];
          *__p = 134219008;
          *&__p[4] = v26;
          *&__p[12] = 2048;
          *&__p[14] = v10;
          v72 = 2048;
          v73 = v69;
          v74 = 2048;
          v75 = v79;
          v76 = 2048;
          v77 = v80;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#wifi_regions: filtered solution. {'ticket id': %llu, 'cont time s': %0.3f, 'identifier': %llx, 'range_m': %0.2f, 'uncertainty: %0.2f}", __p, 0x34u);
        }

        [v12 setMotionState:0];
      }

      discoveryToken = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v70 = v12;
        v27 = [NSArray arrayWithObjects:&v70 count:1];
        [discoveryToken updatesEngine:self didUpdateNearbyObjects:v27];
      }

      analyticsManager = self->_analyticsManager;
      if (analyticsManager)
      {
        [(NIServerAnalyticsManager *)analyticsManager nearbyObjectUpdated:v12];
      }

LABEL_34:

LABEL_35:
      ++v7;
      v5 = v3[3];
      v6 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((v3[4] - v5) >> 3) <= v7)
      {
        goto LABEL_36;
      }
    }
  }
}

- (void)acceptVisionInput:(id)input
{
  inputCopy = input;
  [inputCopy timestamp];
  v6 = v5;
  [inputCopy devicePose];
  v36 = v8;
  v37 = v7;
  v34 = v10;
  v35 = v9;
  trackingState = [inputCopy trackingState];
  if (trackingState == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = trackingState == 1;
  }

  *&v43 = v6;
  v44 = v37;
  v45 = v36;
  v46 = v35;
  v47 = v34;
  LODWORD(v48) = v12;
  BYTE4(v48) = [inputCopy majorRelocalization];
  BYTE5(v48) = [inputCopy minorRelocalization];
  BYTE8(v48) = 0;
  LOBYTE(v49) = 0;
  BYTE8(v49) = 0;
  BYTE12(v49) = 0;
  LOBYTE(v50) = 0;
  BYTE4(v50) = 0;
  [inputCopy lightEstimate];
  if (v13 != *&NIARLightEstimateNotAvailable)
  {
    [inputCopy lightEstimate];
    *(&v48 + 1) = v14;
    LOBYTE(v49) = 1;
  }

  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E57BC(ptr, &self->_uniqueIdentifier, &v43);
  }

  analyticsManager = self->_analyticsManager;
  if (analyticsManager)
  {
    [(NIServerAnalyticsManager *)analyticsManager updateWithPose:&v43];
  }

  v17 = self->_syntheticApertureFilter.__ptr_;
  if (!v17)
  {
    goto LABEL_27;
  }

  sub_1003AA2EC(v17, &v43);
  v18 = self->_analyticsManager;
  if (v18)
  {
    __src[4] = v47;
    __src[5] = v48;
    __src[6] = v49;
    __src[7] = v50;
    __src[0] = v43;
    __src[1] = v44;
    __src[2] = v45;
    __src[3] = v46;
    [(NIServerAnalyticsManager *)v18 updateWithVIOPose:__src];
  }

  sub_1003AC708(self->_syntheticApertureFilter.__ptr_, __src);
  v19 = self->_analyticsManager;
  if (v19)
  {
    memcpy(__dst, __src, sizeof(__dst));
    [(NIServerAnalyticsManager *)v19 updateWithSASolution:__dst];
  }

  if (LOBYTE(__src[15]) != 1)
  {
    goto LABEL_27;
  }

  v20 = [(NINearbyUpdatesEngine *)self nearbyObjectFromSolution:__src];
  if (v20)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v40 = v20;
      v22 = [NSArray arrayWithObjects:&v40 count:1];
      [WeakRetained updatesEngine:self didUpdateNearbyObjects:v22];
    }

    v23 = self->_analyticsManager;
    if (v23)
    {
      [(NIServerAnalyticsManager *)v23 nearbyObjectUpdated:v20];
    }

    v24 = self->_protobufLogger.__ptr_;
    if (v24)
    {
      [v20 timestamp];
      v26 = v25;
      sub_1002D63A8(v20, __dst);
      memset(v38, 0, sizeof(v38));
      sub_10038E568(v38, __dst, &__dst[20], 1uLL);
      sub_1002E16FC(v24, &self->_uniqueIdentifier, v38, v26);
      v39 = v38;
      sub_10038E814(&v39);
      if (__dst[0])
      {
        __dst[1] = __dst[0];
        operator delete(__dst[0]);
      }
    }

LABEL_27:
    v27 = self->_findingAlgorithmContainer.__ptr_;
    if (v27)
    {
      if ((*(*v27 + 56))(v27))
      {
        (*(*self->_findingAlgorithmContainer.__ptr_ + 48))(self->_findingAlgorithmContainer.__ptr_, &v43);
        if ((*(*self->_findingAlgorithmContainer.__ptr_ + 64))(self->_findingAlgorithmContainer.__ptr_))
        {
          [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
        }
      }
    }

    if (self->_positionEngineManager.__ptr_)
    {
      v28 = +[NSUserDefaults standardUserDefaults];
      v29 = [v28 objectForKey:@"NIDLTDOADisableVIO"];
      v30 = v29 == 0;

      if (v30 || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 BOOLForKey:@"NIDLTDOADisableVIO"], v31, (v32 & 1) == 0))
      {
        sub_1004035C4(self->_positionEngineManager.__ptr_, &v43);
      }
    }

    goto LABEL_39;
  }

  v33 = qword_1009F9820;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    if ((__src[15] & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_1004C6330(__src + 1, __dst, v33);
  }

LABEL_39:
}

- (void)processUWBResultForSyntheticAperture:(id)aperture roseSolution:(const void *)solution
{
  apertureCopy = aperture;
  if (!self->_syntheticApertureFilter.__ptr_)
  {
    __assert_rtn("[NINearbyUpdatesEngine processUWBResultForSyntheticAperture:roseSolution:]", "NIServerNearbyUpdatesEngine.mm", 3063, "_syntheticApertureFilter != nullptr");
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (*(solution + 24))
  {
    v8 = *(solution + 8);
    v9 = v8 > 6;
    v10 = (1 << v8) & 0x65;
    if (v9 || v10 == 0)
    {
      if (*(solution + 752) == 1)
      {
        sub_100498E54(__src, solution + 608);
        v13 = qword_1009F9820;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          if (*(solution + 600) != 1 || (*(solution + 24) & 1) == 0)
          {
            sub_1000195BC();
          }

          v49 = *(solution + 44);
          v50 = *(solution + 2);
          p_uniqueIdentifier = &self->_uniqueIdentifier;
          if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
          {
            p_uniqueIdentifier = p_uniqueIdentifier->__rep_.__l.__data_;
          }

          LODWORD(__dst[0]) = 134219010;
          *(__dst + 4) = v49;
          WORD2(__dst[1]) = 2048;
          *(&__dst[1] + 6) = v50;
          HIWORD(__dst[2]) = 2048;
          __dst[3] = *(&__src[3] + 1);
          LOWORD(__dst[4]) = 2048;
          *(&__dst[4] + 2) = *&__src[3];
          WORD1(__dst[5]) = 2080;
          *(&__dst[5] + 4) = p_uniqueIdentifier;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#nrby-eng,#sa_algo,New measurement with distance %4.3f m, timestamp %f, az %4.1f deg, and el %4.1f deg. Unique identifier: %s", __dst, 0x34u);
        }

        v14 = sub_1000422B8(*(&__src[3] + 1));
        *&v15 = sub_1000422B8(*&__src[3]);
        sub_10002074C(&__src[1], *(&__src[1] + 1));
        *&v14 = v14;
        v16 = LODWORD(v14);
        v17 = v15 << 32;
        v18 = 0x100000001;
      }

      else
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          if (*(solution + 600) != 1 || (*(solution + 24) & 1) == 0)
          {
            sub_1000195BC();
          }

          v46 = *(solution + 44);
          v47 = *(solution + 2);
          data = &self->_uniqueIdentifier;
          if (*(&self->_uniqueIdentifier.__rep_.__l + 23) < 0)
          {
            data = data->__rep_.__l.__data_;
          }

          LODWORD(__src[0]) = 134218498;
          *(__src + 4) = v46;
          WORD6(__src[0]) = 2048;
          *(__src + 14) = v47;
          WORD3(__src[1]) = 2080;
          *(&__src[1] + 1) = data;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "#nrby-eng,#sa_algo,New measurement with distance %4.3f m, timestamp %f, no az or el. Unique identifier: %s", __src, 0x20u);
        }

        v18 = 0;
        v17 = 0;
        v16 = 0;
      }

      discoveryToken = [apertureCopy discoveryToken];
      v21 = [discoveryToken hash];
      if (*(solution + 24) != 1 || (*(solution + 600) & 1) == 0)
      {
        sub_1000195BC();
      }

      v22 = *(solution + 2);
      *&v23 = *(solution + 44);
      v24 = *(solution + 257);
      v25 = *(solution + 280);
      *&v53 = v21;
      *(&v53 + 1) = v22;
      *&v54 = v23 | 0x100000000;
      *(&v54 + 1) = v16 | v17;
      *&v55 = v18;
      LOBYTE(v56) = 0;
      BYTE4(v56) = 0;
      BYTE8(v56) = 0;
      BYTE12(v56) = 0;
      v57 = 0uLL;
      *v58 = 0;
      memset(&v58[8], 0, 41);
      BYTE8(v59) = 0;
      *v61 = 0;
      v60 = 0uLL;
      *&v61[4] = v24;
      *&v61[6] = v25;
      memset(&v61[8], 0, 48);

      ptr = self->_protobufLogger.__ptr_;
      if (ptr)
      {
        sub_1002EA2EC(ptr, &self->_uniqueIdentifier, &v53);
      }

      sub_1003AC208(self->_syntheticApertureFilter.__ptr_, &v53);
      analyticsManager = self->_analyticsManager;
      if (analyticsManager)
      {
        __src[12] = *&v61[16];
        __src[13] = *&v61[32];
        __src[8] = *&v58[48];
        __src[9] = v59;
        *&__src[14] = *&v61[48];
        __src[10] = v60;
        __src[11] = *v61;
        __src[4] = v57;
        __src[5] = *v58;
        __src[6] = *&v58[16];
        __src[7] = *&v58[32];
        __src[0] = v53;
        __src[1] = v54;
        __src[2] = v55;
        __src[3] = v56;
        [(NIServerAnalyticsManager *)analyticsManager updateWithRangeResult:__src];
      }

      sub_1003AC708(self->_syntheticApertureFilter.__ptr_, __src);
      v28 = self->_analyticsManager;
      if (v28)
      {
        memcpy(__dst, __src, sizeof(__dst));
        [(NIServerAnalyticsManager *)v28 updateWithSASolution:__dst];
      }

      v29 = [(NINearbyUpdatesEngine *)self niConvergenceStateFromSolution:__src];
      convStateForObject = self->_convStateForObject;
      discoveryToken2 = [apertureCopy discoveryToken];
      v32 = [(NSMutableDictionary *)convStateForObject objectForKeyedSubscript:discoveryToken2];

      if (([v32 isEqual:v29] & 1) == 0)
      {
        v33 = self->_convStateForObject;
        discoveryToken3 = [apertureCopy discoveryToken];
        [(NSMutableDictionary *)v33 setObject:v29 forKeyedSubscript:discoveryToken3];

        v35 = [NINearbyObject alloc];
        discoveryToken4 = [apertureCopy discoveryToken];
        v37 = [(NINearbyObject *)v35 initWithToken:discoveryToken4];

        if (objc_opt_respondsToSelector())
        {
          [WeakRetained updatesEngine:self didUpdateAlgorithmConvergenceState:v29 forObject:v37];
        }

        v38 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__dst[0]) = 138412802;
          *(__dst + 4) = v37;
          WORD2(__dst[1]) = 2112;
          *(&__dst[1] + 6) = v29;
          HIWORD(__dst[2]) = 2112;
          __dst[3] = v32;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#nrby-eng,#sa_algo,Updated convergence state for object: %@. New state: %@. Previous state: %@", __dst, 0x20u);
        }
      }

      if (LOBYTE(__src[15]) == 1)
      {
        v39 = [(NINearbyUpdatesEngine *)self nearbyObjectFromSolution:__src];
        if (v39)
        {
          if (objc_opt_respondsToSelector())
          {
            v63 = v39;
            v40 = [NSArray arrayWithObjects:&v63 count:1];
            [WeakRetained updatesEngine:self didUpdateNearbyObjects:v40];
          }

          v41 = self->_analyticsManager;
          if (v41)
          {
            [(NIServerAnalyticsManager *)v41 nearbyObjectUpdated:v39];
          }

          v42 = self->_protobufLogger.__ptr_;
          if (v42)
          {
            [v39 timestamp];
            v44 = v43;
            sub_1002D63A8(v39, __dst);
            memset(v52, 0, sizeof(v52));
            sub_10038E568(v52, __dst, &__dst[20], 1uLL);
            sub_1002E16FC(v42, &self->_uniqueIdentifier, v52, v44);
            v62 = v52;
            sub_10038E814(&v62);
            if (__dst[0])
            {
              __dst[1] = __dst[0];
              operator delete(__dst[0]);
            }
          }
        }

        else
        {
          v45 = qword_1009F9820;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            if ((__src[15] & 1) == 0)
            {
              sub_1000195BC();
            }

            sub_1004C6330(__src + 1, __dst, v45);
          }
        }
      }
    }

    else
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        if ((*(solution + 24) & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_1004C6400(solution + 2, self, __src, v12);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C637C();
  }
}

- (void)acceptPeerDeviceType:(BOOL)type
{
  analyticsManager = self->_analyticsManager;
  if (analyticsManager)
  {
    [(NIServerAnalyticsManager *)analyticsManager updateWithPeerDeviceType:type];
  }
}

- (void)acceptDeviceMotionInput:(const void *)input
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E5B8C(ptr, &self->_uniqueIdentifier, input);
  }

  v6 = self->_findingAlgorithmContainer.__ptr_;
  if (v6)
  {
    if ((*(*v6 + 80))(v6, a2))
    {
      sub_100224EF8(728958020, 1, 0, 0, 0, 0);
      (*(*self->_findingAlgorithmContainer.__ptr_ + 72))(self->_findingAlgorithmContainer.__ptr_, input);
      sub_100224EF8(728958020, 2, 0, 0, 0, 0);
      if ((*(*self->_findingAlgorithmContainer.__ptr_ + 88))(self->_findingAlgorithmContainer.__ptr_))
      {

        [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
      }
    }
  }
}

- (void)acceptAltimeterData:(const AltimeterInput *)data
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E6058(ptr, &self->_uniqueIdentifier, data);
  }

  v6 = self->_findingAlgorithmContainer.__ptr_;
  if (v6 && (*(*v6 + 104))(v6, a2))
  {
    sub_100224EF8(728958028, 1, 0, 0, 0, 0);
    (*(*self->_findingAlgorithmContainer.__ptr_ + 96))(self->_findingAlgorithmContainer.__ptr_, data);

    sub_100224EF8(728958028, 2, 0, 0, 0, 0);
  }
}

- (void)acceptGnssSatelliteData:(const void *)data
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C646C();
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E6274(ptr, &self->_uniqueIdentifier, data);
  }

  v6 = self->_findingAlgorithmContainer.__ptr_;
  if (v6 && (*(*v6 + 192))(v6))
  {
    (*(*self->_findingAlgorithmContainer.__ptr_ + 184))(self->_findingAlgorithmContainer.__ptr_, data);
    if ((*(*self->_findingAlgorithmContainer.__ptr_ + 200))(self->_findingAlgorithmContainer.__ptr_))
    {
      [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
    }
  }
}

- (void)acceptSelfLocationData:(const LocationInput *)data
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  if (self->_protobufLogger.__ptr_)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"EnableFindingLocationInputProtobufLogging"];

    if (v6)
    {
      sub_1002E6A90(self->_protobufLogger.__ptr_, &self->_uniqueIdentifier, data, 0);
    }
  }

  ptr = self->_findingAlgorithmContainer.__ptr_;
  if (ptr && (*(*ptr + 144))(ptr, a2))
  {
    (*(*self->_findingAlgorithmContainer.__ptr_ + 136))(self->_findingAlgorithmContainer.__ptr_, data, 0);
    if ((*(*self->_findingAlgorithmContainer.__ptr_ + 152))(self->_findingAlgorithmContainer.__ptr_))
    {
      [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
    }

    analyticsManager = self->_analyticsManager;
    if (analyticsManager)
    {

      [(NIServerAnalyticsManager *)analyticsManager updateWithSelfLocation:data];
    }
  }
}

- (void)acceptHeadingData:(const HeadingInput *)data
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E70C0(ptr, &self->_uniqueIdentifier, data);
  }

  v6 = self->_findingAlgorithmContainer.__ptr_;
  if (v6)
  {
    if ((*(*v6 + 168))(v6, a2))
    {
      (*(*self->_findingAlgorithmContainer.__ptr_ + 160))(self->_findingAlgorithmContainer.__ptr_, data);
      if ((*(*self->_findingAlgorithmContainer.__ptr_ + 176))(self->_findingAlgorithmContainer.__ptr_))
      {

        [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
      }
    }
  }
}

- (void)acceptDiscoveryEventForPeer:(id)peer
{
  peerCopy = peer;
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
    [(NINearbyUpdatesEngine *)self setFindingPeerToken:peerCopy];
  }

  v4 = sub_100005288();
  v5 = v4;
  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E75A8(ptr, &self->_uniqueIdentifier, v4);
  }

  v7 = self->_findingAlgorithmContainer.__ptr_;
  if (v7)
  {
    if ((*(*v7 + 120))(v7))
    {
      (*(*self->_findingAlgorithmContainer.__ptr_ + 112))(self->_findingAlgorithmContainer.__ptr_, v5);
      if ((*(*self->_findingAlgorithmContainer.__ptr_ + 128))(self->_findingAlgorithmContainer.__ptr_))
      {
        [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
      }
    }
  }
}

- (void)acceptPeerLocationData:(const LocationInput *)data forPeer:(id)peer
{
  peerCopy = peer;
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  if (self->_protobufLogger.__ptr_)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"EnableFindingLocationInputProtobufLogging"];

    if (v7)
    {
      sub_1002E6A90(self->_protobufLogger.__ptr_, &self->_uniqueIdentifier, data, 1);
    }
  }

  ptr = self->_findingAlgorithmContainer.__ptr_;
  if (ptr && (*(*ptr + 144))(ptr))
  {
    (*(*self->_findingAlgorithmContainer.__ptr_ + 136))(self->_findingAlgorithmContainer.__ptr_, data, 1);
    if ((*(*self->_findingAlgorithmContainer.__ptr_ + 152))(self->_findingAlgorithmContainer.__ptr_))
    {
      [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
    }

    analyticsManager = self->_analyticsManager;
    if (analyticsManager)
    {
      [(NIServerAnalyticsManager *)analyticsManager updateWithPeerLocationFromFMF];
    }
  }
}

- (void)acceptPedometerData:(const PedometerDataInput *)data
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E6624(ptr, &self->_uniqueIdentifier, data);
  }

  v6 = self->_findingAlgorithmContainer.__ptr_;
  if (v6 && (*(*v6 + 232))(v6, a2))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C64A0();
    }

    (*(*self->_findingAlgorithmContainer.__ptr_ + 224))(self->_findingAlgorithmContainer.__ptr_, data);
  }
}

- (void)acceptPedometerEvent:(const PedometerEventInput *)event
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E6874(ptr, &self->_uniqueIdentifier, event);
  }

  v6 = self->_findingAlgorithmContainer.__ptr_;
  if (v6 && (*(*v6 + 248))(v6, a2))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C64D4();
    }

    (*(*self->_findingAlgorithmContainer.__ptr_ + 240))(self->_findingAlgorithmContainer.__ptr_, event);
  }
}

- (void)acceptMotionActivity:(const MotionActivityInput *)activity
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E72DC(ptr, &self->_uniqueIdentifier, activity);
  }

  v6 = self->_findingAlgorithmContainer.__ptr_;
  if (v6 && (*(*v6 + 216))(v6, a2))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C6508();
    }

    (*(*self->_findingAlgorithmContainer.__ptr_ + 208))(self->_findingAlgorithmContainer.__ptr_, activity);
  }
}

- (void)acceptPeerData:(const void *)data fromPeer:(id)peer
{
  peerCopy = peer;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#nrby-eng,acceptPeerData:FromPeer:", v11, 2u);
  }

  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  sub_1002CEC6C(data, v11);
  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E77C0(ptr, &self->_uniqueIdentifier, v11);
  }

  analyticsManager = self->_analyticsManager;
  if (analyticsManager)
  {
    [(NIServerAnalyticsManager *)analyticsManager updateWithFinderPeerData:v11];
  }

  v10 = self->_findingAlgorithmContainer.__ptr_;
  if (v10)
  {
    if ((*(*v10 + 280))(v10))
    {
      [(NINearbyUpdatesEngine *)self setFindingPeerToken:peerCopy];
      sub_100224EF8(728958024, 1, 0, 0, 0, 0);
      (*(*self->_findingAlgorithmContainer.__ptr_ + 272))(self->_findingAlgorithmContainer.__ptr_, v11);
      sub_100224EF8(728958024, 2, 0, 0, 0, 0);
      if ((*(*self->_findingAlgorithmContainer.__ptr_ + 288))(self->_findingAlgorithmContainer.__ptr_))
      {
        [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
      }
    }
  }
}

- (void)acceptDevicePDRInput:(const void *)input
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    v6 = *(input + 7);
    v25 = *(input + 6);
    v26 = v6;
    v7 = *(input + 9);
    v27 = *(input + 8);
    v28 = v7;
    v8 = *(input + 3);
    v21 = *(input + 2);
    v22 = v8;
    v9 = *(input + 5);
    v23 = *(input + 4);
    v24 = v9;
    v10 = *(input + 1);
    v19 = *input;
    v20 = v10;
    sub_1002E7D18(ptr, &self->_uniqueIdentifier, &v19);
  }

  analyticsManager = self->_analyticsManager;
  if (analyticsManager)
  {
    [(NIServerAnalyticsManager *)analyticsManager updateWithPDR:input];
  }

  v12 = self->_findingAlgorithmContainer.__ptr_;
  if (v12 && (*(*v12 + 264))(v12, a2))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C653C();
    }

    if (self->_onlySendKinematicFindeeData)
    {
      v13 = *(input + 7);
      v25 = *(input + 6);
      v26 = v13;
      v14 = *(input + 9);
      v27 = *(input + 8);
      v28 = v14;
      v15 = *(input + 3);
      v21 = *(input + 2);
      v22 = v15;
      v16 = *(input + 5);
      v23 = *(input + 4);
      v24 = v16;
      v17 = *(input + 1);
      v19 = *input;
      v20 = v17;
      if (v21 == 1)
      {
        LOBYTE(v21) = 0;
      }

      if (v22 == 1)
      {
        LOBYTE(v22) = 0;
      }

      if (v23 == 1)
      {
        LOBYTE(v23) = 0;
      }

      v18 = *(*self->_findingAlgorithmContainer.__ptr_ + 256);
    }

    else
    {
      v18 = *(*self->_findingAlgorithmContainer.__ptr_ + 256);
    }

    v18();
  }
}

- (void)acceptWatchOrientation:(const WatchOrientationInput *)orientation
{
  ptr = self->_findingAlgorithmContainer.__ptr_;
  if (ptr)
  {
    (*(*ptr + 320))(ptr, orientation);
  }
}

- (void)acceptNearbyObjectMovement:(BOOL)movement
{
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [(NINearbyUpdatesEngine *)self _sendTimeTupleToAlgorithms];
  }

  v6 = sub_100005288();
  ptr = self->_protobufLogger.__ptr_;
  if (ptr)
  {
    sub_1002E8F94(ptr, &self->_uniqueIdentifier, &v6);
  }

  v5 = self->_findingAlgorithmContainer.__ptr_;
  if (v5 && (*(*v5 + 368))(v5))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C6570();
    }

    (*(*self->_findingAlgorithmContainer.__ptr_ + 360))(self->_findingAlgorithmContainer.__ptr_, &v6);
    if ((*(*self->_findingAlgorithmContainer.__ptr_ + 376))())
    {
      [(NINearbyUpdatesEngine *)self provideFindingSolution:0];
    }
  }
}

- (void)setFindingPeerToken:(id)token
{
  tokenCopy = token;
  findingPeerToken = self->_findingPeerToken;
  p_findingPeerToken = &self->_findingPeerToken;
  v5 = findingPeerToken;
  if (findingPeerToken)
  {
    if (![(NIDiscoveryToken *)v5 isEqual:tokenCopy])
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C65A4(p_findingPeerToken, tokenCopy, v8);
      }
    }
  }

  v9 = *p_findingPeerToken;
  *p_findingPeerToken = tokenCopy;
}

- (AoARad)_convertFromPointingCoordinatesToSpatial:(const void *)spatial
{
  v4 = sub_1000422B8(*(spatial + 7));
  v5 = sub_1000422B8(*(spatial + 6));
  v6 = cosf(v4);
  v7 = __sincosf_stret(v5);
  v8 = atan2f(v6 * v7.__cosval, -(v6 * v7.__sinval));
  v9 = v4;
  result.var1 = v8;
  result.var0 = v9;
  return result;
}

- (id)nearbyObjectFromSolution:(const void *)solution forPeer:(id)peer
{
  v6 = [(NINearbyUpdatesEngine *)self nearbyObjectFromToken:peer];
  if (v6)
  {
    if (*(solution + 240) == 1)
    {
      [(NINearbyUpdatesEngine *)self fillNearbyObject:v6 fromRangeResult:solution + 8];
    }

    [(NINearbyUpdatesEngine *)self fillNearbyObject:v6 fromSolution:solution];
    v7 = v6;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C6630();
  }

  return v6;
}

- (id)nearbyObjectFromToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C674C();
    }

    goto LABEL_9;
  }

  v7 = [WeakRetained identifierFromDiscoveryToken:tokenCopy];
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C666C();
    }

LABEL_9:
    v10 = 0;
    goto LABEL_13;
  }

  v9 = [v6 objectFromIdentifier:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C66DC();
  }

LABEL_13:

  return v10;
}

- (id)nearbyObjectFromDeviceIdentifier:(unint64_t)identifier
{
  identifierCopy = identifier;
  v4 = sub_100009978(&self->_hashToTokenMap.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (v4)
  {
    v5 = v4[3];
    v6 = [(NINearbyUpdatesEngine *)self nearbyObjectFromToken:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6788();
    }
  }

  else
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v13 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#nrby-eng,nearbyObjectFromDeviceIdentifier - failed to find token mapped to hash: %llu", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)nearbyObjectFromRangeResult:(const void *)result
{
  v5 = [(NINearbyUpdatesEngine *)self nearbyObjectFromDeviceIdentifier:*result];
  if (v5 || (WeakRetained = objc_loadWeakRetained(&self->_dataSource), [WeakRetained objectFromIdentifier:*result], v7 = objc_claimAutoreleasedReturnValue(), WeakRetained, (v5 = v7) != 0))
  {
    [(NINearbyUpdatesEngine *)self fillNearbyObject:v5 fromRangeResult:result];
  }

  return v5;
}

- (id)niConvergenceStateFromSolution:(const void *)solution
{
  if (*solution == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = *solution == 0;
  }

  v5 = [[NIAlgorithmConvergenceState alloc] initWithConvergenceStatus:v4];
  [(NIAlgorithmConvergenceState *)v5 setInsufficientMovement:*(solution + 4)];
  [(NIAlgorithmConvergenceState *)v5 setInsufficientHorizontalSweep:*(solution + 5)];
  [(NIAlgorithmConvergenceState *)v5 setInsufficientVerticalSweep:*(solution + 6)];
  [(NIAlgorithmConvergenceState *)v5 setInsufficientLighting:*(solution + 7)];

  return v5;
}

- (void)fillNearbyObject:(id)object fromRangeResult:(const void *)result
{
  objectCopy = object;
  LODWORD(v6) = *(result + 4);
  [objectCopy setDistance:v6];
  v7 = *(result + 5) - 1;
  if (v7 < 5)
  {
    [objectCopy setDistanceMeasurementQuality:qword_10056E188[v7]];
  }

  if (*(result + 36) == 1)
  {
    v8 = *(result + 3);
    [objectCopy setDirection:sub_1000537D8(&v8)];
  }
}

- (void)fillNearbyObject:(id)object fromSolution:(const void *)solution
{
  objectCopy = object;
  if (*(solution + 256) == 1)
  {
    v5 = *(solution + 31) * 0.0174532925;
    *&v5 = v5;
    [objectCopy setHorizontalAngle:v5];
  }

  if (*(solution + 376) == 1)
  {
    v6 = *(solution + 46) * 0.0174532925;
    *&v6 = v6;
    [objectCopy setHorizontalAngleAccuracy:v6];
  }

  if (*(solution + 272) == 1)
  {
    v7 = *(solution + 33);
    *&v7 = v7;
    [objectCopy setHorizontalDistance:v7];
  }

  if (*(solution + 70) <= 4u)
  {
    [objectCopy setVerticalDirectionEstimate:?];
  }

  if (*(solution + 320) == 1)
  {
    [objectCopy setDirection:*(solution + 38)];
  }

  if (*(solution + 352) == 1)
  {
    [objectCopy setWorldPosition:*(solution + 42)];
  }

  if (*(solution + 416) == 1)
  {
    v8 = *(solution + 103);
    if (v8 <= 7)
    {
      [objectCopy setAlgorithmSource:v8 + 1];
    }
  }

  if (*(solution + 424) != 1)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v9 = *(solution + 105);
  if (v9 <= 2)
  {
LABEL_20:
    [objectCopy setMotionState:v9];
  }

  if (*(solution + 428) == 1)
  {
    [objectCopy setResetARSession:1];
  }

  if (*(solution + 429) == 1)
  {
    [objectCopy setRevokeFindingExperience:1];
  }
}

- (id)nearbyObjectFromSolution:(const void *)solution
{
  if (*(solution + 240) == 1)
  {
    v5 = [(NINearbyUpdatesEngine *)self nearbyObjectFromRangeResult:solution + 8];
    if (v5)
    {
      [(NINearbyUpdatesEngine *)self fillNearbyObject:v5 fromSolution:solution];
      v6 = v5;
    }

    else
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        if ((*(solution + 240) & 1) == 0)
        {
          sub_1000195BC();
        }

        v8 = *(solution + 1);
        v10 = 134217984;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#nrby-eng,no object for identifier 0x%llx", &v10, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)logSolution:(const void *)solution
{
  sub_10026B0D4(&v14);
  sub_10000EA44(&v14, "#solutionDebug: ", 16);
  sub_10000EA44(&v14, "Range ", 6);
  if (*(solution + 240) != 1 || *(solution + 6) == 1.1755e-38)
  {
    sub_10000EA44(&v14, "-, ", 3);
  }

  else
  {
    v4 = v14;
    *(&v14 + *(v14 - 3) + 8) = *(&v14 + *(v14 - 3) + 8) & 0xFFFFFEFB | 4;
    *(&v16[0].__locale_ + *(v4 - 3)) = 2;
    v5 = std::ostream::operator<<();
    sub_10000EA44(v5, " m, ", 4);
  }

  sub_10000EA44(&v14, "Horizontal angle ", 17);
  if (*(solution + 256) == 1)
  {
    v6 = v14;
    *(&v14 + *(v14 - 3) + 8) = *(&v14 + *(v14 - 3) + 8) & 0xFFFFFEFB | 4;
    *(&v16[0].__locale_ + *(v6 - 3)) = 2;
    v7 = std::ostream::operator<<();
    sub_10000EA44(v7, " deg, ", 6);
  }

  else
  {
    sub_10000EA44(&v14, "-, ", 3);
  }

  sub_10000EA44(&v14, "Horizontal angle unc ", 21);
  if (*(solution + 376) == 1)
  {
    v8 = v14;
    *(&v14 + *(v14 - 3) + 8) = *(&v14 + *(v14 - 3) + 8) & 0xFFFFFEFB | 4;
    *(&v16[0].__locale_ + *(v8 - 3)) = 2;
    v9 = std::ostream::operator<<();
    sub_10000EA44(v9, " deg, ", 6);
  }

  else
  {
    sub_10000EA44(&v14, "-, ", 3);
  }

  sub_10000EA44(&v14, "Vertical state ", 15);
  v10 = *(solution + 70);
  if (v10 <= 4)
  {
    sub_10000EA44(&v14, (&off_1009A88C8)[v10], qword_10056E1B0[v10]);
  }

  sub_10000EA44(&v14, ", Algorithm source ", 19);
  if (*(solution + 416) == 1)
  {
    v11 = *(solution + 103);
    if (v11 <= 7)
    {
      sub_10000EA44(&v14, (&off_1009A88F0)[v11], qword_10056E1D8[v11]);
    }
  }

  v12 = qword_1009F9820;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    std::stringbuf::str();
    sub_1004C67F8(v13, buf, v12);
  }

  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::ostream::~ostream();
  std::ios::~ios();
}

- (id)_convertPEAnchorMessages:(const void *)messages
{
  v5 = objc_opt_new();
  if (*(messages + 20) == 1)
  {
    v7 = *(messages + 28);
    if (*(messages + 29) != v7)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = [(NINearbyUpdatesEngine *)self _convertPEResponderAnchorMessage:v7 + v8];
        if (v10)
        {
          [v5 addObject:v10];
        }

        ++v9;
        v7 = *(messages + 28);
        v8 += 112;
      }

      while (v9 < 0x6DB6DB6DB6DB6DB7 * ((*(messages + 29) - v7) >> 4));
    }

    v11 = *(messages + 38);
    if (v11)
    {
      if (v11 == 1)
      {
        if (*(messages + 184) != 1)
        {
          goto LABEL_27;
        }

        v13 = *(messages + 10);
        *&v6 = *(messages + 22);
        v12 = 1;
      }

      else
      {
        if (v11 == 999)
        {
          goto LABEL_27;
        }

        v12 = 0;
        v13 = 0uLL;
        v6 = 0uLL;
      }
    }

    else
    {
      if (*(messages + 216) != 1)
      {
        goto LABEL_27;
      }

      v12 = 0;
      v13 = *(messages + 12);
      *&v6 = *(messages + 26);
    }

    if (*(messages + 32) == 1 && *(messages + 48) == 1 && *(messages + 64) == 1 && *(messages + 80) == 1)
    {
      v29 = v6;
      v31 = v13;
      v14 = *(messages + 3);
      v15 = *(messages + 5);
      v16 = *(messages + 7);
      v17 = *(messages + 9);
      v18 = [NIDLTDOAMeasurement alloc];
      if ((*(messages + 20) & 1) == 0)
      {
        sub_1000195BC();
      }

      v19 = *(messages + 9);
      v33 = v31;
      v34 = v29;
      v20 = [(NIDLTDOAMeasurement *)v18 initWithAnchorAddress:v19 measurementType:0 coordinatesType:v12 transmitTime:&v33 receiveTime:v14 signalStrength:v15 carrierFrequencyOffset:v16 coordinates:v17 * 1.0e-12];
      [v5 addObject:v20];

      v6 = v29;
      v13 = v31;
    }

    if (*(messages + 96) == 1 && *(messages + 112) == 1 && *(messages + 128) == 1 && *(messages + 144) == 1)
    {
      v30 = v6;
      v32 = v13;
      v21 = *(messages + 11);
      v22 = *(messages + 13);
      v23 = *(messages + 15);
      v24 = *(messages + 17);
      v25 = [NIDLTDOAMeasurement alloc];
      if ((*(messages + 20) & 1) == 0)
      {
        sub_1000195BC();
      }

      v26 = *(messages + 9);
      v33 = v32;
      v34 = v30;
      v27 = [(NIDLTDOAMeasurement *)v25 initWithAnchorAddress:v26 measurementType:2 coordinatesType:v12 transmitTime:&v33 receiveTime:v21 signalStrength:v22 carrierFrequencyOffset:v23 coordinates:v24 * 1.0e-12];
      [v5 addObject:v27];
    }
  }

LABEL_27:

  return v5;
}

- (id)_convertPEResponderAnchorMessage:(const void *)message
{
  if (*(message + 104) == 1)
  {
    *&v3 = *(message + 12);
    v14 = *(message + 5);
    v15 = v3;
    v5 = [NIDLTDOAMeasurement alloc];
    v6 = *message;
    v7 = *(message + 1);
    v8 = *(message + 2);
    v9 = *(message + 5);
    v10 = *(message + 4) * 1.0e-12;
    v16 = v14;
    v17 = v15;
    v11 = 0;
LABEL_5:
    v12 = [(NIDLTDOAMeasurement *)v5 initWithAnchorAddress:v6 measurementType:1 coordinatesType:v11 transmitTime:&v16 receiveTime:v7 signalStrength:v8 carrierFrequencyOffset:v9 coordinates:v10, v14, v15, v16, v17];
    goto LABEL_7;
  }

  if (*(message + 72) == 1)
  {
    *&v3 = *(message + 8);
    v14 = *(message + 3);
    v15 = v3;
    v5 = [NIDLTDOAMeasurement alloc];
    v6 = *message;
    v7 = *(message + 1);
    v8 = *(message + 2);
    v9 = *(message + 5);
    v10 = *(message + 4) * 1.0e-12;
    v16 = v14;
    v17 = v15;
    v11 = 1;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (void)getPeerDataFromFindingContainerWithToken:(id)token
{
  tokenCopy = token;
  v5 = tokenCopy;
  if (self->_findingAlgorithmContainer.__ptr_)
  {
    [tokenCopy hash];
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C686C();
    }

    (*(*self->_findingAlgorithmContainer.__ptr_ + 8))(v10);
    sub_1002CE814(v10, v9);
    ptr = self->_protobufLogger.__ptr_;
    if (ptr)
    {
      sub_1002E77C0(ptr, &self->_uniqueIdentifier, v10);
    }

    analyticsManager = self->_analyticsManager;
    if (analyticsManager)
    {
      [(NIServerAnalyticsManager *)analyticsManager updateWithFindeePeerData:v10];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained updatesEngine:self didUpdateFindeeData:v9 forToken:v5];
    }
  }
}

- (void)probeRegions
{
  for (i = self->_regionMonitorMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v3 = i[3];
    v4 = sub_100005288();
    sub_100410008(v3, v4);
  }
}

- (set<NIRegionSizeCategory,)_getRegionSizeCategoriesFromRegions:(std:(NINearbyUpdatesEngine *)self :(SEL)a3 allocator<NIRegionSizeCategory>> *__return_ptr)retstr
{
  v5 = a4;
  retstr->var0.var2 = 0;
  retstr->var0.var1.__left_ = 0;
  retstr->var0.var0 = &retstr->var0.var1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        regionSizeCategory = [*(*(&v12 + 1) + 8 * v9) regionSizeCategory];
        sub_10038F550(retstr, &regionSizeCategory, &regionSizeCategory);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return result;
}

- (NINearbyUpdatesEngineDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NINearbyUpdatesEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 208) = 0;
  *(self + 224) = 0;
  *(self + 240) = 0;
  *(self + 32) = 0;
  *(self + 33) = 0;
  *(self + 31) = 0;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  return self;
}

@end