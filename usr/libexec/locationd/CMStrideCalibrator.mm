@interface CMStrideCalibrator
- (BOOL)checkValidTrack:(id)track associatedEntry:(const CLStepDistance *)entry;
- (id).cxx_construct;
- (id)initInUniverse:(id)universe stepCountDb:(shared_ptr<CLStepCountRecorderDb>)db;
- (shared_ptr<CMMobilityCal::GPSRawSpeedToKValueTable>)getSpdToKTable;
- (void)addLatestCalData:(id)data;
- (void)attemptForcedLocation;
- (void)checkForLocationStateTransition;
- (void)checkTimeToSendNewCAGPSCalibration;
- (void)dealloc;
- (void)feedBodyMetrics:(CLBodyMetrics *)metrics;
- (void)fsm:(id)fsm didTransitionFromState:(int)state toState:(int)toState;
- (void)fsm:(id)fsm didUpdateLocationAtTime:(double)time;
- (void)fsm:(id)fsm didYieldTrack:(id)track;
- (void)quitForcedLocationState;
- (void)sendGPSCoreAnalyticsAndUpdateTime;
- (void)setSession:(int64_t)session;
- (void)strideCalibrationDatabase:(id)database didInsertEntry:(CLStrideCalEntry *)entry;
- (void)tick:(double)tick;
- (void)updateCalibrationBins:(double)bins;
- (void)updateUserHeight:(int64_t)height;
@end

@implementation CMStrideCalibrator

- (void)checkForLocationStateTransition
{
  locationState = [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM locationState];
  inOutdoorPedestrianSession = [(CMStrideCalibrator *)self inOutdoorPedestrianSession];
  if (inOutdoorPedestrianSession && locationState <= 2)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v6 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      fCurrentSession = self->fCurrentSession;
      v12 = 134218242;
      v13 = fCurrentSession;
      v14 = 2080;
      v15 = [+[CMWorkout workoutName:](CMWorkout workoutName:{fCurrentSession), "UTF8String"}];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "ForcingLocationDueToGizmoRequest,session,%ld,%s", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195B7E0(self);
    }

    [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:3];
  }

  else
  {
    sub_10001A3E8(inOutdoorPedestrianSession, v5);
    if ((sub_10001CF3C() & 1) == 0 && [(CMStrideCalibrator *)self outOfSession]&& [(CMStrideCalibrationActivityBuffer *)self->fActivityBuffer isRunningStateInWindow])
    {
      if (locationState >= 2)
      {
        if (locationState > 2)
        {
          return;
        }
      }

      else if ([(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow]>= 0xB)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10195B06C();
        }

        v8 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          stepsInWindow = [(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow];
          v12 = 67109120;
          LODWORD(v13) = stepsInWindow;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "StepRunNotification,Pass,LeechingLocation,Steps,%d", &v12, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195B600(&self->fStepsBuffer);
        }

        [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:2];
      }

      if ([(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow]>= 0x65)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10195B16C();
        }

        v10 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          stepsInWindow2 = [(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow];
          v12 = 67109120;
          LODWORD(v13) = stepsInWindow2;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "StepRunNotification,Pass,AttemptingToForceLocation,Steps,%d", &v12, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195B6F0(&self->fStepsBuffer);
        }

        [(CMStrideCalibrator *)self attemptForcedLocation];
      }
    }
  }
}

- (void)checkTimeToSendNewCAGPSCalibration
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    lastGPSCalibrationUpdateTime = self->lastGPSCalibrationUpdateTime;
    v6 = 134218496;
    v7 = lastGPSCalibrationUpdateTime;
    v8 = 2048;
    v9 = Current;
    v10 = 2048;
    v11 = Current - lastGPSCalibrationUpdateTime;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Checking send time in checkTimeToSendNewCAGPSCalibration: LastTime: %0.3f, CurrentTime: %0.3f, Difference: %0.3f", &v6, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195B4D8(self, Current);
  }

  if (Current - self->lastGPSCalibrationUpdateTime >= 28800.0)
  {
    [(CMStrideCalibrator *)self sendGPSCoreAnalyticsAndUpdateTime];
  }
}

