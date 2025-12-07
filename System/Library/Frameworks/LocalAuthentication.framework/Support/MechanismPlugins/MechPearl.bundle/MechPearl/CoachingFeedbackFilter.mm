@interface CoachingFeedbackFilter
- (CoachingFeedbackFilter)initWithDelegate:(id)delegate feedbackSet:(id)set feedbackDuration:(double)duration iconDuration:(double)iconDuration;
- (LACRemoteUI)delegate;
- (double)_timeoutForFeedback:(int64_t)feedback;
- (void)_dispatchPendingBlocks;
- (void)_doneWaiting;
- (void)_sendFeedback:(int64_t)feedback;
- (void)dispatchNowOrWhenFeedbackDurationAchieved:(BOOL)achieved finish:(BOOL)finish block:(id)block;
- (void)scheduleFeedback:(int64_t)feedback;
@end

@implementation CoachingFeedbackFilter

- (CoachingFeedbackFilter)initWithDelegate:(id)delegate feedbackSet:(id)set feedbackDuration:(double)duration iconDuration:(double)iconDuration
{
  delegateCopy = delegate;
  setCopy = set;
  v17.receiver = self;
  v17.super_class = CoachingFeedbackFilter;
  v12 = [(CoachingFeedbackFilter *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_feedbackSet, set);
    v13->_feedbackDuration = duration;
    v13->_iconDuration = iconDuration;
    v14 = objc_opt_new();
    pendingBlocks = v13->_pendingBlocks;
    v13->_pendingBlocks = v14;
  }

  return v13;
}

- (void)scheduleFeedback:(int64_t)feedback
{
  v5 = sub_1114(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_7144();
  }

  if (self->_finished)
  {
    v7 = sub_1114(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "ignoring feedback (already finished)", v17, 2u);
    }

LABEL_10:

    return;
  }

  feedbackSet = self->_feedbackSet;
  v9 = [NSNumber numberWithInteger:feedback];
  LODWORD(feedbackSet) = [(NSSet *)feedbackSet containsObject:v9];

  if (!feedbackSet)
  {
    return;
  }

  lastFeedback = self->_lastFeedback;
  v11 = [NSNumber numberWithInteger:feedback];
  LODWORD(lastFeedback) = [(NSNumber *)lastFeedback isEqualToNumber:v11];

  if (lastFeedback)
  {
    v7 = sub_1114(v12);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_722C();
    }

    goto LABEL_10;
  }

  v13 = [NSNumber numberWithInteger:feedback];
  v14 = self->_lastFeedback;
  self->_lastFeedback = v13;

  if (self->_waiting)
  {
    v16 = sub_1114(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_71B8();
    }
  }

  else
  {
    [(CoachingFeedbackFilter *)self _sendFeedback:[(NSNumber *)self->_lastFeedback integerValue]];
  }
}

- (double)_timeoutForFeedback:(int64_t)feedback
{
  result = dbl_9550[feedback == 8];
  if (feedback == 1)
  {
    return 0.0;
  }

  return result;
}

- (void)_sendFeedback:(int64_t)feedback
{
  self->_waiting = 1;
  v5 = [NSNumber numberWithInteger:?];
  lastSentFeedback = self->_lastSentFeedback;
  self->_lastSentFeedback = v5;

  v7 = [(CoachingFeedbackFilter *)self _timeoutForFeedback:feedback];
  v9 = v8;
  v10 = sub_1114(v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    feedbackCopy = feedback;
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "sending feedback: %d, will wait %.2f sec", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v20 = &off_10A98;
  v12 = [NSNumber numberWithInteger:feedback];
  v21 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [WeakRetained noResponseEventWithParams:v13];

  v14 = objc_loadWeakRetained(&self->_delegate);
  v15 = [NSNumber numberWithInteger:feedback];
  [v14 mechanismEvent:14 value:v15 reply:&stru_102D8];

  v16 = dispatch_time(0, (v9 * 1000000000.0));
  v17 = +[DaemonUtils sharedInstance];
  serverQueue = [v17 serverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13C4;
  block[3] = &unk_10300;
  block[4] = self;
  dispatch_after(v16, serverQueue, block);
}

- (void)_doneWaiting
{
  p_lastFeedback = &self->_lastFeedback;
  v4 = [(NSNumber *)self->_lastFeedback isEqualToNumber:self->_lastSentFeedback];
  v5 = v4;
  v6 = sub_1114(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      sub_72FC();
    }

    self->_waiting = 0;
    [(CoachingFeedbackFilter *)self _dispatchPendingBlocks];
  }

  else
  {
    if (v7)
    {
      sub_727C(p_lastFeedback);
    }

    [(CoachingFeedbackFilter *)self _sendFeedback:[(NSNumber *)self->_lastFeedback integerValue]];
  }
}

- (void)dispatchNowOrWhenFeedbackDurationAchieved:(BOOL)achieved finish:(BOOL)finish block:(id)block
{
  finishCopy = finish;
  achievedCopy = achieved;
  blockCopy = block;
  v9 = sub_1114(blockCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[CoachingFeedbackFilter dispatchNowOrWhenFeedbackDurationAchieved:finish:block:]";
    v20 = 1024;
    v21 = achievedCopy;
    v22 = 1024;
    v23 = finishCopy;
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s %d, %d on %@", &v18, 0x22u);
  }

  if (self->_finished)
  {
    v11 = sub_1114(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "won't dispatch, already finished", &v18, 2u);
    }

    goto LABEL_19;
  }

  if (!achievedCopy && self->_waiting)
  {
    v12 = sub_1114(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_7338(self);
    }

    pendingBlocks = self->_pendingBlocks;
    v14 = objc_retainBlock(blockCopy);
    [(NSMutableArray *)pendingBlocks addObject:v14];

    if (!finishCopy)
    {
      goto LABEL_19;
    }

LABEL_16:
    v17 = sub_1114(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_73F4();
    }

    self->_finished = finishCopy;
    goto LABEL_19;
  }

  v16 = sub_1114(v10);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_73B8();
  }

  v15 = blockCopy[2](blockCopy);
  if (finishCopy)
  {
    goto LABEL_16;
  }

LABEL_19:
}

- (void)_dispatchPendingBlocks
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_pendingBlocks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = sub_1114(v3);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v16 = v5;
          _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "scheduling pending block[%d]", buf, 8u);
          ++v5;
        }

        v3 = (*(v8 + 16))(v8);
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
      v4 = v3;
    }

    while (v3);
  }

  [(NSMutableArray *)self->_pendingBlocks removeAllObjects];
}

- (LACRemoteUI)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end