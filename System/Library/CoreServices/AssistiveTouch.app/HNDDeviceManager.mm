@interface HNDDeviceManager
+ (id)sharedManager;
- (BOOL)_shouldProcessState:(id)state;
- (BOOL)mainDeviceIsMotionTracker;
- (BOOL)mainDeviceIsOnDeviceEyeTracker;
- (BOOL)mainDeviceIsPointer;
- (BOOL)mainDeviceIsThirdPartyTracker;
- (CGPoint)convertPointToDeviceOrientation:(CGPoint)orientation;
- (CGPoint)delayedHeadTrackingPointForExpressions;
- (CGPoint)lastSeenLookAtPoint;
- (CGRect)rotatedScreenBounds;
- (HNDDeviceManager)init;
- (HNDHandManager)handManager;
- (id)_currentPointSmoother;
- (id)_smoothingBufferSizeForCurrentActiveEyeTracker;
- (int64_t)deviceCount;
- (int64_t)deviceCountWithSecondaryButtons;
- (void)_checkBackboardEffectiveDeviceOrientation;
- (void)_headTrackingToggled;
- (void)_motionTrackerInputSourceFailedToTrackFaceWithErrorCode:(int64_t)code;
- (void)_motionTrackerInputSourceTrackedFaceAtPoint:(CGPoint)point;
- (void)_motionTrackerInputSourceTrackedFaceWithExpressions:(id)expressions;
- (void)_notifyDisplayManagerDeviceCountChanged;
- (void)_onDeviceEyeTrackingToggled;
- (void)_processCameraStolenError;
- (void)_processMotionTrackerErrorsForOnDeviceEyeTrackingWithErrorCode:(int64_t)code;
- (void)_resetCalibrationTimer;
- (void)_resetMotionTrackerErrorAndTimer;
- (void)_startMonitoringEffectiveDeviceOrientation;
- (void)_startTrackingMotionInput:(id)input;
- (void)_stopMonitoringEffectiveDeviceOrientation;
- (void)_stopTrackingMotionInput;
- (void)_updateHeadTrackingPointsMovingWindowWithNormalizedPoint:(CGPoint)point;
- (void)_updateMotionTrackerActionConfig;
- (void)_updateMotionTrackerExpressionConfig;
- (void)_updateMotionTrackerMode;
- (void)addDevice:(id)device;
- (void)addOnDeviceEyeTrackingAsInput;
- (void)dealloc;
- (void)device:(id)device didPostEvent:(id)event;
- (void)device:(id)device didUnload:(BOOL)unload;
- (void)deviceDetector:(id)detector didFindDevice:(__IOHIDDevice *)device;
- (void)deviceDetector:(id)detector unloadDevicesPassingTest:(id)test;
- (void)disableMotionTrackingDevices;
- (void)enableMotionTrackingDevices;
- (void)hidDeviceDidStartConfiguring:(BOOL)configuring;
- (void)motionTracker:(id)tracker updatedState:(id)state;
- (void)motionTrackingInputManager:(id)manager updatedInputToUse:(id)use;
- (void)mousePointerDevicesDidConnect:(id)connect;
- (void)mousePointerDevicesDidDisconnect:(id)disconnect;
- (void)removeAllDevices;
- (void)removeDevice:(id)device;
- (void)removeOnDeviceEyeTrackingAsInput;
- (void)restartDeviceDetection;
- (void)setDetectDevices:(BOOL)devices;
- (void)setHidDeviceSentReservedStatus:(BOOL)status;
- (void)setIsTrackingInputActive:(BOOL)active;
@end

@implementation HNDDeviceManager

+ (id)sharedManager
{
  v2 = +[HNDHandManager sharedManager];
  deviceManager = [v2 deviceManager];

  return deviceManager;
}

