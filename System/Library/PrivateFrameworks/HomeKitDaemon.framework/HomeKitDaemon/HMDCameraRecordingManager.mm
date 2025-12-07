@interface HMDCameraRecordingManager
+ (id)logCategory;
- (BOOL)supportsDeviceWithCapabilities:(id)capabilities;
- (HMDCameraProfile)camera;
- (HMDCameraRecordingManager)initWithCamera:(id)camera recordingManagementService:(id)service;
- (HMDCameraRecordingManager)initWithCamera:(id)camera recordingManagementService:(id)service workQueue:(id)queue dependencyFactory:(id)factory notificationCenter:(id)center;
- (HMDHAPAccessory)accessory;
- (NSDictionary)stateDump;
- (id)_createRecordingSessionWithGeneralConfiguration:(id)configuration;
- (id)logIdentifier;
- (id)messagePayloadForStartRecordingSessionWithTriggerType:(unint64_t)type;
- (unsigned)_closeEventReasonForRecordingSessionError:(id)error;
- (void)_clipManagerDidStartUpCloudZone;
- (void)_closeCurrentSessionsWithReason:(unsigned __int16)reason;
- (void)_closeCurrentSessionsWithReason:(unsigned __int16)reason error:(id)error;
- (void)_configureRecordingSession:(id)session withTrigger:(unint64_t)trigger;
- (void)_coordinateRecordingSessionForTrigger:(unint64_t)trigger;
- (void)_forwardRecordingSessionForTrigger:(unint64_t)trigger withLoadBalancerDecision:(id)decision deviceFilter:(id)filter sessionCoordinationLogEvent:(id)event retryAttemptNumber:(int64_t)number;
- (void)_loadBalanceRecordingSessionForTrigger:(unint64_t)trigger;
- (void)_prepareRecordingSessionForTrigger:(unint64_t)trigger reason:(id)reason;
- (void)_prepareRecordingSessionForTrigger:(unint64_t)trigger reason:(id)reason completionCallback:(id)callback;
- (void)_resetCurrentRecordingSession:(id)session;
- (void)_resetRetryContextWithReason:(id)reason;
- (void)_shutDown;
- (void)_start;
- (void)_startReadingFromBulkSendSession:(id)session;
- (void)_startRecordingSessionForTrigger:(unint64_t)trigger reason:(id)reason generalConfiguration:(id)configuration completionCallback:(id)callback;
- (void)_startSessionRetryTimer;
- (void)_submitLoadBalancingEventWithDecision:(id)decision numberOfRetries:(unint64_t)retries;
- (void)_submitRecordingSessionLogEventWithError:(id)error;
- (void)assignAccessoryConnectionInfoUsingMessagePayload:(id)payload;
- (void)bulkSendSessionReader:(id)reader didFinishWithReason:(unsigned __int16)reason;
- (void)bulkSendSessionReader:(id)reader didReadFragment:(id)fragment;
- (void)clipManagerDidStartUpCloudZone:(id)zone;
- (void)clipManagerDidStop:(id)stop;
- (void)dealloc;
- (void)handleCameraSettingsDidChangeNotification:(id)notification;
- (void)handleStartRecordingSessionRequest:(id)request;
- (void)handleStopRecordingSessionRequest:(id)request;
- (void)notificationTrigger:(id)trigger didObserveTriggerType:(unint64_t)type changeToActive:(BOOL)active;
- (void)recordingSettingsControlDidConfigure:(id)configure;
- (void)residentMeshDidUpdate:(id)update activeRecordingSessionCameraUUIDs:(id)ds;
- (void)session:(id)session didEndWithError:(id)error;
- (void)shutDown;
- (void)start;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraRecordingManager

- (HMDCameraProfile)camera
{
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (BOOL)supportsDeviceWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if ([capabilitiesCopy supportsCameraRecording] && objc_msgSend(capabilitiesCopy, "supportsFaceClassification"))
  {
    supportsCameraPackageDetection = [capabilitiesCopy supportsCameraPackageDetection];
  }

  else
  {
    supportsCameraPackageDetection = 0;
  }

  return supportsCameraPackageDetection;
}

- (void)handleCameraSettingsDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDCameraRecordingManager_handleCameraSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __71__HMDCameraRecordingManager_handleCameraSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) didShutDown])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Ignoring handleCameraSettingsDidChangeNotification: because recording manager was shut down", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v6 = [*(a1 + 32) camera];
    v7 = [v6 currentSettings];
    [v7 currentAccessMode];

    if (HMIsRecordingAllowedForCameraAccessMode())
    {
      if ([*(a1 + 32) isMotionActive])
      {
        [*(a1 + 32) _resetRetryContextWithReason:@"Settings changed to allow recording"];
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v17 = 138543362;
          v18 = v11;
          _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Motion is active and settings changed to allow recording, attempting to coordinate a recording session", &v17, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        [*(a1 + 32) _coordinateRecordingSessionForTrigger:0];
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMCameraAccessModeAsString();
        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Closing current session because current access mode is: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [*(a1 + 32) _closeCurrentSessionsWithReason:3];
    }
  }
}

- (void)session:(id)session didEndWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraRecordingManager *)self didShutDown])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Ignoring closeSession:withError: delegate callback because recording manager was shut down", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    currentRecordingSession = [(HMDCameraRecordingManager *)self currentRecordingSession];

    if (currentRecordingSession == sessionCopy)
    {
      v14 = [(HMDCameraRecordingManager *)self _closeEventReasonForRecordingSessionError:errorCopy];
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v18;
        v24 = 1024;
        v25 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Closing current session with reason: %d", &v22, 0x12u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDCameraRecordingManager *)selfCopy2 _closeCurrentSessionsWithReason:v14 error:errorCopy];
    }

    activeRecordingSessions = [(HMDCameraRecordingManager *)self activeRecordingSessions];
    [activeRecordingSessions removeObject:sessionCopy];

    cameraLoadBalancer = [(HMDCameraRecordingManager *)self cameraLoadBalancer];
    cameraUUID = [(HMDCameraRecordingManager *)self cameraUUID];
    [cameraLoadBalancer recordingDidEndForCameraWithUUID:cameraUUID];
  }
}

- (id)logIdentifier
{
  camera = [(HMDCameraRecordingManager *)self camera];
  logIdentifier = [camera logIdentifier];

  return logIdentifier;
}

- (void)bulkSendSessionReader:(id)reader didFinishWithReason:(unsigned __int16)reason
{
  reasonCopy = reason;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingManager *)self _closeCurrentSessionsWithReason:reasonCopy];
}

- (void)bulkSendSessionReader:(id)reader didReadFragment:(id)fragment
{
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingSessionLogEvent = [(HMDCameraRecordingManager *)self recordingSessionLogEvent];
  [recordingSessionLogEvent setDidReadFirstFragment:1];

  currentRecordingSession = [(HMDCameraRecordingManager *)self currentRecordingSession];
  [currentRecordingSession handleFragment:fragmentCopy];
}

- (void)_resetCurrentRecordingSession:(id)session
{
  v38 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentRecordingSession = [(HMDCameraRecordingManager *)self currentRecordingSession];

  if (currentRecordingSession)
  {
    currentRecordingSession2 = [(HMDCameraRecordingManager *)self currentRecordingSession];
    [(HMDCameraRecordingManager *)self setCurrentRecordingSession:0];
    [currentRecordingSession2 handleNoMoreFragmentsAvailable];
    identifier = [currentRecordingSession2 identifier];
    isMotionActive = [(HMDCameraRecordingManager *)self isMotionActive];
    if (sessionCopy)
    {
      v10 = isMotionActive;
      if ([sessionCopy code] != 14)
      {
        if ([sessionCopy code] == 21)
        {
          recordingSettingsControl = [(HMDCameraRecordingManager *)self recordingSettingsControl];
          [recordingSettingsControl handleAccessoryIsNotConfiguredError];
LABEL_7:

          goto LABEL_8;
        }

        if (v10)
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            [(HMDCameraRecordingManager *)selfCopy isMotionActive];
            v21 = HMFBooleanToString();
            *buf = 138544130;
            v31 = v20;
            v32 = 2112;
            v33 = identifier;
            v34 = 2112;
            v35 = v21;
            v36 = 2112;
            v37 = sessionCopy;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Retrying session with identifier: %@ because motion active: %@, error: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v17);
          sessionRetryContext = [(HMDCameraRecordingManager *)selfCopy sessionRetryContext];

          if (!sessionRetryContext)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = selfCopy;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              *buf = 138543362;
              v31 = v26;
              _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Creating session retry context", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v23);
            dependencyFactory = [(HMDCameraRecordingManager *)v24 dependencyFactory];
            workQueue2 = [(HMDCameraRecordingManager *)v24 workQueue];
            v29 = [dependencyFactory createRecordingSessionRetryContextWithWorkQueue:workQueue2];
            [(HMDCameraRecordingManager *)v24 setSessionRetryContext:v29];
          }

          [(HMDCameraRecordingManager *)selfCopy _startSessionRetryTimer];
          goto LABEL_11;
        }
      }

