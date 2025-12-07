@interface CLTimeCoercibleDispatchSilo
- (CLTimeCoercibleDispatchSilo)initWithIdentifier:(id)identifier;
- (CLTimeCoercibleDispatchSilo)initWithUnderlyingQueue:(id)queue;
- (id)newTimer;
- (void)afterInterval:(double)interval async:(id)async;
- (void)heartBeat:(id)beat;
- (void)prepareAndRunBlock:(id)block;
- (void)setLatchedAbsoluteTimestamp:(double)timestamp;
@end

@implementation CLTimeCoercibleDispatchSilo

- (CLTimeCoercibleDispatchSilo)initWithIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CLTimeCoercibleDispatchSilo;
  v5 = [(CLDispatchSilo *)&v9 initWithIdentifier:identifier];
  if (v5)
  {
    v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4);
    timerHolders = v5->_timerHolders;
    v5->_timerHolders = v6;
  }

  return v5;
}

- (CLTimeCoercibleDispatchSilo)initWithUnderlyingQueue:(id)queue
{
  v9.receiver = self;
  v9.super_class = CLTimeCoercibleDispatchSilo;
  v5 = [(CLDispatchSilo *)&v9 initWithUnderlyingQueue:queue];
  if (v5)
  {
    v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4);
    timerHolders = v5->_timerHolders;
    v5->_timerHolders = v6;
  }

  return v5;
}

- (void)setLatchedAbsoluteTimestamp:(double)timestamp
{
  v40 = *MEMORY[0x1E69E9840];
  objc_msgSend_currentLatchedAbsoluteTimestamp(self, a2, v3);
  v7 = timestamp - v6;
  objc_msgSend__setLatchedAbsoluteTimestamp_(self, v8, v9, timestamp);
  v10 = self->_timerHolders;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
  v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15);
  timerHolders = self->_timerHolders;
  self->_timerHolders = v16;

  v18 = MEMORY[0x1E696AE18];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1DF81B878;
  v36[3] = &unk_1E86C8520;
  v38 = v7;
  v19 = v13;
  v37 = v19;
  v21 = objc_msgSend_predicateWithBlock_(v18, v20, v36);
  objc_msgSend_filterUsingPredicate_(v10, v22, v21);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = v19;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v32, v39, 16);
  if (v25)
  {
    v28 = v25;
    v29 = *v33;
    do
    {
      v30 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend_shouldFire(*(*(&v32 + 1) + 8 * v30++), v26, v27, v32);
      }

      while (v28 != v30);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v32, v39, 16);
    }

    while (v28);
  }

  objc_msgSend_addObjectsFromArray_(self->_timerHolders, v31, v10);
}

- (void)prepareAndRunBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (void)afterInterval:(double)interval async:(id)async
{
  asyncCopy = async;
  v9 = objc_msgSend_newTimer(self, v7, v8);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = sub_1DF81BA20;
  v18 = &unk_1E86C8548;
  v19 = v9;
  v20 = asyncCopy;
  v10 = v9;
  v11 = asyncCopy;
  objc_msgSend_setHandler_(v10, v12, &v15);
  objc_msgSend_setNextFireDelay_(v10, v13, v14, interval, v15, v16, v17, v18);
}

- (void)heartBeat:(id)beat
{
  beatCopy = beat;
  v7 = objc_msgSend_queue(self, v5, v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF81BB14;
  block[3] = &unk_1E86C8570;
  v10 = beatCopy;
  v8 = beatCopy;
  dispatch_async(v7, block);
}

- (id)newTimer
{
  v3 = [CLTimer alloc];
  v5 = objc_msgSend_initInSilo_withScheduler_(v3, v4, self, 0);
  timerHolders = self->_timerHolders;
  v8 = objc_msgSend_holderWithTimer_(CLTimerWeakHolder, v7, v5);
  objc_msgSend_addObject_(timerHolders, v9, v8);

  return v5;
}

@end