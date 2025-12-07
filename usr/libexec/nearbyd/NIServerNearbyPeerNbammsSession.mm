@interface NIServerNearbyPeerNbammsSession
+ (void)generateSOSBeaconDataForSubject:(BOOL)subject matchingPeerData:(id)data completion:(id)completion;
- (NIServerNearbyPeerNbammsSession)initWithDataSource:(id)source delegate:(id)delegate clientQueue:(id)queue;
- (float)_adjustDutyCycleForInterfaceDelays:(float)delays schedulingInterval:(unsigned int)interval;
- (float)_getDutyCycleForTriggeredDutyCycledAcquisition;
- (id).cxx_construct;
- (id)_configureForGenericUseCase;
- (id)_configureForSOSBeacon;
- (id)_triggerRanging;
- (id)configure;
- (id)printableState;
- (id)run;
- (optional<SecondarySchedulingParameters>)_getSecondarySchedulingParameters;
- (optional<rose::RoseServiceRequest>)_prepareGenericUseCaseServiceRequestForDiscoveryToken:(SEL)token nbUwbAcquisitionBandChannel:(id)channel mmsNumFragments:(unsigned __int16)fragments;
- (optional<unsigned)_getDitherConst;
- (shared_ptr<rose::objects::NBAMMSSession>)_buildRoseSession:(const void *)session;
- (unsigned)_getNbUwbAcquisitionBandChannel:(id)channel;
- (unsigned)_getNumMMSFragments:(id)fragments;
- (unsigned)_getRangingTimeoutWithKey:(id)key timeoutIfNoOverride:(unsigned __int16)override;
- (unsigned)_getSchedulingIntervalForTriggeredDutyCycledAcquisition;
- (void)_initializeCryptoSessionsWithSessionKey:(id)key andSessionIdentifier:(id)identifier;
- (void)_nbammsSessionInvalidatedWithReason:(int)reason;
- (void)didReceiveNewSolution:(const void *)solution;
- (void)didReceiveRemoteData:(const void *)data;
- (void)didReceiveUnsuccessfulSolution:(const void *)solution;
- (void)invalidate;
- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status;
- (void)updatePeerData:(const void *)data;
@end

@implementation NIServerNearbyPeerNbammsSession

- (NIServerNearbyPeerNbammsSession)initWithDataSource:(id)source delegate:(id)delegate clientQueue:(id)queue
{
  sourceCopy = source;
  delegateCopy = delegate;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = NIServerNearbyPeerNbammsSession;
  v11 = [(NIServerNearbyPeerNbammsSession *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v12->_clientQueue, queue);
    getResourcesManager = [sourceCopy getResourcesManager];
    v14 = getResourcesManager;
    if (getResourcesManager)
    {
      objc_msgSend_protobufLogger(getResourcesManager);
      v15 = v19;
    }

    else
    {
      v15 = 0;
    }

    cntrl = v12->_pbLogger.__cntrl_;
    v12->_pbLogger = v15;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }

    *&v12->_useTestNbammsMode = 0;
    v17 = v12;
  }

  return v12;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  getNIConfiguration = [WeakRetained getNIConfiguration];
  useCase = [getNIConfiguration useCase];

  if (useCase)
  {
    if (useCase == 1)
    {
      _configureForSOSBeacon = [(NIServerNearbyPeerNbammsSession *)self _configureForSOSBeacon];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB310();
      }

      _configureForSOSBeacon = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    }
  }

  else
  {
    _configureForSOSBeacon = [(NIServerNearbyPeerNbammsSession *)self _configureForGenericUseCase];
  }

  return _configureForSOSBeacon;
}