LABEL_8:
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        [(HMDCameraRecordingManager *)selfCopy2 isMotionActive];
        v16 = HMFBooleanToString();
        *buf = 138544130;
        v31 = v15;
        v32 = 2112;
        v33 = identifier;
        v34 = 2112;
        v35 = v16;
        v36 = 2112;
        v37 = sessionCopy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not retrying session with identifier: %@ because motion active: %@, error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
LABEL_11:

      goto LABEL_12;
    }

    recordingSettingsControl = [MEMORY[0x277CCACA8] stringWithFormat:@"Session with identifier: %@ succeeded", identifier];
    [(HMDCameraRecordingManager *)self _resetRetryContextWithReason:recordingSettingsControl];
    goto LABEL_7;
  }

LABEL_12:
}

- (void)_startSessionRetryTimer
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionRetryTimer = [(HMDCameraRecordingManager *)self sessionRetryTimer];

  if (sessionRetryTimer)
  {
    _HMFPreconditionFailure();
  }

  sessionRetryContext = [(HMDCameraRecordingManager *)self sessionRetryContext];
  [sessionRetryContext retryInterval];
  v7 = v6;

  sessionRetryContext2 = [(HMDCameraRecordingManager *)self sessionRetryContext];
  [sessionRetryContext2 computeNextRetryInterval];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v12;
    v21 = 2048;
    v22 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting session retry timer with interval: %f", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  dependencyFactory = [(HMDCameraRecordingManager *)selfCopy dependencyFactory];
  v14 = [dependencyFactory createTimerWithTimeInterval:v7];
  [(HMDCameraRecordingManager *)selfCopy setSessionRetryTimer:v14];

  sessionRetryTimer2 = [(HMDCameraRecordingManager *)selfCopy sessionRetryTimer];
  [sessionRetryTimer2 setDelegate:selfCopy];

  workQueue2 = [(HMDCameraRecordingManager *)selfCopy workQueue];
  sessionRetryTimer3 = [(HMDCameraRecordingManager *)selfCopy sessionRetryTimer];
  [sessionRetryTimer3 setDelegateQueue:workQueue2];

  sessionRetryTimer4 = [(HMDCameraRecordingManager *)selfCopy sessionRetryTimer];
  [sessionRetryTimer4 resume];
}

- (void)_resetRetryContextWithReason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionRetryContext = [(HMDCameraRecordingManager *)self sessionRetryContext];

  if (sessionRetryContext)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = reasonCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Resetting session retry context with reason: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDCameraRecordingManager *)selfCopy setSessionRetryTimer:0];
    [(HMDCameraRecordingManager *)selfCopy setSessionRetryContext:0];
  }
}

- (void)_closeCurrentSessionsWithReason:(unsigned __int16)reason error:(id)error
{
  reasonCopy = reason;
  errorCopy = error;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentBulkSendSessionReader = [(HMDCameraRecordingManager *)self currentBulkSendSessionReader];
  [(HMDCameraRecordingManager *)self setCurrentBulkSendSessionReader:0];
  [currentBulkSendSessionReader stopWithReason:reasonCopy];
  bulkSendSessionInitiator = [(HMDCameraRecordingManager *)self bulkSendSessionInitiator];
  [bulkSendSessionInitiator stop];

  if (!reasonCopy)
  {
    selfCopy2 = self;
    v9 = 0;
    goto LABEL_5;
  }

  if (errorCopy)
  {
    v9 = errorCopy;
    selfCopy2 = self;
LABEL_5:
    [(HMDCameraRecordingManager *)selfCopy2 _submitRecordingSessionLogEventWithError:v9];
    goto LABEL_7;
  }

  errorCopy = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraRecordingBulkSessionCloseReason" code:reasonCopy userInfo:0];
  [(HMDCameraRecordingManager *)self _submitRecordingSessionLogEventWithError:v11];

LABEL_7:
  [(HMDCameraRecordingManager *)self _resetCurrentRecordingSession:errorCopy];
}

- (void)_closeCurrentSessionsWithReason:(unsigned __int16)reason
{
  reasonCopy = reason;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingManager *)self _closeCurrentSessionsWithReason:reasonCopy error:0];
}

- (unsigned)_closeEventReasonForRecordingSessionError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy)
  {
    if ([errorCopy code] == 1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)timerDidFire:(id)fire
{
  v13 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionRetryTimer = [(HMDCameraRecordingManager *)self sessionRetryTimer];

  if (sessionRetryTimer == fireCopy)
  {
    [(HMDCameraRecordingManager *)self setSessionRetryTimer:0];
    if ([(HMDCameraRecordingManager *)self isMotionActive])
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting recording session after session retry timer has expired", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDCameraRecordingManager *)selfCopy _prepareRecordingSessionForTrigger:0 reason:@"Retry timer expired"];
    }
  }
}

- (void)_startReadingFromBulkSendSession:(id)session
{
  sessionCopy = session;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dependencyFactory = [(HMDCameraRecordingManager *)self dependencyFactory];
  preferences = [dependencyFactory preferences];
  v7 = [preferences preferenceForKey:@"bulkSendSessionReadTimeoutFactor"];
  numberValue = [v7 numberValue];

  integerValue = [numberValue integerValue];
  if (integerValue <= 0)
  {
    v19 = _HMFPreconditionFailureWithFormat();
    [(HMDCameraRecordingManager *)v19 _startRecordingSessionForTrigger:v20 reason:v21 generalConfiguration:v22 completionCallback:v23, v24];
  }

  else
  {
    currentRecordingSession = [(HMDCameraRecordingManager *)self currentRecordingSession];
    [currentRecordingSession configuredFragmentDuration];
    v12 = v11 * integerValue;

    dependencyFactory2 = [(HMDCameraRecordingManager *)self dependencyFactory];
    workQueue2 = [(HMDCameraRecordingManager *)self workQueue];
    logIdentifier = [(HMDCameraRecordingManager *)self logIdentifier];
    v16 = [dependencyFactory2 createBulkSendSessionReaderWithWorkQueue:workQueue2 session:sessionCopy readTimeout:logIdentifier logIdentifier:v12];
    [(HMDCameraRecordingManager *)self setCurrentBulkSendSessionReader:v16];

    currentBulkSendSessionReader = [(HMDCameraRecordingManager *)self currentBulkSendSessionReader];
    [currentBulkSendSessionReader setDelegate:self];

    currentBulkSendSessionReader2 = [(HMDCameraRecordingManager *)self currentBulkSendSessionReader];
    [currentBulkSendSessionReader2 start];
  }
}