- (HNDDeviceManager)init
{
  v121.receiver = self;
  v121.super_class = HNDDeviceManager;
  v2 = [(HNDDeviceManager *)&v121 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = vdupq_n_s64(0xC1E6CEAF20000000);
    *(v2 + 5) = 0x3FE0000000000000;
    v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    scrollHysteresisTimer = v3->_scrollHysteresisTimer;
    v3->_scrollHysteresisTimer = v4;

    v6 = +[NSMutableArray array];
    devices = v3->_devices;
    v3->_devices = v6;

    v8 = objc_alloc_init(AXSSMotionTrackingInputConfiguration);
    v9 = +[AXSettings sharedInstance];
    assistiveTouchHeadTrackingEnabled = [v9 assistiveTouchHeadTrackingEnabled];

    v65 = [NSMutableSet setWithObject:&off_1001E4FB0];
    if (assistiveTouchHeadTrackingEnabled)
    {
      [v65 addObject:&off_1001E4FC8];
    }

    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v11 = +[ASTUIGazeEnrollmentManager sharedManager];
      gazeEnrollmentManager = v3->_gazeEnrollmentManager;
      v3->_gazeEnrollmentManager = v11;

      objc_initWeak(&location, v3);
      v13 = +[AXSettings sharedInstance];
      v117[0] = _NSConcreteStackBlock;
      v117[1] = 3221225472;
      v117[2] = sub_10000500C;
      v117[3] = &unk_1001D3438;
      objc_copyWeak(&v119, &location);
      v14 = v3;
      v118 = v14;
      [v13 registerUpdateBlock:v117 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingEnabled" withListener:v14];

      objc_destroyWeak(&v119);
      v15 = +[AXSettings sharedInstance];
      v114[0] = _NSConcreteStackBlock;
      v114[1] = 3221225472;
      v114[2] = sub_100005060;
      v114[3] = &unk_1001D3438;
      objc_copyWeak(&v116, &location);
      v16 = v14;
      v115 = v16;
      [v15 registerUpdateBlock:v114 forRetrieveSelector:"switchControlOnDeviceEyeTrackingEnabled" withListener:v16];

      objc_destroyWeak(&v116);
      v17 = +[AXSettings sharedInstance];
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_1000050B4;
      v112[3] = &unk_1001D3460;
      objc_copyWeak(&v113, &location);
      [v17 registerUpdateBlock:v112 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints" withListener:v16];

      objc_destroyWeak(&v113);
      v18 = +[AXSettings sharedInstance];
      [v16[15] setUseGaussianBlur:{objc_msgSend(v18, "assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur")}];

      v19 = +[AXSettings sharedInstance];
      v110[0] = _NSConcreteStackBlock;
      v110[1] = 3221225472;
      v110[2] = sub_100005124;
      v110[3] = &unk_1001D3460;
      objc_copyWeak(&v111, &location);
      [v19 registerUpdateBlock:v110 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints" withListener:v16];

      objc_destroyWeak(&v111);
      v20 = +[AXSettings sharedInstance];
      v108[0] = _NSConcreteStackBlock;
      v108[1] = 3221225472;
      v108[2] = sub_1000051A0;
      v108[3] = &unk_1001D3460;
      objc_copyWeak(&v109, &location);
      [v20 registerUpdateBlock:v108 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter" withListener:v16];

      objc_destroyWeak(&v109);
      v21 = +[AXSettings sharedInstance];
      v106[0] = _NSConcreteStackBlock;
      v106[1] = 3221225472;
      v106[2] = sub_10000521C;
      v106[3] = &unk_1001D3460;
      objc_copyWeak(&v107, &location);
      [v21 registerUpdateBlock:v106 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur" withListener:v16];

      objc_destroyWeak(&v107);
      objc_destroyWeak(&location);
    }

    [v8 setAllowedTrackingTypes:{v65, v65}];
    v22 = [[AXSSMotionTrackingInputManager alloc] initWithConfiguration:v8];
    motionTrackingInputManager = v3->_motionTrackingInputManager;
    v3->_motionTrackingInputManager = v22;

    [(AXSSMotionTrackingInputManager *)v3->_motionTrackingInputManager setDelegate:v3];
    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v24 = +[AXSettings sharedInstance];
      assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize = [v24 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize];

      v3->_shouldSmoothOnDeviceEyeTrackingPoints = assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize >= kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference;
      objc_initWeak(&location, v3);
      v26 = +[AXSettings sharedInstance];
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_100005298;
      v104[3] = &unk_1001D3460;
      objc_copyWeak(&v105, &location);
      [v26 registerUpdateBlock:v104 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize" withListener:v3];

      objc_destroyWeak(&v105);
      objc_destroyWeak(&location);
    }

    _smoothingBufferSizeForCurrentActiveEyeTracker = [(HNDDeviceManager *)v3 _smoothingBufferSizeForCurrentActiveEyeTracker];
    v28 = _smoothingBufferSizeForCurrentActiveEyeTracker;
    if (_smoothingBufferSizeForCurrentActiveEyeTracker)
    {
      unsignedIntegerValue = [_smoothingBufferSizeForCurrentActiveEyeTracker unsignedIntegerValue];
      v30 = unsignedIntegerValue > kAXSAssistiveTouchMotionTrackerSmoothingBufferSizeDefault;
    }

    else
    {
      v30 = 0;
    }

    v3->_shouldSmoothPoints = v30;
    objc_initWeak(&location, v3);
    v31 = +[AXSettings sharedInstance];
    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_10000543C;
    v101[3] = &unk_1001D3438;
    objc_copyWeak(&v103, &location);
    v32 = v3;
    v102 = v32;
    [v31 registerUpdateBlock:v101 forRetrieveSelector:"assistiveTouchEyeTrackerCustomizedSettings" withListener:v32];

    objc_destroyWeak(&v103);
    v33 = +[AXSettings sharedInstance];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_1000055E0;
    v98[3] = &unk_1001D3438;
    objc_copyWeak(&v100, &location);
    v34 = v32;
    v99 = v34;
    [v33 registerUpdateBlock:v98 forRetrieveSelector:"assistiveTouchMotionTrackerSmoothingBufferSize" withListener:v34];

    objc_destroyWeak(&v100);
    v35 = +[AXSettings sharedInstance];
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_100005790;
    v96[3] = &unk_1001D3460;
    objc_copyWeak(&v97, &location);
    [v35 registerUpdateBlock:v96 forRetrieveSelector:"assistiveTouchMotionTrackerSmoothingMaxDelta" withListener:v34];

    objc_destroyWeak(&v97);
    v36 = +[AXSettings sharedInstance];
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_1000058D8;
    v94[3] = &unk_1001D3460;
    objc_copyWeak(&v95, &location);
    [v36 registerUpdateBlock:v94 forRetrieveSelector:"assistiveTouchMotionTrackerXNormalizationOrder" withListener:v34];

    objc_destroyWeak(&v95);
    v37 = +[AXSettings sharedInstance];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_100005A20;
    v92[3] = &unk_1001D3460;
    objc_copyWeak(&v93, &location);
    [v37 registerUpdateBlock:v92 forRetrieveSelector:"assistiveTouchMotionTrackerYNormalizationOrder" withListener:v34];

    objc_destroyWeak(&v93);
    v38 = +[AXSettings sharedInstance];
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_100005B68;
    v90[3] = &unk_1001D3460;
    objc_copyWeak(&v91, &location);
    [v38 registerUpdateBlock:v90 forRetrieveSelector:"assistiveTouchMotionTrackerXNormalizationOffset" withListener:v34];

    objc_destroyWeak(&v91);
    v39 = +[AXSettings sharedInstance];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100005CB0;
    v88[3] = &unk_1001D3460;
    objc_copyWeak(&v89, &location);
    [v39 registerUpdateBlock:v88 forRetrieveSelector:"assistiveTouchMotionTrackerYNormalizationOffset" withListener:v34];

    objc_destroyWeak(&v89);
    v40 = +[AXSettings sharedInstance];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100005DF8;
    v86[3] = &unk_1001D3460;
    objc_copyWeak(&v87, &location);
    [v40 registerUpdateBlock:v86 forRetrieveSelector:"assistiveTouchMotionTrackerShouldOffsetBufferPoints" withListener:v34];

    objc_destroyWeak(&v87);
    v41 = +[AXSettings sharedInstance];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_100005F40;
    v84[3] = &unk_1001D3460;
    objc_copyWeak(&v85, &location);
    [v41 registerUpdateBlock:v84 forRetrieveSelector:"assistiveTouchForceEyeTrackerExperience" withListener:v34];

    objc_destroyWeak(&v85);
    v42 = +[AXSettings sharedInstance];
    v34->_forceEyeTrackerExperience = [v42 assistiveTouchForceEyeTrackerExperience];

    v43 = objc_opt_new();
    pointSmoothers = v34->_pointSmoothers;
    v34->_pointSmoothers = v43;

    v45 = +[AXSettings sharedInstance];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100005FAC;
    v81[3] = &unk_1001D3438;
    objc_copyWeak(&v83, &location);
    v46 = v34;
    v82 = v46;
    [v45 registerUpdateBlock:v81 forRetrieveSelector:"assistiveTouchHeadTrackingEnabled" withListener:v46];

    objc_destroyWeak(&v83);
    v47 = +[AXSettings sharedInstance];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100006000;
    v79[3] = &unk_1001D3460;
    objc_copyWeak(&v80, &location);
    [v47 registerUpdateBlock:v79 forRetrieveSelector:"assistiveTouchHeadTrackingSensitivity" withListener:v46];

    objc_destroyWeak(&v80);
    v48 = +[AXSettings sharedInstance];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_100006070;
    v76[3] = &unk_1001D3438;
    objc_copyWeak(&v78, &location);
    v49 = v46;
    v77 = v49;
    [v48 registerUpdateBlock:v76 forRetrieveSelector:"assistiveTouchHeadTrackingMode" withListener:v49];

    objc_destroyWeak(&v78);
    v50 = +[AXSettings sharedInstance];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1000060C4;
    v74[3] = &unk_1001D3460;
    objc_copyWeak(&v75, &location);
    [v50 registerUpdateBlock:v74 forRetrieveSelector:"assistiveTouchHeadTrackingMovementToleranceInJoystickMode" withListener:v49];

    objc_destroyWeak(&v75);
    v51 = +[AXSettings sharedInstance];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_100006134;
    v71[3] = &unk_1001D3438;
    objc_copyWeak(&v73, &location);
    v52 = v49;
    v72 = v52;
    [v51 registerUpdateBlock:v71 forRetrieveSelector:"assistiveTouchHeadTrackingExpressionToSensitivityMapping" withListener:v52];

    objc_destroyWeak(&v73);
    v53 = +[AXSettings sharedInstance];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100006188;
    v68[3] = &unk_1001D3438;
    objc_copyWeak(&v70, &location);
    v54 = v52;
    v69 = v54;
    [v53 registerUpdateBlock:v68 forRetrieveSelector:"assistiveTouchHeadTrackingExpressionToActionMapping" withListener:v54];

    objc_destroyWeak(&v70);
    [(HNDDeviceManager *)v54 _updateMotionTrackerActionConfig];
    v55 = +[AXSettings sharedInstance];
    assistiveTouchHeadTrackingEnabled2 = [v55 assistiveTouchHeadTrackingEnabled];

    if (assistiveTouchHeadTrackingEnabled2)
    {
      _headTrackingToggled = [(HNDDeviceManager *)v54 _headTrackingToggled];
    }

    if (sub_100042C64(_headTrackingToggled, v58))
    {
      v59 = +[NSMutableSet set];
      connectedPointerDevices = v54->_connectedPointerDevices;
      v54->_connectedPointerDevices = v59;

      v67 = v54;
      AXPerformBlockAsynchronouslyOnMainThread();
    }

    v61 = objc_alloc_init(HNDDeviceDetector);
    deviceDetector = v54->_deviceDetector;
    v54->_deviceDetector = v61;

    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v63 = +[AXSettings sharedInstance];
      -[HNDDeviceManager setShouldShowUncalibratedPoints:](v54, "setShouldShowUncalibratedPoints:", [v63 assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints]);

      [(HNDDeviceManager *)v54 _onDeviceEyeTrackingToggled];
    }

    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  [(HNDDeviceManager *)self setDetectDevices:0];
  [(HNDDeviceManager *)self _stopMonitoringEffectiveDeviceOrientation];
  [(BSInvalidatable *)self->_pointerDeviceObserver invalidate];
  v3.receiver = self;
  v3.super_class = HNDDeviceManager;
  [(HNDDeviceManager *)&v3 dealloc];
}

- (void)setDetectDevices:(BOOL)devices
{
  devicesCopy = devices;
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (devicesCopy)
    {
      v6 = @"YES";
    }

    *buf = 136315394;
    v23 = "[HNDDeviceManager setDetectDevices:]";
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
  }

  if (self->_detectDevices != devicesCopy)
  {
    self->_detectDevices = devicesCopy;
    deviceDetector = [(HNDDeviceManager *)self deviceDetector];
    v8 = deviceDetector;
    if (self->_detectDevices)
    {
      [deviceDetector setDelegate:self];
      [v8 setDetectDevices:1];
      v9 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000064FC;
      block[3] = &unk_1001D3488;
      block[4] = self;
      dispatch_after(v9, &_dispatch_main_q, block);
    }

    else
    {
      [deviceDetector setDelegate:0];
      [v8 setDetectDevices:0];
      v10 = [(NSMutableArray *)self->_devices copy];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v16 + 1) + 8 * v15) unload];
            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v13);
      }

      [(NSMutableArray *)self->_devices removeAllObjects];
      [(HNDDeviceManager *)self disableMotionTrackingDevices];
    }
  }
}

- (void)restartDeviceDetection
{
  detectDevices = [(HNDDeviceManager *)self detectDevices];
  [(HNDDeviceManager *)self setDetectDevices:0];

  [(HNDDeviceManager *)self setDetectDevices:detectDevices];
}