- (id)_configureForGenericUseCase
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_nbammsSession.__ptr_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    getNIConfiguration = [WeakRetained getNIConfiguration];
    v6 = [getNIConfiguration copy];

    if (([v6 isExtendedDistanceMeasurementEnabled] & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB378();
      }

      v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
      goto LABEL_44;
    }

    getResourcesManager = [WeakRetained getResourcesManager];
    lifecycleSupervisor = [getResourcesManager lifecycleSupervisor];

    [lifecycleSupervisor setTimeoutOnPeerInactivity:1];
    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 doubleForKey:@"NIPeerEDM_MaxInactivityBeforeTrackingBeganSeconds"];
    v11 = v10;

    if (v11 <= 0.0)
    {
      v11 = 600.0;
    }

    else
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#peer-nba,NIPeerEDM_MaxInactivityBeforeTrackingBeganSeconds from default write: %f", buf, 0xCu);
      }
    }

    [lifecycleSupervisor setMaxInactivityBeforeTrackingBeganSeconds:v11];
    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 doubleForKey:@"NIPeerEDM_MaxInactivityAfterTrackingBeganSeconds"];
    v15 = v14;

    if (v15 <= 0.0)
    {
      v15 = 120.0;
    }

    else
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#peer-nba,NIPeerEDM_MaxInactivityAfterTrackingBeganSeconds from default write: %f", buf, 0xCu);
      }
    }

    [lifecycleSupervisor setMaxInactivityAfterTrackingBeganSeconds:v15];
    debugParameters = [v6 debugParameters];
    v18 = [debugParameters objectForKey:@"useTestNbammsMode"];
    v19 = v18 == 0;

    if (!v19)
    {
      debugParameters2 = [v6 debugParameters];
      v21 = [debugParameters2 objectForKey:@"useTestNbammsMode"];
      self->_useTestNbammsMode = [v21 BOOLValue];

      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_useTestNbammsMode)
        {
          v23 = "Y";
        }

        else
        {
          v23 = "N";
        }

        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#peer-nba,NBAMMS test mode used: %s", buf, 0xCu);
      }
    }

    v24 = sub_1000054A8();
    v25 = sub_1000149D4(v24);
    v26 = +[NSUserDefaults standardUserDefaults];
    v27 = [v26 BOOLForKey:@"DisableNIPeerExtendedDistanceOverride"];

    if (v27)
    {
      v28 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#peer-nba,* disable extended distance measurement through default writes.", buf, 2u);
      }

      goto LABEL_39;
    }

    if (!v25)
    {
LABEL_39:
      v42 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#peer-nba,Invalidating NBAMMS session configuration - device does not support NBAMMS", buf, 2u);
      }

      v43 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5889 userInfo:0];
      goto LABEL_42;
    }

    peerDiscoveryToken = [v6 peerDiscoveryToken];
    deviceCapabilities = [peerDiscoveryToken deviceCapabilities];
    supportsExtendedDistanceMeasurement = [deviceCapabilities supportsExtendedDistanceMeasurement];

    v32 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v33 = "N";
      if (supportsExtendedDistanceMeasurement)
      {
        v33 = "Y";
      }

      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#peer-nba,Peer supports NBAMMS %s", buf, 0xCu);
    }

    if ((supportsExtendedDistanceMeasurement & 1) != 0 || self->_useTestNbammsMode)
    {
      peerDiscoveryToken2 = [v6 peerDiscoveryToken];
      v35 = peerDiscoveryToken2 == 0;

      if (!v35)
      {
        getResourcesManager2 = [WeakRetained getResourcesManager];
        discoveryToken = [getResourcesManager2 discoveryToken];

        if (!discoveryToken)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004BB414();
          }

          v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
          goto LABEL_83;
        }

        peerDiscoveryToken3 = [v6 peerDiscoveryToken];
        v63 = 0;
        v39 = [WeakRetained shouldInitiate:discoveryToken peerDiscoveryToken:peerDiscoveryToken3 error:&v63];
        v62 = v63;
        self->_isInitiator = v39;

        if (v62)
        {
          v40 = qword_1009F9820;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v59 = [v62 description];
            v60 = v59;
            uTF8String = [v59 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "#peer-nba,Unable to determine initiator: %s", buf, 0xCu);
          }

          v41 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
        }

        else
        {
          isInitiator = self->_isInitiator;
          peerDiscoveryToken4 = discoveryToken;
          if (!isInitiator)
          {
            peerDiscoveryToken4 = [v6 peerDiscoveryToken];
          }

          [(NIServerNearbyPeerNbammsSession *)self _getNbUwbAcquisitionBandChannel:peerDiscoveryToken4];
          if (!isInitiator)
          {
          }

          v50 = [(NIServerNearbyPeerNbammsSession *)self _getNumMMSFragments:discoveryToken];
          peerDiscoveryToken5 = [v6 peerDiscoveryToken];
          v52 = [(NIServerNearbyPeerNbammsSession *)self _getNumMMSFragments:peerDiscoveryToken5];

          if (v52 >= v50)
          {
            v53 = v50;
          }

          else
          {
            v53 = v52;
          }

          v54 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *&buf[4] = v50;
            *&buf[8] = 1024;
            *&buf[10] = v52;
            *&buf[14] = 1024;
            *&buf[16] = v53;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#peer-nba,selfMMSNumFragments: %d, peerMMSNumFragments: %d, sharedMMSNumFragments: %d", buf, 0x14u);
          }

          peerDiscoveryToken6 = [v6 peerDiscoveryToken];
          objc_msgSend__prepareGenericUseCaseServiceRequestForDiscoveryToken_nbUwbAcquisitionBandChannel_mmsNumFragments_(self);
          memcpy(buf, __src, 0x241uLL);

          if (buf[576] == 1)
          {
            objc_msgSend__buildRoseSession_(self);
            v56 = __src[0];
            __src[0] = 0uLL;
            cntrl = self->_nbammsSession.__cntrl_;
            self->_nbammsSession = v56;
            if (cntrl)
            {
              sub_10000AD84(cntrl);
              if (*(&__src[0] + 1))
              {
                sub_10000AD84(*(&__src[0] + 1));
              }

              ptr = self->_nbammsSession.__ptr_;
            }

            else
            {
              ptr = v56.__ptr_;
            }

            if (ptr)
            {
              v3 = 0;
LABEL_82:

LABEL_83:
              goto LABEL_43;
            }

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
            {
              sub_1004BB3E0();
            }
          }

          else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004BB3AC();
          }

          v41 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
        }

        v3 = v41;
        goto LABEL_82;
      }

      v45 = -5888;
    }

    else
    {
      v46 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_useTestNbammsMode)
        {
          v47 = "Y";
        }

        else
        {
          v47 = "N";
        }

        *buf = 136315138;
        *&buf[4] = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#peer-nba,Invalidating NBAMMS session configuration - peer does not support NBAMMS; testNbammsMode = %s", buf, 0xCu);
      }

      v45 = -5881;
    }

    v43 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v45 userInfo:0];
LABEL_42:
    v3 = v43;
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BB344();
  }

  v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5880 userInfo:0];
LABEL_45:

  return v3;
}

- (id)_configureForSOSBeacon
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BB448();
  }

  v5 = NSLocalizedDescriptionKey;
  v6 = @"configure for unsupported use case.";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v2];

  return v3;
}

- (id)run
{
  if (self->_nbammsSession.__ptr_)
  {
    dispatch_assert_queue_V2(self->_clientQueue);
    _triggerRanging = [(NIServerNearbyPeerNbammsSession *)self _triggerRanging];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004BB4C8();
    }

    _triggerRanging = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
  }

  return _triggerRanging;
}