- (void)_startRecordingSessionForTrigger:(unint64_t)trigger reason:(id)reason generalConfiguration:(id)configuration completionCallback:(id)callback
{
  v57 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  configurationCopy = configuration;
  callbackCopy = callback;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v54 = v17;
    v55 = 2112;
    v56 = reasonCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting recording session with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  sessionRetryTimer = [(HMDCameraRecordingManager *)selfCopy sessionRetryTimer];

  if (sessionRetryTimer)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      sessionRetryTimer2 = [(HMDCameraRecordingManager *)v20 sessionRetryTimer];
      [sessionRetryTimer2 timeInterval];
      *buf = 138543618;
      v54 = v22;
      v55 = 2048;
      v56 = v24;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Waiting for retry timer with duration: %f to expire", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    callbackCopy[2](callbackCopy, 0);
    goto LABEL_16;
  }

  cameraLoadBalancer = [(HMDCameraRecordingManager *)selfCopy cameraLoadBalancer];
  cameraUUID = [(HMDCameraRecordingManager *)selfCopy cameraUUID];
  v27 = [cameraLoadBalancer isReadyToRecordForCameraWithUUID:cameraUUID];

  if ((v27 & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to start recording session, no backing store available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v33 = MEMORY[0x277CCA9B8];
    v34 = 3302;
    goto LABEL_15;
  }

  currentBulkSendSessionReader = [(HMDCameraRecordingManager *)selfCopy currentBulkSendSessionReader];

  if (currentBulkSendSessionReader)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@A bulk send session is already opened", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = MEMORY[0x277CCA9B8];
    v34 = 3303;
LABEL_15:
    v39 = [v33 hmInternalErrorWithCode:v34];
    (callbackCopy)[2](callbackCopy, v39);

    goto LABEL_16;
  }

  bulkSendSessionInitiator = [(HMDCameraRecordingManager *)selfCopy bulkSendSessionInitiator];
  isSessionOpenInProgress = [bulkSendSessionInitiator isSessionOpenInProgress];

  v42 = objc_autoreleasePoolPush();
  v43 = selfCopy;
  v44 = HMFGetOSLogHandle();
  v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
  if (isSessionOpenInProgress)
  {
    if (v45)
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v46;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@A bulk send session open is already in progress", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
    v33 = MEMORY[0x277CCA9B8];
    v34 = 3304;
    goto LABEL_15;
  }

  if (v45)
  {
    v47 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v47;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Opening new bulk send session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  bulkSendSessionInitiator2 = [(HMDCameraRecordingManager *)v43 bulkSendSessionInitiator];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __109__HMDCameraRecordingManager__startRecordingSessionForTrigger_reason_generalConfiguration_completionCallback___block_invoke;
  v49[3] = &unk_27866DF38;
  v49[4] = v43;
  v51 = callbackCopy;
  v50 = configurationCopy;
  triggerCopy = trigger;
  [bulkSendSessionInitiator2 openNewSessionWithCallback:v49];

LABEL_16:
}

void __109__HMDCameraRecordingManager__startRecordingSessionForTrigger_reason_generalConfiguration_completionCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v5 session];
      v27 = 138543618;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Opened bulk send session: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [*(a1 + 32) _createRecordingSessionWithGeneralConfiguration:*(a1 + 40)];
    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Created recording session: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) setCurrentRecordingSession:v14];
      v19 = [*(a1 + 32) activeRecordingSessions];
      [v19 addObject:v14];

      [*(a1 + 32) _configureRecordingSession:v14 withTrigger:*(a1 + 56)];
      v20 = *(a1 + 32);
      v21 = [v5 session];
      [v20 _startReadingFromBulkSendSession:v21];

      v22 = [*(a1 + 32) cameraLoadBalancer];
      v23 = [*(a1 + 32) cameraUUID];
      [v22 recordingDidStartForCameraWithUUID:v23];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v25 = *(a1 + 48);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      (*(v25 + 16))(v25, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to open bulk send session: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_prepareRecordingSessionForTrigger:(unint64_t)trigger reason:(id)reason completionCallback:(id)callback
{
  v37 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  callbackCopy = callback;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v13;
    v35 = 2112;
    v36 = reasonCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Configuring recording session with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [HMDCameraRecordingSessionLogEvent alloc];
  accessory = [(HMDCameraRecordingManager *)selfCopy accessory];
  identifier = [accessory identifier];
  v17 = [(HMDCameraRecordingSessionLogEvent *)v14 initWithAccessoryIdentifier:identifier];
  [(HMDCameraRecordingManager *)selfCopy setRecordingSessionLogEvent:v17];

  sessionRetryContext = [(HMDCameraRecordingManager *)selfCopy sessionRetryContext];

  if (sessionRetryContext)
  {
    sessionRetryContext2 = [(HMDCameraRecordingManager *)selfCopy sessionRetryContext];
    retryCount = [sessionRetryContext2 retryCount];
    recordingSessionLogEvent = [(HMDCameraRecordingManager *)selfCopy recordingSessionLogEvent];
    [recordingSessionLogEvent setRetryCount:retryCount];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__HMDCameraRecordingManager__prepareRecordingSessionForTrigger_reason_completionCallback___block_invoke;
  aBlock[3] = &unk_278689A68;
  aBlock[4] = selfCopy;
  v32 = callbackCopy;
  v22 = callbackCopy;
  v23 = _Block_copy(aBlock);
  recordingSettingsControl = [(HMDCameraRecordingManager *)selfCopy recordingSettingsControl];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __90__HMDCameraRecordingManager__prepareRecordingSessionForTrigger_reason_completionCallback___block_invoke_2;
  v27[3] = &unk_27866DF10;
  v29 = v23;
  triggerCopy = trigger;
  v27[4] = selfCopy;
  v28 = reasonCopy;
  v25 = reasonCopy;
  v26 = v23;
  [recordingSettingsControl configureCameraRecordingSettingsWithCompletion:v27];
}

void __90__HMDCameraRecordingManager__prepareRecordingSessionForTrigger_reason_completionCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) _submitRecordingSessionLogEventWithError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void __90__HMDCameraRecordingManager__prepareRecordingSessionForTrigger_reason_completionCallback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) _startRecordingSessionForTrigger:*(a1 + 56) reason:*(a1 + 40) generalConfiguration:v5 completionCallback:*(a1 + 48)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure camera recording settings: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_prepareRecordingSessionForTrigger:(unint64_t)trigger reason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingManager *)self _prepareRecordingSessionForTrigger:trigger reason:reasonCopy completionCallback:&__block_literal_global_1750];
}

- (void)_submitRecordingSessionLogEventWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  recordingSessionLogEvent = [(HMDCameraRecordingManager *)self recordingSessionLogEvent];
  if (recordingSessionLogEvent)
  {
    logEventSubmitter = [(HMDCameraRecordingManager *)self logEventSubmitter];
    [logEventSubmitter submitLogEvent:recordingSessionLogEvent error:errorCopy];

    [(HMDCameraRecordingManager *)self setRecordingSessionLogEvent:0];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@There is no recording session log event to submit.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)handleStopRecordingSessionRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [requestCopy shortDescription];
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to stop recording session: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  currentRecordingSession = [(HMDCameraRecordingManager *)selfCopy currentRecordingSession];

  if (currentRecordingSession)
  {
    [(HMDCameraRecordingManager *)selfCopy _closeCurrentSessionsWithReason:0];
    [requestCopy respondWithSuccess];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Session not in progress", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    [requestCopy respondWithError:v16];
  }
}

- (void)handleStartRecordingSessionRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [requestCopy shortDescription];
    *buf = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to handle recording session: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  messagePayload = [requestCopy messagePayload];
  [(HMDCameraRecordingManager *)selfCopy assignAccessoryConnectionInfoUsingMessagePayload:messagePayload];

  messagePayload2 = [requestCopy messagePayload];
  v13 = [messagePayload2 hmf_numberForKey:@"notificationTriggerType"];

  if (v13)
  {
    [(HMDCameraRecordingManager *)selfCopy _resetRetryContextWithReason:@"Received recording session trigger from primary resident"];
    integerValue = [v13 integerValue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__HMDCameraRecordingManager_handleStartRecordingSessionRequest___block_invoke;
    v21[3] = &unk_27868A250;
    v22 = requestCopy;
    [(HMDCameraRecordingManager *)selfCopy _prepareRecordingSessionForTrigger:integerValue reason:@"request from primary resident" completionCallback:v21];
    v15 = v22;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      messagePayload3 = [requestCopy messagePayload];
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = messagePayload3;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find trigger in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [requestCopy respondWithError:v15];
  }
}

void __64__HMDCameraRecordingManager_handleStartRecordingSessionRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 responseHandler];
  v4[2](v4, v3, 0);
}

