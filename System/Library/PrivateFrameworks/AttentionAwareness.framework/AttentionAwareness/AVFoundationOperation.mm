@interface AVFoundationOperation
- (AVFoundationOperation)initWithQueue:(id)queue forUnitTest:(BOOL)test;
- (BOOL)createAVFoundationOperation;
- (BOOL)isOperationActive;
- (id)cancelActiveOperation:(id)operation;
- (id)createPresenceDetectOperationWithTimeout:(double)timeout options:(id)options;
- (void)SessionDidStartRunningNotification:(id)notification;
- (void)SessionRuntimeErrorNotification:(id)notification;
- (void)SessionWasInterruptedNotification:(id)notification;
- (void)fakeDataForDemoMode;
- (void)receiveMetadata:(id)metadata type:(id)type;
- (void)receiveNotificationOfName:(id)name notification:(id)notification;
- (void)sendDeviceEvent:(int)event;
- (void)sendDeviceState:(int)state;
- (void)sendFaceDetectStateChangeMetadata:(AWFaceDetectMetadata *)metadata;
- (void)sendOperationEndReason:(int)reason;
- (void)setDelegate:(id)delegate;
- (void)startPresenceDetectOperation:(id)operation;
- (void)timeoutOccurred;
@end

@implementation AVFoundationOperation

- (void)fakeDataForDemoMode
{
  *v5 = 1;
  *&v7 = 0;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  *&v5[8] = vdupq_n_s64(0x4066800000000000uLL);
  *&v5[24] = 0x4066800000000000;
  v6 = 1uLL;
  *(&v7 + 1) = 1;
  memset_pattern16(&v8, &unk_1BB32B2C0, 0x40uLL);
  v3[8] = v12;
  v3[9] = v13;
  v3[10] = v14;
  v4 = v15;
  v3[4] = v8;
  v3[5] = v9;
  v3[6] = v10;
  v3[7] = v11;
  v3[0] = *v5;
  v3[1] = *&v5[16];
  v3[2] = 1uLL;
  v3[3] = v7;
  [(AVFoundationOperation *)self sendFaceDetectStateChangeMetadata:v3];
}

- (void)sendDeviceState:(int)state
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = state;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:4 data:v3 forOperation:self];
}

- (void)sendDeviceEvent:(int)event
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = event;
  self->_deviceEvent = event;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:3 data:v3 forOperation:self];
}

- (void)sendOperationEndReason:(int)reason
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = reason;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:2 data:v3 forOperation:self];
}

- (void)sendFaceDetectStateChangeMetadata:(AWFaceDetectMetadata *)metadata
{
  v3 = *&metadata->var11;
  v8[8] = *&metadata->var9;
  v8[9] = v3;
  v8[10] = *&metadata->var12.origin.y;
  height = metadata->var12.size.height;
  v4 = *&metadata->var8[4];
  v8[4] = *metadata->var8;
  v8[5] = v4;
  v5 = *&metadata->var8[12];
  v8[6] = *&metadata->var8[8];
  v8[7] = v5;
  v6 = *&metadata->var2;
  v8[0] = *&metadata->var0;
  v8[1] = v6;
  v7 = *&metadata->var6;
  v8[2] = *&metadata->var4;
  v8[3] = v7;
  [(PearlCameraInterfaceMessaging *)self->_delegate cameraActivityNotification:1 data:v8 forOperation:self];
}

- (void)timeoutOccurred
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(AVFoundationOperation *)self cancelActiveOperation:@"Operation timed out"];

  [(AVFoundationOperation *)self sendOperationEndReason:4];
}

- (void)SessionWasInterruptedNotification:(id)notification
{
  dispatch_assert_queue_V2(self->_queue);

  [(AVFoundationOperation *)self sendOperationEndReason:3];
}

- (void)SessionDidStartRunningNotification:(id)notification
{
  dispatch_assert_queue_V2(self->_queue);
  [(AVFoundationOperation *)self sendDeviceState:2];
  [(AVFoundationOperation *)self sendDeviceEvent:1];
  self->_operationState = 2;
}