- (void)updatePeerData:(const void *)data
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BB4FC();
  }

  ptr = self->_nbammsSession.__ptr_;
  if (ptr && !self->_useTestNbammsMode)
  {
    if (self->_selfEncryptionSession)
    {
      v6 = [NSData dataWithBytes:*data length:*(data + 1) - *data];
      v7 = [(NIServerCryptoSession *)self->_selfEncryptionSession encrypt:v6];
      v8 = v7;
      if (v7 && [v7 length])
      {
        v9 = 0;
        sub_100025100(__p, [v8 length], &v9);
        [v8 getBytes:__p[0] length:{objc_msgSend(v8, "length")}];
        sub_100340788(self->_nbammsSession.__ptr_, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB530();
      }
    }

    else
    {
      sub_100340788(ptr, data);
    }
  }
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = objc_opt_new();
  selfEncryptionSession = self->_selfEncryptionSession;
  if (selfEncryptionSession)
  {
    selfEncryptionSession = (self->_peerDecryptionSession != 0);
  }

  selfEncryptionSession = [NSString stringWithFormat:@"Test-NBAMMS: %d. Initiator: %d. Crypto enabled: %d", self->_useTestNbammsMode, self->_isInitiator, selfEncryptionSession];
  [v3 addObject:selfEncryptionSession];

  ptr = self->_nbammsSession.__ptr_;
  if (ptr)
  {
    [v3 addObject:@"NBAMMS misc session params:"];
    sub_1002EC4A4(*(ptr + 47), __p);
    if (v42 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = [NSString stringWithFormat:@"    use_case: %s", v7];
    [v3 addObject:v8];

    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(ptr + 545) == 1)
    {
      v9 = *(ptr + 544);
    }

    else
    {
      v9 = 255;
    }

    if (*(ptr + 547) == 1)
    {
      v10 = *(ptr + 546);
    }

    else
    {
      v10 = 255;
    }

    v11 = [NSString stringWithFormat:@"    nb_ant_mask: tx %d, rx %d", v9, v10];
    [v3 addObject:v11];

    if (*(ptr + 131) == 1)
    {
      v12 = *(ptr + 130);
    }

    else
    {
      v12 = 255;
    }

    if (*(ptr + 133) == 1)
    {
      v13 = *(ptr + 132);
    }

    else
    {
      v13 = 255;
    }

    if (*(ptr + 135) == 1)
    {
      v14 = *(ptr + 134);
    }

    else
    {
      v14 = 255;
    }

    v15 = [NSString stringWithFormat:@"    mms_ant_mask: tx %d, rx %d, sync %d", v12, v13, v14];
    [v3 addObject:v15];

    if (*(ptr + 195) == 1)
    {
      v16 = *(ptr + 194);
    }

    else
    {
      v16 = 255;
    }

    if (*(ptr + 197) == 1)
    {
      v17 = *(ptr + 196);
    }

    else
    {
      v17 = 255;
    }

    if (*(ptr + 199) == 1)
    {
      v18 = *(ptr + 198);
    }

    else
    {
      v18 = 255;
    }

    v19 = [NSString stringWithFormat:@"    mms_ant_mask2: tx %d, rx %d, sync %d", v16, v17, v18];
    [v3 addObject:v19];

    if (*(ptr + 601) == 1)
    {
      v20 = *(ptr + 600);
    }

    else
    {
      v20 = 255;
    }

    v21 = [NSString stringWithFormat:@"    mms_antenna_diversity_pattern: %d", v20];
    [v3 addObject:v21];

    if (*(ptr + 560) == 1)
    {
      v22 = *(ptr + 279);
    }

    else
    {
      v22 = 0xFFFFLL;
    }

    v23 = [NSString stringWithFormat:@"    mms_pkt_type: %d", v22];
    [v3 addObject:v23];

    if (*(ptr + 554) == 1)
    {
      v24 = *(ptr + 276);
    }

    else
    {
      v24 = 0xFFFFLL;
    }

    v25 = [NSString stringWithFormat:@"    nb_bch: %d", v24];
    [v3 addObject:v25];

    if (*(ptr + 578) == 1)
    {
      v26 = *(ptr + 288);
    }

    else
    {
      v26 = 0xFFFFLL;
    }

    v27 = [NSString stringWithFormat:@"    nb_ch_sel_mask: %d", v26];
    [v3 addObject:v27];

    if (*(ptr + 575) == 1)
    {
      v28 = *(ptr + 574);
    }

    else
    {
      v28 = 255;
    }

    v29 = [NSString stringWithFormat:@"    mms_nfragments: %d", v28];
    [v3 addObject:v29];

    if (*(ptr + 573) == 1)
    {
      v30 = *(ptr + 572);
    }

    else
    {
      v30 = 255;
    }

    v31 = [NSString stringWithFormat:@"    mms_slot_sz_250us: %d", v30];
    [v3 addObject:v31];

    if (*(ptr + 152) == 1)
    {
      v32 = *(ptr + 75);
    }

    else
    {
      v32 = 0xFFFFLL;
    }

    v33 = [NSString stringWithFormat:@"    debug_flags: %d", v32];
    [v3 addObject:v33];

    if (*(ptr + 603) == 1)
    {
      v34 = *(ptr + 602);
    }

    else
    {
      v34 = 255;
    }

    v35 = [NSString stringWithFormat:@"    misc_settings: %d", v34];
    [v3 addObject:v35];

    v36 = [NSString stringWithFormat:@"    discoveryTimeout: %d s", *(ptr + 52)];
    [v3 addObject:v36];

    v37 = [NSString stringWithFormat:@"    reacquistionTimeout: %d s", *(ptr + 53)];
    [v3 addObject:v37];

    v38 = [NSString stringWithFormat:@"    eventWatchdogTimeout: %d ms", *(ptr + 119)];
    [v3 addObject:v38];

    v39 = [NSString stringWithFormat:@"    jobOptions: 0x%08x", *(ptr + 25)];
    [v3 addObject:v39];
  }

  else
  {
    [v3 addObject:@"No NBAMMS session"];
  }

  return v3;
}

- (void)didReceiveNewSolution:(const void *)solution
{
  v3 = (solution + 32);
  if (((*(solution + 8) - 1) & 0xFFFFFFFD) != 0)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004BB564(v3, v4);
    }
  }

  else
  {
    dispatch_assert_queue_V2(self->_clientQueue);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveNewSolution:solution];
  }
}

- (void)didReceiveUnsuccessfulSolution:(const void *)solution
{
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didReceiveUnsuccessfulSolution:solution];
}

- (void)didReceiveRemoteData:(const void *)data
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BB5E0();
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (self->_peerDecryptionSession)
  {
    v7 = [NSData dataWithBytes:*(data + 1) length:*(data + 2) - *(data + 1)];
    v8 = [(NIServerCryptoSession *)self->_peerDecryptionSession decrypt:v7];
    v9 = v8;
    if (v8 && [v8 length])
    {
      v13 = *data;
      v15 = 0;
      v16 = 0;
      __p = 0;
      sub_100009A48(&__p, *(data + 1), *(data + 2), *(data + 2) - *(data + 1));
      v17 = *(data + 2);
      v10 = [v9 length];
      v12 = 0;
      v11 = __p;
      if (v10 <= v15 - __p)
      {
        if (v10 < v15 - __p)
        {
          v15 = &v10[__p];
        }
      }

      else
      {
        sub_100250E48(&__p, &v10[-(v15 - __p)], &v12);
        v11 = __p;
      }

      [v9 getBytes:v11 length:{objc_msgSend(v9, "length")}];
      [v6 didReceiveRemoteData:&v13];
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BB614();
    }
  }

  else
  {
    [WeakRetained didReceiveRemoteData:data];
  }
}

- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status
{
  var2 = status.var2;
  v4 = *&status.var0;
  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didServiceRequestUpdateStatus:{v4, var2}];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  ptr = self->_nbammsSession.__ptr_;
  if (ptr)
  {
    sub_10033B864(ptr);
    cntrl = self->_nbammsSession.__cntrl_;
    self->_nbammsSession.__ptr_ = 0;
    self->_nbammsSession.__cntrl_ = 0;
    if (cntrl)
    {

      sub_10000AD84(cntrl);
    }
  }
}