- (void)assignAccessoryConnectionInfoUsingMessagePayload:(id)payload
{
  v27 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_dictionaryForKey:@"HMDCameraRecordingAccessorySocketInfo"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CFEC48]) initWithDictionary:v5];
    if (v6)
    {
      v7 = [payloadCopy hmf_dictionaryForKey:@"HMDCameraRecordingAccessoryBonjourDeviceInfo"];
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      v11 = v10;
      if (v7)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v12;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Assigning connection info to accessory", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        accessory = [(HMDCameraRecordingManager *)selfCopy accessory];
        [accessory assignBonjourDeviceInfo:v7 socketInfo:v6];
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v22 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v22;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@No bonjour device info received for start recording session request", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HAPSocketInfo for start recording request with dictionary: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@No socket info received for start recording session request", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)_configureRecordingSession:(id)session withTrigger:(unint64_t)trigger
{
  sessionCopy = session;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [sessionCopy setDelegate:self];
  [sessionCopy configure];
  timelineManager = [sessionCopy timelineManager];
  v8 = [timelineManager creationDateForFragmentAtTimeOffset:0.0];

  if (trigger != 2)
  {
    if (trigger == 1)
    {
      timelineManager2 = [sessionCopy timelineManager];
      [timelineManager2 handleDoorbellDidActivateAtDate:v8];
      goto LABEL_6;
    }

    if (trigger)
    {
      goto LABEL_7;
    }
  }

  timelineManager3 = [sessionCopy timelineManager];
  [timelineManager3 handleMotionActive:1 didChangeAtDate:v8];

  timelineManager4 = [sessionCopy timelineManager];
  isMotionActive = [(HMDCameraRecordingManager *)self isMotionActive];
  date = [MEMORY[0x277CBEAA8] date];
  [timelineManager4 handleMotionActive:isMotionActive didChangeAtDate:date];

  timelineManager2 = [(HMDCameraRecordingManager *)self currentRecordingSession];
  [timelineManager2 handleMotionActive:{-[HMDCameraRecordingManager isMotionActive](self, "isMotionActive")}];
LABEL_6:

LABEL_7:
}

- (id)_createRecordingSessionWithGeneralConfiguration:(id)configuration
{
  v46 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  camera = [(HMDCameraRecordingManager *)self camera];
  hapAccessory = [camera hapAccessory];
  home = [hapAccessory home];
  clipManager = [camera clipManager];
  localZone = [clipManager localZone];

  if (camera && hapAccessory && home && localZone)
  {
    mediaContainerConfigurations = [configurationCopy mediaContainerConfigurations];
    firstObject = [mediaContainerConfigurations firstObject];
    parameters = [firstObject parameters];
    [parameters fragmentLength];
    v14 = v35 = home;
    [v14 doubleValue];
    v16 = v15 / 1000.0;

    prebufferLength = [configurationCopy prebufferLength];
    [prebufferLength doubleValue];
    v19 = v18;

    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v19 / -1000.0];
    dependencyFactory = [(HMDCameraRecordingManager *)self dependencyFactory];
    workQueue2 = [(HMDCameraRecordingManager *)self workQueue];
    uniqueIdentifier = [camera uniqueIdentifier];
    [uniqueIdentifier UUIDString];
    v24 = v34 = configurationCopy;
    v25 = [dependencyFactory createTimelineManagerWithWorkQueue:workQueue2 fragmentDuration:v20 fragmentCreationReferenceDate:v24 logIdentifier:v16];

    home = v35;
    dependencyFactory2 = [(HMDCameraRecordingManager *)self dependencyFactory];
    workQueue3 = [(HMDCameraRecordingManager *)self workQueue];
    v28 = [dependencyFactory2 createRecordingSessionWithWorkQueue:workQueue3 camera:camera hapAccessory:hapAccessory home:v35 localZone:localZone configuredFragmentDuration:v25 timelineManager:v16];

    configurationCopy = v34;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138544386;
      v37 = v32;
      v38 = 2112;
      v39 = camera;
      v40 = 2112;
      v41 = hapAccessory;
      v42 = 2112;
      v43 = home;
      v44 = 2112;
      v45 = localZone;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cannot start recording session because camera=%@ accessory=%@ home=%@ localZone=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v29);
    v28 = 0;
  }

  return v28;
}

- (void)_submitLoadBalancingEventWithDecision:(id)decision numberOfRetries:(unint64_t)retries
{
  decisionCopy = decision;
  analysisNode = [decisionCopy analysisNode];
  v30 = [HMDCameraRecordingLoadBalancerLogEvent alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(decisionCopy, "numberOfAvailableDevices")}];
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:retries];
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(decisionCopy, "totalNumberOfJobSlots")}];
  v8 = MEMORY[0x277CCABB0];
  remainingNumberOfJobSlots = [decisionCopy remainingNumberOfJobSlots];

  v10 = [v8 numberWithInteger:remainingNumberOfJobSlots];
  residentDevice = [analysisNode residentDevice];
  device = [residentDevice device];
  productInfo = [device productInfo];
  [productInfo productClass];
  v33 = HMFProductClassToString();
  v12 = MEMORY[0x277CCABB0];
  metrics = [analysisNode metrics];
  numberOfActiveRecordingSessions = [metrics numberOfActiveRecordingSessions];
  metrics2 = [analysisNode metrics];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(metrics2, "numberOfPendingRecordingSessions") + numberOfActiveRecordingSessions}];
  v15 = MEMORY[0x277CCABB0];
  metrics3 = [analysisNode metrics];
  v17 = [v15 numberWithInteger:{objc_msgSend(metrics3, "systemResourceUsageLevel")}];
  metrics4 = [analysisNode metrics];
  maxNumberOfAnalyzers = [metrics4 maxNumberOfAnalyzers];
  metrics5 = [analysisNode metrics];
  v32 = v7;
  if ([metrics5 hasActiveSessionWithCamera])
  {
    LOBYTE(v25) = 1;
    v21 = [(HMDCameraRecordingLoadBalancerLogEvent *)v30 initWithNumberOfResidents:v7 numberOfRetries:v35 totalNumberOfJobSlots:v34 remainingNumberOfJobSlots:v10 selectedResidentDeviceType:v33 selectedResidentNumberOfActiveStreams:v14 selectedResidentSystemResourceUsageLevel:v17 selectedResidentJobSlots:maxNumberOfAnalyzers selectedResidentPartialJobSlots:0 selectedResidentHasActiveSessionWithCamera:v25];
  }

  else
  {
    [analysisNode metrics];
    v26 = residentDevice;
    v23 = v22 = self;
    LOBYTE(v25) = [v23 hasPendingSessionWithCamera];
    v21 = [(HMDCameraRecordingLoadBalancerLogEvent *)v30 initWithNumberOfResidents:v7 numberOfRetries:v35 totalNumberOfJobSlots:v34 remainingNumberOfJobSlots:v10 selectedResidentDeviceType:v33 selectedResidentNumberOfActiveStreams:v14 selectedResidentSystemResourceUsageLevel:v17 selectedResidentJobSlots:maxNumberOfAnalyzers selectedResidentPartialJobSlots:0 selectedResidentHasActiveSessionWithCamera:v25];

    self = v22;
    residentDevice = v26;
  }

  logEventSubmitter = [(HMDCameraRecordingManager *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v21];
}