- (void)deviceDetector:(id)detector didFindDevice:(__IOHIDDevice *)device
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_devices;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v22 + 1) + 8 * v10) containsHIDDevice:device])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v11 = [HNDDevice createNewDevice:device];
    v6 = v11;
    if (v11)
    {
      [(NSMutableArray *)v11 setDelegate:self];
      if ([(NSMutableArray *)v6 load])
      {
        v12 = ASTLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Adding device: %@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_devices addObject:v6];
        [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
        if ([(NSMutableArray *)v6 wheel]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          _AXSSetAccessibilityEnabled();
          _AXSApplicationAccessibilitySetEnabled();
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) != 0 && (sub_100042C64(isKindOfClass, v14) & 1) == 0)
        {
          v15 = [AXCustomizableMouse mouseForHIDDevice:device];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 customActionForButtonNumber:1];

            if (!v17)
            {
              [v16 setDefaultActionForButtonNumber:1];
            }

            if ([(NSMutableArray *)v6 secondaryButton])
            {
              v18 = [v16 customActionForButtonNumber:2];

              if (!v18)
              {
                [v16 setDefaultActionForButtonNumber:2];
              }
            }

            if ([(NSMutableArray *)v6 tertiaryButton])
            {
              v19 = [v16 customActionForButtonNumber:3];

              if (!v19)
              {
                [v16 setDefaultActionForButtonNumber:3];
              }
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100006960;
            block[3] = &unk_1001D3488;
            v21 = v16;
            dispatch_async(&_dispatch_main_q, block);
          }
        }
      }
    }
  }
}

- (void)deviceDetector:(id)detector unloadDevicesPassingTest:(id)test
{
  testCopy = test;
  devices = self->_devices;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006ABC;
  v11[3] = &unk_1001D34B0;
  v7 = testCopy;
  v12 = v7;
  v8 = [(NSMutableArray *)devices indexesOfObjectsPassingTest:v11];
  if ([v8 count])
  {
    v9 = ASTLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100127F3C(v8, v9);
    }

    v10 = [(NSMutableArray *)self->_devices objectsAtIndexes:v8];
    [v10 makeObjectsPerformSelector:"unload"];
  }
}

- (void)device:(id)device didUnload:(BOOL)unload
{
  if (unload)
  {
    [(NSMutableArray *)self->_devices removeObject:device];

    [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
  }
}

- (void)device:(id)device didPostEvent:(id)event
{
  deviceCopy = device;
  eventCopy = event;
  v8 = ASTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100127FB4(deviceCopy, eventCopy, v8);
  }

  handManager = [(HNDDeviceManager *)self handManager];
  shouldHideSystemPointerForFingersView = [handManager shouldHideSystemPointerForFingersView];
  if (shouldHideSystemPointerForFingersView)
  {
    v12 = 0;
  }

  else
  {
    shouldHideSystemPointerForFingersView = [handManager shouldHandleSystemPointerButtonEvent:eventCopy];
    v12 = shouldHideSystemPointerForFingersView;
  }

  if (!sub_100042C64(shouldHideSystemPointerForFingersView, v11) || (v12 & 1) != 0 || ([eventCopy isGamepadEvent] & 1) != 0 || (objc_msgSend(eventCopy, "isVirtualTrackpadEvent") & 1) != 0 || !+[HNDVirtualHIDMouse handleEvent:](HNDVirtualHIDMouse, "handleEvent:", eventCopy))
  {
    [handManager touchSpeedMultiplier];
    v14 = v13;
    type = [eventCopy type];
    if (type - 1 < 2)
    {
      [handManager handleButtonEvent:eventCopy];
    }

    else if (type == 4)
    {
      [eventCopy deltaY];
      [eventCopy setDeltaY:v24 * 25.0];
      [eventCopy deltaY];
      self->_scrollAmount = (v25 + self->_scrollAmount);
      if (([(AXDispatchTimer *)self->_scrollHysteresisTimer isPending]& 1) == 0)
      {
        handManager2 = [(HNDDeviceManager *)self handManager];
        currentDisplayManager = [handManager2 currentDisplayManager];
        [currentDisplayManager screenPoint];
        v29 = v28;
        v31 = v30;

        v37[0] = 0;
        v37[1] = v37;
        v37[2] = 0x3032000000;
        v37[3] = sub_100006E80;
        v37[4] = sub_100006E90;
        v38 = [AXUIElement uiApplicationAtCoordinate:v29, v31];
        scrollHysteresisTimer = self->_scrollHysteresisTimer;
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100006E98;
        v36[3] = &unk_1001D34D8;
        *&v36[6] = v29;
        *&v36[7] = v31;
        v36[4] = self;
        v36[5] = v37;
        [(AXDispatchTimer *)scrollHysteresisTimer afterDelay:v36 processBlock:0.025];
        _Block_object_dispose(v37, 8);
      }
    }

    else if (type == 3)
    {
      [eventCopy deltaX];
      [eventCopy setDeltaX:v16 * self->_allowedMoveRate];
      [eventCopy deltaY];
      [eventCopy setDeltaY:v17 * self->_allowedMoveRate];
      [eventCopy deltaX];
      [eventCopy setDeltaX:v14 * v18];
      [eventCopy deltaY];
      [eventCopy setDeltaY:v14 * v19];
      if ([(HNDDeviceManager *)self isTrackingInputActive])
      {
        handManager3 = [(HNDDeviceManager *)self handManager];
        [eventCopy deltaX];
        v22 = v21;
        [eventCopy deltaY];
        [handManager3 mouseEventRecordedWithDelta:{v22, v23}];
      }

      if ([eventCopy isVirtualTrackpadEvent])
      {
        [HNDVirtualHIDMouse handleEvent:eventCopy];
      }

      else
      {
        [eventCopy deltaX];
        v34 = v33;
        [eventCopy deltaY];
        [handManager moveFingerByDelta:{v34, v35}];
      }
    }
  }
}

- (int64_t)deviceCountWithSecondaryButtons
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_devices;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) secondaryButton];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addDevice:(id)device
{
  [(NSMutableArray *)self->_devices addObject:device];

  [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
}

- (void)removeDevice:(id)device
{
  [(NSMutableArray *)self->_devices removeObject:device];

  [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
}

- (void)removeAllDevices
{
  [(NSMutableArray *)self->_devices removeAllObjects];

  [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
}

- (void)enableMotionTrackingDevices
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[HNDDeviceManager enableMotionTrackingDevices]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager startMonitoring];
}

- (void)disableMotionTrackingDevices
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[HNDDeviceManager disableMotionTrackingDevices]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  [(HNDDeviceManager *)self _stopTrackingMotionInput];
  [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager stopMonitoring];
}