- (id)_triggerRanging
{
  if (self->_nbammsSession.__ptr_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    getNIConfiguration = [WeakRetained getNIConfiguration];
    v4 = [getNIConfiguration copy];

    v37 = v4;
    dispatch_assert_queue_V2(self->_clientQueue);
    debugParameters = [v4 debugParameters];
    intValue = 10000000;

    if (debugParameters)
    {
      debugParameters2 = [v4 debugParameters];
      v7 = [debugParameters2 objectForKey:@"startTimeUncertainty"];

      if (v7)
      {
        intValue = [v7 intValue];
      }
    }

    _getSchedulingIntervalForTriggeredDutyCycledAcquisition = [(NIServerNearbyPeerNbammsSession *)self _getSchedulingIntervalForTriggeredDutyCycledAcquisition];
    [(NIServerNearbyPeerNbammsSession *)self _getDutyCycleForTriggeredDutyCycledAcquisition];
    v10 = v9;
    _getSecondarySchedulingParameters = [(NIServerNearbyPeerNbammsSession *)self _getSecondarySchedulingParameters];
    v14 = v13;
    v15 = *&v13;
    v16 = HIDWORD(v13) & 1;
    if (!_getSchedulingIntervalForTriggeredDutyCycledAcquisition || v10 > 1.0)
    {
      goto LABEL_19;
    }

    *&v12 = v10;
    [(NIServerNearbyPeerNbammsSession *)self _adjustDutyCycleForInterfaceDelays:_getSchedulingIntervalForTriggeredDutyCycledAcquisition schedulingInterval:v12];
    v10 = v17;
    if ((v14 & 0x100000000) != 0)
    {
      v18 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#peer-nba,Requested backoff acquisition policy, processing secondary scheduling parameters", buf, 2u);
      }

      if (v10 >= v15)
      {
        LODWORD(v16) = 1;
        goto LABEL_19;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB648();
      }
    }

    LODWORD(v16) = 0;
LABEL_19:
    if (self->_isInitiator)
    {
      _getDitherConst = [(NIServerNearbyPeerNbammsSession *)self _getDitherConst];
      v21 = _getDitherConst;
      v22 = HIBYTE(_getDitherConst);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v21;
      *buf = 67109632;
      if ((v22 & 1) == 0)
      {
        v24 = 0;
      }

      v57 = _getSchedulingIntervalForTriggeredDutyCycledAcquisition;
      v58 = 2048;
      *v59 = v10;
      *&v59[8] = 1024;
      *&v59[10] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#peer-nba,Primary scheduling params: Interval(us)=%d, Duty Cycle=%f, Dither const=%d", buf, 0x18u);
    }

    if (v16)
    {
      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v57 = _getSecondarySchedulingParameters;
        v58 = 1024;
        *v59 = HIDWORD(_getSecondarySchedulingParameters);
        *&v59[4] = 2048;
        *&v59[6] = v15;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#peer-nba,Secondary scheduling params: Delay(us)=%d, Interval(us)=%d, Duty Cycle=%f", buf, 0x18u);
      }
    }

    buf[0] = 0;
    v60 = 0;
    v61 = 17000;
    v62 = 1;
    v63 = intValue;
    v64 = _getSchedulingIntervalForTriggeredDutyCycledAcquisition;
    v65 = v10;
    v66 = 0;
    v67 = v21 | (v22 << 8);
    v68 = 0;
    memset(v70, 0, sizeof(v70));
    v69 = 0;
    v45 = 0;
    v44 = 0;
    v40 = 2;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v46 = 1;
    v47 = 1;
    v48 = 17000;
    v49 = 1;
    v50 = intValue;
    v51 = _getSchedulingIntervalForTriggeredDutyCycledAcquisition;
    v52 = v10;
    v53 = 0;
    v54 = v67;
    memset(v55, 0, sizeof(v55));
    if (v16)
    {
      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#peer-nba,Resetting NBAMMSStartOptions", v39, 2u);
      }

      v45 = 0;
      v44 = 0;
      v40 = 2;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v46 = 1;
      v47 = 1;
      v48 = 17000;
      v49 = 1;
      v50 = intValue;
      v51 = _getSchedulingIntervalForTriggeredDutyCycledAcquisition;
      v52 = v10;
      v53 = 0;
      v54 = v21 | (v22 << 8);
      *v55 = 0;
      *&v55[4] = 0;
      *&v55[6] = &_mh_execute_header & 0xFFFFFFFF00000000 | _getSecondarySchedulingParameters;
      *&v55[14] = &_mh_execute_header & 0xFFFFFFFF00000000 | HIDWORD(_getSecondarySchedulingParameters);
      *&v55[22] = v14;
      v55[26] = 1;
    }

    useTestNbammsMode = self->_useTestNbammsMode;
    v28 = qword_1009F9820;
    v29 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (useTestNbammsMode)
    {
      if (v29)
      {
        v30 = v21;
        if ((v22 & 1) == 0)
        {
          v30 = 0;
        }

        *v39 = 67109120;
        *&v39[4] = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#peer-nba,startRanging dither = %d", v39, 8u);
      }

      v31 = buf;
    }

    else
    {
      if (v29)
      {
        v32 = v21;
        if ((v22 & 1) == 0)
        {
          v32 = 0;
        }

        *v39 = 67109120;
        *&v39[4] = v32;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#peer-nba,startRanging dither = %d", v39, 8u);
      }

      v31 = &v40;
    }

    v33 = sub_10034024C(self->_nbammsSession.__ptr_, v31);
    if (v33)
    {
      v34 = qword_1009F9820;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_100342F8C(v33, v39);
        sub_1004BB67C();
      }

      v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004BB6D4();
  }

  v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
LABEL_50:

  return v19;
}

- (void)_nbammsSessionInvalidatedWithReason:(int)reason
{
  v3 = *&reason;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(v3, v7);
    sub_1004BB708();
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didInvalidateUWBSession];
}

- (shared_ptr<rose::objects::NBAMMSSession>)_buildRoseSession:(const void *)session
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_dataSource);
  dispatch_assert_queue_V2(selfCopy->_clientQueue);
  getContainerUniqueIdentifier = [WeakRetained getContainerUniqueIdentifier];
  sub_100004A08(&__p, [getContainerUniqueIdentifier UTF8String]);

  operator new();
}

