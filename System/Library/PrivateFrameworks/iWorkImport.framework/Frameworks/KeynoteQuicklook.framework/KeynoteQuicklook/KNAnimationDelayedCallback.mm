@interface KNAnimationDelayedCallback
- (KNAnimationDelayedCallback)initWithBlock:(id)block delay:(double)delay;
- (KNAnimationDelayedCallback)initWithTarget:(id)target selector:(SEL)selector object:(id)object delay:(double)delay;
- (void)cancel;
- (void)p_performSelectorOnTarget;
- (void)run;
@end

@implementation KNAnimationDelayedCallback

- (KNAnimationDelayedCallback)initWithTarget:(id)target selector:(SEL)selector object:(id)object delay:(double)delay
{
  targetCopy = target;
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = KNAnimationDelayedCallback;
  v13 = [(KNAnimationDelayedCallback *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_target, target);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v14->_selector = selectorCopy;
    objc_storeStrong(&v14->_object, object);
    v14->_delay = delay;
  }

  return v14;
}

- (KNAnimationDelayedCallback)initWithBlock:(id)block delay:(double)delay
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = KNAnimationDelayedCallback;
  v7 = [(KNAnimationDelayedCallback *)&v11 init];
  if (v7)
  {
    v8 = [blockCopy copy];
    block = v7->_block;
    v7->_block = v8;

    v7->_delay = delay;
  }

  return v7;
}

- (void)p_performSelectorOnTarget
{
  selector = self->_selector;
  target = self->_target;
  if (selector)
  {
    v5 = selector;
  }

  else
  {
    v5 = 0;
  }

  [target performSelector:v5 withObject:self->_object];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v7 = *(completionHandler + 2);

    v7();
  }
}

- (void)run
{
  self->_startTime = CACurrentMediaTime();
  if (self->_block)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    sourceTimer = self->_sourceTimer;
    self->_sourceTimer = v3;

    v5 = self->_sourceTimer;
    v6 = dispatch_time(0, (self->_delay * 1000000000.0));
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    v7 = self->_sourceTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_275D7CD28;
    handler[3] = &unk_27A697B20;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_sourceTimer);
  }

  else
  {
    delay = self->_delay;

    [(KNAnimationDelayedCallback *)self performSelector:sel_p_performSelectorOnTarget withObject:0 afterDelay:delay];
  }
}

- (void)cancel
{
  if (self->_block)
  {
    dispatch_source_cancel(self->_sourceTimer);
  }

  else
  {
    MEMORY[0x2821F9670](MEMORY[0x277D82BB8], sel_cancelPreviousPerformRequestsWithTarget_selector_object_);
  }
}

@end