@interface MakeRunnableEvent
- (MakeRunnableEvent)initWithMadeRunnableByThreadID:(unint64_t)d atTime:(unint64_t)time inInterrupt:(BOOL)interrupt;
@end

@implementation MakeRunnableEvent

- (MakeRunnableEvent)initWithMadeRunnableByThreadID:(unint64_t)d atTime:(unint64_t)time inInterrupt:(BOOL)interrupt
{
  interruptCopy = interrupt;
  v11.receiver = self;
  v11.super_class = MakeRunnableEvent;
  v8 = [(MakeRunnableEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MakeRunnableEvent *)v8 setMadeRunnableByThreadId:d];
    [(MakeRunnableEvent *)v9 setTimestamp:time];
    [(MakeRunnableEvent *)v9 setInInterrupt:interruptCopy];
  }

  return v9;
}

@end