- (void)_forwardRecordingSessionForTrigger:(unint64_t)trigger withLoadBalancerDecision:(id)decision deviceFilter:(id)filter sessionCoordinationLogEvent:(id)event retryAttemptNumber:(int64_t)number
{
  v57 = *MEMORY[0x277D85DE8];
  decisionCopy = decision;
  filterCopy = filter;
  eventCopy = event;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (number >= 4)
  {
    _HMFPreconditionFailure();
  }

  [eventCopy setRetryCount:number];
  analysisNode = [decisionCopy analysisNode];
  residentDevice = [analysisNode residentDevice];
  device = [residentDevice device];
  triggerCopy = trigger;
  if ([device isCurrentDevice])
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@We are the best device for recording session, starting locally", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [eventCopy setUsingRemoteDeviceAnalysisNode:0];
    cameraLoadBalancer = [(HMDCameraRecordingManager *)selfCopy cameraLoadBalancer];
    [cameraLoadBalancer handleProcessedDecision:decisionCopy];

    [(HMDCameraRecordingManager *)selfCopy _prepareRecordingSessionForTrigger:triggerCopy reason:@"current device picked itself"];
    [(HMDCameraRecordingManager *)selfCopy _submitLoadBalancingEventWithDecision:decisionCopy numberOfRetries:number];
    logEventSubmitter = [(HMDCameraRecordingManager *)selfCopy logEventSubmitter];
    [(HMDRemoteDeviceMessageDestination *)logEventSubmitter submitLogEvent:eventCopy];
    v23 = residentDevice;
  }

  else
  {
    v38 = filterCopy;
    [eventCopy setUsingRemoteDeviceAnalysisNode:1];
    v24 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDCameraRecordingManager *)self messageTargetUUID];
    logEventSubmitter = [(HMDRemoteDeviceMessageDestination *)v24 initWithTarget:messageTargetUUID device:device];

    v37 = [(HMDCameraRecordingManager *)self messagePayloadForStartRecordingSessionWithTriggerType:trigger];
    v39 = [[HMDRemoteMessage alloc] initWithName:@"kStartRecordingSessionRequestKey" qualityOfService:25 destination:logEventSubmitter payload:v37 type:0 timeout:1 secure:120.0];
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      [device shortDescription];
      v30 = v36 = decisionCopy;
      shortDescription = [(HMFObject *)v39 shortDescription];
      *buf = 138543874;
      v52 = v29;
      v53 = 2114;
      v54 = v30;
      v55 = 2114;
      v56 = shortDescription;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Forwarding recording session to %{public}@ via message: %{public}@", buf, 0x20u);

      decisionCopy = v36;
    }

    objc_autoreleasePoolPop(v26);
    dependencyFactory = [(HMDCameraRecordingManager *)selfCopy2 dependencyFactory];
    logIdentifier = [(HMDCameraRecordingManager *)selfCopy2 logIdentifier];
    v34 = [dependencyFactory createLoadBalancingAttemptWithLocalResponseTimeout:logIdentifier logIdentifier:2.0];

    msgDispatcher = [(HMDCameraRecordingManager *)selfCopy2 msgDispatcher];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke;
    v43[3] = &unk_27866DEE8;
    v43[4] = selfCopy2;
    v44 = decisionCopy;
    v45 = device;
    v46 = eventCopy;
    numberCopy = number;
    v23 = residentDevice;
    v47 = residentDevice;
    filterCopy = v38;
    v48 = v38;
    v50 = triggerCopy;
    [v34 startWithMessage:v39 messageDispatcher:msgDispatcher completion:v43];
  }
}

void __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) cameraLoadBalancer];
  [v4 handleProcessedDecision:*(a1 + 40)];

  if (v3)
  {
    if ([HMDCameraRecordingSessionLogEvent isRecordingSessionAlreadyInProgressError:v3])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [*(a1 + 48) shortDescription];
        *buf = 138543874;
        v75 = v8;
        v76 = 2114;
        v77 = v9;
        v78 = 2112;
        v79 = v3;
        v10 = "%{public}@Received error that a session is already in progress on device %{public}@: %@";
LABEL_11:
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, v10, buf, 0x20u);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ([v3 code] == 14)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [*(a1 + 48) shortDescription];
        *buf = 138543874;
        v75 = v8;
        v76 = 2114;
        v77 = v9;
        v78 = 2112;
        v79 = v3;
        v10 = "%{public}@Received error that accessory is already in a recording session from device %{public}@: %@";
        goto LABEL_11;
      }

LABEL_12:

      objc_autoreleasePoolPop(v5);
      v18 = [*(a1 + 32) logEventSubmitter];
      [v18 submitLogEvent:*(a1 + 56) error:v3];
LABEL_13:

      goto LABEL_14;
    }

    v19 = [v3 code];
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19 == 21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [*(a1 + 48) shortDescription];
        *buf = 138543874;
        v75 = v24;
        v76 = 2114;
        v77 = v25;
        v78 = 2112;
        v79 = v3;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Received error that accessory is not configured from device %{public}@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v26 = [*(a1 + 32) logEventSubmitter];
      [v26 submitLogEvent:*(a1 + 56) error:v3];

      v18 = [*(a1 + 32) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_81;
      block[3] = &unk_27868A728;
      block[4] = *(a1 + 32);
      dispatch_async(v18, block);
      goto LABEL_13;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [*(a1 + 48) shortDescription];
      *buf = 138543874;
      v75 = v27;
      v76 = 2114;
      v77 = v28;
      v78 = 2112;
      v79 = v3;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to forward recording session to device %{public}@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v29 = [*(a1 + 32) logEventSubmitter];
    [v29 submitLogEvent:*(a1 + 56) error:v3];

    v30 = [*(a1 + 32) cameraLoadBalancer];
    [v30 handleRecordingSessionForwardingFailureForDecision:*(a1 + 40)];

    v31 = [HMDCameraRecordingSessionCoordinationLogEvent alloc];
    [*(a1 + 56) startTime];
    v18 = [(HMMLogEvent *)v31 initWithStartTime:?];
    v32 = [*(a1 + 32) camera];
    if (!v32)
    {
      v44 = objc_autoreleasePoolPush();
      v45 = *(a1 + 32);
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v75 = v47;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Camera reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v44);
      v48 = [*(a1 + 32) logEventSubmitter];
      v49 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v48 submitLogEvent:v18 error:v49];

      goto LABEL_36;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_82;
    aBlock[3] = &unk_27866DE98;
    v71 = *(a1 + 64);
    v72 = *(a1 + 72);
    v33 = _Block_copy(aBlock);
    v34 = [*(a1 + 32) cameraLoadBalancer];
    v35 = [v34 makeLoadBalancingDecisionForCamera:v32 deviceFilter:v33];

    if (*(a1 + 80) < 3)
    {
      v50 = [v35 analysisNode];

      if (v50)
      {
        v51 = [*(a1 + 32) workQueue];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_83;
        v64[3] = &unk_27866DEC0;
        v52 = *(a1 + 88);
        v64[4] = *(a1 + 32);
        v68 = v52;
        v65 = v35;
        v67 = v33;
        v53 = v18;
        v54 = *(a1 + 80);
        v66 = v53;
        v69 = v54;
        dispatch_async(v51, v64);

LABEL_35:
        v48 = v71;
LABEL_36:

        goto LABEL_13;
      }

      v63 = v35;
      v55 = objc_autoreleasePoolPush();
      v56 = *(a1 + 32);
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = HMFGetLogIdentifier();
        [*(a1 + 32) accessory];
        v59 = v62 = v18;
        *buf = 138543618;
        v75 = v58;
        v76 = 2112;
        v77 = v59;
        _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Exhausted devices, failed to start recording session for accessory %@", buf, 0x16u);

        v18 = v62;
      }

      objc_autoreleasePoolPop(v55);
      v41 = [*(a1 + 32) logEventSubmitter];
      v42 = MEMORY[0x277CCA9B8];
      v43 = 3301;
    }

    else
    {
      v63 = v35;
      v36 = objc_autoreleasePoolPush();
      v37 = *(a1 + 32);
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v39 = v61 = v18;
        v40 = [*(a1 + 32) accessory];
        *buf = 138543618;
        v75 = v39;
        v76 = 2112;
        v77 = v40;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Reached retry limit, failed to start recording session for accessory %@", buf, 0x16u);

        v18 = v61;
      }

      objc_autoreleasePoolPop(v36);
      v41 = [*(a1 + 32) logEventSubmitter];
      v42 = MEMORY[0x277CCA9B8];
      v43 = 3300;
    }

    v60 = [v42 hmInternalErrorWithCode:v43];
    [v41 submitLogEvent:v18 error:v60];

    v35 = v63;
    goto LABEL_35;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 48) shortDescription];
    *buf = 138543618;
    v75 = v14;
    v76 = 2114;
    v77 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully forwarded recording session to %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [*(a1 + 32) logEventSubmitter];
  [v16 submitLogEvent:*(a1 + 56)];

  v17 = [*(a1 + 32) cameraLoadBalancer];
  [v17 handleRecordingSessionForwardingSuccessForDecision:*(a1 + 40)];

  [*(a1 + 32) _submitLoadBalancingEventWithDecision:*(a1 + 40) numberOfRetries:*(a1 + 80)];
LABEL_14:
}

void __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_81(uint64_t a1)
{
  v1 = [*(a1 + 32) recordingSettingsControl];
  [v1 handleAccessoryIsNotConfiguredError];
}

uint64_t __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  return v4;
}

