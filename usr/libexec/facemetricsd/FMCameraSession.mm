@interface FMCameraSession
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_cmTimeForMetrics:(SEL)metrics;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_retrieveCmTimeForAbsoluteTimestamp:(SEL)timestamp;
- (AVCaptureDevice)device;
- (BOOL)_isPacketWithinRangeForTimestamp:(id *)timestamp withSessionStartTime:(id *)time andSessionStopTime:(id *)stopTime;
- (FMCameraSession)initWithQueue:(id)queue;
- (FMCameraSessionDelegate)delegate;
- (id)_packetFromMetrics:(id)metrics;
- (unint64_t)_machContinuousTimeForMetrics:(id)metrics;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)generateMessageSessionIdWithSessionStartTimestamp:(double)timestamp;
- (void)generateUnlockSessionIdWithSessionStartTimestamp:(id *)timestamp;
- (void)reportCameraSessionLatency;
- (void)resetMessageSessionId;
- (void)resetUnlockSessionId;
- (void)startCameraSession;
- (void)stop;
- (void)updateMessageSessionWithSessionStopTimestamp:(double)timestamp;
- (void)updateUnlockSessionWithSessionStopTimestamp:(id *)timestamp;
@end

@implementation FMCameraSession

- (FMCameraSession)initWithQueue:(id)queue
{
  queueCopy = queue;
  v8.receiver = self;
  v8.super_class = FMCameraSession;
  v5 = [(FMCameraSession *)&v8 init];
  queue = v5->_queue;
  v5->_queue = queueCopy;

  return v5;
}

- (void)startCameraSession
{
  dispatch_assert_queue_V2(self->_queue);
  self->_cameraSessionRequestTimestampNanoSeconds = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  mach_timebase_info(&self->_timeReference.machTimebase);
  self->_timeReference.continuousTime = mach_continuous_time();
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&__buf, HostTimeClock);
  self->_timeReference.mediaTime = __buf;
  __buf.value = 0;
  arc4random_buf(&__buf, 8uLL);
  self->_cameraSessionId = __buf.value;
  v6 = objc_alloc_init(AVCaptureSession);
  session = self->_session;
  self->_session = v6;

  session = [(FMCameraSession *)self session];
  [session beginConfiguration];

  device = [(FMCameraSession *)self device];
  if (device)
  {
    session7 = [[AVCaptureDeviceInput alloc] initWithDevice:device error:0];
    if (session7)
    {
      session2 = [(FMCameraSession *)self session];
      [session2 addInput:session7];

      deviceType = [device deviceType];
      v13 = [deviceType isEqualToString:AVCaptureDeviceTypeBuiltInTrueDepthCamera];

      if (v13)
      {
        v15 = sub_100004784(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__buf.value) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "device type is true depth: configuring depth format and frame rate", &__buf, 2u);
        }

        [device lockForConfiguration:0];
        activeFormat = [device activeFormat];
        supportedDepthDataFormats = [activeFormat supportedDepthDataFormats];
        lastObject = [supportedDepthDataFormats lastObject];
        [device setActiveDepthDataFormat:lastObject];

        CMTimeMake(&v28, 1, 15);
        __buf = v28;
        [device setActiveDepthDataMinFrameDuration:&__buf];
        [device unlockForConfiguration];
      }

      session6 = objc_opt_new();
      [session6 setMetadataObjectsDelegate:self queue:self->_queue];
      session3 = [(FMCameraSession *)self session];
      [session3 addOutput:session6];

      isFaceTrackingSupported = [session6 isFaceTrackingSupported];
      if (isFaceTrackingSupported)
      {
        [session6 setFaceTrackingMetadataObjectTypesAvailable:1];
        v30 = AVMetadataObjectTypeTrackedFaces;
        v22 = [NSArray arrayWithObjects:&v30 count:1];
        [session6 setMetadataObjectTypes:v22];

        [session6 setFaceTrackingMaxFaces:1];
        [session6 setFaceTrackingPlusEnabled:1];
        session4 = [(FMCameraSession *)self session];
        [session4 commitConfiguration];

        session5 = [(FMCameraSession *)self session];
        [session5 startRunning];
      }

      else
      {
        v27 = sub_100004784(isFaceTrackingSupported);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_1000058B4();
        }

        session5 = [(FMCameraSession *)self session];
        [session5 commitConfiguration];
      }
    }

    else
    {
      v26 = sub_100004784(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_1000058E8();
      }

      session6 = [(FMCameraSession *)self session];
      [session6 commitConfiguration];
    }
  }

  else
  {
    v25 = sub_100004784(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_10000591C();
    }

    session7 = [(FMCameraSession *)self session];
    [session7 commitConfiguration];
  }
}