- (id)initInUniverse:(id)universe stepCountDb:(shared_ptr<CLStepCountRecorderDb>)db
{
  ptr = db.__ptr_;
  v7 = sub_10001A3E8(self, a2);
  v9 = sub_10001CF04(v7, v8);
  if (v9 & 1) != 0 || (sub_10001A3E8(v9, v10), (sub_10001CF3C()))
  {
    v49.receiver = self;
    v49.super_class = CMStrideCalibrator;
    v11 = [(CMStrideCalibrator *)&v49 init];
    if (v11)
    {
      *(v11 + 11) = universe;
      v13 = *ptr;
      v12 = *(ptr + 1);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = *(v11 + 22);
      *(v11 + 21) = v13;
      *(v11 + 22) = v12;
      if (v14)
      {
        sub_100008080(v14);
      }

      *(v11 + 35) = 0;
      [+[CMPedometerTableRawSpeedToKValue sharedInstance](CMPedometerTableRawSpeedToKValue logBins];
      [+[CMPedometerTableStepCadenceToStrideLength sharedInstance](CMPedometerTableStepCadenceToStrideLength logBins];
      v15 = objc_alloc_init(CMStrideCalLocationFSM);
      *(v11 + 19) = v15;
      v16 = [(CMStrideCalLocationFSM *)v15 setDelegate:v11];
      *(v11 + 184) = xmmword_101CB1C08;
      *(v11 + 200) = unk_101CB1C18;
      *(v11 + 216) = xmmword_101CB1C28;
      *(v11 + 228) = *(&xmmword_101CB1C28 + 12);
      sub_10001A3E8(v16, v17);
      v18 = sub_10001CF3C();
      if ((v18 & 1) != 0 || (v20 = sub_10001A3E8(v18, v19), sub_10001CF04(v20, v21)))
      {
        LOBYTE(v44[0]) = 1;
        v48 = 1;
        sub_10085F234();
      }

      v41 = *(v11 + 33);
      *(v11 + 32) = 0;
      *(v11 + 33) = 0;
      if (v41)
      {
        sub_100008080(v41);
      }

      *(v11 + 31) = CFAbsoluteTimeGetCurrent();
      *(v11 + 14) = objc_alloc_init(CMStrideCalibrationElevationBuffer);
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v22 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "AutomaticStrideCalibration,Pass,CreatingDaemonCacheForCalibrationBins", buf, 2u);
      }

      v23 = sub_10000A100(121, 2);
      if (v23)
      {
        sub_10195B194();
      }

      sub_10001A3E8(v23, v24);
      v25 = sub_10001CF3C();
      if (v25)
      {
        v27 = objc_alloc_init(CMStrideCalibrationStats);
        *(v11 + 17) = v27;
      }

      else
      {
        v30 = sub_10001A3E8(v25, v26);
        v27 = sub_100023B30(v30, v31);
        if ((v27 & 0x4000000) != 0)
        {
          *(v11 + 13) = objc_alloc_init(CMStrideCalibrationActivityBuffer);
          v32 = [objc_msgSend(*(v11 + 11) "silo")];
          *(v11 + 12) = v32;
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_10085CB88;
          v47[3] = &unk_102447418;
          v47[4] = v11;
          v27 = [v32 setHandler:v47];
        }
      }

      v33 = sub_10001A3E8(v27, v28);
      if ((sub_100023B30(v33, v34) & 0x4000000) != 0)
      {
        *(v11 + 20) = objc_alloc_init(NSMutableArray);
        *(v11 + 16) = objc_alloc_init(CMStrideCalibrationStepCountBuffer);
        v35 = -[CMStrideCalibrationDatabase initWithSilo:]([CMStrideCalibrationDatabase alloc], "initWithSilo:", [*(v11 + 11) silo]);
        *(v11 + 18) = v35;
        [(CMStrideCalibrationDatabase *)v35 setDelegate:v11];
        [*(v11 + 18) registerStrideCalDbForColdStorage:{objc_msgSend(objc_msgSend(*(v11 + 11), "vendor"), "proxyForService:", @"CMHealthColdStorageService"}];
      }

      if (+[CMStrideCalibrationRunningFormBuffer isAvailable])
      {
        *(v11 + 15) = objc_alloc_init(CMStrideCalibrationRunningFormBuffer);
      }

      setupCLNotifiers = [v11 setupCLNotifiers];
      v11[288] = 0;
      v38 = sub_100011660(setupCLNotifiers, v37);
      sub_100185AC0(v38, &v45);
      sub_10001CB4C(v45, "MotionLoggerLogPedometer", v11 + 288, 0xFFFFFFFFLL);
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v39 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "AutomaticStrideCalibration,Success,AllChecksPassed", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195B280(buf);
        v44[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "AutomaticStrideCalibration,Success,AllChecksPassed", v44, 2);
        v43 = v42;
        sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator initInUniverse:stepCountDb:]", "%s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      if (v46)
      {
        sub_100008080(v46);
      }
    }
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v29 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Not companion or watch. Returning.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195B080();
    }

    return 0;
  }

  return v11;
}

