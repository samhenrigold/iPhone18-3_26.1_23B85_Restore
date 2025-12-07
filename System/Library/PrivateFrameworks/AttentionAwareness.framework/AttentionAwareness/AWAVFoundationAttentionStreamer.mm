@interface AWAVFoundationAttentionStreamer
- (BOOL)getStreamingSessionAndStartRunning:(id)running;
- (id)cancelEventStream;
- (id)initForUnitTest:(BOOL)test queue:(id)queue;
- (id)streamEventWithBlock:(id)block options:(id)options operationStartFailedBlock:(id)failedBlock;
- (void)receiveMetadata:(id)metadata type:(id)type;
- (void)receiveNotificationOfName:(id)name notification:(id)notification;
- (void)receiveStreamingEvent;
- (void)sendNotification:(unint64_t)notification;
- (void)setDisplayState:(BOOL)state;
- (void)setNotificationHandler:(id)handler;
- (void)setSmartCoverState:(BOOL)state;
- (void)stopStreaming;
@end

@implementation AWAVFoundationAttentionStreamer

- (void)receiveStreamingEvent
{
  v12 = 0u;
  v13 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  memset(v11, 0, sizeof(v11));
  AWAttentionStreamerActivateEyeRelief = self->_currentOptions.AWAttentionStreamerActivateEyeRelief;
  v4 = 100.0;
  if (!self->_currentOptions.AWAttentionStreamerActivateEyeRelief)
  {
    v4 = 0.0;
  }

  v5 = 1;
  if (self->_currentOptions.AWAttentionStreamerActivateEyeRelief)
  {
    v5 = 2;
  }

  *(&v12 + 1) = v4;
  *&v13 = AWAttentionStreamerActivateEyeRelief;
  *(&v13 + 1) = v5;
  v6 = [AWFaceDetectAttentionEvent alloc];
  v7 = absTimeNS();
  if (v7 == -1)
  {
    v8 = INFINITY;
  }

  else
  {
    v8 = v7 / 1000000000.0;
  }

  v9 = [(AWFaceDetectAttentionEvent *)v6 initWithTimestamp:0 tagIndex:v11 faceMetadata:v8];
  callbackBlock = self->_callbackBlock;
  if (callbackBlock)
  {
    callbackBlock[2](callbackBlock, v9);
  }
}

- (void)stopStreaming
{
  if (self->_unitTest)
  {
    unitTestDevice = [(AWAVFoundationAttentionStreamer *)self unitTestDevice];
    [unitTestDevice cancelUnitTestStream];
  }

  else
  {
    [self->_AVFoundationEngine unregisterForOperation:self->_identifier];
    self->_attentionStreamerRunning = 0;
  }
}

- (void)receiveNotificationOfName:(id)name notification:(id)notification
{
  v60 = *MEMORY[0x1E69E9840];
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

      *v57 = 134218242;
      *&v57[4] = v10;
      *&v57[12] = 2112;
      *&v57[14] = nameCopy;
      v15 = "%13.5f: Notification %@ received";
      v16 = v8;
      v17 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_DEFAULT, v15, v57, v17);
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
      v11 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++i)
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

          *v57 = 136315906;
          *&v57[4] = v11;
          *&v57[12] = 1024;
          *&v57[14] = 539;
          *&v57[18] = 2048;
          *&v57[20] = v14;
          *&v57[28] = 2112;
          *&v57[30] = nameCopy;
          v15 = "%30s:%-4d: %13.5f: Notification %@ received";
          v16 = v8;
          v17 = 38;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  if ([nameCopy isEqual:{*MEMORY[0x1E6986B20], *v57, *&v57[8], *&v57[24]}])
  {
    if (notificationCopy)
    {
      if (currentLogLevel == 5)
      {
        v18 = _AALog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = absTimeNS();
          if (v19 == -1)
          {
            v20 = INFINITY;
          }

          else
          {
            v20 = v19 / 1000000000.0;
          }

          userInfo = [notificationCopy userInfo];
          *v57 = 134218242;
          *&v57[4] = v20;
          *&v57[12] = 2112;
          *&v57[14] = userInfo;
          v37 = "%13.5f: Runtime error received: %@";
          v38 = v18;
          v39 = 22;
LABEL_81:
          _os_log_impl(&dword_1BB2EF000, v38, OS_LOG_TYPE_DEFAULT, v37, v57, v39);
        }

LABEL_82:

        goto LABEL_83;
      }

      if (currentLogLevel >= 6)
      {
        v18 = _AALog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v26 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
          for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++j)
          {
            if (*(j - 1) == 47)
            {
              v26 = j;
            }

            else if (!*(j - 1))
            {
              v30 = absTimeNS();
              if (v30 == -1)
              {
                v31 = INFINITY;
              }

              else
              {
                v31 = v30 / 1000000000.0;
              }

              userInfo = [notificationCopy userInfo];
              *v57 = 136315906;
              *&v57[4] = v26;
              *&v57[12] = 1024;
              *&v57[14] = 544;
              *&v57[18] = 2048;
              *&v57[20] = v31;
              *&v57[28] = 2112;
              *&v57[30] = userInfo;
              v37 = "%30s:%-4d: %13.5f: Runtime error received: %@";
              v38 = v18;
              v39 = 38;
              goto LABEL_81;
            }
          }
        }

        goto LABEL_82;
      }
    }