- (id)messagePayloadForStartRecordingSessionWithTriggerType:(unint64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v5 setObject:v6 forKeyedSubscript:@"notificationTriggerType"];

  accessory = [(HMDCameraRecordingManager *)self accessory];
  socketInfo = [accessory socketInfo];
  if (socketInfo)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      dictionaryRepresentation = [socketInfo dictionaryRepresentation];
      v22 = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = dictionaryRepresentation;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Adding socket info to outgoing start recording message payload: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    dictionaryRepresentation2 = [socketInfo dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation2 forKeyedSubscript:@"HMDCameraRecordingAccessorySocketInfo"];
  }

  bonjourDeviceInfo = [accessory bonjourDeviceInfo];
  if (bonjourDeviceInfo)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = bonjourDeviceInfo;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Adding bonjour device info to outgoing start recording message: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [v5 setObject:bonjourDeviceInfo forKeyedSubscript:@"HMDCameraRecordingAccessoryBonjourDeviceInfo"];
  }

  v20 = objc_msgSend_copy(v5);

  return v20;
}

- (void)_loadBalanceRecordingSessionForTrigger:(unint64_t)trigger
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(HMDCameraRecordingSessionCoordinationLogEvent);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke;
  aBlock[3] = &unk_2786850E0;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  camera = [(HMDCameraRecordingManager *)self camera];
  if (!camera)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      cameraUUID = [(HMDCameraRecordingManager *)selfCopy cameraUUID];
      *buf = 138543618;
      v55 = v24;
      v56 = 2112;
      v57 = cameraUUID;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Camera object with UUID:%@ is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    logEventSubmitter = [(HMDCameraRecordingManager *)selfCopy logEventSubmitter];
    cameraLoadBalancer2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [logEventSubmitter submitLogEvent:v5 error:cameraLoadBalancer2];
    goto LABEL_19;
  }

  cameraLoadBalancer = [(HMDCameraRecordingManager *)self cameraLoadBalancer];
  logEventSubmitter = [cameraLoadBalancer makeLoadBalancingDecisionForCamera:camera deviceFilter:v6];

  if (trigger == 2)
  {
    deviceWithSessionToHandOff = [logEventSubmitter deviceWithSessionToHandOff];

    if (!deviceWithSessionToHandOff)
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v55 = v38;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Handoff condition not met, ignoring trigger", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      logEventSubmitter2 = [(HMDCameraRecordingManager *)selfCopy2 logEventSubmitter];
      v40 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1057];
      [logEventSubmitter2 submitLogEvent:v5 error:v40];

      cameraLoadBalancer2 = [(HMDCameraRecordingManager *)selfCopy2 cameraLoadBalancer];
      [cameraLoadBalancer2 handleProcessedDecision:logEventSubmitter];
LABEL_19:

      goto LABEL_20;
    }
  }

  deviceWithSessionToHandOff2 = [logEventSubmitter deviceWithSessionToHandOff];

  if (deviceWithSessionToHandOff2)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v47 = v5;
      [logEventSubmitter deviceWithSessionToHandOff];
      v15 = v46 = v6;
      identifier = [v15 identifier];
      deviceUUID = [logEventSubmitter deviceUUID];
      *buf = 138543874;
      v55 = v14;
      v56 = 2112;
      v57 = identifier;
      v58 = 2112;
      v59 = deviceUUID;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handing off recording session from resident device: %@ to: %@", buf, 0x20u);

      v6 = v46;
      v5 = v47;
    }

    objc_autoreleasePoolPop(v12);
    deviceWithSessionToHandOff3 = [logEventSubmitter deviceWithSessionToHandOff];
    isCurrentDevice = [deviceWithSessionToHandOff3 isCurrentDevice];

    if (!isCurrentDevice)
    {
      v28 = [HMDRemoteDeviceMessageDestination alloc];
      messageTargetUUID = [(HMDCameraRecordingManager *)self messageTargetUUID];
      deviceWithSessionToHandOff4 = [logEventSubmitter deviceWithSessionToHandOff];
      v31 = [(HMDRemoteDeviceMessageDestination *)v28 initWithTarget:messageTargetUUID device:deviceWithSessionToHandOff4];

      v32 = [HMDRemoteMessage alloc];
      v33 = [(HMDRemoteMessage *)v32 initWithName:@"kStopRecordingSessionRequestKey" qualityOfService:-1 destination:v31 payload:MEMORY[0x277CBEC10] type:0 timeout:1 secure:120.0];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke_67;
      v48[3] = &unk_27866F070;
      v48[4] = self;
      triggerCopy = trigger;
      logEventSubmitter = logEventSubmitter;
      v49 = logEventSubmitter;
      v51 = v6;
      v50 = v5;
      [(HMDRemoteMessage *)v33 setResponseHandler:v48];
      msgDispatcher = [(HMDCameraRecordingManager *)self msgDispatcher];
      [msgDispatcher sendMessage:v33];

      goto LABEL_20;
    }

    currentRecordingSession = [(HMDCameraRecordingManager *)self currentRecordingSession];

    if (currentRecordingSession)
    {
      [(HMDCameraRecordingManager *)self _closeCurrentSessionsWithReason:0];
    }

    goto LABEL_14;
  }

  analysisNode = [logEventSubmitter analysisNode];

  if (analysisNode)
  {
LABEL_14:
    [(HMDCameraRecordingManager *)self _forwardRecordingSessionForTrigger:trigger withLoadBalancerDecision:logEventSubmitter deviceFilter:v6 sessionCoordinationLogEvent:v5 retryAttemptNumber:0];
    goto LABEL_20;
  }

  v41 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v44;
    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@No device found for recording session, optimistically trying self", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v41);
  logEventSubmitter3 = [(HMDCameraRecordingManager *)selfCopy3 logEventSubmitter];
  [logEventSubmitter3 submitLogEvent:v5];

  [(HMDCameraRecordingManager *)selfCopy3 _prepareRecordingSessionForTrigger:trigger reason:@"primary resident picked itself"];
LABEL_20:
}