- (void)dealloc
{
  [(CMStrideCalibrator *)self teardownCLNotifiers];
  [(CLTimer *)self->fStopOpportunisticCalibrationTimer invalidate];

  self->fStopOpportunisticCalibrationTimer = 0;
  cntrl = self->fStepCountDb.__cntrl_;
  self->fStepCountDb.__ptr_ = 0;
  self->fStepCountDb.__cntrl_ = 0;
  if (cntrl)
  {
    sub_100008080(cntrl);
  }

  v4.receiver = self;
  v4.super_class = CMStrideCalibrator;
  [(CMStrideCalibrator *)&v4 dealloc];
}

- (void)setSession:(int64_t)session
{
  if (self->fCurrentSession != session)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v5 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      fCurrentSession = self->fCurrentSession;
      v7 = 134218240;
      v8 = fCurrentSession;
      v9 = 2048;
      sessionCopy = session;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "setSession,oldSession,%ld,newSession,%ld", &v7, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195B2C4(&self->fCurrentSession, session);
    }

    self->fCurrentSession = session;
    if (![(CMStrideCalibrator *)self inOutdoorPedestrianSession])
    {
      [(CMStrideCalibrator *)self quitForcedLocationState];
    }

    [(CMStrideCalibrator *)self checkForLocationStateTransition];
  }
}

- (void)addLatestCalData:(id)data
{
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = [objc_msgSend(data "description")];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "A new calData is added: %s", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195B3D4(data);
  }

  [(NSMutableArray *)self->fLatestCalDataArray addObject:data];
}

- (void)tick:(double)tick
{
  [(CMStrideCalibrator *)self updateCalibrationBins:tick];
  [(CMStrideCalibrator *)self checkForLocationStateTransition];

  [(CMStrideCalibrator *)self checkTimeToSendNewCAGPSCalibration];
}

- (void)attemptForcedLocation
{
  if (![(CMStrideCalibrator *)self outOfSession])
  {
    sub_10195B8FC();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v17 = Current;
  v6 = sub_1000206B4(v4, v5);
  v7 = sub_1000B9370(v6, "StrideCalibrationLastCalibration", &v17);
  if (v7 && Current - v17 < 2400.0)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v9 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v19 = Current - v17;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "AttemptForcedLocation,Fail,NotSufficientTimeSinceLastCalibrationSuccess,TimeSinceLastCalibrationSuccess,%0.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195BDA0();
    }
  }

  else
  {
    v10 = sub_1000206B4(v7, v8);
    v11 = sub_1000B9370(v10, "StrideCalibrationLastCalibrationAttempt", &v17);
    if (v11 && Current - v17 < 1200.0)
    {
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v13 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v19 = Current - v17;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "AttemptForcedLocation,Fail,NotSufficientTimeSinceLastCalibrationAttempt,TimeSinceLastCalibrationAttempt,%0.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195BCA8();
      }
    }

    else
    {
      v14 = sub_1000206B4(v11, v12);
      if (sub_1000B9370(v14, "LastStrideCalibrationConverge", &v17) && Current - v17 < 2592000.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10195B16C();
        }

        v15 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v19 = Current - v17;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "AttemptForcedLocation,Fail,NotSufficientTimeSinceLastConverged,TimeSinceLastCalibrationAttempt,%0.3f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195BBB0();
        }
      }

      else
      {
        if (qword_1025D4270 != -1)
        {
          sub_10195B16C();
        }

        v16 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "AttemptForcedLocation,Success,AllChecksPassed", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195BACC();
        }

        [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:3];
      }
    }
  }
}

- (void)quitForcedLocationState
{
  locationState = [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM locationState];
  if (locationState == 3)
  {
    v5 = sub_1000206B4(locationState, v4);
    Current = CFAbsoluteTimeGetCurrent();
    sub_100116D68(v5, "StrideCalibrationLastCalibrationAttempt", &Current);
    [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:2];
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v6 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Terminated forced calibration.", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195BE98();
    }
  }
}