- (optional<rose::RoseServiceRequest>)_prepareGenericUseCaseServiceRequestForDiscoveryToken:(SEL)token nbUwbAcquisitionBandChannel:(id)channel mmsNumFragments:(unsigned __int16)fragments
{
  v6 = a6;
  channelCopy = channel;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  dispatch_assert_queue_V2(self->_clientQueue);
  getNIConfiguration = [WeakRetained getNIConfiguration];
  v10 = [getNIConfiguration copy];

  getResourcesManager = [WeakRetained getResourcesManager];
  discoveryToken = [getResourcesManager discoveryToken];

  v204 = discoveryToken;
  if (!discoveryToken)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004BB414();
    }

    goto LABEL_120;
  }

  v211 = 0;
  v215 = 0;
  LOBYTE(intValue2) = 0;
  v217 = 0;
  v221 = 0;
  v209 = 0;
  LOBYTE(intValue) = 0;
  LODWORD(v214) = 0;
  *(&v214 + 3) = 0;
  v219 = 0;
  LOBYTE(intValue4) = 0;
  memset(v222, 0, sizeof(v222));
  LOBYTE(v224) = 0;
  v225 = 0;
  memset(&v223 + 1, 0, 7);
  v227 = 0;
  v226 = 0;
  v228 = 1;
  v229 = 0;
  v230 = 0;
  LOBYTE(v231) = 0;
  v232 = 0;
  LOBYTE(longLongValue) = 0;
  v234 = 0;
  v235 = 0uLL;
  fragmentsCopy = fragments;
  v213 = 1;
  v218 = v6 | 0x100;
  v13 = sub_1000054A8();
  LOBYTE(v223) = sub_100460ADC(v13);
  debugParameters = [v10 debugParameters];
  if (debugParameters)
  {
    debugParameters2 = [v10 debugParameters];
    v16 = [debugParameters2 objectForKey:@"nbTxAntenna"];

    if (v16)
    {
      debugParameters3 = [v10 debugParameters];
      v18 = [debugParameters3 objectForKey:@"nbTxAntenna"];
      LOWORD(v209) = [v18 intValue] | 0x100;
    }
  }

  debugParameters4 = [v10 debugParameters];
  if (debugParameters4)
  {
    debugParameters5 = [v10 debugParameters];
    v21 = [debugParameters5 objectForKey:@"nbRxAntenna"];

    if (v21)
    {
      debugParameters6 = [v10 debugParameters];
      v23 = [debugParameters6 objectForKey:@"nbRxAntenna"];
      HIWORD(v209) = [v23 intValue] | 0x100;
    }
  }

  debugParameters7 = [v10 debugParameters];
  if (debugParameters7)
  {
    debugParameters8 = [v10 debugParameters];
    v26 = [debugParameters8 objectForKey:@"nbPacketType"];

    if (v26)
    {
      debugParameters9 = [v10 debugParameters];
      v28 = [debugParameters9 objectForKey:@"nbPacketType"];
      intValue = [v28 intValue];
      v211 = 1;
    }
  }

  debugParameters10 = [v10 debugParameters];
  if (debugParameters10)
  {
    debugParameters11 = [v10 debugParameters];
    v31 = [debugParameters11 objectForKey:@"nbBandChannel"];

    if (v31)
    {
      debugParameters12 = [v10 debugParameters];
      v33 = [debugParameters12 objectForKey:@"nbBandChannel"];
      fragmentsCopy = [v33 intValue];
      v213 = 1;
    }
  }

  debugParameters13 = [v10 debugParameters];
  if (debugParameters13)
  {
    debugParameters14 = [v10 debugParameters];
    v36 = [debugParameters14 objectForKey:@"mmsTxAntenna"];

    if (v36)
    {
      debugParameters15 = [v10 debugParameters];
      v38 = [debugParameters15 objectForKey:@"mmsTxAntenna"];
      LOWORD(v214) = [v38 intValue] | 0x100;
    }
  }

  debugParameters16 = [v10 debugParameters];
  if (debugParameters16)
  {
    debugParameters17 = [v10 debugParameters];
    v41 = [debugParameters17 objectForKey:@"mmsRxAntenna"];

    if (v41)
    {
      debugParameters18 = [v10 debugParameters];
      v43 = [debugParameters18 objectForKey:@"mmsRxAntenna"];
      WORD1(v214) = [v43 intValue] | 0x100;
    }
  }

  debugParameters19 = [v10 debugParameters];
  if (debugParameters19)
  {
    debugParameters20 = [v10 debugParameters];
    v46 = [debugParameters20 objectForKey:@"mmsRxSyncAntenna"];

    if (v46)
    {
      debugParameters21 = [v10 debugParameters];
      v48 = [debugParameters21 objectForKey:@"mmsRxSyncAntenna"];
      WORD2(v214) = [v48 intValue] | 0x100;
    }
  }

  debugParameters22 = [v10 debugParameters];
  if (debugParameters22)
  {
    debugParameters23 = [v10 debugParameters];
    v51 = [debugParameters23 objectForKey:@"mmsPacketType"];

    if (v51)
    {
      debugParameters24 = [v10 debugParameters];
      v53 = [debugParameters24 objectForKey:@"mmsPacketType"];
      HIWORD(v214) = [v53 intValue];
      v215 = 1;
    }
  }

  debugParameters25 = [v10 debugParameters];
  if (debugParameters25)
  {
    debugParameters26 = [v10 debugParameters];
    v56 = [debugParameters26 objectForKey:@"mmsPSR"];

    if (v56)
    {
      debugParameters27 = [v10 debugParameters];
      v58 = [debugParameters27 objectForKey:@"mmsPSR"];
      *v222 = [v58 intValue] | 0x100;
    }
  }

  debugParameters28 = [v10 debugParameters];
  if (debugParameters28)
  {
    debugParameters29 = [v10 debugParameters];
    v61 = [debugParameters29 objectForKey:@"mmsGap"];

    if (v61)
    {
      debugParameters30 = [v10 debugParameters];
      v63 = [debugParameters30 objectForKey:@"mmsGap"];
      *&v222[2] = [v63 intValue] | 0x100;
    }
  }

  debugParameters31 = [v10 debugParameters];
  if (debugParameters31)
  {
    debugParameters32 = [v10 debugParameters];
    v66 = [debugParameters32 objectForKey:@"mmsSeqIdx"];

    if (v66)
    {
      debugParameters33 = [v10 debugParameters];
      v68 = [debugParameters33 objectForKey:@"mmsSeqIdx"];
      *&v222[4] = [v68 intValue] | 0x100;
    }
  }

  debugParameters34 = [v10 debugParameters];
  if (debugParameters34)
  {
    debugParameters35 = [v10 debugParameters];
    v71 = [debugParameters35 objectForKey:@"mmsBandChannel"];

    if (v71)
    {
      debugParameters36 = [v10 debugParameters];
      v73 = [debugParameters36 objectForKey:@"mmsBandChannel"];
      intValue2 = [v73 intValue];
      v217 = 1;
    }
  }

  debugParameters37 = [v10 debugParameters];
  if (debugParameters37)
  {
    debugParameters38 = [v10 debugParameters];
    v76 = [debugParameters38 objectForKey:@"nbSlotSize"];

    if (v76)
    {
      debugParameters39 = [v10 debugParameters];
      v78 = [debugParameters39 objectForKey:@"nbSlotSize"];
      HIWORD(v218) = [v78 intValue] | 0x100;
    }
  }

  debugParameters40 = [v10 debugParameters];
  if (debugParameters40)
  {
    debugParameters41 = [v10 debugParameters];
    v81 = [debugParameters41 objectForKey:@"mmsSlotSize"];

    if (v81)
    {
      debugParameters42 = [v10 debugParameters];
      v83 = [debugParameters42 objectForKey:@"mmsSlotSize"];
      v219 = [v83 intValue] | 0x100;
    }
  }

  debugParameters43 = [v10 debugParameters];
  if (debugParameters43)
  {
    debugParameters44 = [v10 debugParameters];
    v86 = [debugParameters44 objectForKey:@"mmsNumFragments"];

    if (v86)
    {
      debugParameters45 = [v10 debugParameters];
      v88 = [debugParameters45 objectForKey:@"mmsNumFragments"];
      intValue3 = [v88 intValue];
      LOWORD(v218) = intValue3 | 0x100;

      v90 = qword_1009F9820;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v208) = intValue3;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#peer-nba,MMSNumFragments is overwritten via config plist: %d", buf, 8u);
      }
    }
  }

  debugParameters46 = [v10 debugParameters];
  if (debugParameters46)
  {
    debugParameters47 = [v10 debugParameters];
    v93 = [debugParameters47 objectForKey:@"interval"];
    v94 = v93 == 0;

    if (!v94)
    {
      debugParameters48 = [v10 debugParameters];
      v96 = [debugParameters48 objectForKey:@"interval"];
      intValue4 = [v96 intValue];
      v221 = 1;
    }
  }

  debugParameters49 = [v10 debugParameters];
  if (debugParameters49)
  {
    debugParameters50 = [v10 debugParameters];
    v99 = [debugParameters50 objectForKey:@"enableNonInterlacedMMS"];
    v100 = v99 == 0;

    if (!v100)
    {
      debugParameters51 = [v10 debugParameters];
      v102 = [debugParameters51 objectForKey:@"enableNonInterlacedMMS"];
      v222[6] = [v102 BOOLValue];
    }
  }

  debugParameters52 = [v10 debugParameters];
  if (debugParameters52)
  {
    debugParameters53 = [v10 debugParameters];
    v105 = [debugParameters53 objectForKey:@"enableAntennaDiversity"];
    v106 = v105 == 0;

    if (!v106)
    {
      debugParameters54 = [v10 debugParameters];
      v108 = [debugParameters54 objectForKey:@"enableAntennaDiversity"];
      LOBYTE(v223) = [v108 BOOLValue];
    }
  }

  debugParameters55 = [v10 debugParameters];
  if (debugParameters55)
  {
    debugParameters56 = [v10 debugParameters];
    v111 = [debugParameters56 objectForKey:@"useDedicatedAntennas"];
    v112 = v111 == 0;

    if (!v112)
    {
      debugParameters57 = [v10 debugParameters];
      v114 = [debugParameters57 objectForKey:@"useDedicatedAntennas"];
      BYTE2(v223) = [v114 BOOLValue];
    }
  }

  debugParameters58 = [v10 debugParameters];
  if (debugParameters58)
  {
    debugParameters59 = [v10 debugParameters];
    v117 = [debugParameters59 objectForKey:@"overrideDefaultAntenna"];
    v118 = v117 == 0;

    if (!v118)
    {
      debugParameters60 = [v10 debugParameters];
      v120 = [debugParameters60 objectForKey:@"overrideDefaultAntenna"];
      BYTE3(v223) = [v120 BOOLValue];
    }
  }

  debugParameters61 = [v10 debugParameters];
  if (debugParameters61)
  {
    debugParameters62 = [v10 debugParameters];
    v123 = [debugParameters62 objectForKey:@"useTestNbammsMode"];
    v124 = v123 == 0;

    if (!v124)
    {
      debugParameters63 = [v10 debugParameters];
      v126 = [debugParameters63 objectForKey:@"useTestNbammsMode"];
      HIBYTE(v223) = [v126 BOOLValue];
    }
  }

  debugParameters64 = [v10 debugParameters];
  if (debugParameters64)
  {
    debugParameters65 = [v10 debugParameters];
    v129 = [debugParameters65 objectForKey:@"antennaDiversityMask"];
    v130 = v129 == 0;

    if (!v130)
    {
      debugParameters66 = [v10 debugParameters];
      v132 = [debugParameters66 objectForKey:@"antennaDiversityMask"];
      BYTE6(v223) = [v132 intValue];
    }
  }

  v133 = sub_1000054A8();
  BYTE1(v223) = sub_100460AC0(v133);
  v134 = +[NSUserDefaults standardUserDefaults];
  v135 = [v134 BOOLForKey:@"DisableDualRxChain"];

  if (v135)
  {
    BYTE1(v223) = 0;
  }

  useTestNbammsMode = self->_useTestNbammsMode;
  v137 = qword_1009F9820;
  v138 = os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT);
  if (useTestNbammsMode)
  {
    if (v138)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "#peer-nba,Test NBAMMS mode enabled", buf, 2u);
    }

    HIBYTE(v223) = 1;
    longLongValue = 0x1010101010101010;
    v234 = 1;
    debugParameters67 = [v10 debugParameters];
    if (debugParameters67)
    {
      debugParameters68 = [v10 debugParameters];
      v141 = [debugParameters68 objectForKey:@"baseMacAddress"];
      v142 = v141 == 0;

      if (!v142)
      {
        debugParameters69 = [v10 debugParameters];
        v144 = [debugParameters69 objectForKey:@"baseMacAddress"];

        if (v144)
        {
          longLongValue = [v144 longLongValue];
          v234 = 1;
        }
      }
    }

    if ((v232 & 1) == 0)
    {
      v232 = 1;
    }

    v231 = 4864;
    goto LABEL_83;
  }

  if (v138)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "#peer-nba,POR NBAMMS mode enabled", buf, 2u);
  }

  HIBYTE(v223) = 0;
  debugParameters70 = [v10 debugParameters];
  if (debugParameters70)
  {
    debugParameters71 = [v10 debugParameters];
    v147 = [debugParameters71 objectForKey:@"nbChannelSelectionMask"];
    v148 = v147 == 0;

    if (!v148)
    {
      debugParameters72 = [v10 debugParameters];
      v150 = [debugParameters72 objectForKey:@"nbChannelSelectionMask"];
      intValue5 = [v150 intValue];
      if ((v225 & 1) == 0)
      {
        v225 = 1;
      }

      v224 = intValue5;
    }
  }

  debugParameters73 = [v10 debugParameters];
  if (debugParameters73)
  {
    debugParameters74 = [v10 debugParameters];
    v154 = [debugParameters74 objectForKey:@"napSlotSize"];
    v155 = v154 == 0;

    if (!v155)
    {
      debugParameters75 = [v10 debugParameters];
      v157 = [debugParameters75 objectForKey:@"napSlotSize"];
      intValue6 = [v157 intValue];
      if ((v226 & 0x100) == 0)
      {
        BYTE1(v226) = 1;
      }

      LOBYTE(v226) = intValue6;
    }
  }

  debugParameters76 = [v10 debugParameters];
  if (debugParameters76)
  {
    debugParameters77 = [v10 debugParameters];
    v161 = [debugParameters77 objectForKey:@"dataSlotSize"];
    v162 = v161 == 0;

    if (!v162)
    {
      debugParameters78 = [v10 debugParameters];
      v164 = [debugParameters78 objectForKey:@"dataSlotSize"];
      intValue7 = [v164 intValue];
      if ((v226 & 0x1000000) == 0)
      {
        HIBYTE(v226) = 1;
      }

      BYTE2(v226) = intValue7;
    }
  }

  debugParameters79 = [v10 debugParameters];
  if (debugParameters79)
  {
    debugParameters80 = [v10 debugParameters];
    v168 = [debugParameters80 objectForKey:@"useType2Addr"];
    v169 = v168 == 0;

    if (!v169)
    {
      debugParameters81 = [v10 debugParameters];
      v171 = [debugParameters81 objectForKey:@"useType2Addr"];
      v228 = [v171 intValue] != 0;
    }
  }

  if (!channelCopy)
  {
    __assert_rtn("[NIServerNearbyPeerNbammsSession _prepareGenericUseCaseServiceRequestForDiscoveryToken:nbUwbAcquisitionBandChannel:mmsNumFragments:]", "NIServerNearbyPeerNbammsSession.mm", 983, "token != nil");
  }

  getIRK = [channelCopy getIRK];
  v173 = getIRK;
  if (!getIRK)
  {
    v183 = qword_1009F9820;
    if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
    {
      sub_1004BB820();
    }

LABEL_120:
    retstr->var0.__null_state_ = 0;
    retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
    goto LABEL_121;
  }

  if ([getIRK length] != 16)
  {
    __assert_rtn("[NIServerNearbyPeerNbammsSession _prepareGenericUseCaseServiceRequestForDiscoveryToken:nbUwbAcquisitionBandChannel:mmsNumFragments:]", "NIServerNearbyPeerNbammsSession.mm", 991, "[peerIRK length] == kNbammsIRKLengthBytes");
  }

  getIRK2 = [discoveryToken getIRK];
  v175 = getIRK2;
  if (getIRK2)
  {
    if ([getIRK2 length] != 16)
    {
      __assert_rtn("[NIServerNearbyPeerNbammsSession _prepareGenericUseCaseServiceRequestForDiscoveryToken:nbUwbAcquisitionBandChannel:mmsNumFragments:]", "NIServerNearbyPeerNbammsSession.mm", 998, "[selfIRK length] == kNbammsIRKLengthBytes");
    }

    v176 = v175;
    v202 = v173;
    if ([v176 length] == 16 && objc_msgSend(v202, "length") == 16)
    {
      v177 = v176;
      bytes = [v176 bytes];
      v179 = v202;
      bytes2 = [v202 bytes];
      v181 = objc_alloc_init(NSMutableData);
      for (i = 0; i != 16; ++i)
      {
        buf[0] = bytes2[i] ^ bytes[i];
        [v181 appendBytes:buf length:1];
      }

      if ([v181 length] != 16)
      {
        __assert_rtn("generateCombinedIRK", "NIServerNearbyPeerNbammsSession.mm", 1496, "[xorIRK length] == kNbammsIRKLengthBytes");
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB7B8();
      }

      v181 = 0;
    }

    if (v181)
    {
      v185 = v181;
      bytes3 = [v181 bytes];
      debugParameters82 = [v10 debugParameters];
      if (debugParameters82)
      {
        debugParameters83 = [v10 debugParameters];
        v189 = [debugParameters83 objectForKey:@"irk"];
        v190 = v189 == 0;

        if (!v190)
        {
          v191 = qword_1009F9820;
          if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
          {
            debugParameters84 = [v10 debugParameters];
            v193 = [debugParameters84 objectForKey:@"irk"];
            *buf = 138412290;
            v208 = v193;
            _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "#peer-nba,Hardcoded IRK from debug parameters: %@", buf, 0xCu);
          }

          debugParameters85 = [v10 debugParameters];
          v195 = [debugParameters85 objectForKey:@"irk"];
          v196 = v195;
          bytes3 = [v195 bytes];
        }
      }

      v235 = *bytes3;
      v197 = v181;
      v198 = v197;
      [v197 bytes];
      v199 = SipHash();

      longLongValue = v199;
      v234 = 1;
      if ((v232 & 1) == 0)
      {
        v232 = 1;
      }

      v231 = 4864;

LABEL_83:
      v236 = 6;
      sub_10019DD0C(&v209, !self->_isInitiator, buf);
      operator new();
    }

    v201 = qword_1009F9820;
    if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
    {
      sub_1004BB7EC();
    }

    retstr->var0.__null_state_ = 0;
    retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
  }

  else
  {
    v200 = qword_1009F9820;
    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
    {
      sub_1004BB820();
    }

    retstr->var0.__null_state_ = 0;
    retstr->var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
  }

