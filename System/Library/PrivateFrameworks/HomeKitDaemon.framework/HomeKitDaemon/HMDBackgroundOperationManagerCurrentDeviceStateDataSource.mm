@interface HMDBackgroundOperationManagerCurrentDeviceStateDataSource
- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options label:(id)label;
@end

@implementation HMDBackgroundOperationManagerCurrentDeviceStateDataSource

- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options label:(id)label
{
  v5 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:*&options options:interval];

  return v5;
}

@end