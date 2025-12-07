@interface CMContinuityCaptureRemoteDeskcamVideoDevice
- (BOOL)_companionConnectionsRequired;
- (BOOL)_shouldOnlyDisableVideoConnection;
- (BOOL)configureConnections;
- (id)connectionsForConfiguration:(id)configuration;
- (void)_forcefullyEnableCenterStageOnSuperWide;
- (void)_restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:(BOOL)stack;
- (void)configureConnections;
@end

@implementation CMContinuityCaptureRemoteDeskcamVideoDevice

- (id)connectionsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy3 = self;
    v42 = 2080;
    v43 = "[CMContinuityCaptureRemoteDeskcamVideoDevice connectionsForConfiguration:]";
    v44 = 2112;
    v45 = configurationCopy;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", buf, 0x20u);
  }

  connections = [(CMContinuityCaptureRemoteVideoDevice *)self connections];

  if (!connections)
  {
    CMContinuityCaptureDevicePosition(v9, v10);
    v14 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:? mediaType:? position:?];
    [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDevice:?];

    videoDevice = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];

    if (videoDevice)
    {
      activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration deskViewCameraMode];
      [(CMContinuityCaptureRemoteVideoDevice *)self setDeskViewCameraMode:?];

      companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
      streaming = [companionDevice streaming];

      if ((streaming & 1) == 0)
      {
        [MEMORY[0x277CE5AC8] setCenterStageControlMode:?];
        [MEMORY[0x277CE5AC8] setCenterStageEnabled:?];
      }

      [(CMContinuityCaptureRemoteVideoDevice *)self setFaceDrivenAFActive:?];
      v19 = MEMORY[0x277CE5AD8];
      videoDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
      v21 = [v19 deviceInputWithDevice:? error:?];
      videoDevice = 0;
      [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDataInput:?];

      videoDataInput = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];

      if (videoDataInput && !videoDevice)
      {
        v23 = objc_alloc_init(MEMORY[0x277CE5B60]);
        [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDataOutput:?];

        videoDataOutput = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataOutput];
        queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
        [videoDataOutput setSampleBufferDelegate:? queue:?];

        videoDataInput2 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataInput];
        v27 = [videoDataInput2 portsWithMediaType:? sourceDeviceType:? sourceDevicePosition:?];

        if ([v27 count])
        {
          v28 = MEMORY[0x277CE5AB0];
          firstObject = [v27 firstObject];
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:firstObject count:?];
          videoDataOutput2 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataOutput];
          v32 = [v28 connectionWithInputPorts:? output:?];
          [(CMContinuityCaptureRemoteVideoDevice *)self setVideoDataConnection:?];

          videoDataConnection = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
          [v5 addObject:?];

          [configurationCopy entity];
          [(CMContinuityCaptureDeviceBase *)self entity];
          videoDataConnection2 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
          [videoDataConnection2 setEnabled:?];

          v35 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            videoDataConnection3 = [(CMContinuityCaptureRemoteVideoDevice *)self videoDataConnection];
            isEnabled = [videoDataConnection3 isEnabled];
            *buf = 138543618;
            selfCopy3 = self;
            v42 = 1024;
            LODWORD(v43) = isEnabled;
            _os_log_impl(&dword_242545000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ VDO connection enabled %d", buf, 0x12u);
          }

          [(CMContinuityCaptureRemoteVideoDevice *)self setConnections:?];
          videoDevice = 0;
          v38 = v5;
          goto LABEL_16;
        }

        [CMContinuityCaptureRemoteDeskcamVideoDevice connectionsForConfiguration:];
        videoDevice = 0;
LABEL_24:
        v38 = 0;
LABEL_16:
        connections3 = v38;

        goto LABEL_17;
      }

      [CMContinuityCaptureRemoteDeskcamVideoDevice connectionsForConfiguration:];
    }

    else
    {
      [CMContinuityCaptureRemoteDeskcamVideoDevice connectionsForConfiguration:];
    }

    v27 = 0;
    goto LABEL_24;
  }

  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    connections2 = [(CMContinuityCaptureRemoteVideoDevice *)self connections];
    *buf = 138543618;
    selfCopy3 = self;
    v42 = 2112;
    v43 = connections2;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ returning already created connections %@", buf, 0x16u);
  }

  connections3 = [(CMContinuityCaptureRemoteVideoDevice *)self connections];
LABEL_17:

  return connections3;
}