LABEL_83:
    [(AWAVFoundationAttentionStreamer *)self sendNotification:1, *v57, *&v57[8], *&v57[24]];
    cancelEventStream = [(AWAVFoundationAttentionStreamer *)self cancelEventStream];
    goto LABEL_96;
  }

  if (![nameCopy isEqual:*MEMORY[0x1E6986A90]])
  {
    if ([nameCopy isEqual:*MEMORY[0x1E6986A98]])
    {
      goto LABEL_96;
    }

    if (![nameCopy isEqual:*MEMORY[0x1E6986B28]])
    {
      [nameCopy isEqual:*MEMORY[0x1E6986AA8]];
      goto LABEL_96;
    }

    if (currentLogLevel == 5)
    {
      v18 = _AALog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = absTimeNS();
        if (v24 == -1)
        {
          v25 = INFINITY;
        }

        else
        {
          v25 = v24 / 1000000000.0;
        }

        *v57 = 134217984;
        *&v57[4] = v25;
        v54 = "%13.5f: Streaming session was interrupted";
        v55 = v18;
        v56 = 12;
LABEL_103:
        _os_log_impl(&dword_1BB2EF000, v55, OS_LOG_TYPE_DEFAULT, v54, v57, v56);
      }

      goto LABEL_82;
    }

    if (currentLogLevel >= 6)
    {
      v18 = _AALog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v32 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
        for (k = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++k)
        {
          if (*(k - 1) == 47)
          {
            v32 = k;
          }

          else if (!*(k - 1))
          {
            v52 = absTimeNS();
            if (v52 == -1)
            {
              v53 = INFINITY;
            }

            else
            {
              v53 = v52 / 1000000000.0;
            }

            *v57 = 136315650;
            *&v57[4] = v32;
            *&v57[12] = 1024;
            *&v57[14] = 560;
            *&v57[18] = 2048;
            *&v57[20] = v53;
            v54 = "%30s:%-4d: %13.5f: Streaming session was interrupted";
            v55 = v18;
            v56 = 28;
            goto LABEL_103;
          }
        }
      }

      goto LABEL_82;
    }

    goto LABEL_83;
  }

  self->_attentionStreamerRunning = 1;
  if (currentLogLevel == 5)
  {
    v21 = _AALog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = absTimeNS();
      if (v22 == -1)
      {
        v23 = INFINITY;
      }

      else
      {
        v23 = v22 / 1000000000.0;
      }

      v40 = "IS NOT RUNNING";
      if (self->_currentOptions.AWAttentionStreamerActivateEyeRelief)
      {
        v41 = "IS RUNNING";
      }

      else
      {
        v41 = "IS NOT RUNNING";
      }

      AWAttentionStreamerActivatePersonDetection = self->_currentOptions.AWAttentionStreamerActivatePersonDetection;
      if (self->_currentOptions.AWAttentionStreamerActivateAttentionDetection)
      {
        v43 = "IS RUNNING";
      }

      else
      {
        v43 = "IS NOT RUNNING";
      }

      *v57 = 134218754;
      if (AWAttentionStreamerActivatePersonDetection)
      {
        v40 = "IS RUNNING";
      }

      *&v57[4] = v23;
      *&v57[12] = 2080;
      *&v57[14] = v41;
      *&v57[22] = 2080;
      *&v57[24] = v43;
      *&v57[32] = 2080;
      *&v57[34] = v40;
      v44 = "%13.5f: Attention detection session started ER %s, AD/FD %s PD %s";
      v45 = v21;
      v46 = 42;
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  if (currentLogLevel >= 6)
  {
    v21 = _AALog();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    v28 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
    for (m = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++m)
    {
      if (*(m - 1) == 47)
      {
        v28 = m;
      }

      else if (!*(m - 1))
      {
        v34 = absTimeNS();
        if (v34 == -1)
        {
          v35 = INFINITY;
        }

        else
        {
          v35 = v34 / 1000000000.0;
        }

        v48 = "IS NOT RUNNING";
        if (self->_currentOptions.AWAttentionStreamerActivateEyeRelief)
        {
          v49 = "IS RUNNING";
        }

        else
        {
          v49 = "IS NOT RUNNING";
        }

        v50 = self->_currentOptions.AWAttentionStreamerActivatePersonDetection;
        if (self->_currentOptions.AWAttentionStreamerActivateAttentionDetection)
        {
          v51 = "IS RUNNING";
        }

        else
        {
          v51 = "IS NOT RUNNING";
        }

        *v57 = 136316418;
        if (v50)
        {
          v48 = "IS RUNNING";
        }

        *&v57[4] = v28;
        *&v57[12] = 1024;
        *&v57[14] = 551;
        *&v57[18] = 2048;
        *&v57[20] = v35;
        *&v57[28] = 2080;
        *&v57[30] = v49;
        *&v57[38] = 2080;
        *&v57[40] = v51;
        v58 = 2080;
        v59 = v48;
        v44 = "%30s:%-4d: %13.5f: Attention detection session started ER %s, AD/FD %s PD %s";
        v45 = v21;
        v46 = 58;
LABEL_94:
        _os_log_impl(&dword_1BB2EF000, v45, OS_LOG_TYPE_DEFAULT, v44, v57, v46);
LABEL_95:

        break;
      }
    }
  }

LABEL_96:
}