- (void)SessionRuntimeErrorNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  if (currentLogLevel == 5)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      userInfo = [notificationCopy userInfo];
      *v17 = 134218242;
      *&v17[4] = v7;
      *&v17[12] = 2112;
      *&v17[14] = userInfo;
      v13 = "%13.5f: Runtime error received: %@";
      v14 = v5;
      v15 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, v17, v15);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v8 = i;
        }

        else if (!*(i - 1))
        {
          v10 = absTimeNS();
          if (v10 == -1)
          {
            v11 = INFINITY;
          }

          else
          {
            v11 = v10 / 1000000000.0;
          }

          userInfo = [notificationCopy userInfo];
          *v17 = 136315906;
          *&v17[4] = v8;
          *&v17[12] = 1024;
          *&v17[14] = 338;
          *&v17[18] = 2048;
          *&v17[20] = v11;
          *&v17[28] = 2112;
          *&v17[30] = userInfo;
          v13 = "%30s:%-4d: %13.5f: Runtime error received: %@";
          v14 = v5;
          v15 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  [(AVFoundationOperation *)self sendDeviceState:5, *v17, *&v17[8], *&v17[24], v18];
  v16 = [(AVFoundationOperation *)self cancelActiveOperation:@"Runtime error"];
}

- (BOOL)createAVFoundationOperation
{
  AVFoundationEngine = self->_AVFoundationEngine;
  if (!AVFoundationEngine)
  {
    v4 = +[AVFoundationEngine sharedEngine];
    v5 = self->_AVFoundationEngine;
    self->_AVFoundationEngine = v4;

    AVFoundationEngine = self->_AVFoundationEngine;
  }

  AWAttentionSamplerActivateAttentionDetection = self->_currentOptions.AWAttentionSamplerActivateAttentionDetection;
  AWAttentionSamplerActivatePersonDetection = self->_currentOptions.AWAttentionSamplerActivatePersonDetection;
  identifier = self->_identifier;

  return [AVFoundationEngine registerForOperation:self activateAttentionDetection:AWAttentionSamplerActivateAttentionDetection activateEyeRelief:0 activatePersonDetection:AWAttentionSamplerActivatePersonDetection identifier:identifier];
}

- (void)receiveNotificationOfName:(id)name notification:(id)notification
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  notificationCopy = notification;
  if (currentLogLevel == 5)
  {
    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = absTimeNS();
      if (v9 == -1)
      {
        v10 = INFINITY;
      }

      else
      {
        v10 = v9 / 1000000000.0;
      }

      *v18 = 134218242;
      *&v18[4] = v10;
      *&v18[12] = 2112;
      *&v18[14] = nameCopy;
      v15 = "%13.5f: Notification %@ received";
      v16 = v8;
      v17 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, v18, v17);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v11 = i;
        }

        else if (!*(i - 1))
        {
          v13 = absTimeNS();
          if (v13 == -1)
          {
            v14 = INFINITY;
          }

          else
          {
            v14 = v13 / 1000000000.0;
          }

          *v18 = 136315906;
          *&v18[4] = v11;
          *&v18[12] = 1024;
          *&v18[14] = 281;
          *&v18[18] = 2048;
          *&v18[20] = v14;
          *&v18[28] = 2112;
          *&v18[30] = nameCopy;
          v15 = "%30s:%-4d: %13.5f: Notification %@ received";
          v16 = v8;
          v17 = 38;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if ([nameCopy isEqualToString:{*MEMORY[0x1E6986B20], *v18, *&v18[8], *&v18[24], v19}])
  {
    [(AVFoundationOperation *)self SessionRuntimeErrorNotification:notificationCopy];
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x1E6986A90]])
  {
    [(AVFoundationOperation *)self SessionDidStartRunningNotification:notificationCopy];
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x1E6986A98]])
  {
    [(AVFoundationOperation *)self SessionDidStopRunningNotification:notificationCopy];
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x1E6986B28]])
  {
    [(AVFoundationOperation *)self SessionWasInterruptedNotification:notificationCopy];
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x1E6986AA8]])
  {
    [(AVFoundationOperation *)self SessionInterruptionEndedNotification:notificationCopy];
  }
}