- (shared_ptr<CMMobilityCal::GPSRawSpeedToKValueTable>)getSpdToKTable
{
  cntrl = self->fGPSCalibrationTable.__cntrl_;
  *v2 = self->fGPSCalibrationTable.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)strideCalibrationDatabase:(id)database didInsertEntry:(CLStrideCalEntry *)entry
{
  v6 = [database isCalibrationConvergedStdForBinWithSpeed:entry->speed];
  if (v6)
  {
    v8 = sub_1000206B4(v6, v7);
    *&v13[0] = CFAbsoluteTimeGetCurrent();
    sub_100116D68(v8, "LastStrideCalibrationConverge", v13);
  }

  [(CMStrideCalibrationStats *)self->fStats activityLoggerLogStrideCalEntry:entry];
  if ([(CMStrideCalibrator *)self calibrationTrackCallback])
  {
    calibrationTrackCallback = [(CMStrideCalibrator *)self calibrationTrackCallback];
    v10 = *&entry->percentGrade;
    v13[4] = *&entry->steps;
    v13[5] = v10;
    v13[6] = *&entry->timestamp;
    v14 = *&entry->runningFormStrideLengthMetrics;
    v11 = *&entry->endTime;
    v13[2] = *&entry->kvalueTrack;
    v13[3] = v11;
    v12 = *&entry->pacebin;
    v13[0] = *&entry->recordId;
    v13[1] = v12;
    calibrationTrackCallback[2](calibrationTrackCallback, v13);
  }
}

- (void)fsm:(id)fsm didTransitionFromState:(int)state toState:(int)toState
{
  v5 = *&toState;
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v8 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109376;
    v9[1] = state;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "LocationStateOld,%d,LocationStateNew,%d", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195BF7C(state, v5);
  }

  if (v5 <= 1)
  {
    [(CMStrideCalibrator *)self stopLeechingLocation];
    [(CMStrideCalibrator *)self stopGpsOdometerSpectatorUpdates];
    [(CMStrideCalibrator *)self stopElevationSpectatorUpdates];
    goto LABEL_12;
  }

  self->fLastGoodLocFix = CFAbsoluteTimeGetCurrent();
  [(CMStrideCalibrator *)self startLeechingLocation];
  [(CMStrideCalibrator *)self startGpsOdometerSpectatorUpdates];
  [(CMStrideCalibrator *)self startElevationSpectatorUpdates];
  if (v5 == 2)
  {
LABEL_12:
    [(CMStrideCalibrator *)self stopLocationUpdates];
    [(CMStrideCalibrator *)self stopGpsOdometerUpdates];
    [(CMStrideCalibrator *)self stopElevationUpdates];
    return;
  }

  [(CMStrideCalibrator *)self startLocationUpdates];
  [(CMStrideCalibrator *)self startGpsOdometerUpdates];
  [(CMStrideCalibrator *)self startElevationUpdates];
  if ([(CMStrideCalibrator *)self outOfSession])
  {
    [(CLTimer *)self->fStopOpportunisticCalibrationTimer setNextFireDelay:360.0];
  }
}

- (void)fsm:(id)fsm didYieldTrack:(id)track
{
  Current = CFAbsoluteTimeGetCurrent();
  v8 = sub_1000206B4(v6, v7);
  sub_100116D68(v8, "StrideCalibrationLastCalibration", &Current);
  v9 = [[CMStrideCalDataContainer alloc] initWithTrack:track session:[(CMStrideCalibrator *)self currentSession]];
  [(CMStrideCalibrator *)self addLatestCalData:v9];
}