- (void)_startTrackingMotionInput:(id)input
{
  inputCopy = input;
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v50 = "[HNDDeviceManager _startTrackingMotionInput:]";
    v51 = 2112;
    v52 = inputCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: input: %@", buf, 0x16u);
  }

  configuration = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
  allowedTrackingTypes = [configuration allowedTrackingTypes];

  v8 = [allowedTrackingTypes count];
  v9 = ![(HNDDeviceManager *)self headTrackingEnabled];
  if (v8)
  {
    headTrackingEnabled = v9;
  }

  else
  {
    headTrackingEnabled = 0;
  }

  if ((v9 & 1) == 0 && v8)
  {
    headTrackingEnabled = [(HNDDeviceManager *)self headTrackingEnabled];
  }

  if (AXDeviceSupportsOnDeviceEyeTracking() && self->_isOnDeviceEyeTrackingEnabled)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass & headTrackingEnabled)
    {
      LOBYTE(headTrackingEnabled) = self->_isOnDeviceEyeTrackingEnabled;
    }

    else
    {
      LOBYTE(headTrackingEnabled) = (isKindOfClass ^ 1) & headTrackingEnabled;
    }
  }

  if (!self->_motionTracker && (headTrackingEnabled & 1) != 0)
  {
    v12 = objc_alloc_init(AXSSMotionTracker);
    motionTracker = self->_motionTracker;
    self->_motionTracker = v12;

    [(AXSSMotionTracker *)self->_motionTracker setDelegate:self];
    if ([(HNDDeviceManager *)self headTrackingEnabled])
    {
      v14 = +[AXSettings sharedInstance];
      [v14 assistiveTouchHeadTrackingSensitivity];
      [(AXSSMotionTracker *)self->_motionTracker setSensitivity:?];

      v15 = +[AXSettings sharedInstance];
      -[AXSSMotionTracker setMotionTrackingMode:](self->_motionTracker, "setMotionTrackingMode:", [v15 assistiveTouchHeadTrackingMode]);

      v16 = +[AXSettings sharedInstance];
      [v16 assistiveTouchHeadTrackingMovementToleranceInJoystickMode];
      [(AXSSMotionTracker *)self->_motionTracker setJoystickModeMovementThreshold:?];

      [(HNDDeviceManager *)self _updateMotionTrackerExpressionConfig];
    }

    if (!inputCopy)
    {
      goto LABEL_33;
    }

    v17 = objc_alloc_init(AXSSMotionTrackingInputConfiguration);
    [v17 setAllowedTrackingTypes:allowedTrackingTypes];
    v48 = inputCopy;
    v18 = [NSArray arrayWithObjects:&v48 count:1];
    [v17 setOrderedInputPreference:v18];

    [(AXSSMotionTracker *)self->_motionTracker setInputConfiguration:v17];
    if (AXDeviceSupportsOnDeviceEyeTracking() && [inputCopy trackingType] == 3)
    {
      if (!self->_onDeviceEyeTrackingSmoother)
      {
        v19 = +[AXSettings sharedInstance];
        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize]);

        if (v20)
        {
          unsignedIntegerValue = [v20 unsignedIntegerValue];
          v22 = unsignedIntegerValue >= kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference;
        }

        else
        {
          v22 = 0;
        }

        self->_shouldSmoothOnDeviceEyeTrackingPoints = v22;
        v39 = objc_opt_new();
        [v39 setDelegate:self];
        [v39 setBufferSize:{objc_msgSend(v20, "unsignedIntegerValue")}];
        v40 = +[AXSettings sharedInstance];
        [v39 setUseWeightedMovingAverage:{objc_msgSend(v40, "assistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages")}];

        v41 = +[AXSettings sharedInstance];
        [v39 setUseMedianFilter:{objc_msgSend(v41, "assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter")}];

        v42 = +[AXSettings sharedInstance];
        [v39 setUseGaussianBlur:{objc_msgSend(v42, "assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur")}];

        onDeviceEyeTrackingSmoother = self->_onDeviceEyeTrackingSmoother;
        self->_onDeviceEyeTrackingSmoother = v39;
LABEL_31:
      }
    }

    else
    {
      pointSmoothers = self->_pointSmoothers;
      uniqueIdentifier = [inputCopy uniqueIdentifier];
      v25 = [(NSMutableDictionary *)pointSmoothers objectForKeyedSubscript:uniqueIdentifier];

      if (!v25)
      {
        _smoothingBufferSizeForCurrentActiveEyeTracker = [(HNDDeviceManager *)self _smoothingBufferSizeForCurrentActiveEyeTracker];
        v20 = _smoothingBufferSizeForCurrentActiveEyeTracker;
        v27 = 0;
        if (!self->_shouldSmoothOnDeviceEyeTrackingPoints && _smoothingBufferSizeForCurrentActiveEyeTracker)
        {
          unsignedIntegerValue2 = [_smoothingBufferSizeForCurrentActiveEyeTracker unsignedIntegerValue];
          v27 = unsignedIntegerValue2 > kAXSAssistiveTouchMotionTrackerSmoothingBufferSizeDefault;
        }

        self->_shouldSmoothPoints = v27;
        onDeviceEyeTrackingSmoother = objc_opt_new();
        [onDeviceEyeTrackingSmoother setDelegate:self];
        _smoothingBufferSizeForCurrentActiveEyeTracker2 = [(HNDDeviceManager *)self _smoothingBufferSizeForCurrentActiveEyeTracker];
        [onDeviceEyeTrackingSmoother setBufferSize:{objc_msgSend(_smoothingBufferSizeForCurrentActiveEyeTracker2, "unsignedIntegerValue")}];

        v31 = +[AXSettings sharedInstance];
        [v31 assistiveTouchMotionTrackerSmoothingMaxDelta];
        [onDeviceEyeTrackingSmoother setSmoothingMaxDelta:?];

        v32 = +[AXSettings sharedInstance];
        [v32 assistiveTouchMotionTrackerXNormalizationOrder];
        [onDeviceEyeTrackingSmoother setXOrder:?];

        v33 = +[AXSettings sharedInstance];
        [v33 assistiveTouchMotionTrackerYNormalizationOrder];
        [onDeviceEyeTrackingSmoother setYOrder:?];

        v34 = +[AXSettings sharedInstance];
        [v34 assistiveTouchMotionTrackerXNormalizationOffset];
        [onDeviceEyeTrackingSmoother setXOffset:?];

        v35 = +[AXSettings sharedInstance];
        [v35 assistiveTouchMotionTrackerYNormalizationOffset];
        [onDeviceEyeTrackingSmoother setYOffset:?];

        v36 = +[AXSettings sharedInstance];
        [onDeviceEyeTrackingSmoother setShouldOffsetBufferPoints:{objc_msgSend(v36, "assistiveTouchMotionTrackerShouldOffsetBufferPoints")}];

        [onDeviceEyeTrackingSmoother setUseWeightedMovingAverage:1];
        v37 = self->_pointSmoothers;
        uniqueIdentifier2 = [inputCopy uniqueIdentifier];
        [(NSMutableDictionary *)v37 setObject:onDeviceEyeTrackingSmoother forKeyedSubscript:uniqueIdentifier2];

        goto LABEL_31;
      }
    }

LABEL_33:
    v43 = +[NSMutableArray array];
    [(HNDDeviceManager *)self setHeadTrackingPointsMovingWindow:v43];

    v44 = +[NSMutableArray array];
    [(HNDDeviceManager *)self setHeadTrackingTimestampsMovingWindow:v44];

    [(AXSSMotionTracker *)self->_motionTracker start];
    [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
    name = [inputCopy name];
    v46 = [NSString stringWithFormat:@"MotionTrackingInput: %@", name];
    v47 = [HNDVirtualHIDMouse addActiveClientWithReason:v46];
    [(HNDDeviceManager *)self setVirtualMouseClientAssertionForActiveMotionTracker:v47];

    [(HNDDeviceManager *)self _startMonitoringEffectiveDeviceOrientation];
  }
}

- (void)_stopTrackingMotionInput
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[HNDDeviceManager _stopTrackingMotionInput]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
  }

  [(HNDDeviceManager *)self _resetMotionTrackerErrorAndTimer];
  [(HNDDeviceManager *)self setIsTrackingInputActive:0];
  [(NSMutableDictionary *)self->_pointSmoothers removeAllObjects];
  onDeviceEyeTrackingSmoother = self->_onDeviceEyeTrackingSmoother;
  self->_onDeviceEyeTrackingSmoother = 0;

  [(HNDDeviceManager *)self hidDeviceDidStartConfiguring:0];
  [(HNDDeviceManager *)self setHidDeviceSentReservedStatus:0];
  motionTracker = self->_motionTracker;
  if (motionTracker)
  {
    [(AXSSMotionTracker *)motionTracker stop];
    [(AXSSMotionTracker *)self->_motionTracker invalidate];
    v6 = self->_motionTracker;
    self->_motionTracker = 0;

    [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
    [(HNDDeviceManager *)self _stopMonitoringEffectiveDeviceOrientation];
    virtualMouseClientAssertionForActiveMotionTracker = [(HNDDeviceManager *)self virtualMouseClientAssertionForActiveMotionTracker];
    [virtualMouseClientAssertionForActiveMotionTracker invalidate];
  }
}

- (void)_startMonitoringEffectiveDeviceOrientation
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100007BF4;
  v9 = &unk_1001D3500;
  objc_copyWeak(&v10, &location);
  v4 = notify_register_dispatch("com.apple.backboardd.orientation", &self->_notifyToken, &_dispatch_main_q, &v6);

  if (v4)
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012803C(v5);
    }
  }

  [(HNDDeviceManager *)self _checkBackboardEffectiveDeviceOrientation:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_checkBackboardEffectiveDeviceOrientation
{
  if (notify_register_check("com.apple.backboardd.orientation", &dword_100214EF0))
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_100214EF0 == -1;
  }

  if (!v3)
  {
    state64 = 0;
    notify_get_state(dword_100214EF0, &state64);
    [(HNDDeviceManager *)self setCurrentDeviceOrientation:state64];
    v4 = ASTLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      currentDeviceOrientation = [(HNDDeviceManager *)self currentDeviceOrientation];
      *buf = 134217984;
      v8 = currentDeviceOrientation;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Detected device orientation: %ld", buf, 0xCu);
    }
  }
}

- (void)_stopMonitoringEffectiveDeviceOrientation
{
  if (notify_is_valid_token([(HNDDeviceManager *)self notifyToken]))
  {
    notify_cancel([(HNDDeviceManager *)self notifyToken]);
  }

  [(HNDDeviceManager *)self setNotifyToken:0xFFFFFFFFLL];
}

- (void)setIsTrackingInputActive:(BOOL)active
{
  if (self->_isTrackingInputActive != active)
  {
    activeCopy = active;
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100128080(activeCopy, v5);
    }

    self->_isTrackingInputActive = activeCopy;
    handManager = [(HNDDeviceManager *)self handManager];
    [handManager eyeTrackerIsActivelyTracking:activeCopy];
  }
}

- (id)_smoothingBufferSizeForCurrentActiveEyeTracker
{
  inputToUse = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  if (!inputToUse)
  {
    goto LABEL_5;
  }

  inputToUse4 = inputToUse;
  inputToUse2 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  if (![inputToUse2 isHIDDevice])
  {
    v8 = 0;
    goto LABEL_7;
  }

  inputToUse3 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  trackingType = [inputToUse3 trackingType];

  if (trackingType != 2)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  inputToUse4 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  inputToUse2 = +[AXSettings sharedInstance];
  v8 = [inputToUse2 smoothingBufferSizeForEyeTracker:inputToUse4];
LABEL_7:

LABEL_8:

  return v8;
}