- (void)receiveMetadata:(id)metadata type:(id)type
{
  v46 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  typeCopy = type;
  dispatch_assert_queue_V2(self->_queue);
  LODWORD(v39) = 0;
  *(&v39 + 3) = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  if (*MEMORY[0x1E6986FE8] == typeCopy)
  {
    v8 = metadataCopy;
    v9 = v8;
    if (v8 && [v8 hasPayingAttention] && (!objc_msgSend(v9, "hasPayingAttention") || objc_msgSend(v9, "payingAttention")) && objc_msgSend(v9, "hasPayingAttention", 0, 0, 0, 0, 0, 0, 0, 0, 0, v39) && objc_msgSend(v9, "payingAttention"))
    {
      v10 = 0;
      v11 = 0;
      if ([v9 hasPitchAngle])
      {
        [v9 pitchAngle];
        v11 = v12;
      }

      if ([v9 hasYawAngle])
      {
        [v9 yawAngle];
        v10 = v13;
      }

      v14 = 0;
      v15 = 0;
      if ([v9 hasRollAngle])
      {
        [v9 rollAngle];
        v15 = v16;
      }

      if ([v9 hasDistance])
      {
        [v9 distance];
        v14 = v17;
      }

      if ([v9 hasOrientation])
      {
        orientation = [v9 orientation];
        if ((orientation - 1) >= 4)
        {
          v19 = 0;
        }

        else
        {
          v19 = orientation;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = 0.0;
      if ([v9 hasConfidence])
      {
        [v9 confidence];
        v20 = v21 * 100.0;
      }

      if (currentLogLevel == 5)
      {
        v22 = _AALog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = absTimeNS();
          if (v23 == -1)
          {
            v24 = INFINITY;
          }

          else
          {
            v24 = v23 / 1000000000.0;
          }

          v29 = getFaceDetectOrientationDescription(v19);
          *buf = 134219778;
          *&buf[4] = v24;
          *&buf[12] = 2112;
          *&buf[14] = self;
          *&buf[22] = 2080;
          *&buf[24] = "FACE FOUND";
          *&buf[32] = 2048;
          *&buf[34] = v11;
          *&buf[42] = 2048;
          *&buf[44] = v10;
          *&buf[52] = 2048;
          *&buf[54] = v15;
          *&buf[62] = 2112;
          *&buf[64] = v29;
          *&buf[72] = 2048;
          *&buf[74] = v20;
          v30 = "%13.5f: Received metadata in %@ faceDetectStateChanged %s pitch: %f yaw: %f roll: %f orientation: %@ faceDetectionScore: %f";
          v31 = v22;
          v32 = 82;
LABEL_44:
          _os_log_impl(&dword_1BB2EF000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
        }
      }

      else
      {
        if (currentLogLevel < 6)
        {
LABEL_46:

          buf[0] = 1;
          *&buf[1] = v39;
          *&buf[4] = *(&v39 + 3);
          *&buf[8] = v11;
          *&buf[16] = v10;
          *&buf[24] = v15;
          *&buf[32] = v19;
          *&buf[40] = v14;
          *&buf[80] = v35;
          *&buf[96] = v36;
          v41 = v37;
          v42 = v38;
          *&buf[48] = xmmword_1BB32B2A0;
          *&buf[64] = v34;
          v43 = v20;
          v44 = 0u;
          memset(v45, 0, sizeof(v45));
          [(AVFoundationOperation *)self sendFaceDetectStateChangeMetadata:buf];
          [(AVFoundationOperation *)self sendDeviceEvent:3];
          [(AVFoundationOperation *)self sendOperationEndReason:1];
          v33 = [(AVFoundationOperation *)self cancelActiveOperation:@"Face found"];
          goto LABEL_22;
        }

        v22 = _AALog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v25 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
          {
            if (*(i - 1) == 47)
            {
              v25 = i;
            }

            else if (!*(i - 1))
            {
              v27 = absTimeNS();
              if (v27 == -1)
              {
                v28 = INFINITY;
              }

              else
              {
                v28 = v27 / 1000000000.0;
              }

              v29 = getFaceDetectOrientationDescription(v19);
              *buf = 136317442;
              *&buf[4] = v25;
              *&buf[12] = 1024;
              *&buf[14] = 234;
              *&buf[18] = 2048;
              *&buf[20] = v28;
              *&buf[28] = 2112;
              *&buf[38] = 2080;
              *&buf[30] = self;
              *&buf[40] = "FACE FOUND";
              *&buf[48] = 2048;
              *&buf[50] = v11;
              *&buf[58] = 2048;
              *&buf[60] = v10;
              *&buf[68] = 2048;
              *&buf[70] = v15;
              *&buf[78] = 2112;
              *&buf[80] = v29;
              *&buf[88] = 2048;
              *&buf[90] = v20;
              v30 = "%30s:%-4d: %13.5f: Received metadata in %@ faceDetectStateChanged %s pitch: %f yaw: %f roll: %f orientation: %@ faceDetectionScore: %f";
              v31 = v22;
              v32 = 98;
              goto LABEL_44;
            }
          }
        }
      }

      goto LABEL_46;
    }
  }

  [(AVFoundationOperation *)self sendDeviceEvent:2, v34, v35, v36, v37, v38, v39];
LABEL_22:
}

- (id)cancelActiveOperation:(id)operation
{
  v17 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  dispatch_assert_queue_V2(self->_queue);
  if (currentLogLevel == 5)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      *v16 = 134218242;
      *&v16[4] = v7;
      *&v16[12] = 2112;
      *&v16[14] = operationCopy;
      v12 = "%13.5f: cancelActiveOperation called with info %@";
      v13 = v5;
      v14 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, v16, v14);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_21;
    }

    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v8 = i;
        }

        else if (!*(i - 1))
        {
          v10 = absTimeNS();
          if (v10 == -1)
          {
            v11 = INFINITY;
          }

          else
          {
            v11 = v10 / 1000000000.0;
          }

          *v16 = 136315906;
          *&v16[4] = v8;
          *&v16[12] = 1024;
          *&v16[14] = 150;
          *&v16[18] = 2048;
          *&v16[20] = v11;
          *&v16[28] = 2112;
          *&v16[30] = operationCopy;
          v12 = "%30s:%-4d: %13.5f: cancelActiveOperation called with info %@";
          v13 = v5;
          v14 = 38;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if ([(AVFoundationOperation *)self isOperationActive:*v16])
  {
    [self->_AVFoundationEngine unregisterForOperation:self->_identifier];
  }

  return 0;
}

