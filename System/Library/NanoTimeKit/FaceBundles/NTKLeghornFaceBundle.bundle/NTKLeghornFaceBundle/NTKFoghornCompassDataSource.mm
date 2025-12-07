@interface NTKFoghornCompassDataSource
- (BOOL)headingIsAvailable;
- (NTKFoghornCompassDataSource)init;
- (double)heading;
- (unint64_t)_referenceFrameForDeviceMotion;
- (void)_queue_motionError:(id)error;
- (void)_restartUpdates;
- (void)_setUsesTrueNorth:(BOOL)north;
- (void)_startCompassUpdates;
- (void)_stopClockTimer;
- (void)_stopCompassUpdates;
- (void)dealloc;
- (void)setUpdateMode:(unint64_t)mode;
- (void)start;
- (void)stop;
@end

@implementation NTKFoghornCompassDataSource

- (NTKFoghornCompassDataSource)init
{
  v6.receiver = self;
  v6.super_class = NTKFoghornCompassDataSource;
  v2 = [(NTKFoghornCompassDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    motionManager = v2->_motionManager;
    v2->_motionManager = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_clockTimerToken;
  v4 = self->_motionManager;
  receivingCompassUpdates = self->_receivingCompassUpdates;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BEC44C4;
  block[3] = &unk_278BA11B0;
  v12 = receivingCompassUpdates;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v8.receiver = self;
  v8.super_class = NTKFoghornCompassDataSource;
  [(NTKFoghornCompassDataSource *)&v8 dealloc];
}

- (void)_setUsesTrueNorth:(BOOL)north
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_usesTrueNorth != north)
  {
    northCopy = north;
    self->_usesTrueNorth = north;
    v5 = NTKFoghornFaceBundleLogObject(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (northCopy)
      {
        v6 = @"YES";
      }

      v9 = 136315394;
      v10 = "[NTKFoghornCompassDataSource _setUsesTrueNorth:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: updating true north = %@", &v9, 0x16u);
    }

    objc_msgSend__restartUpdates(self, v7, v8);
  }
}

- (unint64_t)_referenceFrameForDeviceMotion
{
  if (self->_usesTrueNorth)
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

- (void)_stopCompassUpdates
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_receivingCompassUpdates)
  {
    isDeviceMotionAvailable = objc_msgSend_isDeviceMotionAvailable(self->_motionManager, v3, v4);
    if (isDeviceMotionAvailable)
    {
      v7 = NTKFoghornFaceBundleLogObject(isDeviceMotionAvailable, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[NTKFoghornCompassDataSource _stopCompassUpdates]";
        _os_log_impl(&dword_23BEB1000, v7, OS_LOG_TYPE_DEFAULT, "%s: stop", &v10, 0xCu);
      }

      objc_msgSend_stopDeviceMotionUpdates(self->_motionManager, v8, v9);
    }

    self->_receivingCompassUpdates = 0;
  }
}

- (void)_startCompassUpdates
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!self->_receivingCompassUpdates)
  {
    isDeviceMotionAvailable = objc_msgSend_isDeviceMotionAvailable(self->_motionManager, v3, v4);
    if (isDeviceMotionAvailable)
    {
      v7 = NTKFoghornFaceBundleLogObject(isDeviceMotionAvailable, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "[NTKFoghornCompassDataSource _startCompassUpdates]";
        _os_log_impl(&dword_23BEB1000, v7, OS_LOG_TYPE_DEFAULT, "%s: start", buf, 0xCu);
      }

      motionManager = self->_motionManager;
      v11 = objc_msgSend__referenceFrameForDeviceMotion(self, v9, v10);
      objc_msgSend_startDeviceMotionUpdatesUsingReferenceFrame_(motionManager, v12, v11);
      objc_initWeak(buf, self);
      v13 = self->_motionManager;
      v16 = objc_msgSend_mainQueue(MEMORY[0x277CCABD8], v14, v15);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_23BEC4928;
      v18[3] = &unk_278BA11D8;
      objc_copyWeak(&v19, buf);
      objc_msgSend__startDeviceMotionErrorUpdatesToQueue_withHandler_(v13, v17, v16, v18);

      self->_receivingCompassUpdates = 1;
      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_queue_motionError:(id)error
{
  errorCopy = error;
  v6 = NTKFoghornFaceBundleLogObject(errorCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_23BEE6F20(errorCopy, v6);
  }

  v9 = objc_msgSend_domain(errorCopy, v7, v8);
  v10 = *MEMORY[0x277CC1BC0];

  if (v9 == v10)
  {
    v13 = objc_msgSend_code(errorCopy, v11, v12);
    if (v13 == 101)
    {
      v26 = NTKFoghornFaceBundleLogObject(101, v14);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_23BEE6F98(v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    else if (v13 == 102)
    {
      usesTrueNorth = self->_usesTrueNorth;
      v16 = NTKFoghornFaceBundleLogObject(102, v14);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (usesTrueNorth)
      {
        if (v17)
        {
          sub_23BEE7008(v16, v18, v19, v20, v21, v22, v23, v24);
        }

        objc_msgSend__setUsesTrueNorth_(self, v25, 0);
      }

      else
      {
        if (v17)
        {
          sub_23BEE6FD0(v16, v18, v19, v20, v21, v22, v23, v24);
        }
      }
    }
  }
}

- (void)_restartUpdates
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_msgSend_stop(self, v3, v4);
  objc_msgSend__startCompassUpdates(self, v5, v6);
  updated = objc_msgSend_updateMode(self, v7, v8);
  if ((updated - 1) >= 2)
  {
    if (!updated)
    {
      return;
    }

    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  objc_initWeak(&location, self);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23BEC4C04;
  v17[3] = &unk_278BA0E40;
  objc_copyWeak(&v18, &location);
  v15 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v13, v14, v10, v17, &unk_284EA8A88);
  clockTimerToken = self->_clockTimerToken;
  self->_clockTimerToken = v15;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_stopClockTimer
{
  if (self->_clockTimerToken)
  {
    v4 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], a2, v2);
    objc_msgSend_stopUpdatesForToken_(v4, v5, self->_clockTimerToken);

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)stop
{
  v7.receiver = self;
  v7.super_class = NTKFoghornCompassDataSource;
  [(NTKFoghornDataSource *)&v7 stop];
  objc_msgSend__stopClockTimer(self, v3, v4);
  objc_msgSend__stopCompassUpdates(self, v5, v6);
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = NTKFoghornCompassDataSource;
  [(NTKFoghornDataSource *)&v5 start];
  objc_msgSend__restartUpdates(self, v3, v4);
}

- (void)setUpdateMode:(unint64_t)mode
{
  v6.receiver = self;
  v6.super_class = NTKFoghornCompassDataSource;
  [(NTKFoghornDataSource *)&v6 setUpdateMode:mode];
  if (self->_receivingCompassUpdates)
  {
    objc_msgSend__restartUpdates(self, v4, v5);
  }
}

- (double)heading
{
  v3 = objc_msgSend_deviceMotion(self->_motionManager, a2, v2);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_heading(v3, v4, v5);
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (BOOL)headingIsAvailable
{
  v3 = objc_msgSend_deviceMotion(self->_motionManager, a2, v2);
  v4 = v3 != 0;

  return v4;
}

@end