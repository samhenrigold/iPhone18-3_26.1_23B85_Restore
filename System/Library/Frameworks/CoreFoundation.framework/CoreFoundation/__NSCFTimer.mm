@interface __NSCFTimer
- (BOOL)isEqual:(id)equal;
- (__NSCFTimer)initWithFireDate:(id)date interval:(double)interval target:(id)target selector:(SEL)selector userInfo:(id)info repeats:(BOOL)repeats;
- (id)fireDate;
- (id)userInfo;
- (void)fire;
- (void)setFireDate:(id)date;
@end

@implementation __NSCFTimer

- (id)fireDate
{
  NextFireDate = CFRunLoopTimerGetNextFireDate(self);

  return [NSDate dateWithTimeIntervalSinceReferenceDate:NextFireDate];
}

- (id)userInfo
{
  v4 = *MEMORY[0x1E69E9840];
  memset(&v3, 0, sizeof(v3));
  CFRunLoopTimerGetContext(self, &v3);
  return *(v3.info + 3);
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, equal) != 0;
}

- (void)setFireDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

  CFRunLoopTimerSetNextFireDate(self, v4);
}

- (void)fire
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(__NSCFTimer *)self isValid])
  {
    selfCopy = self;
    memset(&v5, 0, sizeof(v5));
    CFRunLoopTimerGetContext(self, &v5);
    __CFFireTimer(self, v5.info);
    [(__NSCFTimer *)self timeInterval];
    if (v4 == 0.0)
    {
      [(__NSCFTimer *)self invalidate];
    }
  }
}

- (__NSCFTimer)initWithFireDate:(id)date interval:(double)interval target:(id)target selector:(SEL)selector userInfo:(id)info repeats:(BOOL)repeats
{
  repeatsCopy = repeats;
  v21 = *MEMORY[0x1E69E9840];
  v14 = malloc_default_zone();
  v15 = malloc_type_zone_calloc(v14, 1uLL, 0x20uLL, 0x10800406BDE4C18uLL);
  v16 = v15;
  v20.version = 0;
  v20.info = v15;
  v20.retain = _timerRetain;
  v20.release = _timerRelease;
  v20.copyDescription = 0;
  if (interval <= 0.0)
  {
    interval = 0.0001;
  }

  *v15 = 0;
  v15[1] = target;
  v16[2] = selector;
  v16[3] = info;
  [date timeIntervalSinceReferenceDate];
  intervalCopy = 0.0;
  if (repeatsCopy)
  {
    intervalCopy = interval;
  }

  return CFRunLoopTimerCreate(0, v17, intervalCopy, 0, 0, __CFFireTimer, &v20);
}

@end