- (CGRect)rotatedScreenBounds
{
  handManager = [(HNDDeviceManager *)self handManager];
  mainDisplayManager = [handManager mainDisplayManager];
  [mainDisplayManager screenBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)motionTrackingInputManager:(id)manager updatedInputToUse:(id)use
{
  managerCopy = manager;
  useCopy = use;
  v8 = ASTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    configuration = [managerCopy configuration];
    allowedTrackingTypes = [configuration allowedTrackingTypes];
    *buf = 136315650;
    *&buf[4] = "[HNDDeviceManager motionTrackingInputManager:updatedInputToUse:]";
    *&buf[12] = 2112;
    *&buf[14] = useCopy;
    *&buf[22] = 2112;
    v29 = allowedTrackingTypes;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: input: %@, allowedTrackingTypes: %@", buf, 0x20u);
  }

  [(HNDDeviceManager *)self _stopTrackingMotionInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = +[AXSettings sharedInstance];
    assistiveTouchHeadTrackingEnabled = [v12 assistiveTouchHeadTrackingEnabled];
  }

  else
  {
    assistiveTouchHeadTrackingEnabled = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && AXDeviceSupportsOnDeviceEyeTracking())
  {
    v14 = +[AXSettings sharedInstance];
    onDeviceEyeTrackingEnabled = [v14 onDeviceEyeTrackingEnabled];

    v16 = isKindOfClass | onDeviceEyeTrackingEnabled | assistiveTouchHeadTrackingEnabled;
    if (useCopy && (v16 & 1) != 0)
    {
      if (onDeviceEyeTrackingEnabled)
      {
        compatibleInputs = [managerCopy compatibleInputs];
        v18 = [compatibleInputs count] > 1;

        if (v18)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v29 = sub_100006E80;
          v30 = sub_100006E90;
          v31 = 0;
          compatibleInputs2 = [managerCopy compatibleInputs];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100008334;
          v25[3] = &unk_1001D3528;
          useCopy = useCopy;
          v26 = useCopy;
          v27 = buf;
          [compatibleInputs2 enumerateObjectsUsingBlock:v25];

          v20 = *(*&buf[8] + 40);
          if (v20)
          {
            v21 = v20;

            useCopy = v21;
          }

          _Block_object_dispose(buf, 8);
        }
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = isKindOfClass | assistiveTouchHeadTrackingEnabled;
    if (useCopy && (v16 & 1) != 0)
    {
LABEL_17:
      v22 = ASTLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = useCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "MotionTrackingInputManager updatedInputToUse: %@", buf, 0xCu);
      }

      [(HNDDeviceManager *)self _startTrackingMotionInput:useCopy];
      goto LABEL_25;
    }
  }

  v23 = ASTLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = @"NO";
    if (v16)
    {
      v24 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = useCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "MotionTrackingInputManager not starting motion tracking. shouldStartTracking: %@, input: %@", buf, 0x16u);
  }

LABEL_25:
}

- (void)motionTracker:(id)tracker updatedState:(id)state
{
  stateCopy = state;
  if ([stateCopy hasFace])
  {
    error = [stateCopy error];
    [(HNDDeviceManager *)self setIsTrackingInputActive:error == 0];
  }

  else
  {
    [(HNDDeviceManager *)self setIsTrackingInputActive:0];
  }

  if ([(HNDDeviceManager *)self _shouldProcessState:stateCopy])
  {
    [stateCopy lookAtPoint];
    [(HNDDeviceManager *)self _motionTrackerInputSourceTrackedFaceAtPoint:?];
    if ([(HNDDeviceManager *)self headTrackingEnabled])
    {
      expressions = [stateCopy expressions];
      [(HNDDeviceManager *)self _motionTrackerInputSourceTrackedFaceWithExpressions:expressions];
LABEL_17:
    }
  }

  else
  {
    error2 = [stateCopy error];

    if (error2)
    {
      error3 = [stateCopy error];
      code = [error3 code];

      motionTrackerError = self->_motionTrackerError;
      if (!motionTrackerError || [(NSError *)motionTrackerError code]!= code)
      {
        v12 = +[AXAccessQueue mainAccessQueue];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000085E8;
        v17[3] = &unk_1001D3488;
        v17[4] = self;
        [v12 performSynchronousWritingBlock:v17];

        [(HNDDeviceManager *)self _resetMotionTrackerErrorAndTimer];
        error4 = [stateCopy error];
        v14 = [error4 copy];
        v15 = self->_motionTrackerError;
        self->_motionTrackerError = v14;

        if (code == 15)
        {
          [(HNDDeviceManager *)self setHidDeviceSentReservedStatus:1];
        }

        else if (code == 14)
        {
          [(HNDDeviceManager *)self hidDeviceDidStartConfiguring:1];
        }

        else
        {
          [(HNDDeviceManager *)self _motionTrackerInputSourceFailedToTrackFaceWithErrorCode:code];
        }
      }

      if ([(HNDDeviceManager *)self headTrackingEnabled])
      {
        v16 = +[NSMutableArray array];
        [(HNDDeviceManager *)self setHeadTrackingPointsMovingWindow:v16];

        expressions = +[NSMutableArray array];
        [(HNDDeviceManager *)self setHeadTrackingTimestampsMovingWindow:expressions];
        goto LABEL_17;
      }
    }
  }
}