- (void)receiveMetadata:(id)metadata type:(id)type
{
  v78 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  typeCopy = type;
  dispatch_assert_queue_V2(self->_queue);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  memset(v44, 0, sizeof(v44));
  if (*MEMORY[0x1E6986FE8] == typeCopy)
  {
    v19 = metadataCopy;
    v10 = v19;
    v20 = 0uLL;
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    *(&v45 + 1) = 1;
    if (v19)
    {
      if ([v19 hasPayingAttention] && (!objc_msgSend(v10, "hasPayingAttention") || (objc_msgSend(v10, "payingAttention") & 1) != 0))
      {
        v13 = 0.0;
        if ([v10 hasPayingAttention] && objc_msgSend(v10, "payingAttention"))
        {
          LOBYTE(v44[0]) = 1;
          v17 = 0;
          v18 = 0;
          if ([v10 hasPitchAngle])
          {
            [v10 pitchAngle];
            v18 = v21;
          }

          *(&v44[0] + 1) = v18;
          if ([v10 hasYawAngle])
          {
            [v10 yawAngle];
            v17 = v22;
          }

          *&v44[1] = v17;
          v14 = 0;
          v16 = 0;
          if ([v10 hasRollAngle])
          {
            [v10 rollAngle];
            v16 = v23;
          }

          *(&v44[1] + 1) = v16;
          if ([v10 hasDistance])
          {
            [v10 distance];
            v14 = v24;
          }

          *(&v44[2] + 1) = v14;
          if ([v10 hasOrientation])
          {
            orientation = [v10 orientation];
            if ((orientation - 1) >= 4)
            {
              v11 = 0;
            }

            else
            {
              v11 = orientation;
            }
          }

          else
          {
            v11 = 0;
          }

          *&v44[2] = v11;
          hasConfidence = [v10 hasConfidence];
          v42 = 0.0;
          if (hasConfidence)
          {
            [v10 confidence];
            v42 = v43 * 100.0;
          }

          v10 = 0;
          *(&v50 + 2) = v42;
          v13 = v42;
          v15 = "FACE FOUND";
          goto LABEL_36;
        }

        v10 = 0;
        v11 = 0;
        v15 = "FACE NOT FOUND";
        goto LABEL_34;
      }

      v10 = 0;
      v11 = 0;
      LOBYTE(v44[0]) = 0;
      DWORD2(v50) = 0;
      v20 = 0uLL;
    }

    else
    {
      v11 = 0;
      LOBYTE(v44[0]) = 0;
      DWORD2(v50) = 0;
    }

    *(v44 + 8) = v20;
    v15 = "FACE NOT FOUND";
    *(&v44[1] + 8) = v20;
LABEL_33:
    v13 = 0.0;
LABEL_34:
    v14 = 0;
LABEL_35:
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_36:

    v12 = 0;
    goto LABEL_37;
  }

  type = [metadataCopy type];
  v9 = *MEMORY[0x1E6986FE0];

  if (type == v9)
  {
    v26 = metadataCopy;
    v11 = v26;
    *(&v45 + 1) = 2;
    if (v26)
    {
      eyeReliefStatus = [v26 eyeReliefStatus];
      if ((eyeReliefStatus - 1) >= 5)
      {
        v10 = 0;
      }

      else
      {
        v10 = eyeReliefStatus;
      }

      *&v45 = v10;
      v13 = 0.0;
      v14 = 0;
      if ([v11 hasDistance])
      {
        [v11 distance];
        v14 = v28;
      }

      v11 = 0;
      *(&v44[2] + 1) = v14;
      v15 = "FACE NOT FOUND";
      goto LABEL_35;
    }

    v10 = 0;
    v15 = "FACE NOT FOUND";
    *(&v44[2] + 1) = 0;
    *&v45 = 0;
    goto LABEL_33;
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = 0.0;
  v14 = 0;
  v15 = "FACE NOT FOUND";
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_37:
  if (currentLogLevel < 7)
  {
    goto LABEL_50;
  }

  v29 = _AALog();
  if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_49;
  }

  v30 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; *(i - 1) == 47; ++i)
  {
    v30 = i;
LABEL_44:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_44;
  }

  v32 = absTimeNS();
  if (v32 == -1)
  {
    v33 = INFINITY;
  }

  else
  {
    v33 = v32 / 1000000000.0;
  }

  v34 = getFaceDetectOrientationDescription(v11);
  v35 = getEyeReliefFaceStateDescription(v10);
  *buf = 136317954;
  v55 = v30;
  v56 = 1024;
  v57 = 523;
  v58 = 2048;
  v59 = v33;
  v60 = 2112;
  selfCopy = self;
  v62 = 2080;
  v63 = v15;
  v64 = 2048;
  v65 = v18;
  v66 = 2048;
  v67 = v17;
  v68 = 2048;
  v69 = v16;
  v70 = 2112;
  v71 = v34;
  v72 = 2048;
  v73 = v14;
  v74 = 2112;
  v75 = v35;
  v76 = 2048;
  v77 = v13;
  _os_log_impl(&dword_1BB2EF000, v29, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: %@ faceDetectStateChanged %s pitch: %13.5f yaw: %13.5f roll: %13.5f orientation: %@ distance: %13.5f eyeReliefFaceState:%@ faceDetectionScore: %f", buf, 0x76u);

LABEL_49:
LABEL_50:
  if (self->_callbackBlock)
  {
    v36 = v12;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    v37 = [AWFaceDetectAttentionEvent alloc];
    v38 = absTimeNS();
    if (v38 == -1)
    {
      v39 = INFINITY;
    }

    else
    {
      v39 = v38 / 1000000000.0;
    }

    v40 = [(AWFaceDetectAttentionEvent *)v37 initWithTimestamp:0 tagIndex:v44 faceMetadata:v39];
    (*(self->_callbackBlock + 2))(self->_callbackBlock);
  }
}

