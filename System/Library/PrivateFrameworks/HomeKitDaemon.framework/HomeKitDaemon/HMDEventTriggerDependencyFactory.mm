@interface HMDEventTriggerDependencyFactory
- (id)createTimerWithTimeInterval:(double)interval options:(unsigned int)options;
@end

@implementation HMDEventTriggerDependencyFactory

- (id)createTimerWithTimeInterval:(double)interval options:(unsigned int)options
{
  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:*&options options:interval];

  return v4;
}

@end