- (BOOL)_shouldProcessState:(id)state
{
  stateCopy = state;
  error = [stateCopy error];
  if (error && (v6 = error, v7 = [stateCopy hasFace], v6, v7) && (objc_msgSend(stateCopy, "error"), v8 = objc_claimAutoreleasedReturnValue(), v9 = -[HNDDeviceManager _isTrackingErrorWithFaceImportant:](self, "_isTrackingErrorWithFaceImportant:", objc_msgSend(v8, "code")), v8, (v9 & 1) != 0) || !objc_msgSend(stateCopy, "hasFace"))
  {
    v12 = 0;
  }

  else if (AXDeviceSupportsOnDeviceEyeTracking() && self->_isOnDeviceEyeTrackingEnabled && self->_currentEyeTrackingErrorCode && (+[ASTUIGazeEnrollmentManager sharedManager](ASTUIGazeEnrollmentManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 enrollmentComplete], v10, (v11 & 1) == 0))
  {
    self->_currentEyeTrackingErrorCode = 0;
    handManager = [(HNDDeviceManager *)self handManager];
    mainDisplayManager = [handManager mainDisplayManager];
    v12 = 1;
    [mainDisplayManager setNeedsRecalibration:1];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_motionTrackerInputSourceTrackedFaceWithExpressions:(id)expressions
{
  expressionsCopy = expressions;
  [(HNDDeviceManager *)self headTrackingExpressionToActionMapping];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100008980;
  v5 = v24[3] = &unk_1001D3578;
  v25 = v5;
  selfCopy = self;
  v6 = objc_retainBlock(v24);
  currentFacialExpressions = [(HNDDeviceManager *)self currentFacialExpressions];

  if (!currentFacialExpressions)
  {
    v8 = +[NSSet set];
    [(HNDDeviceManager *)self setCurrentFacialExpressions:v8];
  }

  currentFacialExpressions2 = [(HNDDeviceManager *)self currentFacialExpressions];
  v10 = [currentFacialExpressions2 isEqual:expressionsCopy];

  if ((v10 & 1) == 0)
  {
    currentFacialExpressions3 = [(HNDDeviceManager *)self currentFacialExpressions];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008C7C;
    v21[3] = &unk_1001D35A0;
    v12 = expressionsCopy;
    v22 = v12;
    v13 = v6;
    v23 = v13;
    [currentFacialExpressions3 enumerateObjectsUsingBlock:v21];

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100008CE8;
    v18 = &unk_1001D35A0;
    selfCopy2 = self;
    v20 = v13;
    [v12 enumerateObjectsUsingBlock:&v15];
    v14 = [v12 copy];
    [(HNDDeviceManager *)self setCurrentFacialExpressions:v14];
  }
}

- (void)_motionTrackerInputSourceTrackedFaceAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(HNDDeviceManager *)self _resetMotionTrackerErrorAndTimer];
  [(HNDDeviceManager *)self hidDeviceDidStartConfiguring:0];
  [(HNDDeviceManager *)self setHidDeviceSentReservedStatus:0];
  if ([(HNDDeviceManager *)self headTrackingEnabled]&& [(HNDDeviceManager *)self ignoreMovementDuringFacialExpressionActivation])
  {
    return;
  }

  handManager = [(HNDDeviceManager *)self handManager];
  mainDisplayManager = [handManager mainDisplayManager];
  v84 = 0;
  v85 = &v84;
  v86 = 0x3010000000;
  v87 = &unk_100179B77;
  v88 = x;
  v89 = y;
  v8 = self->_shouldSmoothPoints && !self->_shouldSmoothOnDeviceEyeTrackingPoints;
  motionTrackingQuitCurrentAppTimer = [(HNDDeviceManager *)self motionTrackingQuitCurrentAppTimer];
  [motionTrackingQuitCurrentAppTimer invalidate];

  if (v8)
  {
    v10 = +[AXAccessQueue mainAccessQueue];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1000093F0;
    v79[3] = &unk_1001D35C8;
    v79[4] = self;
    v82 = x;
    v83 = y;
    v80 = handManager;
    v81 = &v84;
    [v10 performSynchronousWritingBlock:v79];
  }

  v11 = AXDeviceSupportsOnDeviceEyeTracking();
  v12 = CGPointZero.y;
  v13 = v12;
  v14 = CGPointZero.x;
  if (v11)
  {
    v13 = CGPointZero.y;
    v14 = CGPointZero.x;
    if (self->_isOnDeviceEyeTrackingEnabled)
    {
      [(HNDDeviceManager *)self _resetCalibrationTimer];
      if (self->_shouldSmoothOnDeviceEyeTrackingPoints)
      {
        v15 = +[AXAccessQueue mainAccessQueue];
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_1000094D8;
        v78[3] = &unk_1001D34D8;
        *&v78[6] = x;
        *&v78[7] = y;
        v78[4] = self;
        v78[5] = &v84;
        [v15 performSynchronousWritingBlock:v78];
      }

      if ([mainDisplayManager isShowingCalibrationUI])
      {
        self->_lastSeenLookAtPoint = v85[2];
      }

      shouldShowUncalibratedPoints = self->_shouldShowUncalibratedPoints;
      if (shouldShowUncalibratedPoints)
      {
LABEL_15:
        [mainDisplayManager setNeedsRecalibration:!shouldShowUncalibratedPoints];
        v13 = v12;
        v14 = CGPointZero.x;
        goto LABEL_20;
      }

      if (![(ASTUIGazeEnrollmentManager *)self->_gazeEnrollmentManager enrollmentComplete])
      {
        v13 = v12;
        v14 = CGPointZero.x;
        if ([mainDisplayManager isShowingCalibrationUI])
        {
          goto LABEL_20;
        }

        mainDisplayManager2 = [handManager mainDisplayManager];
        didForceDimissCalibration = [mainDisplayManager2 didForceDimissCalibration];

        v13 = v12;
        v14 = CGPointZero.x;
        if (didForceDimissCalibration)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      [(ASTUIGazeEnrollmentManager *)self->_gazeEnrollmentManager calibratedGazePointForGazePoint:v85[2].x, v85[2].y];
      v14 = v17;
      v13 = v18;
    }
  }

LABEL_20:
  shouldIgnoreHIDDeviceMovementWhileMouseActive = [handManager shouldIgnoreHIDDeviceMovementWhileMouseActive];
  v22 = shouldIgnoreHIDDeviceMovementWhileMouseActive;
  if (shouldIgnoreHIDDeviceMovementWhileMouseActive & 1 | ((sub_100042C64(shouldIgnoreHIDDeviceMovementWhileMouseActive, v23) & 1) == 0) || (-[HNDDeviceManager handManager](self, "handManager"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 dwellControlPaused], v24, (v25 & 1) != 0))
  {
    if ((v22 & 1) == 0)
    {
      [handManager setLastMoveWasMouse:0];
      [handManager moveFingerToPoint:{v85[2].x, v85[2].y}];
    }
  }

  else
  {
    systemPointerController = [handManager systemPointerController];

    if (systemPointerController)
    {
      systemPointerController2 = [handManager systemPointerController];
      [systemPointerController2 currentAbsoluteSystemPointerPoint];
    }

    else
    {
      systemPointerController2 = [handManager mainDisplayManager];
      [systemPointerController2 screenPoint];
    }

    [mainDisplayManager convertPointToPortraitUpOrientation:?];
    v29 = v28;
    v31 = v30;

    if (v14 == CGPointZero.x && v13 == v12)
    {
      [mainDisplayManager convertPointToPortraitUpOrientation:{v85[2].x, v85[2].y}];
    }

    else
    {
      [mainDisplayManager convertPointToPortraitUpOrientation:{v14, v13}];
    }

    v34 = v32;
    v35 = v33;
    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v36 = +[AXSettings sharedInstance];
      onDeviceEyeTrackingEnabled = [v36 onDeviceEyeTrackingEnabled];

      if (onDeviceEyeTrackingEnabled)
      {
        v77 = v29;
        currentDisplayManager = [handManager currentDisplayManager];
        [currentDisplayManager portraitUpScreenBounds];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;

        v90.origin.x = v40;
        v90.origin.y = v42;
        v90.size.width = v44;
        v90.size.height = v46;
        MinX = CGRectGetMinX(v90);
        v91.origin.x = v40;
        v91.origin.y = v42;
        v91.size.width = v44;
        v91.size.height = v46;
        v48 = CGRectGetMaxX(v91) + -10.0;
        if (v34 < v48)
        {
          v48 = v34;
        }

        if (MinX + 10.0 >= v48)
        {
          v34 = MinX + 10.0;
        }

        else
        {
          v34 = v48;
        }

        v92.origin.x = v40;
        v92.origin.y = v42;
        v92.size.width = v44;
        v92.size.height = v46;
        MinY = CGRectGetMinY(v92);
        v93.origin.x = v40;
        v93.origin.y = v42;
        v93.size.width = v44;
        v93.size.height = v46;
        v50 = CGRectGetMaxY(v93) + -10.0;
        if (v35 < v50)
        {
          v50 = v35;
        }

        if (MinY + 10.0 >= v50)
        {
          v35 = MinY + 10.0;
        }

        else
        {
          v35 = v50;
        }

        v29 = v77;
      }
    }

    [(HNDDeviceManager *)self convertPointToDeviceOrientation:v34, v35];
    v52 = v51;
    v54 = v53;
    [(HNDDeviceManager *)self convertPointToDeviceOrientation:v29, v31];
    v56 = v55;
    v58 = v57;
    handManager2 = [(HNDDeviceManager *)self handManager];
    mainDisplayManager3 = [handManager2 mainDisplayManager];
    isViewZoomed = [mainDisplayManager3 isViewZoomed];

    if (isViewZoomed)
    {
      handManager3 = [(HNDDeviceManager *)self handManager];
      mainDisplayManager4 = [handManager3 mainDisplayManager];
      [mainDisplayManager4 zoomConvertToReplicatedViewFromTargetPoint:{v52, v54}];
      v52 = v64;
      v54 = v65;
    }

    if ([(HNDDeviceManager *)self headTrackingEnabled])
    {
      handManager4 = [(HNDDeviceManager *)self handManager];
      currentDisplayManager2 = [handManager4 currentDisplayManager];
      [currentDisplayManager2 portraitUpScreenBounds];
      v69 = v68;
      v71 = v70;

      deviceOrientionIsLandscape = [(HNDDeviceManager *)self deviceOrientionIsLandscape];
      if (deviceOrientionIsLandscape)
      {
        v73 = v71;
      }

      else
      {
        v73 = v69;
      }

      if (deviceOrientionIsLandscape)
      {
        v74 = v69;
      }

      else
      {
        v74 = v71;
      }

      v75 = v52 / v73;
      v76 = v54 / v74;
      [(HNDDeviceManager *)self _updateHeadTrackingPointsMovingWindowWithNormalizedPoint:v52 / v73, v54 / v74];
      [HNDVirtualHIDMouse handleHeadTrackingMovementWithPoint:v75, v76];
    }

    else
    {
      [HNDVirtualHIDMouse handleEyeTrackingMovementWithDelta:v52 - v56, v54 - v58];
    }
  }

  _Block_object_dispose(&v84, 8);
}

- (void)_updateHeadTrackingPointsMovingWindowWithNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  headTrackingPointsMovingWindow = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
  if (!headTrackingPointsMovingWindow || (v7 = headTrackingPointsMovingWindow, [(HNDDeviceManager *)self headTrackingTimestampsMovingWindow], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v9 = +[NSMutableArray array];
    [(HNDDeviceManager *)self setHeadTrackingPointsMovingWindow:v9];

    v10 = +[NSMutableArray array];
    [(HNDDeviceManager *)self setHeadTrackingTimestampsMovingWindow:v10];
  }

  headTrackingPointsMovingWindow2 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
  v12 = [NSValue valueWithPoint:x, y];
  [headTrackingPointsMovingWindow2 addObject:v12];

  v13 = mach_absolute_time();
  headTrackingTimestampsMovingWindow = [(HNDDeviceManager *)self headTrackingTimestampsMovingWindow];
  v15 = [NSNumber numberWithUnsignedLongLong:v13];
  [headTrackingTimestampsMovingWindow addObject:v15];

  headTrackingPointsMovingWindow3 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
  v17 = [headTrackingPointsMovingWindow3 count];

  if (v17)
  {
    while (1)
    {
      headTrackingTimestampsMovingWindow2 = [(HNDDeviceManager *)self headTrackingTimestampsMovingWindow];
      firstObject = [headTrackingTimestampsMovingWindow2 firstObject];

      [firstObject unsignedLongLongValue];
      if (AXMachTimeToNanoseconds() / 1000000000.0 <= 0.2)
      {
        break;
      }

      headTrackingPointsMovingWindow4 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
      firstObject2 = [headTrackingPointsMovingWindow4 firstObject];

      headTrackingPointsMovingWindow5 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
      [headTrackingPointsMovingWindow5 removeObjectAtIndex:0];

      headTrackingTimestampsMovingWindow3 = [(HNDDeviceManager *)self headTrackingTimestampsMovingWindow];
      [headTrackingTimestampsMovingWindow3 removeObjectAtIndex:0];

      [firstObject2 pointValue];
      [(HNDDeviceManager *)self setDelayedHeadTrackingPointForExpressions:?];

      headTrackingPointsMovingWindow6 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
      v24 = [headTrackingPointsMovingWindow6 count];

      if (!v24)
      {
        return;
      }
    }
  }
}

