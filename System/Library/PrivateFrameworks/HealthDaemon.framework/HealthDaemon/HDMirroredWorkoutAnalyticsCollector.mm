@interface HDMirroredWorkoutAnalyticsCollector
- (HDMirroredWorkoutAnalyticsCollector)init;
- (void)_reset;
- (void)sentData;
- (void)startMirroring;
- (void)startedMirroring;
- (void)stoppedMirroring;
- (void)submitHeartBeatFailuresWithCoordinator:(id)coordinator numOfHeartbeatFailures:(int64_t)failures workoutDuration:(double)duration isFirstParty:(BOOL)party sessionID:(id)d;
- (void)submitMirroringMetricsWithCoordinator:(id)coordinator isFirstParty:(BOOL)party;
@end

@implementation HDMirroredWorkoutAnalyticsCollector

- (HDMirroredWorkoutAnalyticsCollector)init
{
  v5.receiver = self;
  v5.super_class = HDMirroredWorkoutAnalyticsCollector;
  v2 = [(HDMirroredWorkoutAnalyticsCollector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HDMirroredWorkoutAnalyticsCollector *)v2 _reset];
  }

  return v3;
}

- (void)_reset
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(HDMirroredWorkoutAnalyticEvent);
    v3 = *(v1 + 5);
    *(v1 + 5) = v2;

    v4 = [MEMORY[0x277CCD790] timerWithKey:@"StartMirroringTimerKey"];
    v5 = *(v1 + 1);
    *(v1 + 1) = v4;

    v6 = [MEMORY[0x277CCD790] timerWithKey:@"StopMirroringTimerKey"];
    v7 = *(v1 + 2);
    *(v1 + 2) = v6;

    v8 = [MEMORY[0x277CCD790] timerWithKey:@"SendDataTimerKey"];
    v9 = *(v1 + 3);
    *(v1 + 3) = v8;

    [*(v1 + 1) clear];
    [*(v1 + 2) clear];
    v10 = *(v1 + 3);

    return [v10 clear];
  }

  return result;
}

- (void)startMirroring
{
  self->_startTime = CFAbsoluteTimeGetCurrent();
  startMirroringTimer = self->_startMirroringTimer;

  [(HKPersistentTimer *)startMirroringTimer start];
}

- (void)startedMirroring
{
  timerValue = [(HKPersistentTimer *)self->_startMirroringTimer timerValue];

  if (timerValue)
  {
    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setTimeTakenToStartMirroring:[(HKPersistentTimer *)self->_startMirroringTimer elapsedMilliSeconds]];
    startMirroringTimer = self->_startMirroringTimer;

    [(HKPersistentTimer *)startMirroringTimer clear];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to track successful start of mirrored workout: timer does not exist.", v6, 2u);
    }
  }
}

- (void)stoppedMirroring
{
  timerValue = [(HKPersistentTimer *)self->_stopMirroringTimer timerValue];

  if (timerValue)
  {
    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setMirroringDuration:(CFAbsoluteTimeGetCurrent() - self->_startTime)];
    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setTimeTakenToStopMirroring:[(HKPersistentTimer *)self->_stopMirroringTimer elapsedMilliSeconds]];
    stopMirroringTimer = self->_stopMirroringTimer;

    [(HKPersistentTimer *)stopMirroringTimer clear];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to track successful stop of mirrored workout: timer does not exist.", v6, 2u);
    }
  }
}

- (void)sentData
{
  timerValue = [(HKPersistentTimer *)self->_sendDataTimer timerValue];

  if (timerValue)
  {
    elapsedMilliSeconds = [(HKPersistentTimer *)self->_sendDataTimer elapsedMilliSeconds];
    if (elapsedMilliSeconds <= [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent maxTimeTakenToSendData])
    {
      if (elapsedMilliSeconds < [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent minTimeTakenToSendData])
      {
        [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setMinTimeTakenToSendData:elapsedMilliSeconds];
      }
    }

    else
    {
      [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setMaxTimeTakenToSendData:elapsedMilliSeconds];
    }

    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setTimeTakenToSendData:(elapsedMilliSeconds + [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent timeTakenToSendData])];
    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setNumberOfSendRequests:[(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent numberOfSendRequests]+ 1];
    sendDataTimer = self->_sendDataTimer;

    [(HKPersistentTimer *)sendDataTimer clear];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to track successful stop of mirrored workout: timer does not exist.", v7, 2u);
    }
  }
}

- (void)submitMirroringMetricsWithCoordinator:(id)coordinator isFirstParty:(BOOL)party
{
  partyCopy = party;
  coordinatorCopy = coordinator;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Sending mirroring metrics to Analytics collector", v10, 2u);
  }

  numberOfSendRequests = [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent numberOfSendRequests];
  if (numberOfSendRequests)
  {
    v9 = ([(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent timeTakenToSendData]/ numberOfSendRequests);
  }

  else
  {
    v9 = 0.0;
  }

  [coordinatorCopy workout_reportMirroringEventWithStartDuration:-[HDMirroredWorkoutAnalyticEvent numberOfSendRequests](self->_mirroredWorkoutEvent stopDuration:"numberOfSendRequests") mirroringDuration:partyCopy numOfSendDataRequests:-[HDMirroredWorkoutAnalyticEvent timeTakenToStartMirroring](self->_mirroredWorkoutEvent maxTimeToSendData:"timeTakenToStartMirroring") minTimeToSendData:-[HDMirroredWorkoutAnalyticEvent timeTakenToStopMirroring](self->_mirroredWorkoutEvent avgTimeToSendData:"timeTakenToStopMirroring") isFirstParty:{-[HDMirroredWorkoutAnalyticEvent mirroringDuration](self->_mirroredWorkoutEvent, "mirroringDuration"), -[HDMirroredWorkoutAnalyticEvent maxTimeTakenToSendData](self->_mirroredWorkoutEvent, "maxTimeTakenToSendData"), -[HDMirroredWorkoutAnalyticEvent minTimeTakenToSendData](self->_mirroredWorkoutEvent, "minTimeTakenToSendData"), v9}];

  [(HDMirroredWorkoutAnalyticsCollector *)self _reset];
}

- (void)submitHeartBeatFailuresWithCoordinator:(id)coordinator numOfHeartbeatFailures:(int64_t)failures workoutDuration:(double)duration isFirstParty:(BOOL)party sessionID:(id)d
{
  partyCopy = party;
  dCopy = d;
  coordinatorCopy = coordinator;
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Sending heartbeat failure metrics to Analytics collector", v15, 2u);
  }

  uUIDString = [dCopy UUIDString];

  [coordinatorCopy workout_reportWorkoutEventWithHeartBeatFailures:failures workoutDuration:partyCopy isFirstParty:uUIDString sessionID:duration];
}

@end