LABEL_121:

  return result;
}

- (unsigned)_getRangingTimeoutWithKey:(id)key timeoutIfNoOverride:(unsigned __int16)override
{
  overrideCopy = override;
  keyCopy = key;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:keyCopy];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v7 intValue];
    v9 = qword_1009F9820;
    v10 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (intValue < 0x10000)
    {
      if (v10)
      {
        v16 = 138412546;
        v17 = keyCopy;
        v18 = 1024;
        v19 = intValue;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#peer-nba,Timeout override found for key %@. Returning %d", &v16, 0x12u);
      }

      LOWORD(overrideCopy) = intValue;
    }

    else
    {
      LOWORD(overrideCopy) = -1;
      if (v10)
      {
        v16 = 138412802;
        v17 = keyCopy;
        v18 = 1024;
        v19 = intValue;
        v20 = 1024;
        v21 = 0xFFFF;
        v11 = "#peer-nba,Timeout override found for key %@. Override value %d exceeds max value %d. Returning max value.";
        v12 = v9;
        v13 = 24;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
      }
    }
  }

  else
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = keyCopy;
      v18 = 1024;
      v19 = overrideCopy;
      v11 = "#peer-nba,No timeout override found for key %@. Returning timeout %d";
      v12 = v14;
      v13 = 18;
      goto LABEL_8;
    }
  }

  return overrideCopy;
}