- (CGPoint)convertPointToDeviceOrientation:(CGPoint)orientation
{
  y = orientation.y;
  x = orientation.x;
  handManager = [(HNDDeviceManager *)self handManager];
  currentDisplayManager = [handManager currentDisplayManager];
  [currentDisplayManager portraitUpScreenBounds];
  v9 = v8;
  v11 = v10;

  currentDeviceOrientation = [(HNDDeviceManager *)self currentDeviceOrientation];
  v13 = v11 - y;
  v14 = v9 - x;
  if (currentDeviceOrientation == 2)
  {
    v15 = v9 - x;
  }

  else
  {
    v15 = x;
  }

  if (currentDeviceOrientation == 2)
  {
    v16 = v11 - y;
  }

  else
  {
    v16 = y;
  }

  if (currentDeviceOrientation == 3)
  {
    v15 = y;
  }

  else
  {
    v14 = v16;
  }

  if (currentDeviceOrientation == 4)
  {
    v14 = x;
  }

  else
  {
    v13 = v15;
  }

  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_processCameraStolenError
{
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&stru_1001D3608 block:5.0];
  [(HNDDeviceManager *)self setMotionTrackingQuitCurrentAppTimer:v3];
}

- (void)_processMotionTrackerErrorsForOnDeviceEyeTrackingWithErrorCode:(int64_t)code
{
  if (self->_currentEyeTrackingErrorCode != code)
  {
    self->_currentEyeTrackingErrorCode = code;
    [(HNDDeviceManager *)self _resetCalibrationTimer];
  }

  v5 = 60.0;
  v6 = code - 2;
  if (code == 11)
  {
    v7 = 0;
  }

  else
  {
    v5 = 60.0;
    v7 = 1;
  }

  if (code == 4)
  {
    v5 = 5.0;
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v6 >= 2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 5.0;
  }

  if (v6 >= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  handManager2 = [(HNDDeviceManager *)self handManager:v5];
  mainDisplayManager = [handManager2 mainDisplayManager];
  if ([mainDisplayManager isShowingCalibrationUI] && (-[ASTUIGazeEnrollmentManager enrollmentComplete](self->_gazeEnrollmentManager, "enrollmentComplete") & 1) == 0)
  {

    if (code == 11)
    {
      goto LABEL_20;
    }

    handManager = [(HNDDeviceManager *)self handManager];
    mainDisplayManager2 = [handManager mainDisplayManager];
    [mainDisplayManager2 dismissCalibrationUI];

    handManager2 = [(HNDDeviceManager *)self handManager];
    mainDisplayManager = [handManager2 mainDisplayManager];
    [mainDisplayManager setNeedsRecalibration:v10];
  }

LABEL_20:
  if (!self->_eyeTrackingRecalibrationTimer)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100009AFC;
    v17[3] = &unk_1001D3630;
    v17[4] = self;
    v18 = v10;
    v15 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v17 block:v9];
    eyeTrackingRecalibrationTimer = self->_eyeTrackingRecalibrationTimer;
    self->_eyeTrackingRecalibrationTimer = v15;
  }
}

- (void)_motionTrackerInputSourceFailedToTrackFaceWithErrorCode:(int64_t)code
{
  if (code == 11)
  {
    v5 = 5.0;
  }

  else
  {
    v5 = 1.0;
  }

  AXSSHumanReadableDescriptionForMotionTrackingErrorCode();
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100009D08;
  v17 = &unk_1001D3658;
  v6 = v18 = self;
  v19 = v6;
  v7 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v14 block:v5];
  motionTrackerErrorTimer = self->_motionTrackerErrorTimer;
  self->_motionTrackerErrorTimer = v7;

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v9 = [AXSettings sharedInstance:v14];
    if ([v9 onDeviceEyeTrackingEnabled])
    {
      switchControlOnDeviceEyeTrackingEnabled = 1;
    }

    else
    {
      v11 = +[AXSettings sharedInstance];
      switchControlOnDeviceEyeTrackingEnabled = [v11 switchControlOnDeviceEyeTrackingEnabled];
    }
  }

  else
  {
    switchControlOnDeviceEyeTrackingEnabled = 0;
  }

  v12 = [AXSettings sharedInstance:v14];
  assistiveTouchHeadTrackingEnabled = [v12 assistiveTouchHeadTrackingEnabled];

  if (code == 7)
  {
    if ((switchControlOnDeviceEyeTrackingEnabled | assistiveTouchHeadTrackingEnabled))
    {
      [(HNDDeviceManager *)self _processCameraStolenError];
    }
  }

  else if (switchControlOnDeviceEyeTrackingEnabled)
  {
    [(HNDDeviceManager *)self _processMotionTrackerErrorsForOnDeviceEyeTrackingWithErrorCode:code];
  }
}

- (void)hidDeviceDidStartConfiguring:(BOOL)configuring
{
  if (self->_hidDeviceIsConfiguring != configuring)
  {
    self->_hidDeviceIsConfiguring = configuring;
    handManager = [(HNDDeviceManager *)self handManager];
    v9 = handManager;
    if (configuring)
    {
      [handManager prepareForHIDDeviceConfiguration];

      [(NSError *)self->_motionTrackerError code];
      v9 = AXSSHumanReadableDescriptionForMotionTrackingErrorCode();
      handManager2 = [(HNDDeviceManager *)self handManager];
      mainDisplayManager = [handManager2 mainDisplayManager];
      [mainDisplayManager showBubbleNotificationWithError:v9 duration:5.0];
    }

    else
    {
      [handManager didCompleteHIDDeviceConfiguration];
    }
  }
}

- (void)setHidDeviceSentReservedStatus:(BOOL)status
{
  if (self->_hidDeviceSentReservedStatus != status)
  {
    self->_hidDeviceSentReservedStatus = status;
    handManager = [(HNDDeviceManager *)self handManager];
    v6 = handManager;
    if (status)
    {
      [handManager hideUIForEyeTracker];
    }

    else
    {
      [handManager showUIForEyeTracker];
    }
  }
}

- (void)_resetMotionTrackerErrorAndTimer
{
  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    self->_currentEyeTrackingErrorCode = 0;
  }

  motionTrackerError = self->_motionTrackerError;
  self->_motionTrackerError = 0;

  [(NSTimer *)self->_motionTrackerErrorTimer invalidate];
  motionTrackerErrorTimer = self->_motionTrackerErrorTimer;
  self->_motionTrackerErrorTimer = 0;

  handManager = [(HNDDeviceManager *)self handManager];
  mainDisplayManager = [handManager mainDisplayManager];
  [mainDisplayManager hideBubbleNotification];
}

