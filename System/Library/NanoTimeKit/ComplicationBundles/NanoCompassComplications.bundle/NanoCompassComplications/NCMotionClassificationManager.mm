@interface NCMotionClassificationManager
- (NCMotionClassificationManager)init;
- (void)_computeStatus;
- (void)_housekeepingWith:(id)with;
- (void)_startMotionActivityUpdate;
- (void)_updateMotionActivity:(id)activity;
- (void)_updateMotionType:(int64_t)type isDeviceStationary:(BOOL)stationary;
- (void)_updateStatusFromPedometer;
- (void)startMotionActivityUpdatesWithHandler:(id)handler;
- (void)stopMotionActivityUpdates;
@end

@implementation NCMotionClassificationManager

- (NCMotionClassificationManager)init
{
  v8.receiver = self;
  v8.super_class = NCMotionClassificationManager;
  v2 = [(NCMotionClassificationManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1CD0]);
    motionActivityManager = v2->_motionActivityManager;
    v2->_motionActivityManager = v3;

    v5 = objc_alloc_init(MEMORY[0x277CC1D18]);
    pedometer = v2->_pedometer;
    v2->_pedometer = v5;

    v2->_motionType = 1;
    v2->_stationary = 0;
  }

  return v2;
}

- (void)startMotionActivityUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23BD59B24;
  v6[3] = &unk_278B94718;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)stopMotionActivityUpdates
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD59C54;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startMotionActivityUpdate
{
  objc_initWeak(&location, self);
  v3 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "Motion activity is available and starting the event updating.", buf, 2u);
  }

  motionActivityManager = self->_motionActivityManager;
  v7 = objc_msgSend_mainQueue(MEMORY[0x277CCABD8], v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BD59DE4;
  v9[3] = &unk_278B94A30;
  objc_copyWeak(&v10, &location);
  objc_msgSend_startActivityUpdatesToQueue_withHandler_(motionActivityManager, v8, v7, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_updateMotionActivity:(id)activity
{
  activityCopy = activity;
  isMoving = objc_msgSend_nc_isMoving(activityCopy, v5, v6);
  v10 = objc_msgSend_nc_motionType(activityCopy, v8, v9);
  v15 = objc_msgSend_now(MEMORY[0x277CBEAA8], v11, v12);
  if (isMoving)
  {
    objc_msgSend_eventWithType_timestamp_stationary_(NCMotionEvent, v13, v10, v15, 0);
    v20 = LABEL_7:;
    objc_msgSend__housekeepingWith_(self, v21, v20);

    goto LABEL_8;
  }

  if (objc_msgSend_stationary(activityCopy, v13, v14))
  {
    v18 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_23BD26000, v18, OS_LOG_TYPE_DEFAULT, "Device is stationary and user is not walking/running/cycling/in automotive.", v26, 2u);
    }

    objc_msgSend_eventWithType_timestamp_stationary_(NCMotionEvent, v19, 0, v15, 1);
    goto LABEL_7;
  }

  if (objc_msgSend_isStepCountingAvailable(MEMORY[0x277CC1D18], v16, v17))
  {
    objc_msgSend__updateStatusFromPedometer(self, v22, v23);
  }

  else
  {
    v24 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_23BD678F8(v24);
    }

    objc_msgSend__updateMotionType_isDeviceStationary_(self, v25, 1, 0);
  }

LABEL_8:
}

- (void)_updateStatusFromPedometer
{
  v4 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, v2);
  v7 = objc_msgSend_dateByAddingTimeInterval_(v4, v5, v6, -90.0);
  pedometer = self->_pedometer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23BD5A088;
  v10[3] = &unk_278B94A80;
  v10[4] = self;
  objc_msgSend_queryPedometerDataFromDate_toDate_withHandler_(pedometer, v9, v7, v4, v10);
}

- (void)_housekeepingWith:(id)with
{
  v55 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = objc_msgSend_timestamp(withCopy, v5, v6);
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = objc_msgSend_reverseObjectEnumerator(self->_motionEventQueue, v11, v12, 0);
  v16 = objc_msgSend_allObjects(v13, v14, v15);

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v50, v54, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v51;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v50 + 1) + 8 * i);
        v25 = objc_msgSend_timestamp(v24, v19, v20);
        objc_msgSend_timeIntervalSinceDate_(v7, v26, v25);
        v28 = v27;

        if (v28 >= 20.0)
        {
          v31 = objc_msgSend_dateByAddingTimeInterval_(v7, v29, v30, -20.0);
          objc_msgSend_setTimestamp_(v24, v32, v31);

          objc_msgSend_addObject_(v10, v33, v24);
          goto LABEL_11;
        }

        objc_msgSend_addObject_(v10, v29, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v50, v54, 16);
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v36 = objc_msgSend_reverseObjectEnumerator(v10, v34, v35);
  v39 = objc_msgSend_allObjects(v36, v37, v38);
  v42 = objc_msgSend_mutableCopy(v39, v40, v41);

  objc_msgSend_addObject_(v42, v43, withCopy);
  v46 = objc_msgSend_copy(v42, v44, v45);
  motionEventQueue = self->_motionEventQueue;
  self->_motionEventQueue = v46;

  objc_msgSend__computeStatus(self, v48, v49);
}

- (void)_computeStatus
{
  v6 = objc_msgSend_count(self->_motionEventQueue, a2, v2);
  motionEventQueue = self->_motionEventQueue;
  if (v6 == 1)
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(motionEventQueue, v4, 0);
    v10 = objc_msgSend_motionType(v41, v8, v9);
    isStationary = objc_msgSend_isStationary(v41, v11, v12);
    objc_msgSend__updateMotionType_isDeviceStationary_(self, v14, v10, isStationary);

    return;
  }

  if (objc_msgSend_count(motionEventQueue, v4, v5) == 1)
  {
    v16 = 0;
LABEL_14:
    selfCopy2 = self;
    v39 = v16;
    v40 = 0;
    goto LABEL_15;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0.0;
  v19 = 0.0;
  do
  {
    v20 = objc_msgSend_objectAtIndexedSubscript_(self->_motionEventQueue, v15, v17);
    v23 = objc_msgSend_timestamp(v20, v21, v22);
    v25 = objc_msgSend_objectAtIndexedSubscript_(self->_motionEventQueue, v24, ++v17);
    v28 = objc_msgSend_timestamp(v25, v26, v27);

    objc_msgSend_timeIntervalSinceDate_(v28, v29, v23);
    v31 = v30;
    if (objc_msgSend_isStationary(v20, v32, v33))
    {
      v19 = v19 + v31;
    }

    else
    {
      v18 = v18 + v31;
      v16 = objc_msgSend_motionType(v20, v34, v35);
    }
  }

  while (v17 < objc_msgSend_count(self->_motionEventQueue, v36, v37) - 1);
  if (v19 <= v18)
  {
    goto LABEL_14;
  }

  selfCopy2 = self;
  v39 = 0;
  v40 = 1;
LABEL_15:

  objc_msgSend__updateMotionType_isDeviceStationary_(selfCopy2, v15, v39, v40);
}

- (void)_updateMotionType:(int64_t)type isDeviceStationary:(BOOL)stationary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD5A778;
  block[3] = &unk_278B94AA8;
  block[4] = self;
  block[5] = type;
  stationaryCopy = stationary;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end