- (BOOL)getStreamingSessionAndStartRunning:(id)running
{
  v23 = *MEMORY[0x1E69E9840];
  runningCopy = running;
  if (self->_unitTest)
  {
    unitTestDevice = [(AWAVFoundationAttentionStreamer *)self unitTestDevice];
    if (currentLogLevel == 5)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = absTimeNS();
        if (v7 == -1)
        {
          v8 = INFINITY;
        }

        else
        {
          v8 = v7 / 1000000000.0;
        }

        *v22 = 134218242;
        *&v22[4] = v8;
        *&v22[12] = 2112;
        *&v22[14] = unitTestDevice;
        v18 = "%13.5f: Using device %@ for starting AVFoundation operations";
        v19 = v6;
        v20 = 22;
LABEL_26:
        _os_log_impl(&dword_1BB2EF000, v19, OS_LOG_TYPE_DEFAULT, v18, v22, v20);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_28:
        [unitTestDevice setAVFoundationDelegate:{self, *v22, *&v22[8], *&v22[24], v23}];
        v13 = [unitTestDevice startUnitTestStream:self->_queue options:*&self->_currentOptions.AWAttentionStreamerActivateEyeRelief | (self->_currentOptions.AWAttentionStreamerActivatePersonDetection << 16)];

        goto LABEL_29;
      }

      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v14 = i;
          }

          else if (!*(i - 1))
          {
            v16 = absTimeNS();
            if (v16 == -1)
            {
              v17 = INFINITY;
            }

            else
            {
              v17 = v16 / 1000000000.0;
            }

            *v22 = 136315906;
            *&v22[4] = v14;
            *&v22[12] = 1024;
            *&v22[14] = 383;
            *&v22[18] = 2048;
            *&v22[20] = v17;
            *&v22[28] = 2112;
            *&v22[30] = unitTestDevice;
            v18 = "%30s:%-4d: %13.5f: Using device %@ for starting AVFoundation operations";
            v19 = v6;
            v20 = 38;
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_28;
  }

  AVFoundationEngine = self->_AVFoundationEngine;
  if (!AVFoundationEngine)
  {
    v10 = +[AVFoundationEngine sharedEngine];
    v11 = self->_AVFoundationEngine;
    self->_AVFoundationEngine = v10;

    AVFoundationEngine = self->_AVFoundationEngine;
  }

  if ([AVFoundationEngine registerForOperation:self activateAttentionDetection:self->_currentOptions.AWAttentionStreamerActivateAttentionDetection activateEyeRelief:self->_currentOptions.AWAttentionStreamerActivateEyeRelief activatePersonDetection:self->_currentOptions.AWAttentionStreamerActivatePersonDetection identifier:self->_identifier]&& ([self->_AVFoundationEngine startOperationForReceiver:self->_identifier reply:runningCopy], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v13 = 1;
    self->_attentionStreamerRunning = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_29:

  return v13;
}

- (void)sendNotification:(unint64_t)notification
{
  dispatch_assert_queue_V2(self->_queue);
  notificationBlock = self->_notificationBlock;
  if (notificationBlock)
  {
    v5 = *(notificationBlock + 2);

    v5();
  }
}

- (void)setSmartCoverState:(BOOL)state
{
  v29 = *MEMORY[0x1E69E9840];
  smartCoverClosed = self->_smartCoverClosed;
  if (smartCoverClosed == state)
  {
LABEL_2:
    if (!smartCoverClosed)
    {
      return;
    }

    goto LABEL_29;
  }

  self->_smartCoverClosed = state;
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

      v12 = "Opened";
      if (self->_smartCoverClosed)
      {
        v12 = "Closed";
      }

      v23 = 134218242;
      v24 = v7;
      v25 = 2080;
      *v26 = v12;
      v13 = "%13.5f: Smart cover state changed to %s";
      v14 = v5;
      v15 = 22;
LABEL_27:
      _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, &v23, v15);
    }
  }

  else
  {
    smartCoverClosed = state;
    if (currentLogLevel < 6)
    {
      goto LABEL_2;
    }

    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++i)
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

          v16 = self->_smartCoverClosed;
          v23 = 136315906;
          if (v16)
          {
            v17 = "Closed";
          }

          else
          {
            v17 = "Opened";
          }

          v24 = *&v8;
          v25 = 1024;
          *v26 = 344;
          *&v26[4] = 2048;
          *&v26[6] = v11;
          v27 = 2080;
          v28 = v17;
          v13 = "%30s:%-4d: %13.5f: Smart cover state changed to %s";
          v14 = v5;
          v15 = 38;
          goto LABEL_27;
        }
      }
    }
  }

  if (!self->_smartCoverClosed)
  {
    return;
  }

