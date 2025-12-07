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
    v6 = sub_100002F0C(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100018314(v6, v7, v8, v9, v10, v11, v12, v13, duration);
    }
  }

  else if (animated)
  {
    if (!self->_currentAnimation)
    {
      v15 = sub_100001120(hangDuration);
      [(HUDDurationLayer *)self setString:v15];

      v17 = sub_100002F0C(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1000181F4(self, v17, duration);
      }

      v18 = +[HUDAnimator sharedAnimator];
      v19 = self->_hangDuration;
      updateInterval = self->_updateInterval;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100001504;
      v44[3] = &unk_100030640;
      v44[4] = self;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100001600;
      v43[3] = &unk_100030690;
      v43[4] = self;
      v21 = [v18 beginAnimationFromValue:v44 toValue:v43 duration:v19 updateBlock:duration completionBlock:updateInterval];
      currentAnimation = self->_currentAnimation;
      self->_currentAnimation = v21;
    }

    self->_hangDuration = duration;
    v23 = sub_100002F0C(self);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_1000182A4(v23, v24, v25, v26, v27, v28, v29, v30, duration);
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

      v35 = sub_100002F0C(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_100018184(v35, v36, v37, v38, v39, v40, v41, v42, duration);
      }
    }

    [CATransaction setDisableActions:1];
    v6 = sub_100001120(duration);
    [(HUDDurationLayer *)self setString:v6];
  }
}

@end