uint64_t __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) camera];
  v5 = [v4 currentSettings];
  v6 = [v5 activityZones];
  if ([v6 count])
  {
    v7 = [v3 capabilities];
    v8 = [v7 supportsCameraActivityZones];

    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v9 = [v4 hapAccessory];
  v10 = [v9 home];
  v11 = [v10 personManagerSettings];
  if ([v11 isFaceClassificationEnabled])
  {
    v12 = [v3 capabilities];
    v13 = [v12 supportsFaceClassification];

    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v14 = [v4 currentSettings];
  if (([v14 recordingEventTriggers] & 0x10) != 0)
  {
    v15 = [v3 capabilities];
    v16 = [v15 supportsCameraPackageDetection];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v17 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v18 = [v17 preferenceForKey:@"HMDCameraRecordingManagerExcludePrimaryResident"];
  v19 = [v18 BOOLValue];

  if (!v19 || ![v3 isCurrentDevice] || (objc_msgSend(*(a1 + 32), "accessory"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "home"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isCurrentDeviceConfirmedPrimaryResident"), v21, v20, !v22))
  {
    v29 = 1;
    goto LABEL_20;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = *(a1 + 32);
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v3 device];
    v28 = [v27 shortDescription];
    v31 = 138543618;
    v32 = v26;
    v33 = 2112;
    v34 = v28;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Excluding current device from camera recording load balancing because it is the primary resident: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
LABEL_18:
  v29 = 0;
LABEL_20:

  return v29;
}

void __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      v12 = "%{public}@Recording session stop failed with error: %@, forwarding new session anyway";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v11;
    v12 = "%{public}@Successfully stopped recording session for handoff, forwarding new session";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke_68;
  block[3] = &unk_278683AD8;
  v24 = *(a1 + 64);
  v20 = *(a1 + 32);
  v17 = *(&v20 + 1);
  v18 = *(a1 + 56);
  *&v19 = *(a1 + 48);
  *(&v19 + 1) = v18;
  v22 = v20;
  v23 = v19;
  dispatch_async(v16, block);
}

- (void)_coordinateRecordingSessionForTrigger:(unint64_t)trigger
{
  v42 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  camera = [(HMDCameraRecordingManager *)self camera];
  v7 = camera;
  if (camera)
  {
    hapAccessory = [camera hapAccessory];
    v9 = hapAccessory;
    if (!hapAccessory)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot coordinate recording session because accessory reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      goto LABEL_21;
    }

    home = [hapAccessory home];
    v11 = home;
    if (home)
    {
      if ([home isCurrentDeviceConfirmedPrimaryResident])
      {
        currentSettings = [v7 currentSettings];
        [currentSettings currentAccessMode];

        if (HMIsRecordingAllowedForCameraAccessMode())
        {
          recordingSettingsControl = [(HMDCameraRecordingManager *)self recordingSettingsControl];
          isCameraConfiguredForRecording = [recordingSettingsControl isCameraConfiguredForRecording];

          if (isCameraConfiguredForRecording)
          {
            [(HMDCameraRecordingManager *)self _loadBalanceRecordingSessionForTrigger:trigger];
          }

          else
          {
            v32 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v34 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = HMFGetLogIdentifier();
              *buf = 138543362;
              v39 = v35;
              _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Synchronizing settings with camera because settings have recording enabled, but camera is not configured for recording", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v32);
            cameraProfileSettingsManager = [v9 cameraProfileSettingsManager];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __67__HMDCameraRecordingManager__coordinateRecordingSessionForTrigger___block_invoke;
            v37[3] = &unk_27868A188;
            v37[4] = selfCopy2;
            v37[5] = trigger;
            [cameraProfileSettingsManager synchronizeSettingsToCameraWithCompletion:v37];
          }

          goto LABEL_20;
        }

        v23 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          v31 = HMCameraAccessModeAsString();
          *buf = 138543618;
          v39 = v30;
          v40 = 2112;
          v41 = v31;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Current access mode does not allow recording: %@", buf, 0x16u);
        }

LABEL_19:

        objc_autoreleasePoolPop(v23);
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v23 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v26;
      v27 = "%{public}@Current device is not the primary resident, not coordinating recording session";
      v28 = v25;
      v29 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v26;
      v27 = "%{public}@Cannot coordinate recording session because home reference is nil";
      v28 = v25;
      v29 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_229538000, v28, v29, v27, buf, 0xCu);

    goto LABEL_19;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot coordinate recording session because camera reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_22:
}

void __67__HMDCameraRecordingManager__coordinateRecordingSessionForTrigger___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to synchronize settings with camera while coordinating recording session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [*(a1 + 32) workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__HMDCameraRecordingManager__coordinateRecordingSessionForTrigger___block_invoke_60;
    v10[3] = &unk_27868A0D0;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v10[5] = v9;
    dispatch_async(v8, v10);
  }
}

uint64_t __67__HMDCameraRecordingManager__coordinateRecordingSessionForTrigger___block_invoke_60(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Successfully synchronized settings with camera while coordinating recording session", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _loadBalanceRecordingSessionForTrigger:*(a1 + 40)];
}

- (void)_clipManagerDidStartUpCloudZone
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraRecordingManager *)self didShutDown])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Ignoring clipManagerDidStartUpCloudZone because recording manager was shut down", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    cameraLoadBalancer = [(HMDCameraRecordingManager *)self cameraLoadBalancer];
    cameraUUID = [(HMDCameraRecordingManager *)self cameraUUID];
    [cameraLoadBalancer setReadyToRecord:1 forCameraWithUUID:cameraUUID];

    [(HMDCameraRecordingManager *)self _resetRetryContextWithReason:@"Clip manager started up cloud zone"];
    if ([(HMDCameraRecordingManager *)self isMotionActive])
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Clip manager started up cloud zone and motion is active, attempting to coordinate a recording session", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDCameraRecordingManager *)selfCopy2 _coordinateRecordingSessionForTrigger:0];
    }
  }
}

- (void)_shutDown
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(HMDCameraRecordingManager *)self didShutDown])
  {
    _HMFPreconditionFailure();
  }

  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Shutting down", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraRecordingManager *)selfCopy setDidShutDown:1];
  cameraLoadBalancer = [(HMDCameraRecordingManager *)selfCopy cameraLoadBalancer];
  cameraUUID = [(HMDCameraRecordingManager *)selfCopy cameraUUID];
  [cameraLoadBalancer setReadyToRecord:0 forCameraWithUUID:cameraUUID];

  [(HMDCameraRecordingManager *)selfCopy _closeCurrentSessionsWithReason:3];
  residentMesh = [(HMDCameraRecordingManager *)selfCopy residentMesh];
  [residentMesh removeObserver:selfCopy];
}

- (void)_start
{
  v39 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraRecordingManager *)self didShutDown])
  {
    _HMFPreconditionFailure();
  }

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting camera recording manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  accessory = [(HMDCameraRecordingManager *)selfCopy accessory];
  home = [accessory home];

  if (home)
  {
    cameraLoadBalancer = [(HMDCameraRecordingManager *)selfCopy cameraLoadBalancer];
    cameraUUID = [(HMDCameraRecordingManager *)selfCopy cameraUUID];
    [cameraLoadBalancer setReadyToRecord:0 forCameraWithUUID:cameraUUID];

    residentDeviceManager = [home residentDeviceManager];
    [residentDeviceManager addDataSource:selfCopy];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __35__HMDCameraRecordingManager__start__block_invoke;
    v34[3] = &unk_27868A250;
    v34[4] = selfCopy;
    [residentDeviceManager confirmWithCompletionHandler:v34];
    recordingSettingsControl = [(HMDCameraRecordingManager *)selfCopy recordingSettingsControl];
    [recordingSettingsControl setDelegate:selfCopy];

    recordingSettingsControl2 = [(HMDCameraRecordingManager *)selfCopy recordingSettingsControl];
    [recordingSettingsControl2 start];

    bulkSendSessionInitiator = [(HMDCameraRecordingManager *)selfCopy bulkSendSessionInitiator];
    [bulkSendSessionInitiator configure];

    notificationTrigger = [(HMDCameraRecordingManager *)selfCopy notificationTrigger];
    [notificationTrigger setDelegate:selfCopy];

    notificationTrigger2 = [(HMDCameraRecordingManager *)selfCopy notificationTrigger];
    [notificationTrigger2 start];

    residentMesh = [(HMDCameraRecordingManager *)selfCopy residentMesh];
    [residentMesh addObserver:selfCopy];

    v19 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:1];
    v20 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v20 setRoles:{objc_msgSend(v20, "roles") | 4}];
    v21 = objc_msgSend_copy(v20);
    camera = [(HMDCameraRecordingManager *)selfCopy camera];
    msgDispatcher = [(HMDCameraRecordingManager *)selfCopy msgDispatcher];
    v36[0] = v19;
    v36[1] = v21;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    [msgDispatcher registerForMessage:@"kStartRecordingSessionRequestKey" receiver:selfCopy policies:v24 selector:sel_handleStartRecordingSessionRequest_];

    msgDispatcher2 = [(HMDCameraRecordingManager *)selfCopy msgDispatcher];
    v35[0] = v19;
    v35[1] = v21;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    [msgDispatcher2 registerForMessage:@"kStopRecordingSessionRequestKey" receiver:selfCopy policies:v26 selector:sel_handleStopRecordingSessionRequest_];

    notificationCenter = [(HMDCameraRecordingManager *)selfCopy notificationCenter];
    accessory2 = [camera accessory];
    [notificationCenter addObserver:selfCopy selector:sel_handleCameraSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:accessory2];

    clipManager = [camera clipManager];
    LODWORD(v26) = [clipManager hasStartedUpCloudZone];

    if (v26)
    {
      [(HMDCameraRecordingManager *)selfCopy _clipManagerDidStartUpCloudZone];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v33;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Not starting camera recording manager because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
  }
}

void __35__HMDCameraRecordingManager__start__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to confirm primary resident with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Successfully confirmed primary resident";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)recordingSettingsControlDidConfigure:(id)configure
{
  v23 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Recording settings control did configure", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  didShutDown = [(HMDCameraRecordingManager *)selfCopy didShutDown];
  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (didShutDown)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Ignoring recordingSettingsControlDidConfigure: because recording manager was shut down", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (v14)
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Closing current session if one exists because recording settings have been configured", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraRecordingManager *)v12 _closeCurrentSessionsWithReason:0];
    if ([(HMDCameraRecordingManager *)v12 isMotionActive])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v12;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Motion is active and camera did configure successfully, attempting to coordinate a recording session", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDCameraRecordingManager *)v18 _coordinateRecordingSessionForTrigger:0];
    }
  }
}