LABEL_29:
  if (self->_attentionStreamerRunning)
  {
    cancelEventStream = [(AWAVFoundationAttentionStreamer *)self cancelEventStream];
    (*(self->_notificationBlock + 2))(self->_notificationBlock, 1, v19, v20, v21, v22);
  }
}

- (void)setDisplayState:(BOOL)state
{
  v29 = *MEMORY[0x1E69E9840];
  displayOn = self->_displayOn;
  if (displayOn != state)
  {
    stateCopy = state;
    self->_displayOn = state;
    if (currentLogLevel == 5)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = absTimeNS();
        if (v7 == -1)
        {
          v8 = INFINITY;
        }

        else
        {
          v8 = v7 / 1000000000.0;
        }

        v13 = "OFF";
        if (stateCopy)
        {
          v13 = "ON";
        }

        v23 = 134218242;
        v24 = v8;
        v25 = 2080;
        *v26 = v13;
        v14 = "%13.5f: Display state changed to %s";
        v15 = v6;
        v16 = 22;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    LOBYTE(displayOn) = state;
    if (currentLogLevel >= 6)
    {
      v6 = _AALog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v9 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v9 = i;
        }

        else if (!*(i - 1))
        {
          v11 = absTimeNS();
          if (v11 == -1)
          {
            v12 = INFINITY;
          }

          else
          {
            v12 = v11 / 1000000000.0;
          }

          v17 = "OFF";
          v23 = 136315906;
          v24 = *&v9;
          v25 = 1024;
          if (stateCopy)
          {
            v17 = "ON";
          }

          *v26 = 325;
          *&v26[4] = 2048;
          *&v26[6] = v12;
          v27 = 2080;
          v28 = v17;
          v14 = "%30s:%-4d: %13.5f: Display state changed to %s";
          v15 = v6;
          v16 = 38;
LABEL_24:
          _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, v14, &v23, v16);
LABEL_25:

          LOBYTE(displayOn) = self->_displayOn;
          break;
        }
      }
    }
  }

  if (!displayOn && self->_attentionStreamerRunning)
  {
    cancelEventStream = [(AWAVFoundationAttentionStreamer *)self cancelEventStream];
    (*(self->_notificationBlock + 2))(self->_notificationBlock, 1, v19, v20, v21, v22);
  }
}

