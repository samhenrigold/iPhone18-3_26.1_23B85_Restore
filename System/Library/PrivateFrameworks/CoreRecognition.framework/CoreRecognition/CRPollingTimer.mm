@interface CRPollingTimer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fireTime;
- (CRPollingTimer)initWithTarget:(id)target selector:(SEL)selector;
- (SEL)selector;
- (id)target;
- (void)evalAtTime:(id *)time;
- (void)invalidate;
- (void)setFireTime:(id *)time;
- (void)setSelector:(SEL)selector;
@end

@implementation CRPollingTimer

- (CRPollingTimer)initWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v9.receiver = self;
  v9.super_class = CRPollingTimer;
  v6 = [(CRPollingTimer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CRPollingTimer *)v6 setTarget:?];
    [(CRPollingTimer *)v7 setSelector:?];
    [(CRPollingTimer *)v7 setFireTime:*MEMORY[0x277CC08B0], *(MEMORY[0x277CC08B0] + 16)];
    [(CRPollingTimer *)v7 setFired:?];
    [(CRPollingTimer *)v7 setValid:?];
  }

  return v7;
}

- (void)setFireTime:(id *)time
{
  obj = self;
  objc_sync_enter(obj);
  var3 = time->var3;
  *&obj->_fireTime.value = *&time->var0;
  obj->_fireTime.epoch = var3;
  objc_sync_exit(obj);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)fireTime
{
  obj = self;
  objc_sync_enter(obj);
  *retstr = obj->_fireTime;
  objc_sync_exit(obj);

  return result;
}

- (void)evalAtTime:(id *)time
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CRPollingTimer *)selfCopy valid])
  {
    if (![(CRPollingTimer *)selfCopy fired])
    {
      [&time2 fireTime];
      v8 = *time;
      if (CMTimeCompare(&v8, &time2) >= 1)
      {
        target = [(CRPollingTimer *)selfCopy target];
        [(CRPollingTimer *)selfCopy selector];
        v6 = [target methodForSelector:?];
        target2 = [(CRPollingTimer *)selfCopy target];
        v6(target2, [(CRPollingTimer *)selfCopy selector]);

        [(CRPollingTimer *)selfCopy setFired:?];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(CRPollingTimer *)obj setValid:?];
  objc_sync_exit(obj);
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end