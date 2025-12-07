@interface QLPUTimedAnimationGroup
- (QLPUTimedAnimationGroup)init;
- (double)elapsedTime;
- (void)_update;
- (void)pauseAnimations;
- (void)resumeAnimations;
- (void)setElapsedTime:(double)time;
@end

@implementation QLPUTimedAnimationGroup

- (QLPUTimedAnimationGroup)init
{
  v6.receiver = self;
  v6.super_class = QLPUTimedAnimationGroup;
  v2 = [(QLPUTimedAnimationGroup *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_msgSend_currentTime(v2);
    v3->_beginTime = v4;
  }

  return v3;
}

- (double)elapsedTime
{
  if ([(QLPUAnimationGroup *)self isPaused])
  {
    return self->_pausedElapsedTime;
  }

  objc_msgSend_currentTime(self);
  v5 = v4;
  [(QLPUTimedAnimationGroup *)self beginTime];
  return v5 - v6;
}

- (void)setElapsedTime:(double)time
{
  if (self->_pausedElapsedTime != time)
  {
    self->_pausedElapsedTime = time;
    [(QLPUTimedAnimationGroup *)self _update];
  }
}

- (void)pauseAnimations
{
  v6.receiver = self;
  v6.super_class = QLPUTimedAnimationGroup;
  [(QLPUAnimationGroup *)&v6 pauseAnimations];
  objc_msgSend_currentTime(self);
  v4 = v3;
  [(QLPUTimedAnimationGroup *)self beginTime];
  self->_pausedElapsedTime = v4 - v5;
  [(QLPUTimedAnimationGroup *)self _update];
}

- (void)resumeAnimations
{
  v4.receiver = self;
  v4.super_class = QLPUTimedAnimationGroup;
  [(QLPUAnimationGroup *)&v4 resumeAnimations];
  objc_msgSend_currentTime(self);
  self->_beginTime = v3 - self->_pausedElapsedTime;
  [(QLPUTimedAnimationGroup *)self _update];
}

- (void)_update
{
  isPaused = [(QLPUAnimationGroup *)self isPaused];
  v4 = isPaused;
  if (self->_areAnimationsPaused != isPaused || [(QLPUAnimationGroup *)self isPaused])
  {
    self->_areAnimationsPaused = v4;
    [(QLPUTimedAnimationGroup *)self updateAnimations];

    [(QLPUAnimationGroup *)self completeIfNeeded];
  }
}

@end