- (void)startPresenceDetectOperation:(id)operation
{
  operationCopy = operation;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  AVFoundationEngine = self->_AVFoundationEngine;
  identifier = self->_identifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__AVFoundationOperation_startPresenceDetectOperation___block_invoke;
  v14[3] = &unk_1E7F372A0;
  v7 = operationCopy;
  v15 = v7;
  v8 = [AVFoundationEngine startOperationForReceiver:identifier reply:v14];
  if (!v8)
  {
    timeout = self->_timeout;
    if (timeout != 0.0)
    {
      v10 = dispatch_time(0, (timeout * 1000000000.0));
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__AVFoundationOperation_startPresenceDetectOperation___block_invoke_2;
      block[3] = &unk_1E7F37AF8;
      objc_copyWeak(&v13, &location);
      dispatch_after(v10, queue, block);
      objc_destroyWeak(&v13);
    }
  }

  (*(v7 + 2))(v7, v8);

  objc_destroyWeak(&location);
}

void __54__AVFoundationOperation_startPresenceDetectOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timeoutOccurred];
}

- (id)createPresenceDetectOperationWithTimeout:(double)timeout options:(id)options
{
  v4 = *&options.var0;
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(AVFoundationOperation *)self checkIfTimeoutHasChanged:timeout];
  v8 = v7 | [(AVFoundationOperation *)self checkIfOptionsHaveChanged:*&v4 & 0xFFFFFFLL];
  if (currentLogLevel == 5)
  {
    v9 = _AALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = absTimeNS();
      if (v10 == -1)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v10 / 1000000000.0;
      }

      v16 = "false";
      if (v4)
      {
        v17 = "true";
      }

      else
      {
        v17 = "false";
      }

      *buf = 134218754;
      v32 = 2048;
      v31 = v11;
      *v33 = timeout;
      *&v33[8] = 2080;
      if ((v4 & 0x10000) != 0)
      {
        v16 = "true";
      }

      *&v33[10] = v17;
      *&v33[18] = 2080;
      *&v33[20] = v16;
      v18 = "%13.5f: Timeout: %f AWAttentionSamplerActivateAttentionDetection: %s AWAttentionSamplerActivatePersonDetection: %s";
      v19 = v9;
      v20 = 42;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (currentLogLevel >= 6)
  {
    v9 = _AALog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v12 = i;
      }

      else if (!*(i - 1))
      {
        v14 = absTimeNS();
        if (v14 == -1)
        {
          v15 = INFINITY;
        }

        else
        {
          v15 = v14 / 1000000000.0;
        }

        v21 = "false";
        *buf = 136316418;
        v31 = *&v12;
        v32 = 1024;
        if (v4)
        {
          v22 = "true";
        }

        else
        {
          v22 = "false";
        }

        *v33 = 108;
        *&v33[4] = 2048;
        *&v33[6] = v15;
        if ((v4 & 0x10000) != 0)
        {
          v21 = "true";
        }

        *&v33[14] = 2048;
        *&v33[16] = timeout;
        *&v33[24] = 2080;
        *&v33[26] = v22;
        v34 = 2080;
        v35 = v21;
        v18 = "%30s:%-4d: %13.5f: Timeout: %f AWAttentionSamplerActivateAttentionDetection: %s AWAttentionSamplerActivatePersonDetection: %s";
        v19 = v9;
        v20 = 58;
LABEL_29:
        _os_log_impl(&dword_1BB2EF000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
LABEL_30:

        break;
      }
    }
  }

  if (v8 && (self->_timeout = timeout, self->_currentOptions.AWAttentionSamplerActivateAttentionDetection = v4 & 1, ![(AVFoundationOperation *)self createAVFoundationOperation]))
  {
    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A798];
    v28 = *MEMORY[0x1E696A578];
    v29 = @" Unable to create Presence detect operation through AVFoundation";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v23 = [v25 errorWithDomain:v26 code:19 userInfo:v27];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)isOperationActive
{
  dispatch_assert_queue_V2(self->_queue);
  AVFoundationEngine = self->_AVFoundationEngine;
  identifier = self->_identifier;

  return [AVFoundationEngine isOperationActive:identifier];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_V2(self->_queue);
  delegate = self->_delegate;
  self->_delegate = delegateCopy;
}