- (id)_currentPointSmoother
{
  if (AXDeviceSupportsOnDeviceEyeTracking() && ([(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    v5 = self->_onDeviceEyeTrackingSmoother;
  }

  else
  {
    inputToUse = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
    uniqueIdentifier = [inputToUse uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v5 = [(NSMutableDictionary *)self->_pointSmoothers objectForKeyedSubscript:uniqueIdentifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)deviceCount
{
  mainDeviceIsMotionTracker = [(HNDDeviceManager *)self mainDeviceIsMotionTracker];
  v4 = [(NSMutableSet *)self->_connectedPointerDevices count]+ mainDeviceIsMotionTracker;
  return [(NSMutableArray *)self->_devices count]+ v4;
}

- (BOOL)mainDeviceIsPointer
{
  v3 = [(NSMutableArray *)self->_devices indexesOfObjectsPassingTest:&stru_1001D3698];
  if (-[HNDDeviceManager mainDeviceIsMotionTracker](self, "mainDeviceIsMotionTracker") || -[NSMutableSet count](self->_connectedPointerDevices, "count") || [v3 count] && (v6 = -[HNDDeviceManager deviceCount](self, "deviceCount"), v6 == objc_msgSend(v3, "count")))
  {
    v4 = ![(HNDDeviceManager *)self shouldDisableMainPointerStatusForUnitTesting];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)mainDeviceIsMotionTracker
{
  if ([(HNDDeviceManager *)self forceEyeTrackerExperience])
  {
    isOnDeviceEyeTrackingEnabled = 1;
  }

  else if (AXDeviceSupportsOnDeviceEyeTracking() && [(HNDDeviceManager *)self mainDeviceIsOnDeviceEyeTracker])
  {
    isOnDeviceEyeTrackingEnabled = self->_isOnDeviceEyeTrackingEnabled;
  }

  else
  {
    inputToUse = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
    if (inputToUse)
    {
      isOnDeviceEyeTrackingEnabled = [(AXSSMotionTracker *)self->_motionTracker isTracking];
    }

    else
    {
      isOnDeviceEyeTrackingEnabled = 0;
    }
  }

  return isOnDeviceEyeTrackingEnabled & 1;
}

- (BOOL)mainDeviceIsThirdPartyTracker
{
  inputToUse = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  if (!inputToUse)
  {
    return 0;
  }

  v4 = inputToUse;
  inputToUse2 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  inputToUse3 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  v8 = [inputToUse3 trackingType] == 2;

  return v8;
}

- (BOOL)mainDeviceIsOnDeviceEyeTracker
{
  if (!AXDeviceSupportsOnDeviceEyeTracking())
  {
    return 0;
  }

  inputToUse = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  if (!inputToUse)
  {
    return 0;
  }

  v4 = inputToUse;
  inputToUse2 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  inputToUse3 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  v8 = [inputToUse3 trackingType] == 3;

  return v8;
}

- (void)_onDeviceEyeTrackingToggled
{
  v3 = +[AXSettings sharedInstance];
  onDeviceEyeTrackingEnabled = [v3 onDeviceEyeTrackingEnabled];

  if (onDeviceEyeTrackingEnabled != [(HNDDeviceManager *)self isOnDeviceEyeTrackingEnabled]&& AXDeviceSupportsOnDeviceEyeTracking())
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (onDeviceEyeTrackingEnabled)
      {
        v6 = @"YES";
      }

      v9 = 136315394;
      v10 = "[HNDDeviceManager _onDeviceEyeTrackingToggled]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: onDeviceEyeTrackingEnabled: %@", &v9, 0x16u);
    }

    [(HNDDeviceManager *)self setIsOnDeviceEyeTrackingEnabled:onDeviceEyeTrackingEnabled];
    handManager = [(HNDDeviceManager *)self handManager];
    mainDisplayManager = [handManager mainDisplayManager];
    if ([mainDisplayManager shouldShowFaceGuidance] & 1) != 0 || ((onDeviceEyeTrackingEnabled ^ 1))
    {
      if ((onDeviceEyeTrackingEnabled & 1) == 0)
      {
        [(HNDDeviceManager *)self removeOnDeviceEyeTrackingAsInput];
      }
    }

    else
    {
      [(HNDDeviceManager *)self addOnDeviceEyeTrackingAsInput];
    }
  }
}

- (void)removeOnDeviceEyeTrackingAsInput
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[HNDDeviceManager removeOnDeviceEyeTrackingAsInput]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    configuration = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    allowedTrackingTypes = [configuration allowedTrackingTypes];
    v6 = [allowedTrackingTypes mutableCopy];

    [v6 removeObject:&off_1001E4FE0];
    [v6 addObject:&off_1001E4FB0];
    configuration2 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v8 = [v6 copy];
    [configuration2 setAllowedTrackingTypes:v8];

    [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager setConfiguration:configuration2];
    motionTrackingInputManager = self->_motionTrackingInputManager;
    inputToUse = [(AXSSMotionTrackingInputManager *)motionTrackingInputManager inputToUse];
    [(HNDDeviceManager *)self motionTrackingInputManager:motionTrackingInputManager updatedInputToUse:inputToUse];
  }
}

- (void)addOnDeviceEyeTrackingAsInput
{
  v3 = ASTLogDeviceManager();
  v4 = os_signpost_id_generate(v3);

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v5 = ASTLogDeviceManager();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Add Device Tracking As Input", "", &v17, 2u);
    }

    configuration = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    allowedTrackingTypes = [configuration allowedTrackingTypes];
    v9 = [allowedTrackingTypes mutableCopy];

    [v9 addObject:&off_1001E4FE0];
    [v9 removeObject:&off_1001E4FC8];
    [v9 removeObject:&off_1001E4FB0];
    configuration2 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v11 = [v9 copy];
    [configuration2 setAllowedTrackingTypes:v11];

    [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager setConfiguration:configuration2];
    v12 = ASTLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[HNDDeviceManager addOnDeviceEyeTrackingAsInput]";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s allowedTrackingTypes: %@", &v17, 0x16u);
    }

    motionTrackingInputManager = self->_motionTrackingInputManager;
    inputToUse = [(AXSSMotionTrackingInputManager *)motionTrackingInputManager inputToUse];
    [(HNDDeviceManager *)self motionTrackingInputManager:motionTrackingInputManager updatedInputToUse:inputToUse];

    v15 = ASTLogDeviceManager();
    v16 = v15;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v4, "Add Device Tracking As Input", "", &v17, 2u);
    }
  }
}

- (void)_resetCalibrationTimer
{
  [(NSTimer *)self->_eyeTrackingRecalibrationTimer invalidate];
  eyeTrackingRecalibrationTimer = self->_eyeTrackingRecalibrationTimer;
  self->_eyeTrackingRecalibrationTimer = 0;

  self->_hasExceededRecalibrationTimeThreshold = 0;
}

- (void)_headTrackingToggled
{
  v3 = ASTLogDeviceManager();
  v4 = os_signpost_id_generate(v3);

  v5 = ASTLogDeviceManager();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Head Tracking Toggled", "", &v20, 2u);
  }

  v7 = +[AXSettings sharedInstance];
  assistiveTouchHeadTrackingEnabled = [v7 assistiveTouchHeadTrackingEnabled];

  if (assistiveTouchHeadTrackingEnabled != [(HNDDeviceManager *)self headTrackingEnabled])
  {
    v9 = ASTLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (assistiveTouchHeadTrackingEnabled)
      {
        v10 = @"YES";
      }

      v20 = 136315394;
      v21 = "[HNDDeviceManager _headTrackingToggled]";
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: headTrackingEnabled: %@", &v20, 0x16u);
    }

    [(HNDDeviceManager *)self setHeadTrackingEnabled:assistiveTouchHeadTrackingEnabled];
    configuration = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    allowedTrackingTypes = [configuration allowedTrackingTypes];
    v13 = [allowedTrackingTypes mutableCopy];

    if (assistiveTouchHeadTrackingEnabled)
    {
      [v13 addObject:&off_1001E4FC8];
      [v13 removeObject:&off_1001E4FE0];
      [v13 removeObject:&off_1001E4FB0];
    }

    else
    {
      [v13 removeObject:&off_1001E4FC8];
      [v13 addObject:&off_1001E4FB0];
    }

    configuration2 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v15 = [v13 copy];
    [configuration2 setAllowedTrackingTypes:v15];

    [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager setConfiguration:configuration2];
    motionTrackingInputManager = self->_motionTrackingInputManager;
    inputToUse = [(AXSSMotionTrackingInputManager *)motionTrackingInputManager inputToUse];
    [(HNDDeviceManager *)self motionTrackingInputManager:motionTrackingInputManager updatedInputToUse:inputToUse];
  }

  v18 = ASTLogDeviceManager();
  v19 = v18;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v4, "Head Tracking Toggled", "", &v20, 2u);
  }
}

- (void)_updateMotionTrackerMode
{
  v3 = +[AXSettings sharedInstance];
  -[AXSSMotionTracker setMotionTrackingMode:](self->_motionTracker, "setMotionTrackingMode:", [v3 assistiveTouchHeadTrackingMode]);
}

- (void)_updateMotionTrackerExpressionConfig
{
  motionTracker = self->_motionTracker;
  if (motionTracker)
  {
    expressionConfiguration = [(AXSSMotionTracker *)motionTracker expressionConfiguration];
    v5 = [expressionConfiguration copy];

    if (!v5)
    {
      v5 = +[AXSSMotionTrackingExpressionConfiguration defaultExpressionConfiguration];
    }

    v6 = +[AXSettings sharedInstance];
    assistiveTouchHeadTrackingExpressionToSensitivityMapping = [v6 assistiveTouchHeadTrackingExpressionToSensitivityMapping];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = assistiveTouchHeadTrackingExpressionToSensitivityMapping;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [v8 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
          unsignedIntegerValue = [v14 unsignedIntegerValue];
          v16 = AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression();
          if (unsignedIntegerValue)
          {
            v17 = v16;
            if ([v5 sensitivityForFacialExpression:v16]!= unsignedIntegerValue)
            {
              [v5 setSensitivity:unsignedIntegerValue forFacialExpression:v17];
              v11 = 1;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);

      if (v11)
      {
        [(AXSSMotionTracker *)self->_motionTracker setExpressionConfiguration:v5];
      }
    }

    else
    {
    }
  }

  else
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012811C(v5);
    }
  }
}

- (void)_updateMotionTrackerActionConfig
{
  v4 = +[AXSettings sharedInstance];
  assistiveTouchHeadTrackingExpressionToActionMapping = [v4 assistiveTouchHeadTrackingExpressionToActionMapping];
  [(HNDDeviceManager *)self setHeadTrackingExpressionToActionMapping:assistiveTouchHeadTrackingExpressionToActionMapping];
}

- (void)_notifyDisplayManagerDeviceCountChanged
{
  handManager = [(HNDDeviceManager *)self handManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000AE78;
  v4[3] = &unk_1001D36C0;
  v4[4] = self;
  [handManager enumerateDisplayManagersWithBlock:v4];
}

- (void)mousePointerDevicesDidConnect:(id)connect
{
  connectCopy = connect;
  v3 = connectCopy;
  AXPerformBlockOnMainThread();
}

- (void)mousePointerDevicesDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v3 = disconnectCopy;
  AXPerformBlockOnMainThread();
}

- (CGPoint)lastSeenLookAtPoint
{
  x = self->_lastSeenLookAtPoint.x;
  y = self->_lastSeenLookAtPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (HNDHandManager)handManager
{
  WeakRetained = objc_loadWeakRetained(&self->_handManager);

  return WeakRetained;
}

- (CGPoint)delayedHeadTrackingPointForExpressions
{
  x = self->_delayedHeadTrackingPointForExpressions.x;
  y = self->_delayedHeadTrackingPointForExpressions.y;
  result.y = y;
  result.x = x;
  return result;
}

@end