- (BOOL)configureConnections
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  [companionDevice setMinFrameDurationOverrideIfApplicable];

  companionDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  isStreamingOnSuperWide = [companionDevice2 isStreamingOnSuperWide];

  if (isStreamingOnSuperWide)
  {
    companionDevice3 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    [companionDevice3 setFaceDrivenAFActive:?];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  videoDevice = [(CMContinuityCaptureRemoteVideoDevice *)self videoDevice];
  formats = [videoDevice formats];

  obj = formats;
  v33 = [formats countByEnumeratingWithState:? objects:? count:?];
  if (v33)
  {
    v32 = *v43;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v43 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v42 + 1) + 8 * v10);
      activeConfiguration = [(CMContinuityCaptureDeviceBase *)selfCopy activeConfiguration];
      captureSession = [(CMContinuityCaptureRemoteVideoDevice *)selfCopy captureSession];
      [captureSession isMulticamSession];
      activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)selfCopy activeConfiguration];
      format = [activeConfiguration2 format];
      [format minFrameRate];
      activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)selfCopy activeConfiguration];
      format2 = [activeConfiguration3 format];
      [format2 maxFrameRate];
      v17 = [CMContinuityCaptureRemoteVideoDevice _deviceFormat:selfCopy isCompatibleWithConfiguration:"_deviceFormat:isCompatibleWithConfiguration:requiringMultiCamSupport:minFrameRate:maxFrameRate:" requiringMultiCamSupport:? minFrameRate:? maxFrameRate:?];

      if (v17)
      {
        break;
      }

      if (v33 == ++v10)
      {
        v33 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v33)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v18 = v11;

    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = CMContinuityCaptureLog(2);
    v20 = selfCopy;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      videoDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)selfCopy videoDevice];
      localizedName = [videoDevice2 localizedName];
      *buf = 138543874;
      v37 = selfCopy;
      v38 = 2112;
      v39 = localizedName;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting format for %@: %@", buf, 0x20u);
    }

    [(CMContinuityCaptureRemoteVideoDevice *)selfCopy setFormat:?];
  }

  else
  {
LABEL_11:

LABEL_16:
    v23 = CMContinuityCaptureLog(2);
    v20 = selfCopy;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteDeskcamVideoDevice configureConnections];
    }

    v18 = 0;
  }

  if ([(CMContinuityCaptureRemoteVideoDevice *)v20 deskViewCameraMode])
  {
    activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)v20 activeConfiguration];
    [activeConfiguration4 deskViewCameraMode];
    [(CMContinuityCaptureRemoteVideoDevice *)v20 setDeskViewCameraMode:?];

    companionDevice4 = [(CMContinuityCaptureRemoteVideoDevice *)v20 companionDevice];
    isStreamingOnSuperWide2 = [companionDevice4 isStreamingOnSuperWide];

    if (isStreamingOnSuperWide2)
    {
      activeConfiguration5 = [(CMContinuityCaptureDeviceBase *)v20 activeConfiguration];
      [activeConfiguration5 deskViewCameraMode];
      companionDevice5 = [(CMContinuityCaptureRemoteVideoDevice *)v20 companionDevice];
      [companionDevice5 setDeskViewCameraMode:?];
    }
  }

  videoDataConnection = [(CMContinuityCaptureRemoteVideoDevice *)v20 videoDataConnection];
  [videoDataConnection setEnabled:?];

  return 1;
}

- (void)_forcefullyEnableCenterStageOnSuperWide
{
  companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  isDockedTrackingEnabled = [companionDevice isDockedTrackingEnabled];

  companionDevice2 = CMContinuityCaptureLog(2);
  v6 = os_log_type_enabled(companionDevice2, OS_LOG_TYPE_DEFAULT);
  if (isDockedTrackingEnabled)
  {
    if (v6)
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_242545000, companionDevice2, OS_LOG_TYPE_DEFAULT, "Docked tracking is enabled, do not forcefully enable Center Stage as requested", &v26, 2u);
    }
  }

  else
  {
    if (v6)
    {
      v26 = 138543618;
      selfCopy6 = self;
      v28 = 2080;
      v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      _os_log_impl(&dword_242545000, companionDevice2, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Forcefully enable Center Stage on the default video camera as requested", &v26, 0x16u);
    }

    companionDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration forcefulCenterStageEnablementType];
    activeConfiguration2 = [companionDevice2 activeConfiguration];
    [activeConfiguration2 setForcefulCenterStageEnablementType:?];

    centerStageEnabled = [companionDevice2 centerStageEnabled];
    v10 = CMContinuityCaptureLog(2);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (centerStageEnabled)
    {
      if (v11)
      {
        v26 = 138543618;
        selfCopy6 = self;
        v28 = 2080;
        v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Already running Center Stage on the wide, switching to the super wide", &v26, 0x16u);
      }

      [companionDevice2 setShouldRestoreCenterStageOnWideCamera:?];
      activeConfiguration3 = [companionDevice2 activeConfiguration];
      [activeConfiguration3 setCenterStageFieldOfViewRestrictedToWide:?];

LABEL_18:
      captureSession = [companionDevice2 captureSession];
      connections = [companionDevice2 connections];
      [captureSession removeConnections:?];

      captureSession2 = [companionDevice2 captureSession];
      activeConfiguration4 = [companionDevice2 activeConfiguration];
      v25 = [companionDevice2 connectionsForConfiguration:?];
      [captureSession2 addConnections:?];

      goto LABEL_22;
    }

    if (v11)
    {
      v26 = 138543618;
      selfCopy6 = self;
      v28 = 2080;
      v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Switching from Manual Framing to Center Stage", &v26, 0x16u);
    }

    activeConfiguration5 = [companionDevice2 activeConfiguration];
    centerStageFieldOfViewRestrictedToWide = [activeConfiguration5 centerStageFieldOfViewRestrictedToWide];

    if (centerStageFieldOfViewRestrictedToWide)
    {
      v15 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543618;
        selfCopy6 = self;
        v28 = 2080;
        v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Center Stage is set to run on the back wide. Switching to the super wide", &v26, 0x16u);
      }

      [companionDevice2 setShouldRestoreCenterStageOnWideCamera:?];
      activeConfiguration6 = [companionDevice2 activeConfiguration];
      [activeConfiguration6 setCenterStageFieldOfViewRestrictedToWide:?];
    }

    activeConfiguration7 = [companionDevice2 activeConfiguration];
    manualFramingDeviceType = [activeConfiguration7 manualFramingDeviceType];

    v19 = CMContinuityCaptureLog(2);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (manualFramingDeviceType == 1)
    {
      if (v20)
      {
        v26 = 138543618;
        selfCopy6 = self;
        v28 = 2080;
        v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
        _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Manual Framing on the back wide. Switching to the super wide", &v26, 0x16u);
      }

      goto LABEL_18;
    }

    if (v20)
    {
      v26 = 138543618;
      selfCopy6 = self;
      v28 = 2080;
      v29 = "[CMContinuityCaptureRemoteDeskcamVideoDevice _forcefullyEnableCenterStageOnSuperWide]";
      _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ %s [forceful CS enablement] Manual Framing on the super wide. Turning on Center Stage", &v26, 0x16u);
    }

    [companionDevice2 setCenterStageEnabled:?];
  }