- (AVFoundationOperation)initWithQueue:(id)queue forUnitTest:(BOOL)test
{
  v32 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = AVFoundationOperation;
  v8 = [(AVFoundationOperation *)&v25 init];
  if (v8)
  {
    if (currentLogLevel == 5)
    {
      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = absTimeNS();
        if (v10 == -1)
        {
          v11 = INFINITY;
        }

        else
        {
          v11 = v10 / 1000000000.0;
        }

        *buf = 134218242;
        v27 = v11;
        v28 = 2112;
        *v29 = v8;
        v16 = "%13.5f: AVFoundationOperation %@ initialized";
        v17 = v9;
        v18 = 22;
LABEL_20:
        _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_22:
        objc_storeStrong(v8 + 1, queue);
        v8[40] = test;
        v19 = *(v8 + 3);
        *(v8 + 3) = 0;
        *(v8 + 4) = 0;

        *(v8 + 41) = 0;
        *(v8 + 6) = 0x400000001;
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v21 = *(v8 + 7);
        *(v8 + 7) = defaultCenter;

        v22 = *(v8 + 8);
        *(v8 + 8) = @"AVFoundationAttentionSampler";

        v23 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AttentionAwareness"];
        v8[72] = [v23 BOOLForKey:@"demoMode"];

        goto LABEL_23;
      }

      v9 = _AALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Sampling/PearlAVFoundationInterface.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v12 = i;
          }

          else if (!*(i - 1))
          {
            v14 = absTimeNS();
            if (v14 == -1)
            {
              v15 = INFINITY;
            }

            else
            {
              v15 = v14 / 1000000000.0;
            }

            *buf = 136315906;
            v27 = *&v12;
            v28 = 1024;
            *v29 = 59;
            *&v29[4] = 2048;
            *&v29[6] = v15;
            v30 = 2112;
            v31 = v8;
            v16 = "%30s:%-4d: %13.5f: AVFoundationOperation %@ initialized";
            v17 = v9;
            v18 = 38;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  return v8;
}

@end