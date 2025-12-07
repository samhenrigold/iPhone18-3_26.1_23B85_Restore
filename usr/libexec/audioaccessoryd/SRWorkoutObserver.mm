@interface SRWorkoutObserver
- (SRWorkoutObserver)init;
- (void)_startHKWorkoutObserver;
- (void)_startWorkoutStartedTimer:(unint64_t)timer;
- (void)didUpdateWorkoutSnapshot:(id)snapshot;
- (void)updateWithSnapshot:(id)snapshot;
- (void)workoutStateChanged:(BOOL)changed;
@end

@implementation SRWorkoutObserver

- (SRWorkoutObserver)init
{
  v8.receiver = self;
  v8.super_class = SRWorkoutObserver;
  v2 = [(SRWorkoutObserver *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SRWorkoutObserver", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    [(SRWorkoutObserver *)v2 _startHKWorkoutObserver];
    v6 = v2;
  }

  return v2;
}

- (void)_startHKWorkoutObserver
{
  v3 = [_HKWorkoutObserver alloc];
  v4 = objc_opt_new();
  v5 = [v3 initWithHealthStore:v4];
  [(SRWorkoutObserver *)self setHkWorkoutObserver:v5];

  hkWorkoutObserver = [(SRWorkoutObserver *)self hkWorkoutObserver];
  [hkWorkoutObserver setDelegate:self];

  hkWorkoutObserver2 = [(SRWorkoutObserver *)self hkWorkoutObserver];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DB760;
  v8[3] = &unk_1002BB678;
  v8[4] = self;
  [hkWorkoutObserver2 currentWorkoutSnapshotWithCompletion:v8];
}

- (void)_startWorkoutStartedTimer:(unint64_t)timer
{
  if (!self->_workoutStartedTimer)
  {
    handler[9] = v3;
    handler[10] = v4;
    timerCopy = timer;
    if (dword_1002F75A0 <= 30 && (dword_1002F75A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FB8B0(timerCopy);
    }

    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    workoutStartedTimer = self->_workoutStartedTimer;
    self->_workoutStartedTimer = v7;
    v9 = v7;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000DB940;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    CUDispatchTimerSet();
    dispatch_activate(v9);
  }
}

- (void)updateWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  sessionIdentifier = [snapshotCopy sessionIdentifier];
  if ([snapshotCopy sessionType] == 1)
  {
    sub_1001FB954(1, v5, v6);
  }

  else
  {
    internalState = [snapshotCopy internalState];
    if ((internalState - 4) >= 4)
    {
      if ((internalState - 11) < 3)
      {
        v15 = [sessionIdentifier isEqual:self->_currentWorkoutSessionIdentifier];
        if (v15)
        {
          if (dword_1002F75A0 <= 30)
          {
            if (dword_1002F75A0 != -1 || (v15 = _LogCategory_Initialize(), v15))
            {
              sub_1001FB8F0(v15, v16, v17);
            }
          }

          [(SRWorkoutObserver *)self workoutStateChanged:0];
          currentWorkoutName = self->_currentWorkoutName;
          self->_currentWorkoutName = 0;

          currentWorkoutSessionIdentifier = self->_currentWorkoutSessionIdentifier;
          self->_currentWorkoutSessionIdentifier = 0;
        }
      }
    }

    else
    {
      p_currentWorkoutSessionIdentifier = &self->_currentWorkoutSessionIdentifier;
      if (!self->_currentWorkoutSessionIdentifier || ([sessionIdentifier isEqual:?] & 1) == 0)
      {
        [(SRWorkoutObserver *)self workoutStateChanged:1];
        configuration = [snapshotCopy configuration];
        [configuration activityType];
        v10 = _HKWorkoutActivityNameForActivityType();
        v12 = self->_currentWorkoutName;
        p_currentWorkoutName = &self->_currentWorkoutName;
        *p_currentWorkoutName = v10;

        sessionIdentifier2 = [snapshotCopy sessionIdentifier];
        v14 = *(p_currentWorkoutName - 1);
        *(p_currentWorkoutName - 1) = sessionIdentifier2;

        if (dword_1002F75A0 <= 30 && (dword_1002F75A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FB90C(p_currentWorkoutName, p_currentWorkoutSessionIdentifier);
        }
      }
    }
  }
}

- (void)workoutStateChanged:(BOOL)changed
{
  isWorkoutActive = self->_isWorkoutActive;
  if (isWorkoutActive == changed)
  {
    return;
  }

  changedCopy = changed;
  if (dword_1002F75A0 <= 30)
  {
    if (dword_1002F75A0 != -1)
    {
LABEL_4:
      v6 = "no";
      if (isWorkoutActive)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      if (changedCopy)
      {
        v6 = "yes";
      }

      LogPrintF(&dword_1002F75A0, "[SRWorkoutObserver workoutStateChanged:]", 30, "Workout state changed from %s -> %s", v7, v6);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(isWorkoutActive) = self->_isWorkoutActive;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_isWorkoutActive = changedCopy;
  v8 = objc_initWeak(&location, self);
  workoutStateChangedHandler = [(SRWorkoutObserver *)self workoutStateChangedHandler];

  if (workoutStateChangedHandler)
  {
    if (dword_1002F75A0 <= 30 && (dword_1002F75A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F75A0, "[SRWorkoutObserver workoutStateChanged:]", 30, "Calling Workout state changed handler");
    }

    v10 = objc_loadWeakRetained(&location);
    workoutStateChangedHandler2 = [v10 workoutStateChangedHandler];
    workoutStateChangedHandler2[2]();
  }

  objc_destroyWeak(&location);
}

- (void)didUpdateWorkoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DBD7C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = snapshotCopy;
  v6 = snapshotCopy;
  dispatch_async(dispatchQueue, v7);
}

@end