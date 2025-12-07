@interface SBDeviceStationaryMotionDetector
+ (int64_t)stateFromTimeSinceLastStationary:(double)stationary timeSinceLastNonStationary:(double)nonStationary stationaryThreshold:(double)threshold pickUpBuffer:(double)buffer;
- (SBDeviceStationaryMotionDetector)init;
- (void)queryWithStationaryThresholdTime:(double)time pickUpBufferTime:(double)bufferTime callbackOnMainQueue:(id)queue;
@end

@implementation SBDeviceStationaryMotionDetector

- (SBDeviceStationaryMotionDetector)init
{
  v6.receiver = self;
  v6.super_class = SBDeviceStationaryMotionDetector;
  v2 = [(SBDeviceStationaryMotionDetector *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1CD0]);
    activityManager = v2->_activityManager;
    v2->_activityManager = v3;
  }

  return v2;
}

- (void)queryWithStationaryThresholdTime:(double)time pickUpBufferTime:(double)bufferTime callbackOnMainQueue:(id)queue
{
  queueCopy = queue;
  if (time <= 0.0)
  {
    [SBDeviceStationaryMotionDetector queryWithStationaryThresholdTime:a2 pickUpBufferTime:self callbackOnMainQueue:?];
  }

  if (bufferTime <= 0.0)
  {
    [SBDeviceStationaryMotionDetector queryWithStationaryThresholdTime:a2 pickUpBufferTime:self callbackOnMainQueue:?];
    if (queueCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    [SBDeviceStationaryMotionDetector queryWithStationaryThresholdTime:a2 pickUpBufferTime:self callbackOnMainQueue:?];
    goto LABEL_5;
  }

  if (!queueCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v10 dateByAddingTimeInterval:-(time + bufferTime + 1.0)];
  activityManager = self->_activityManager;
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__SBDeviceStationaryMotionDetector_queryWithStationaryThresholdTime_pickUpBufferTime_callbackOnMainQueue___block_invoke;
  v16[3] = &unk_2783B0BA0;
  timeCopy = time;
  bufferTimeCopy = bufferTime;
  v17 = v10;
  v18 = queueCopy;
  v14 = queueCopy;
  v15 = v10;
  [(CMMotionActivityManager *)activityManager queryActivityStartingFromDate:v11 toDate:v15 toQueue:mainQueue withHandler:v16];
}

void __106__SBDeviceStationaryMotionDetector_queryWithStationaryThresholdTime_pickUpBufferTime_callbackOnMainQueue___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSince1970];
  v6 = v5;
  [*(a1 + 32) timeIntervalSince1970];
  v8 = v7;

  v10 = SBLogStationaryMotionDetector(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = v6 - v8;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "CMMotionActivityManager responded in %0.2f seconds.", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = v3;
  v11 = [v3 reverseObjectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v15 = 1.79769313e308;
    v16 = 1.79769313e308;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v29 + 1) + 8 * v17);
      v19 = SBLogStationaryMotionDetector(v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = *&v18;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Processing Activity %{public}@", buf, 0xCu);
      }

      if (v16 != 1.79769313e308 && v15 != 1.79769313e308)
      {
        break;
      }

      [*(a1 + 32) timeIntervalSince1970];
      v21 = v20;
      v22 = [(__CFString *)v18 startDate];
      [v22 timeIntervalSince1970];
      v24 = v21 - v23;

      v12 = [(__CFString *)v18 stationary];
      if ((v12 & 1) != 0 || v15 != 1.79769313e308)
      {
        v12 = [(__CFString *)v18 stationary];
        if ((v12 & (v16 == 1.79769313e308)) != 0)
        {
          v16 = v24;
        }
      }

      else
      {
        v15 = v24;
      }

      if (v13 == ++v17)
      {
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
        v13 = v12;
        if (v12)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v15 = 1.79769313e308;
    v16 = 1.79769313e308;
  }

  v25 = [SBDeviceStationaryMotionDetector stateFromTimeSinceLastStationary:v16 timeSinceLastNonStationary:v15 stationaryThreshold:*(a1 + 48) pickUpBuffer:*(a1 + 56)];
  v26 = SBLogStationaryMotionDetector(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if (v25 > 2)
    {
      *&v27 = COERCE_DOUBLE(@"No Description");
    }

    else
    {
      v27 = off_2783B0BC0[v25];
    }

    *buf = 138543362;
    v35 = *&v27;
    _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Resolved state %{public}@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))(v16, v15);
}

+ (int64_t)stateFromTimeSinceLastStationary:(double)stationary timeSinceLastNonStationary:(double)nonStationary stationaryThreshold:(double)threshold pickUpBuffer:(double)buffer
{
  if (stationary == nonStationary)
  {
    return 0;
  }

  if (nonStationary <= buffer)
  {
    return 1;
  }

  if (stationary >= threshold && stationary < nonStationary)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)queryWithStationaryThresholdTime:(uint64_t)a1 pickUpBufferTime:(uint64_t)a2 callbackOnMainQueue:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceStationaryMotionDetector.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"stationaryThreshold > 0"}];
}

- (void)queryWithStationaryThresholdTime:(uint64_t)a1 pickUpBufferTime:(uint64_t)a2 callbackOnMainQueue:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceStationaryMotionDetector.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"pickUpBufferTime > 0"}];
}

- (void)queryWithStationaryThresholdTime:(uint64_t)a1 pickUpBufferTime:(uint64_t)a2 callbackOnMainQueue:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceStationaryMotionDetector.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"callback != nil"}];
}

@end