- (void)fsm:(id)fsm didUpdateLocationAtTime:(double)time
{
  [(CMStrideCalibrator *)self tickleArrow:fsm];
  if ([(CMStrideCalibrator *)self outOfSession])
  {
    locationState = [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM locationState];
    Current = CFAbsoluteTimeGetCurrent();
    v19 = Current;
    v7 = Current - self->fLastGoodLocFix > 30.0 && locationState == 3;
    v8 = v7;
    if (v7)
    {
      [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:2];
      if (qword_1025D4270 != -1)
      {
        sub_10195B06C();
      }

      v9 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        v10 = Current - self->fLastGoodLocFix;
        *buf = 134217984;
        v21 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "TrackClose,Pass,LocationTimeout,TimeSinceLastPosition,%0.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195C088();
      }

LABEL_17:
      p_fStepsBuffer = &self->fStepsBuffer;
      if ([(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow]<= 0x63)
      {
        [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:2];
        if (qword_1025D4270 != -1)
        {
          sub_10195B16C();
        }

        v12 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
        {
          stepsInWindow = [(CMStrideCalibrationStepCountBuffer *)*p_fStepsBuffer stepsInWindow];
          *buf = 67109120;
          LODWORD(v21) = stepsInWindow;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TrackClose,Pass,ForcedNotSufficientSteps,Steps,%d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195C180(&self->fStepsBuffer);
        }

        v8 = 1;
      }

      stepsInWindow2 = [(CMStrideCalibrationStepCountBuffer *)*p_fStepsBuffer stepsInWindow];
      if (stepsInWindow2 >= 0xA)
      {
        if (!v8)
        {
          return;
        }

        goto LABEL_33;
      }

LABEL_26:
      [(CMStrideCalLocationFSM *)self->fStrideCalLocationFSM requestTransitionToLocationState:1];
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v16 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        stepsInWindow3 = [(CMStrideCalibrationStepCountBuffer *)*p_fStepsBuffer stepsInWindow];
        *buf = 67109120;
        LODWORD(v21) = stepsInWindow3;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "TrackClose,Pass,EnabledNotSufficientSteps,Steps,%d", buf, 8u);
      }

      stepsInWindow2 = sub_10000A100(121, 2);
      if (stepsInWindow2)
      {
        sub_10195C270(p_fStepsBuffer);
      }

LABEL_33:
      v18 = sub_1000206B4(stepsInWindow2, v15);
      sub_100116D68(v18, "StrideCalibrationLastCalibrationAttempt", &v19);
      return;
    }

    if (locationState >= 3)
    {
      goto LABEL_17;
    }

    if (locationState == 2)
    {
      p_fStepsBuffer = &self->fStepsBuffer;
      if ([(CMStrideCalibrationStepCountBuffer *)self->fStepsBuffer stepsInWindow]<= 9)
      {
        goto LABEL_26;
      }
    }
  }
}

- (BOOL)checkValidTrack:(id)track associatedEntry:(const CLStepDistance *)entry
{
  [objc_msgSend(track "start")];
  v8 = v7;
  [objc_msgSend(track "stop")];
  v10 = v9;
  [track distanceRawPed];
  if (v11 <= 0.0)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v21 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v57 = v8;
      v58 = 2048;
      v59 = v10;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "TrackCalibration,Fail,Pedometer distance is zero,startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195C360(v8, v10);
    }

    fStats = self->fStats;
    var1 = entry->var1;
    v24 = @"ZeroDistance";
    v25 = 7;
    goto LABEL_23;
  }

  [track distanceRawPed];
  v13 = v12 / (v10 - v8);
  if (![+[CMPedometerTableRawSpeedToKValue isRawSpeedValid:"isRawSpeedValid:"]
  {
    if (qword_1025D4270 != -1)
    {
      sub_10195B06C();
    }

    v26 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v57 = v13;
      v58 = 2048;
      v59 = v8;
      v60 = 2048;
      v61 = v10;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "TrackCalibration,Fail,rawSpeed %f out of bounds,startTime,%f,endTime,%f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      v46 = 134218496;
      v47 = v13;
      v48 = 2048;
      v49 = v8;
      v50 = 2048;
      v51 = v10;
      LODWORD(v45) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "TrackCalibration,Fail,rawSpeed %f out of bounds,startTime,%f,endTime,%f", COERCE_DOUBLE(&v46), v45);
      v40 = v39;
      sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator checkValidTrack:associatedEntry:]", "%s\n", v39);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    fStats = self->fStats;
    var1 = entry->var1;
    v24 = @"SpeedOutOfBounds";
    v25 = 6;
LABEL_23:
    [(CMStrideCalibrationStats *)fStats awdLogDistance:v25 status:v24 description:var1];
LABEL_24:
    LOBYTE(v27) = 0;
    return v27;
  }

  [track distanceGps];
  v15 = v14;
  distanceRawPed = [track distanceRawPed];
  v18 = v15 / v17;
  sub_10001A3E8(distanceRawPed, v19);
  if (sub_10001CF3C())
  {
    if (v18 <= 1.4 && v18 >= 0.5)
    {
      goto LABEL_28;
    }
  }

  else if (v18 <= 2.0 && v18 >= 0.666666667)
  {
LABEL_28:
    LOBYTE(v27) = 1;
    return v27;
  }

  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v28 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v57 = COERCE_DOUBLE([objc_msgSend(track "description")]);
    v58 = 2048;
    v59 = v18;
    v60 = 2048;
    v61 = v13;
    v62 = 2048;
    v63 = v8;
    v64 = 2048;
    v65 = v10;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "TrackCalibration,Fail,KFactorOutOfBounds,%s,KFactor,%0.4f,RawSpeed,%f,startTime,%f,endTime,%f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v41 = qword_1025D4278;
    v46 = 136316162;
    v47 = COERCE_DOUBLE([objc_msgSend(track "description")]);
    v48 = 2048;
    v49 = v18;
    v50 = 2048;
    v51 = v13;
    v52 = 2048;
    v53 = v8;
    v54 = 2048;
    v55 = v10;
    LODWORD(v45) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 2, "TrackCalibration,Fail,KFactorOutOfBounds,%s,KFactor,%0.4f,RawSpeed,%f,startTime,%f,endTime,%f", &v46, v45);
    v43 = v42;
    sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator checkValidTrack:associatedEntry:]", "%s\n", v42);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  [(CMStrideCalibrationStats *)self->fStats awdLogDistance:5 status:@"GainOutOfBounds" description:entry->var1];
  [track distanceGps];
  v30 = v29;
  v31 = self->fStats;
  v32 = entry->var1;
  if (v30 >= 70.0)
  {
    [(CMStrideCalibrationStats *)v31 awdLogDistance:3 status:@"GainOutOfBounds" description:v32];
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v36 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      v37 = entry->var1;
      *buf = 134218496;
      v57 = v37;
      v58 = 2048;
      v59 = v8;
      v60 = 2048;
      v61 = v10;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "SessionMetrics,Fail,Pedometer,GainOutOfBounds,DistanceFusion,%0.6f,startTime,%f,endTime,%f", buf, 0x20u);
    }

    v27 = sub_10000A100(121, 2);
    if (v27)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "SessionMetrics,Fail,Pedometer,GainOutOfBounds,DistanceFusion,%0.6f,startTime,%f,endTime,%f");
      goto LABEL_51;
    }
  }

  else
  {
    [(CMStrideCalibrationStats *)v31 awdLogDistance:2 status:@"GainOutOfBounds" description:v32];
    if (qword_1025D4270 != -1)
    {
      sub_10195B16C();
    }

    v33 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      v34 = entry->var1;
      *buf = 134218496;
      v57 = v34;
      v58 = 2048;
      v59 = v8;
      v60 = 2048;
      v61 = v10;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "SessionMetrics,Fail,GPS,GainOutOfBounds,DistanceFusion,%0.6f,startTime,%f,endTime,%f", buf, 0x20u);
    }

    v27 = sub_10000A100(121, 2);
    if (v27)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_10195B16C();
      }

      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "SessionMetrics,Fail,GPS,GainOutOfBounds,DistanceFusion,%0.6f,startTime,%f,endTime,%f");
