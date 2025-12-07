@interface HMFTimerManagerDefaultDataSource
- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options;
@end

@implementation HMFTimerManagerDefaultDataSource

- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options
{
  v4 = [[HMFTimer alloc] initWithTimeInterval:*&options options:interval];

  return v4;
}

@end