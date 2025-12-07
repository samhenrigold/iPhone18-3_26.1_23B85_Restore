@interface HMFTimerFactory
- (id)backoffTimerWithMinimumTimeInterval:(double)interval maximumTimeInterval:(double)timeInterval exponentialFactor:(int64_t)factor options:(unsigned int)options;
- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options;
@end

@implementation HMFTimerFactory

- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options
{
  v4 = [[HMFTimer alloc] initWithTimeInterval:*&options options:interval];

  return v4;
}

- (id)backoffTimerWithMinimumTimeInterval:(double)interval maximumTimeInterval:(double)timeInterval exponentialFactor:(int64_t)factor options:(unsigned int)options
{
  v6 = [[HMFExponentialBackoffTimer alloc] initWithMinimumTimeInterval:factor maximumTimeInterval:*&options exponentialFactor:interval options:timeInterval];

  return v6;
}

@end