- (void)clipManagerDidStop:(id)stop
{
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDCameraRecordingManager_clipManagerDidStop___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __48__HMDCameraRecordingManager_clipManagerDidStop___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) didShutDown])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Ignoring clipManagerDidStop: because recording manager was shut down", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v6 = [*(a1 + 32) cameraLoadBalancer];
    v7 = [*(a1 + 32) cameraUUID];
    [v6 setReadyToRecord:0 forCameraWithUUID:v7];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Closing current session because clip manager became unavailable", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) _closeCurrentSessionsWithReason:3];
  }
}

- (void)clipManagerDidStartUpCloudZone:(id)zone
{
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDCameraRecordingManager_clipManagerDidStartUpCloudZone___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)notificationTrigger:(id)trigger didObserveTriggerType:(unint64_t)type changeToActive:(BOOL)active
{
  activeCopy = active;
  v32 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDCameraRecordingManager *)self didShutDown])
  {
    date = [MEMORY[0x277CBEAA8] date];
    if (type == 2)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v23;
        v30 = 2048;
        typeCopy = 2;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Received unexpected notification trigger: %lu", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      if (!activeCopy)
      {
        goto LABEL_19;
      }
    }

    else if (type == 1)
    {
      if (!activeCopy)
      {
LABEL_19:

        goto LABEL_20;
      }

      currentRecordingSession = [(HMDCameraRecordingManager *)self currentRecordingSession];
      timelineManager = [currentRecordingSession timelineManager];
      [timelineManager handleDoorbellDidActivateAtDate:date];
    }

    else
    {
      if (!type)
      {
        [(HMDCameraRecordingManager *)self setMotionActive:activeCopy];
        currentRecordingSession2 = [(HMDCameraRecordingManager *)self currentRecordingSession];
        timelineManager2 = [currentRecordingSession2 timelineManager];
        [timelineManager2 handleMotionActive:activeCopy didChangeAtDate:date];

        currentRecordingSession3 = [(HMDCameraRecordingManager *)self currentRecordingSession];
        [currentRecordingSession3 handleMotionActive:activeCopy];
      }

      if (!activeCopy)
      {
        goto LABEL_19;
      }
    }

    [(HMDCameraRecordingManager *)self _resetRetryContextWithReason:@"Received recording session trigger from accessory"];
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v27;
      v30 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Coordinating recording session for active trigger of type %lu", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDCameraRecordingManager *)selfCopy2 _coordinateRecordingSessionForTrigger:type];
    goto LABEL_19;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Ignoring notificationTrigger:didObserveTriggerType:changeToActive: because recording manager was shut down", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
LABEL_20:
}

- (void)residentMeshDidUpdate:(id)update activeRecordingSessionCameraUUIDs:(id)ds
{
  dsCopy = ds;
  cameraUUID = [(HMDCameraRecordingManager *)self cameraUUID];
  v7 = [dsCopy containsObject:cameraUUID];

  if (v7)
  {
    workQueue = [(HMDCameraRecordingManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDCameraRecordingManager_residentMeshDidUpdate_activeRecordingSessionCameraUUIDs___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

uint64_t __85__HMDCameraRecordingManager_residentMeshDidUpdate_activeRecordingSessionCameraUUIDs___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = 2;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Coordinating recording session for active trigger of type %lu", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _coordinateRecordingSessionForTrigger:2];
}

- (void)shutDown
{
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDCameraRecordingManager_shutDown__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)start
{
  workQueue = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDCameraRecordingManager_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (NSDictionary)stateDump
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  currentRecordingSession = [(HMDCameraRecordingManager *)self currentRecordingSession];
  stateDump = [currentRecordingSession stateDump];
  [dictionary setObject:stateDump forKeyedSubscript:@"Recording Session"];

  v6 = objc_msgSend_copy(dictionary);

  return v6;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v9 = v6;
    v10 = 2048;
    v11 = selfCopy;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Camera recording manager: %p destroyed", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraRecordingLoadBalancer *)selfCopy->_cameraLoadBalancer removeDataForCameraWithUUID:selfCopy->_cameraUUID];
  v7.receiver = selfCopy;
  v7.super_class = HMDCameraRecordingManager;
  [(HMDCameraRecordingManager *)&v7 dealloc];
}

- (HMDCameraRecordingManager)initWithCamera:(id)camera recordingManagementService:(id)service workQueue:(id)queue dependencyFactory:(id)factory notificationCenter:(id)center
{
  cameraCopy = camera;
  serviceCopy = service;
  queueCopy = queue;
  factoryCopy = factory;
  centerCopy = center;
  v45.receiver = self;
  v45.super_class = HMDCameraRecordingManager;
  v17 = [(HMDCameraRecordingManager *)&v45 init];
  if (v17)
  {
    [cameraCopy hapAccessory];
    v18 = v44 = centerCopy;
    home = [v18 home];
    homeManager = [home homeManager];

    uniqueIdentifier = [cameraCopy uniqueIdentifier];
    cameraUUID = v17->_cameraUUID;
    v17->_cameraUUID = uniqueIdentifier;

    objc_storeStrong(&v17->_dependencyFactory, factory);
    objc_storeStrong(&v17->_notificationCenter, center);
    objc_storeWeak(&v17->_accessory, v18);
    msgDispatcher = [cameraCopy msgDispatcher];
    msgDispatcher = v17->_msgDispatcher;
    v17->_msgDispatcher = msgDispatcher;

    objc_storeWeak(&v17->_camera, cameraCopy);
    messageTargetUUID = [cameraCopy messageTargetUUID];
    messageTargetUUID = v17->_messageTargetUUID;
    v17->_messageTargetUUID = messageTargetUUID;

    cameraLoadBalancer = [homeManager cameraLoadBalancer];
    cameraLoadBalancer = v17->_cameraLoadBalancer;
    v17->_cameraLoadBalancer = cameraLoadBalancer;

    residentMesh = [homeManager residentMesh];
    residentMesh = v17->_residentMesh;
    v17->_residentMesh = residentMesh;

    objc_storeStrong(&v17->_workQueue, queue);
    v30 = [factoryCopy createSessionNotificationTrigger:cameraCopy workQueue:queueCopy];
    notificationTrigger = v17->_notificationTrigger;
    v17->_notificationTrigger = v30;

    v32 = [factoryCopy createSettingsControl:queueCopy accessory:v18 managementService:serviceCopy];
    recordingSettingsControl = v17->_recordingSettingsControl;
    v17->_recordingSettingsControl = v32;

    v34 = [factoryCopy createBulkSendSessionInitiatorWithWorkQueue:queueCopy accessory:v18];
    bulkSendSessionInitiator = v17->_bulkSendSessionInitiator;
    v17->_bulkSendSessionInitiator = v34;

    v36 = [MEMORY[0x277CBEB58] set];
    activeRecordingSessions = v17->_activeRecordingSessions;
    v17->_activeRecordingSessions = v36;

    featuresDataSource = [factoryCopy featuresDataSource];
    featuresDataSource = v17->_featuresDataSource;
    v17->_featuresDataSource = featuresDataSource;

    logEventSubmitter = [factoryCopy logEventSubmitter];
    logEventSubmitter = v17->_logEventSubmitter;
    v17->_logEventSubmitter = logEventSubmitter;

    centerCopy = v44;
  }

  return v17;
}

- (HMDCameraRecordingManager)initWithCamera:(id)camera recordingManagementService:(id)service
{
  serviceCopy = service;
  cameraCopy = camera;
  v8 = HMDispatchQueueNameString();
  uTF8String = [v8 UTF8String];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create(uTF8String, v10);
  v12 = objc_alloc_init(HMDCameraRecordingManagerDependencyFactory);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = [(HMDCameraRecordingManager *)self initWithCamera:cameraCopy recordingManagementService:serviceCopy workQueue:v11 dependencyFactory:v12 notificationCenter:defaultCenter];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t72 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t72, &__block_literal_global_111);
  }

  v3 = logCategory__hmf_once_v73;

  return v3;
}

void __40__HMDCameraRecordingManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v73;
  logCategory__hmf_once_v73 = v0;
}

@end