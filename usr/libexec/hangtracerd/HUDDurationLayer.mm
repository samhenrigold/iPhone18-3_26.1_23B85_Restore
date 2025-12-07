@interface HUDDurationLayer
- (HUDDurationLayer)init;
- (void)setHangDuration:(double)duration animated:(BOOL)animated;
@end

@implementation HUDDurationLayer

- (HUDDurationLayer)init
{
  v7.receiver = self;
  v7.super_class = HUDDurationLayer;
  v2 = [(HUDDurationLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    currentAnimation = v2->_currentAnimation;
    v2->_currentAnimation = 0;

    v3->_updateInterval = 0.05;
    v5 = v3;
  }

  return v3;
}

- (void)setHangDuration:(double)duration animated:(BOOL)animated
{
  hangDuration = self->_hangDuration;
  if (hangDuration == duration)
  {
    v6 = sub_100003824(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100032DDC(v6, v7, v8, v9, v10, v11, v12, v13, duration);
    }
  }

  else if (animated)
  {
    if (!self->_currentAnimation)
    {
      v15 = sub_100018F3C(self, a2, hangDuration);
      [(HUDDurationLayer *)self setString:v15];

      v17 = sub_100003824(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100032CBC(self, v17, duration);
      }

      v18 = +[HUDAnimator sharedAnimator];
      v19 = self->_hangDuration;
      updateInterval = self->_updateInterval;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100019320;
      v46[3] = &unk_100055A78;
      v46[4] = self;
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10001941C;
      v45[3] = &unk_100055AA0;
      v45[4] = self;
      v21 = [v18 beginAnimationFromValue:v46 toValue:v45 duration:v19 updateBlock:duration completionBlock:updateInterval];
      currentAnimation = self->_currentAnimation;
      self->_currentAnimation = v21;
    }

    self->_hangDuration = duration;
    v23 = sub_100003824(self);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100032D6C(v23, v24, v25, v26, v27, v28, v29, v30, duration);
    }

    v6 = +[HUDAnimator sharedAnimator];
    [v6 updateAnimation:self->_currentAnimation toValue:duration duration:self->_updateInterval];
  }

  else
  {
    self->_hangDuration = duration;
    v31 = self->_currentAnimation;
    if (v31)
    {
      self->_currentAnimation = 0;
      v32 = v31;

      v33 = +[HUDAnimator sharedAnimator];
      [v33 endAnimation:v32];

      v35 = sub_100003824(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_100032C4C(v35, v36, v37, v38, v39, v40, v41, v42, duration);
      }
    }

    v43 = [CATransaction setDisableActions:1];
    v6 = sub_100018F3C(v43, v44, duration);
    [(HUDDurationLayer *)self setString:v6];
  }
}

@end