- (unsigned)_getSchedulingIntervalForTriggeredDutyCycledAcquisition
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  getNIConfiguration = [WeakRetained getNIConfiguration];
  v5 = [getNIConfiguration copy];

  if (self->_isInitiator)
  {
    v6 = 30000;
  }

  else
  {
    v6 = 29000;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];

  if (v8)
  {
    intValue = 0;
  }

  else
  {
    intValue = v6;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 objectForKey:@"FindingSchedulingInterval"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v11 intValue];
    }
  }

  debugParameters = [v5 debugParameters];

  if (debugParameters)
  {
    debugParameters2 = [v5 debugParameters];
    v14 = [debugParameters2 objectForKey:@"schedulingInterval"];

    if (v14)
    {
      intValue = [v14 intValue];
    }
  }

  return intValue;
}

- (float)_getDutyCycleForTriggeredDutyCycledAcquisition
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  getNIConfiguration = [WeakRetained getNIConfiguration];
  v5 = [getNIConfiguration copy];

  isInitiator = self->_isInitiator;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];

  if ((v8 | isInitiator))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 0.1034;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 objectForKey:@"FindingDutyCycle"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      v9 = v12;
    }
  }

  debugParameters = [v5 debugParameters];

  if (debugParameters)
  {
    debugParameters2 = [v5 debugParameters];
    v15 = [debugParameters2 objectForKey:@"dutyCycle"];

    if (v15)
    {
      [v15 floatValue];
      v9 = v16;
    }
  }

  return v9;
}

- (float)_adjustDutyCycleForInterfaceDelays:(float)delays schedulingInterval:(unsigned int)interval
{
  v5 = ((interval - 17000) - 2000);
  if ((interval * delays) > v5)
  {
    v6 = qword_1009F9820;
    delays = v5 / interval;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#peer-nba,Provided duty cycle leads to scan window > scheduling interval - (start time offset + interface delays), using entire available scan window", v8, 2u);
    }
  }

  return delays;
}

- (optional<unsigned)_getDitherConst
{
  if (!self->_isInitiator)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#peer-nba,Dithered duty cycled acquisition not valid for responder";
      v7 = buf;
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    intValue = 0;
    return (intValue | (v8 << 8));
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"FindingDisableDitheredAcq"];

  if (v4)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v6 = "#peer-nba,Dithered duty cycled acquisition is disabled using defaults write";
      v7 = &v19;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  getNIConfiguration = [WeakRetained getNIConfiguration];
  v12 = [getNIConfiguration copy];

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 objectForKey:@"FindingDitherConst"];

  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v14 intValue];
  }

  else
  {
    intValue = 3;
  }

  debugParameters = [v12 debugParameters];

  if (debugParameters)
  {
    debugParameters2 = [v12 debugParameters];
    v17 = [debugParameters2 objectForKey:@"ditherConst"];

    if (v17)
    {
      intValue = [v17 intValue];
    }
  }

  v8 = 1;
  return (intValue | (v8 << 8));
}