- (void)generateUnlockSessionIdWithSessionStartTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v6 = *timestamp;
  v7 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  [(FMCameraSession *)self setUnlockSessionStats:&__buf];
}

- (void)updateUnlockSessionWithSessionStopTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = *&timestamp->var0;
  self->_unlockSessionStats.unlockSessionStopTime.epoch = timestamp->var3;
  *&self->_unlockSessionStats.unlockSessionStopTime.value = v5;
}

- (void)resetUnlockSessionId
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  v6 = v4;
  v7 = epoch;
  v3 = 0;
  [(FMCameraSession *)self setUnlockSessionStats:&v3];
}

- (void)generateMessageSessionIdWithSessionStartTimestamp:(double)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  memset(&v7[8], 0, 48);
  *v7 = HAFacialMetricsGenerateHashForTimestamp();
  objc_msgSend__retrieveCmTimeForAbsoluteTimestamp_(self, timestamp);
  *&v7[48] = kCMTimeInvalid.epoch;
  *&v7[32] = *&kCMTimeInvalid.value;
  v5[0] = *v7;
  v5[1] = *&v7[16];
  v5[2] = *&v7[32];
  v6 = *&v7[48];
  [(FMCameraSession *)self setMessageAppSessionStats:v5];
}

- (void)updateMessageSessionWithSessionStopTimestamp:(double)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  objc_msgSend__retrieveCmTimeForAbsoluteTimestamp_(self, timestamp);
  self->_messageAppSessionStats.messageSessionStopTime = v5;
}

- (void)resetMessageSessionId
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  v6 = v4;
  v7 = epoch;
  v3 = 0;
  [(FMCameraSession *)self setMessageAppSessionStats:&v3];
}

- (AVCaptureDevice)device
{
  v2 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInTrueDepthCamera mediaType:AVMediaTypeVideo position:2];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100004784(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "using true depth camera";
      v6 = &v9;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v7 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:2];
    v3 = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    v4 = sub_100004784(v7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "true depth not available: using wide angle camera";
      v6 = buf;
      goto LABEL_7;
    }
  }

LABEL_9:

  return v3;
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  objectsCopy = objects;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_firstPacketReceived)
  {
    self->_cameraSessionFirstPacketTimestampNanoSeconds = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    self->_firstPacketReceived = 1;
    [(FMCameraSession *)self reportCameraSessionLatency];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objectsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = AVMetadataObjectTypeTrackedFaces;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      type = [v13 type];
      v15 = [type isEqualToString:v11];

      if (v15)
      {
        break;
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    payload = [v13 payload];

    if (!payload)
    {
      goto LABEL_16;
    }

    v18 = [(FMCameraSession *)self _packetFromMetrics:payload];
    if (v18)
    {
      delegate = [(FMCameraSession *)self delegate];
      [delegate handleFacialMetricsPacket:v18 withTimestamp:{-[FMCameraSession _machContinuousTimeForMetrics:](self, "_machContinuousTimeForMetrics:", payload)}];
    }
  }

  else
  {
LABEL_11:

LABEL_16:
    payload = sub_100004784(v16);
    if (os_log_type_enabled(payload, OS_LOG_TYPE_ERROR))
    {
      sub_100005950();
    }
  }
}

