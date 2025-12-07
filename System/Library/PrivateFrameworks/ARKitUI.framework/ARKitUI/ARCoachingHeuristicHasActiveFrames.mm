@interface ARCoachingHeuristicHasActiveFrames
- (void)updateWithFrame:(id)frame cache:(id)cache;
@end

@implementation ARCoachingHeuristicHasActiveFrames

- (void)updateWithFrame:(id)frame cache:(id)cache
{
  v23 = *MEMORY[0x277D85DE8];
  timestamp = [frame timestamp];
  v7 = v6;
  if (self->_frameCount && v6 - self->_lastFrameTimestamp > 1.0)
  {
    v8 = _ARLogCoaching_3(timestamp);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *v21 = 138543618;
      *&v21[4] = v10;
      *&v21[12] = 2048;
      *&v21[14] = self;
      _os_log_impl(&dword_23D3AE000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Active frame updates are too old, resetting frame count", v21, 0x16u);
    }

    self->_frameCount = 0;
  }

  self->_lastFrameTimestamp = v7;
  satisfied = [(ARCoachingHeuristic *)self satisfied];
  frameCount = self->_frameCount;
  self->_frameCount = frameCount + 1;
  if ((satisfied & 1) == 0 && frameCount >= 4)
  {
    v13 = _ARLogCoaching_3(satisfied);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = self->_frameCount;
      *v21 = 138543874;
      *&v21[4] = v15;
      *&v21[12] = 2048;
      *&v21[14] = self;
      *&v21[22] = 1024;
      LODWORD(v22) = v16;
      v17 = "%{public}@ <%p>: Frames are considered active after seeing %d recent frames";
      v18 = v13;
      v19 = 28;
LABEL_14:
      _os_log_impl(&dword_23D3AE000, v18, OS_LOG_TYPE_INFO, v17, v21, v19);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (satisfied && frameCount <= 3)
  {
    v13 = _ARLogCoaching_3(satisfied);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v15 = NSStringFromClass(v20);
      *v21 = 138543618;
      *&v21[4] = v15;
      *&v21[12] = 2048;
      *&v21[14] = self;
      v17 = "%{public}@ <%p>: Frames are no longer considered active";
      v18 = v13;
      v19 = 22;
      goto LABEL_14;
    }

LABEL_15:
  }

  [(ARCoachingHeuristic *)self setSatisfied:frameCount > 3, *v21, *&v21[8], v22];
}

@end