- (optional<SecondarySchedulingParameters>)_getSecondarySchedulingParameters
{
  if (self->_isInitiator)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BB854();
    }

    v2 = 0;
    v3 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    getNIConfiguration = [WeakRetained getNIConfiguration];
    v7 = [getNIConfiguration copy];

    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"FindingDisableDutyCycledAcquisition"];

    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v47 = WeakRetained;
      v15 = +[NSUserDefaults standardUserDefaults];
      v16 = [v15 objectForKey:@"FindingSecondarySchedulingDelay"];

      v45 = v16;
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue = [v16 intValue];
        v18 = 1;
      }

      else
      {
        intValue = 0;
        v18 = 0;
      }

      debugParameters = [v7 debugParameters];

      if (debugParameters)
      {
        debugParameters2 = [v7 debugParameters];
        v21 = [debugParameters2 objectForKey:@"secondarySchedulingDelay"];

        if (v21)
        {
          intValue = [v21 intValue];
          v18 = 1;
        }
      }

      if ((v18 & (intValue != 0)) != 0)
      {
        v22 = intValue;
      }

      else
      {
        v22 = 30000000;
      }

      v23 = +[NSUserDefaults standardUserDefaults];
      v24 = [v23 objectForKey:@"FindingSecondarySchedulingInterval"];

      if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue2 = [v24 intValue];
        v26 = 1;
      }

      else
      {
        intValue2 = 0;
        v26 = 0;
      }

      debugParameters3 = [v7 debugParameters];

      if (debugParameters3)
      {
        debugParameters4 = [v7 debugParameters];
        v29 = [debugParameters4 objectForKey:@"secondarySchedulingInterval"];

        if (v29)
        {
          intValue2 = [v29 intValue];
          v26 = 1;
        }
      }

      if ((v26 & (intValue2 != 0)) != 0)
      {
        v30 = intValue2;
      }

      else
      {
        v30 = 59000;
      }

      v31 = +[NSUserDefaults standardUserDefaults];
      v32 = [v31 objectForKey:@"FindingSecondaryDutyCycle"];

      v33 = 0.0;
      if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v32 floatValue];
        v33 = v34;
        v35 = 1;
      }

      else
      {
        v35 = 0;
      }

      debugParameters5 = [v7 debugParameters];

      if (debugParameters5)
      {
        debugParameters6 = [v7 debugParameters];
        v38 = [debugParameters6 objectForKey:@"secondaryDutyCycle"];

        if (v38)
        {
          [v38 floatValue];
          v33 = v39;
          v35 = 1;
        }
      }

      HIDWORD(v40) = 0;
      v42 = v33 <= 1.0 && v33 > 0.0;
      LODWORD(v40) = 1028658089;
      if ((v35 & v42) != 0)
      {
        *&v40 = v33;
      }

      [(NIServerNearbyPeerNbammsSession *)self _adjustDutyCycleForInterfaceDelays:v30 schedulingInterval:v40];
      v44 = v43;
      v14 = v22 & 0xFFFFFF00;

      v13 = v22;
      v10 = v30 << 32;
      v11 = v44;
      v12 = &_mh_execute_header;
      WeakRetained = v47;
    }

    v2 = v10 | v14 | v13;
    v3 = v12 | v11;
  }

  *&result.var0.var1.var2 = v3;
  *&result.var0.var0 = v2;
  return result;
}

- (unsigned)_getNbUwbAcquisitionBandChannel:(id)channel
{
  channelCopy = channel;
  v5 = channelCopy;
  if (self->_useTestNbammsMode)
  {
    integerValue = 5;
  }

  else
  {
    v7 = [channelCopy objectInRawTokenOPACKDictForKey:&off_1009C40D0];

    if (v7)
    {
      v8 = [v5 objectInRawTokenOPACKDictForKey:&off_1009C40D0];
      integerValue = [v8 integerValue];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BB888();
      }

      integerValue = 2;
    }
  }

  if (self->_useTestNbammsMode)
  {
    v9 = 1;
  }

  else
  {
    v9 = 6;
  }

  LOBYTE(v15) = v9;
  *(&v15 + 1) = 0;
  LOWORD(v16) = integerValue;
  BYTE2(v16) = 1;
  v10 = sub_100428478(&v15);
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    useTestNbammsMode = self->_useTestNbammsMode;
    isInitiator = self->_isInitiator;
    v15 = 67109888;
    v16 = useTestNbammsMode;
    v17 = 1024;
    v18 = isInitiator;
    v19 = 1024;
    v20 = integerValue;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#peer-nba,startRangingWithPeer: testMode: %d, isInitiator: %d, NapChIdx: %d, NapBch: %d", &v15, 0x1Au);
  }

  return v10;
}

- (unsigned)_getNumMMSFragments:(id)fragments
{
  fragmentsCopy = fragments;
  v5 = fragmentsCopy;
  if (!self->_useTestNbammsMode)
  {
    v7 = [fragmentsCopy objectInRawTokenOPACKDictForKey:&off_1009C40E8];

    if (v7)
    {
      v8 = [v5 objectInRawTokenOPACKDictForKey:&off_1009C40E8];
      integerValue = [v8 integerValue];

      goto LABEL_6;
    }

    integerValue = 16;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    sub_1004BB904();
  }

  integerValue = 16;
LABEL_6:

  return integerValue;
}

- (void)_initializeCryptoSessionsWithSessionKey:(id)key andSessionIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 BOOLForKey:@"FindingDisableCrypto"], v8, v9))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#peer-nba,#crypto Initialization disabled", &v18, 2u);
    }
  }

  else if (!self->_selfEncryptionSession || !self->_peerDecryptionSession)
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = CUPrintNSObjectMasked();
      v13 = CUPrintNSObjectMasked();
      v18 = 138478083;
      v19 = v12;
      v20 = 2113;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#peer-nba,#crypto Initialize. Session key: %{private}@. Session ID: %{private}@", &v18, 0x16u);
    }

    v14 = [[NIServerCryptoSession alloc] initWithKeyDerivationKey:keyCopy sessionIdentifier:identifierCopy encrypt:1];
    selfEncryptionSession = self->_selfEncryptionSession;
    self->_selfEncryptionSession = v14;

    v16 = [[NIServerCryptoSession alloc] initWithKeyDerivationKey:keyCopy sessionIdentifier:identifierCopy encrypt:0];
    peerDecryptionSession = self->_peerDecryptionSession;
    self->_peerDecryptionSession = v16;
  }
}

+ (void)generateSOSBeaconDataForSubject:(BOOL)subject matchingPeerData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BB980();
  }

  v10 = NSLocalizedDescriptionKey;
  v11 = @"generateData for unsupported use case.";
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v8];
  completionCopy[2](completionCopy, 0, v9);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end