- (id)_packetFromMetrics:(id)metrics
{
  metricsCopy = metrics;
  dispatch_assert_queue_V2(self->_queue);
  memset(&v40[7], 0, 24);
  v5 = objc_msgSend__cmTimeForMetrics_(self);
  v6 = sub_100004784(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100005990();
  }

  objc_msgSend_unlockSessionStats(self);
  if (v40[0] && (objc_msgSend_unlockSessionStats(self), time = v38, objc_msgSend_unlockSessionStats(self), rhs = v36, lhs = *&v40[7], [(FMCameraSession *)self _isPacketWithinRangeForTimestamp:&lhs withSessionStartTime:&time andSessionStopTime:&rhs]))
  {
    objc_msgSend_unlockSessionStats(self);
    rhs = v34;
    lhs = *&v40[7];
    CMTimeSubtract(&time, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    resetUnlockSessionId = objc_msgSend_unlockSessionStats(self);
    v9 = v33;
  }

  else
  {
    resetUnlockSessionId = objc_msgSend_unlockSessionStats(self);
    Seconds = -1.0;
    if (v32)
    {
      objc_msgSend_unlockSessionStats(self);
      time = v31;
      rhs = *&v40[7];
      resetUnlockSessionId = CMTimeCompare(&time, &rhs);
      if ((resetUnlockSessionId & 0x80000000) != 0)
      {
        v10 = sub_100004784(resetUnlockSessionId);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_1000059C4();
        }

        resetUnlockSessionId = [(FMCameraSession *)self resetUnlockSessionId];
      }
    }

    v9 = 0;
  }

  v11 = sub_100004784(resetUnlockSessionId);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000059F8();
  }

  objc_msgSend_messageAppSessionStats(self);
  if (v30 && (objc_msgSend_messageAppSessionStats(self), time = v29, objc_msgSend_messageAppSessionStats(self), rhs = v28, lhs = *&v40[7], [(FMCameraSession *)self _isPacketWithinRangeForTimestamp:&lhs withSessionStartTime:&time andSessionStopTime:&rhs]))
  {
    objc_msgSend_messageAppSessionStats(self);
    rhs = v27;
    lhs = *&v40[7];
    CMTimeSubtract(&time, &lhs, &rhs);
    v12 = CMTimeGetSeconds(&time);
    resetMessageSessionId = objc_msgSend_messageAppSessionStats(self);
    v14 = v26;
  }

  else
  {
    resetMessageSessionId = objc_msgSend_messageAppSessionStats(self);
    v12 = -1.0;
    if (v25)
    {
      objc_msgSend_messageAppSessionStats(self);
      time = v24;
      rhs = *&v40[7];
      resetMessageSessionId = CMTimeCompare(&time, &rhs);
      if ((resetMessageSessionId & 0x80000000) != 0)
      {
        v15 = sub_100004784(resetMessageSessionId);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_100005A2C();
        }

        resetMessageSessionId = [(FMCameraSession *)self resetMessageSessionId];
      }
    }

    v14 = 0;
  }

  if (v14 | v9)
  {
    v16 = [FMMetricsDistiller packetFromMetrics:metricsCopy withSessionId:self->_cameraSessionId andUnlockSessionId:v9 withSecondsFromStart:Seconds andMessageSessionId:v12 withSecondsFromStart:?];
    v17 = v16;
    if (v16)
    {
      if (!self->_metricsArePublishable)
      {
        self->_metricsArePublishable = 1;
        v18 = sub_100004784(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(time.value) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "metrics are now publishable", &time, 2u);
        }
      }

      v17 = v17;
      v19 = v17;
    }

    else
    {
      v20 = sub_100004784(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100005AA0();
      }

      if (self->_metricsArePublishable)
      {
        self->_metricsArePublishable = 0;
        v22 = sub_100004784(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(time.value) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "metrics are no longer publishable", &time, 2u);
        }
      }

      v19 = 0;
    }
  }

  else
  {
    v17 = sub_100004784(resetMessageSessionId);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100005A60();
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)_isPacketWithinRangeForTimestamp:(id *)timestamp withSessionStartTime:(id *)time andSessionStopTime:(id *)stopTime
{
  if ((time->var2 & 1) == 0 || (timestamp->var2 & 1) == 0)
  {
    v6 = sub_100004784(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100005AD4();
    }

    goto LABEL_5;
  }

  time1 = *time;
  v12 = *timestamp;
  v9 = CMTimeCompare(&time1, &v12);
  if (v9 >= 1)
  {
    v6 = sub_100004784(v9);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return 0;
    }

    LOWORD(time1.value) = 0;
    v10 = "packet timestamp is before sessionStartTime";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, &time1, 2u);
    goto LABEL_5;
  }

  if (stopTime->var2)
  {
    time1 = *timestamp;
    v12 = *stopTime;
    v11 = CMTimeCompare(&time1, &v12);
    if (v11 >= 1)
    {
      v6 = sub_100004784(v11);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      LOWORD(time1.value) = 0;
      v10 = "packet timestamp is after sessionStopTime";
      goto LABEL_9;
    }
  }

  return 1;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_cmTimeForMetrics:(SEL)metrics
{
  v5 = a4;
  memset(&v11, 0, sizeof(v11));
  v6 = [v5 objectForKeyedSubscript:@"timestamp"];
  CMTimeMakeFromDictionary(&v11, v6);

  if (v11.flags)
  {
    *retstr = v11;
  }

  else
  {
    v8 = sub_100004784(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100005B08(v5);
    }

    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(retstr, HostTimeClock);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_retrieveCmTimeForAbsoluteTimestamp:(SEL)timestamp
{
  memset(&v16, 0, sizeof(v16));
  do
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    value = time.value;
    timescale = time.timescale;
    v17 = *&time.flags;
    epoch_high = HIDWORD(time.epoch);
    v9 = CMClockGetHostTimeClock();
    CMClockGetTime(&v16, v9);
    Current = CFAbsoluteTimeGetCurrent();
    lhs = v16;
    v13.value = value;
    v13.timescale = timescale;
    *&v13.flags = v17;
    HIDWORD(v13.epoch) = epoch_high;
    CMTimeSubtract(&time, &lhs, &v13);
  }

  while (CMTimeGetSeconds(&time) > 0.125);
  lhs = v16;
  v13.value = value;
  v13.timescale = timescale;
  *&v13.flags = v17;
  HIDWORD(v13.epoch) = epoch_high;
  CMTimeSubtract(&time, &lhs, &v13);
  Seconds = CMTimeGetSeconds(&time);
  memset(&time, 0, sizeof(time));
  CMTimeMakeWithSeconds(&lhs, Seconds * 0.5, timescale);
  v13.value = value;
  v13.timescale = timescale;
  *&v13.flags = v17;
  HIDWORD(v13.epoch) = epoch_high;
  CMTimeAdd(&time, &v13, &lhs);
  CMTimeMakeWithSeconds(&lhs, Current - a4, timescale);
  v13 = time;
  return CMTimeSubtract(retstr, &v13, &lhs);
}

- (unint64_t)_machContinuousTimeForMetrics:(id)metrics
{
  metricsCopy = metrics;
  memset(&v19, 0, sizeof(v19));
  v5 = [metricsCopy objectForKeyedSubscript:@"timestamp"];
  CMTimeMakeFromDictionary(&v19, v5);

  if ((v19.flags & 1) == 0)
  {
    v7 = sub_100004784(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005B08(metricsCopy);
    }

LABEL_11:

    v14 = mach_continuous_time();
    goto LABEL_12;
  }

  start = self->_timeReference.mediaTime;
  v16 = v19;
  CMTimeRangeFromTimeToTime(&v17, &start, &v16);
  start = v17.duration;
  Seconds = CMTimeGetSeconds(&start);
  v10 = sub_100004784(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100005B98(v10, Seconds);
  }

  if (Seconds < 0.0 || Seconds > 35.0)
  {
    v7 = sub_100004784(v11);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005C14(v7, Seconds);
    }

    goto LABEL_11;
  }

  LODWORD(v12) = self->_timeReference.machTimebase.numer;
  LODWORD(v13) = self->_timeReference.machTimebase.denom;
  v14 = self->_timeReference.continuousTime + (Seconds * 1000000000.0 / v12 * v13);
LABEL_12:

  return v14;
}

- (void)stop
{
  session = [(FMCameraSession *)self session];
  [session stopRunning];
}

- (void)reportCameraSessionLatency
{
  v4 = @"timeToFirstPacketLatency";
  v2 = [NSNumber numberWithDouble:(self->_cameraSessionFirstPacketTimestampNanoSeconds - self->_cameraSessionRequestTimestampNanoSeconds) / 1000000.0];
  v5 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  AnalyticsSendEvent();
}

- (FMCameraSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end