LABEL_22:
}

- (BOOL)_shouldOnlyDisableVideoConnection
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  streaming = [companionDevice streaming];

  if (streaming)
  {
    manualFramingFeatureFlagEnabled = self->super._manualFramingFeatureFlagEnabled;
    companionDevice2 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
    centerStageEnabled = [companionDevice2 centerStageEnabled];

    if (manualFramingFeatureFlagEnabled)
    {
      companionDevice3 = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
      activeConfiguration = [companionDevice3 activeConfiguration];
      v11 = activeConfiguration;
      if (centerStageEnabled)
      {
        centerStageEnabled = [activeConfiguration centerStageFieldOfViewRestrictedToWide] ^ 1;
      }

      else
      {
        centerStageEnabled = [activeConfiguration manualFramingDeviceType] == 2;
      }
    }
  }

  else
  {
    LOBYTE(centerStageEnabled) = 0;
  }

  return centerStageEnabled;
}

- (BOOL)_companionConnectionsRequired
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  companionDevice = [(CMContinuityCaptureRemoteVideoDevice *)self companionDevice];
  if ([companionDevice streaming])
  {
    LOBYTE(v9) = 0;
    goto LABEL_9;
  }

  activeConfiguration = [companionDevice activeConfiguration];
  centerStageEnabled = [activeConfiguration centerStageEnabled];
  if ((centerStageEnabled & 1) != 0 || ([companionDevice activeConfiguration], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "isCenterStageForcefullyEnabled")))
  {
    activeConfiguration2 = [companionDevice activeConfiguration];
    v9 = [activeConfiguration2 centerStageFieldOfViewRestrictedToWide] ^ 1;

    if (centerStageEnabled)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

LABEL_8:
LABEL_9:

  return v9;
}

- (void)_restoreStatesAfterForcefulCenterStageEnablementAndShouldReconfigureCaptureStack:(BOOL)stack
{
  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  isCenterStageForcefullyEnabled = [activeConfiguration isCenterStageForcefullyEnabled];

  if (isCenterStageForcefullyEnabled)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_23(&dword_242545000, v7, v8, "%{public}@ %s [forceful CS enablement] Restoring states while exiting forcefully enabled Center Stage on super wide", v9, v10, v11, v12);
    }

    activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration2 setForcefulCenterStageEnablementType:?];
  }
}

- (void)connectionsForConfiguration:.cold.1()
{
  v2 = OUTLINED_FUNCTION_17_0();
  v3 = CMContinuityCaptureLog(v2);
  if (OUTLINED_FUNCTION_24(v3))
  {
    v4 = [v1 videoDataInput];
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

- (void)connectionsForConfiguration:.cold.2()
{
  v1 = OUTLINED_FUNCTION_38();
  v2 = CMContinuityCaptureLog(v1);
  if (OUTLINED_FUNCTION_24(v2))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)connectionsForConfiguration:.cold.3()
{
  v1 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_24(v1))
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)configureConnections
{
  OUTLINED_FUNCTION_29();
  videoDevice = [v1 videoDevice];
  [videoDevice localizedName];
  objc_claimAutoreleasedReturnValue();
  activeConfiguration = [OUTLINED_FUNCTION_20_0() activeConfiguration];
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end