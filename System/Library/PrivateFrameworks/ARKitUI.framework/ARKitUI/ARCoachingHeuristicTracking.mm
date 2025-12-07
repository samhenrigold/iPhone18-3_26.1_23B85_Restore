@interface ARCoachingHeuristicTracking
- (void)updateWithFrame:(id)frame cache:(id)cache;
@end

@implementation ARCoachingHeuristicTracking

- (void)updateWithFrame:(id)frame cache:(id)cache
{
  v22 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  requirements = self->_requirements;
  camera = [frameCopy camera];
  trackingState = [camera trackingState];

  if (trackingState == 2)
  {
    v10 = 0;
    goto LABEL_8;
  }

  camera2 = [frameCopy camera];
  trackingStateReason = [camera2 trackingStateReason];

  if (trackingStateReason != 2)
  {
    v10 = 1;
LABEL_8:
    self->_requirements = v10;
    if (requirements == 32)
    {
      v13 = _ARLogCoaching_3(v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v15 = NSStringFromClass(v17);
        v18 = 138543618;
        v19 = v15;
        v20 = 2048;
        selfCopy2 = self;
        v16 = "%{public}@ <%p>: Motion is no longer excessive";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  self->_requirements = 32;
  if (requirements != 32)
  {
    v13 = _ARLogCoaching_3(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v18 = 138543618;
      v19 = v15;
      v20 = 2048;
      selfCopy2 = self;
      v16 = "%{public}@ <%p>: Motion became excessive";
LABEL_11:
      _os_log_impl(&dword_23D3AE000, v13, OS_LOG_TYPE_INFO, v16, &v18, 0x16u);
    }

LABEL_12:
  }

LABEL_13:
}

@end