- (id)cancelEventStream
{
  v10[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_attentionStreamerRunning)
  {
    [(AWAVFoundationAttentionStreamer *)self stopStreaming];
    callbackBlock = self->_callbackBlock;
    self->_callbackBlock = 0;

    v4 = 0;
    *&self->_currentOptions.AWAttentionStreamerActivateEyeRelief = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A798];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @" Attention streamer not running";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v4 = [v5 errorWithDomain:v6 code:3 userInfo:v7];
  }

  return v4;
}

- (id)streamEventWithBlock:(id)block options:(id)options operationStartFailedBlock:(id)failedBlock
{
  v6 = *&options.var0;
  v75[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  failedBlockCopy = failedBlock;
  dispatch_assert_queue_V2(self->_queue);
  if (![(AWAVFoundationAttentionStreamer *)self isAttentionAwareFeaturesEnabled])
  {
    if (currentLogLevel >= 3)
    {
      v16 = _AALog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v28 = absTimeNS();
        if (v28 == -1)
        {
          v29 = INFINITY;
        }

        else
        {
          v29 = v28 / 1000000000.0;
        }

        *buf = 134217984;
        v65 = v29;
        _os_log_error_impl(&dword_1BB2EF000, v16, OS_LOG_TYPE_ERROR, "%13.5f: User has AttentionAware features off, cannot start streaming operation with Pearl", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v74 = *MEMORY[0x1E696A578];
    v75[0] = @" Attention Aware Features turned OFF";
    v13 = MEMORY[0x1E695DF20];
    v14 = v75;
    v15 = &v74;
    goto LABEL_16;
  }

  if (!self->_displayOn)
  {
    if (currentLogLevel >= 3)
    {
      v17 = _AALog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v32 = absTimeNS();
        if (v32 == -1)
        {
          v33 = INFINITY;
        }

        else
        {
          v33 = v32 / 1000000000.0;
        }

        *buf = 134217984;
        v65 = v33;
        _os_log_error_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_ERROR, "%13.5f: Display OFF, not starting attention stream", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v72 = *MEMORY[0x1E696A578];
    v73 = @" Display OFF";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v73;
    v15 = &v72;
    goto LABEL_16;
  }

  if (self->_smartCoverClosed)
  {
    if (currentLogLevel >= 3)
    {
      v10 = _AALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v39 = absTimeNS();
        if (v39 == -1)
        {
          v40 = INFINITY;
        }

        else
        {
          v40 = v39 / 1000000000.0;
        }

        *buf = 134217984;
        v65 = v40;
        _os_log_error_impl(&dword_1BB2EF000, v10, OS_LOG_TYPE_ERROR, "%13.5f: Smart cover closed, not starting attention stream", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A798];
    v70 = *MEMORY[0x1E696A578];
    v71 = @" Smart cover closed";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v71;
    v15 = &v70;
LABEL_16:
    callbackBlock = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    v19 = [v11 errorWithDomain:v12 code:1 userInfo:callbackBlock];
LABEL_17:

    goto LABEL_18;
  }

  if (!self->_attentionStreamerRunning)
  {
    goto LABEL_68;
  }

  if (((v6 >> 8) & 1) != self->_currentOptions.AWAttentionStreamerActivateAttentionDetection || (v6 & 1) != self->_currentOptions.AWAttentionStreamerActivateEyeRelief)
  {
    if (currentLogLevel == 5)
    {
      v23 = _AALog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = absTimeNS();
        if (v24 == -1)
        {
          v25 = INFINITY;
        }

        else
        {
          v25 = v24 / 1000000000.0;
        }

        *buf = 134217984;
        v65 = v25;
        v36 = "%13.5f: Cancelling current stream and starting a new one as stream options have changed";
        v37 = v23;
        v38 = 12;
LABEL_65:
        _os_log_impl(&dword_1BB2EF000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
      }
    }

    else
    {
      if (currentLogLevel < 6)
      {
LABEL_67:
        cancelEventStream = [(AWAVFoundationAttentionStreamer *)self cancelEventStream];
LABEL_68:
        self->_currentOptions.AWAttentionStreamerActivateAttentionDetection = BYTE1(v6) & 1;
        self->_currentOptions.AWAttentionStreamerActivateEyeRelief = v6 & 1;
        self->_currentOptions.AWAttentionStreamerActivatePersonDetection = 0;
        v56 = MEMORY[0x1E69E9820];
        v57 = 3221225472;
        v58 = __90__AWAVFoundationAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke;
        v59 = &unk_1E7F37938;
        selfCopy = self;
        v61 = failedBlockCopy;
        v42 = [(AWAVFoundationAttentionStreamer *)self getStreamingSessionAndStartRunning:&v56];
        if (v42)
        {
          v19 = 0;
        }

        else
        {
          v50 = MEMORY[0x1E696ABC0];
          v51 = *MEMORY[0x1E696A798];
          v62 = *MEMORY[0x1E696A578];
          v63 = @" Unable to get a streaming session from AVFoundation";
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:{1, v56, v57, v58, v59, selfCopy}];
          v19 = [v50 errorWithDomain:v51 code:6 userInfo:v52];

          if (currentLogLevel >= 3)
          {
            v53 = _AALog();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v54 = absTimeNS();
              if (v54 == -1)
              {
                v55 = INFINITY;
              }

              else
              {
                v55 = v54 / 1000000000.0;
              }

              *buf = 134217984;
              v65 = v55;
              _os_log_error_impl(&dword_1BB2EF000, v53, OS_LOG_TYPE_ERROR, "%13.5f: Unable to get streaming session and start running", buf, 0xCu);
            }
          }
        }

        v43 = !v42;
        if (!blockCopy)
        {
          v43 = 1;
        }

        if ((v43 & 1) == 0)
        {
          v44 = MEMORY[0x1BFB0D030](blockCopy);
          callbackBlock = self->_callbackBlock;
          self->_callbackBlock = v44;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v23 = _AALog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
        for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++i)
        {
          if (*(i - 1) == 47)
          {
            v26 = i;
          }

          else if (!*(i - 1))
          {
            v34 = absTimeNS();
            if (v34 == -1)
            {
              v35 = INFINITY;
            }

            else
            {
              v35 = v34 / 1000000000.0;
            }

            *buf = 136315650;
            v65 = *&v26;
            v66 = 1024;
            v67 = 227;
            v68 = 2048;
            v69 = v35;
            v36 = "%30s:%-4d: %13.5f: Cancelling current stream and starting a new one as stream options have changed";
            v37 = v23;
            v38 = 28;
            goto LABEL_65;
          }
        }
      }
    }

    goto LABEL_67;
  }

  if (currentLogLevel == 5)
  {
    callbackBlock = _AALog();
    if (os_log_type_enabled(callbackBlock, OS_LOG_TYPE_DEFAULT))
    {
      v21 = absTimeNS();
      if (v21 == -1)
      {
        v22 = INFINITY;
      }

      else
      {
        v22 = v21 / 1000000000.0;
      }

      *buf = 134217984;
      v65 = v22;
      v47 = "%13.5f: Attention streamer already running, don't start another operation";
      v48 = callbackBlock;
      v49 = 12;
LABEL_82:
      _os_log_impl(&dword_1BB2EF000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
    }

LABEL_83:
    v19 = 0;
    goto LABEL_17;
  }

  if (currentLogLevel >= 6)
  {
    callbackBlock = _AALog();
    if (os_log_type_enabled(callbackBlock, OS_LOG_TYPE_DEFAULT))
    {
      v30 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v30 = j;
        }

        else if (!*(j - 1))
        {
          v45 = absTimeNS();
          if (v45 == -1)
          {
            v46 = INFINITY;
          }

          else
          {
            v46 = v45 / 1000000000.0;
          }

          *buf = 136315650;
          v65 = *&v30;
          v66 = 1024;
          v67 = 232;
          v68 = 2048;
          v69 = v46;
          v47 = "%30s:%-4d: %13.5f: Attention streamer already running, don't start another operation";
          v48 = callbackBlock;
          v49 = 28;
          goto LABEL_82;
        }
      }
    }

    goto LABEL_83;
  }

  v19 = 0;
LABEL_18:

  return v19;
}

void __90__AWAVFoundationAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__AWAVFoundationAttentionStreamer_streamEventWithBlock_options_operationStartFailedBlock___block_invoke_2;
  v7[3] = &unk_1E7F37F78;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)setNotificationHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    __assert_rtn("[AWAVFoundationAttentionStreamer setNotificationHandler:]", "AVFoundationAttentionStreamer.m", 184, "notificationBlock != nil");
  }

  v7 = handlerCopy;
  v5 = MEMORY[0x1BFB0D030]();
  notificationBlock = self->_notificationBlock;
  self->_notificationBlock = v5;
}

