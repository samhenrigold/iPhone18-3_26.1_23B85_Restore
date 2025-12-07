@interface GEOCoalescingTimer
- (BOOL)isScheduledToRun;
- (void)scheduleRun;
@end

@implementation GEOCoalescingTimer

void __33__GEOCoalescingTimer_scheduleRun__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    geo_isolate_sync();
    (*(*(*(a1 + 32) + 64) + 16))();
  }
}

uint64_t __33__GEOCoalescingTimer_scheduleRun__block_invoke_2(uint64_t result)
{
  *(*(result + 32) + 32) = 0;
  *(*(result + 32) + 40) = 0;
  return result;
}

- (void)scheduleRun
{
  v18 = self->_isolater;
  _geo_isolate_lock();
  timer = self->_timer;
  if (!timer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    v5 = self->_timer;
    self->_timer = v4;

    objc_initWeak(&location, self);
    v6 = self->_timer;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __33__GEOCoalescingTimer_scheduleRun__block_invoke;
    v15[3] = &unk_1E70718D8;
    objc_copyWeak(&v16, &location);
    v15[4] = self;
    dispatch_source_set_event_handler(v6, v15);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  GEOGetMonotonicTime();
  deadline = self->_deadline;
  if (deadline == 0.0)
  {
    deadline = v7 + self->_deadlineInterval;
    self->_deadline = deadline;
  }

  v9 = deadline - v7;
  v10 = deadline <= v7;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  coalescingInterval = self->_coalescingInterval;
  if (coalescingInterval < v11)
  {
    v11 = self->_coalescingInterval;
  }

  if (v11 >= coalescingInterval || !self->_isScheduled)
  {
    v13 = self->_timer;
    v14 = dispatch_time(0, (v11 * 1000000000.0));
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, (self->_coalescingInterval * 1000000.0));
    self->_isScheduled = 1;
  }

  if (!timer)
  {
    dispatch_activate(self->_timer);
  }

  _geo_isolate_unlock();
}

- (BOOL)isScheduledToRun
{
  selfCopy = self;
  v4 = self->_isolater;
  _geo_isolate_lock();
  LOBYTE(selfCopy) = selfCopy->_isScheduled;
  _geo_isolate_unlock();

  return selfCopy;
}

@end