LABEL_51:
      v38 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator checkValidTrack:associatedEntry:]", "%s\n", v35);
      if (v38 != buf)
      {
        free(v38);
      }

      goto LABEL_24;
    }
  }

  return v27;
}

- (void)sendGPSCoreAnalyticsAndUpdateTime
{
  self->lastGPSCalibrationUpdateTime = CFAbsoluteTimeGetCurrent();
  if (self->fGPSCalibrationTable.__ptr_)
  {
    if (objc_opt_class() && [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")])
    {
      if (qword_1025D4270 != -1)
      {
        sub_10195B06C();
      }

      v3 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Correctly sending core analytics and updating latest time in gps calibration", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195C478();
      }

      sub_1003E9734(self->fGPSCalibrationTable.__ptr_, &self->fCLBodyMetrics.gender);
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_10195B06C();
      }

      v4 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Not sending gps core analytics, no IHA permission", v5, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195C55C();
      }
    }
  }
}

- (void)updateCalibrationBins:(double)bins
{
  v57 = +[NSMutableArray array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  fLatestCalDataArray = self->fLatestCalDataArray;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(fLatestCalDataArray);
  if (v6)
  {
    v7 = *v62;
    do
    {
      v8 = 0;
      do
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(fLatestCalDataArray);
        }

        v9 = *(*(&v61 + 1) + 8 * v8);
        [objc_msgSend(objc_msgSend(v9 "track")];
        v11 = v10;
        [objc_msgSend(objc_msgSend(v9 "track")];
        v13 = v12;
        v14 = bins - v12;
        if (bins - v12 >= 60.0)
        {
          [(CMStrideCalibrationElevationBuffer *)self->fElevationBuffer updateGradient:v9];
          [v57 addObject:v9];
          if (v14 < 1800.0)
          {
            if (qword_1025D4270 != -1)
            {
              sub_10195B16C();
            }

            v15 = qword_1025D4278;
            if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
            {
              v16 = [objc_msgSend(v9 "description")];
              *buf = 136315394;
              *&buf[4] = v16;
              *&buf[12] = 2048;
              *&buf[14] = bins;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CalData, %s, stepEntryEpochTime, %f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4270 != -1)
              {
                sub_10195B16C();
              }

              v49 = qword_1025D4278;
              v50 = [objc_msgSend(v9 "description")];
              *v65 = 136315394;
              *&v65[4] = v50;
              *&v65[12] = 2048;
              *&v65[14] = bins;
              LODWORD(v56) = 22;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 2, "CalData, %s, stepEntryEpochTime, %f", v65, v56);
              v52 = v51;
              sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator updateCalibrationBins:]", "%s\n", v51);
              if (v52 != buf)
              {
                free(v52);
              }
            }

            v60 = 0;
            v59 = 0u;
            memset(v58, 0, sizeof(v58));
            sub_101369004(self->fStepCountDb.__ptr_, 1, v58, v11, v13);
            if ([v9 gradientValidity])
            {
              if (!-[CMStrideCalibrator checkValidTrack:associatedEntry:](self, "checkValidTrack:associatedEntry:", [v9 track], v58))
              {
                goto LABEL_49;
              }

              if (qword_1025D4270 != -1)
              {
                sub_10195B16C();
              }

              v17 = qword_1025D4278;
              if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109376;
                *&buf[4] = v59;
                *&buf[8] = 1024;
                *&buf[10] = DWORD1(v59);
                _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "FloorsAscended,%d,FloorsDescended,%d", buf, 0xEu);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4270 != -1)
                {
                  sub_10195B16C();
                }

                *v65 = 67109376;
                *&v65[4] = v59;
                *&v65[8] = 1024;
                *&v65[10] = DWORD1(v59);
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "FloorsAscended,%d,FloorsDescended,%d", v65, 14);
                v54 = v53;
                sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator updateCalibrationBins:]", "%s\n", v53);
                if (v54 != buf)
                {
                  free(v54);
                }
              }

              v18 = [objc_msgSend(v9 "track")];
              v20 = v19;
              sub_10001A3E8(v18, v21);
              inOutdoorPedestrianSession = sub_10001CF3C();
              if (inOutdoorPedestrianSession)
              {
                inOutdoorPedestrianSession = [(CMStrideCalibrator *)self inOutdoorPedestrianSession];
                v24 = inOutdoorPedestrianSession;
              }

              else
              {
                v24 = 0;
              }

              v28 = sub_10001A3E8(inOutdoorPedestrianSession, v23);
              v29 = (**v28)(v28);
              v31 = v20 / (v13 - v11);
              if ((v29 & 1) == 0)
              {
                v32 = sub_10001A3E8(v29, v30);
                outOfSession = sub_10001CF04(v32, v33);
                if (!outOfSession)
                {
                  goto LABEL_37;
                }
              }

              if (![(CMStrideCalibrator *)self inOutdoorPedestrianSession])
              {
                outOfSession = [(CMStrideCalibrator *)self outOfSession];
                if (outOfSession)
                {
                  outOfSession = [+[CMPedometerTableRawSpeedToKValue sharedInstance](CMPedometerTableRawSpeedToKValue isRawSpeedRun:"isRawSpeedRun:", v31];
                }

LABEL_37:
                if (((v24 | outOfSession) & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              v35 = COERCE_DOUBLE(-[CMStrideCalibrationRunningFormBuffer strideLengthFromStartDate:endDate:](self->fFormBuffer, "strideLengthFromStartDate:endDate:", [objc_msgSend(v9 "track")], objc_msgSend(objc_msgSend(v9, "track"), "stop")));
              v37 = v36;
              -[CMPedometerTableRawSpeedToKValue updateBinsWithTrack:](+[CMPedometerTableRawSpeedToKValue sharedInstance](CMPedometerTableRawSpeedToKValue, "sharedInstance"), "updateBinsWithTrack:", [v9 track]);
              -[CMPedometerTableStepCadenceToStrideLength updateBinsWithTrack:](+[CMPedometerTableStepCadenceToStrideLength sharedInstance](CMPedometerTableStepCadenceToStrideLength, "sharedInstance"), "updateBinsWithTrack:", [v9 track]);
              ptr = self->fGPSCalibrationTable.__ptr_;
              if (ptr)
              {
                sub_1003E8F88(ptr, [v9 track]);
              }

              [(CMStrideCalibrator *)self sendGPSCoreAnalyticsAndUpdateTime];
              v78 = 0;
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              *&buf[16] = 0u;
              v73 = 0u;
              *buf = 0;
              *&buf[8] = v11;
              [+[CMPedometerTableRawSpeedToKValue sharedInstance](CMPedometerTableRawSpeedToKValue kValueForRawSpeed:"kValueForRawSpeed:", v31];
              *&buf[24] = v39;
              [objc_msgSend(v9 "track")];
              v41 = v40;
              [objc_msgSend(v9 "track")];
              *&v73 = v41 / v42;
              *(&v73 + 1) = 0;
              *&v74 = v13;
              [objc_msgSend(v9 "track")];
              *(&v74 + 1) = v43;
              [objc_msgSend(v9 "track")];
              LODWORD(v75) = v44;
              DWORD1(v75) = [v9 session];
              *(&v75 + 1) = v31;
              [v9 gradient];
              *&v76 = v45;
              v46 = [objc_msgSend(v9 "track")];
              v47 = v35;
              DWORD2(v76) = v46;
              *&v77 = 0;
              if ((v37 & dword_100000000) == 0)
              {
                v47 = 0.0;
              }

              *(&v77 + 1) = v47;
              LODWORD(v78) = v37;
              if (self->fLogPedometer)
              {
                sub_10159953C(buf, v65);
                if (qword_102637F48 != -1)
                {
                  sub_10195C640();
                }

                if (qword_102637F50)
                {
                  operator new();
                }

                PB::Base::~Base(v65);
              }

              fDatabase = self->fDatabase;
              v68 = v75;
              v69 = v76;
              v70 = v77;
              v71 = v78;
              *v65 = *buf;
              *&v65[16] = *&buf[16];
              v66 = v73;
              v67 = v74;
              [(CMStrideCalibrationDatabase *)fDatabase addEntry:v65];
              [(CMStrideCalibrationStats *)self->fStats awdMotionFitnessStrideCalibration:buf];
              [(CMStrideCalibrationStats *)self->fStats awdLogDistance:0 status:@"Yay!" description:*(v58 + 1)];
              goto LABEL_49;
            }

            [(CMStrideCalibrationStats *)self->fStats awdLogDistance:4 status:@"GradientOutOfBounds" description:*(v58 + 1)];
            if (qword_1025D4270 != -1)
            {
              sub_10195B16C();
            }

            v25 = qword_1025D4278;
            if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              *&buf[4] = v11;
              *&buf[12] = 2048;
              *&buf[14] = v13;
              _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "SessionMetrics,Fail,Gradient,DistanceFusion,startTime,%f,endTime,%f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4270 != -1)
              {
                sub_10195B16C();
              }

              *v65 = 134218240;
              *&v65[4] = v11;
              *&v65[12] = 2048;
              *&v65[14] = v13;
              LODWORD(v56) = 22;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 2, "SessionMetrics,Fail,Gradient,DistanceFusion,startTime,%f,endTime,%f", COERCE_DOUBLE(v65), v56);
              v27 = v26;
              sub_100152C7C("Generic", 1, 0, 2, "[CMStrideCalibrator updateCalibrationBins:]", "%s\n", v26);
              if (v27 != buf)
              {
                free(v27);
              }
            }
          }
        }

LABEL_49:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(fLatestCalDataArray);
      v6 = v55;
    }

    while (v55);
  }

  [(NSMutableArray *)self->fLatestCalDataArray removeObjectsInArray:v57];
}

- (void)updateUserHeight:(int64_t)height
{
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Correctly calling update user height in stride calibrator.", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195C668();
  }

  [(CMStrideCalibrationStats *)self->fStats updateUserHeight:height];
}

- (void)feedBodyMetrics:(CLBodyMetrics *)metrics
{
  if (qword_1025D4270 != -1)
  {
    sub_10195B06C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Correctly feeding body metrics in stride calibrator.", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195C74C();
  }

  v6 = *&metrics->gender;
  v7 = *&metrics->vo2max;
  v8 = *&metrics->hronset;
  *&self->fCLBodyMetrics.runVo2max = *&metrics->runVo2max;
  *&self->fCLBodyMetrics.hronset = v8;
  *&self->fCLBodyMetrics.vo2max = v7;
  *&self->fCLBodyMetrics.gender = v6;
  [(CMStrideCalibrator *)self updateUserHeight:llroundf(metrics->heightM * 100.0)];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 32) = 0;
  *(self + 33) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  return self;
}

@end