- (id)initForUnitTest:(BOOL)test queue:(id)queue
{
  queueCopy = queue;
  v38.receiver = self;
  v38.super_class = AWAVFoundationAttentionStreamer;
  v8 = [(AWAVFoundationAttentionStreamer *)&v38 init];
  v9 = v8;
  if (v8)
  {
    v8->_unitTest = test;
    objc_storeStrong(&v8->_queue, queue);
    v9->_attentionStreamerRunning = 0;
    notificationBlock = v9->_notificationBlock;
    v9->_notificationBlock = 0;

    callbackBlock = v9->_callbackBlock;
    v9->_callbackBlock = 0;

    identifier = v9->_identifier;
    v9->_identifier = @"AVFoundationAttentionStreamer";

    *&v9->_currentOptions.AWAttentionStreamerActivateEyeRelief = 0;
    v9->_currentOptions.AWAttentionStreamerActivatePersonDetection = 0;
    AVFoundationEngine = v9->_AVFoundationEngine;
    v9->_AVFoundationEngine = 0;

    unitTester = v9->_unitTester;
    v9->_unitTester = 0;

    unitTestController = v9->_unitTestController;
    v9->_unitTestController = 0;

    objc_initWeak(&location, v9);
    predicate = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke;
    block[3] = &unk_1E7F37910;
    v16 = v9;
    v34 = v16;
    objc_copyWeak(&v35, &location);
    dispatch_once(&predicate, block);
    [(AWAVFoundationAttentionStreamer *)v16 setIsAttentionAwareFeaturesEnabled:_AXSAttentionAwarenessFeaturesEnabled() != 0];
    if (v9->_unitTest)
    {
      v17 = +[AWUnitTestPearlDevice sharedDevice];
      v18 = v9->_unitTestController;
      v9->_unitTestController = v17;

      aVFoundationSession = [(AWUnitTestSampler *)v9->_unitTestController AVFoundationSession];
      v20 = v9->_unitTester;
      v9->_unitTester = aVFoundationSession;

      *&v16->_displayOn = 1;
      unitTestController = [(AWAVFoundationAttentionStreamer *)v16 unitTestController];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_7;
      v31[3] = &unk_1E7F37B98;
      v22 = v16;
      v32 = v22;
      [unitTestController setDisplayCallback:v31];

      unitTestController2 = [(AWAVFoundationAttentionStreamer *)v22 unitTestController];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_3;
      v29[3] = &unk_1E7F37B98;
      v30 = v22;
      [unitTestController2 setSmartCoverCallback:v29];
      v24 = &v32;
    }

    else
    {
      queue = v9->_queue;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_5;
      v27[3] = &unk_1E7F38038;
      v24 = &v28;
      v28 = v16;
      dispatch_async(queue, v27);
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_2;
  handler[3] = &unk_1E7F37C38;
  objc_copyWeak(&v4, (a1 + 40));
  notify_register_dispatch("com.apple.AttentionAwareness.SupportedEventsChanged", (v1 + 48), v2, handler);
  objc_destroyWeak(&v4);
}

void __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_7(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_2_8;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

void __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_4;
  v5[3] = &unk_1E7F37FC8;
  v6 = v3;
  v7 = a2;
  dispatch_sync(v4, v5);
}

uint64_t __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = BKSHIDServicesIsSmartCoverClosed() != 0;

  return [v1 setSmartCoverState:v2];
}

void __57__AWAVFoundationAttentionStreamer_initForUnitTest_queue___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAttentionAwareFeaturesEnabled:_AXSAttentionAwarenessFeaturesEnabled() != 0];
  if (currentLogLevel == 5)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = absTimeNS();
      if (v3 == -1)
      {
        v4 = INFINITY;
      }

      else
      {
        v4 = v3 / 1000000000.0;
      }

      v9 = [WeakRetained isAttentionAwareFeaturesEnabled];
      v10 = "OFF";
      if (v9)
      {
        v10 = "ON";
      }

      *v17 = 134218242;
      *&v17[4] = v4;
      *&v17[12] = 2080;
      *&v17[14] = v10;
      v11 = "%13.5f: User toggled the Attention Aware Features flag to %s";
      v12 = v2;
      v13 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v2 = _AALog();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v5 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Streaming/AVFoundationAttentionStreamer.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v5 = i;
      }

      else if (!*(i - 1))
      {
        v7 = absTimeNS();
        if (v7 == -1)
        {
          v8 = INFINITY;
        }

        else
        {
          v8 = v7 / 1000000000.0;
        }

        v14 = [WeakRetained isAttentionAwareFeaturesEnabled];
        v15 = "OFF";
        *v17 = 136315906;
        *&v17[4] = v5;
        *&v17[12] = 1024;
        *&v17[14] = 137;
        if (v14)
        {
          v15 = "ON";
        }

        *&v17[18] = 2048;
        *&v17[20] = v8;
        *&v17[28] = 2080;
        *&v17[30] = v15;
        v11 = "%30s:%-4d: %13.5f: User toggled the Attention Aware Features flag to %s";
        v12 = v2;
        v13 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, v17, v13);
LABEL_24:

        break;
      }
    }
  }

  if (([WeakRetained isAttentionAwareFeaturesEnabled] & 1) == 0)
  {
    if ([WeakRetained attentionStreamerRunning])
    {
      v16 = [WeakRetained cancelEventStream];
    }

    [WeakRetained sendNotification:4];
  }
}

@end