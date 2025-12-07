@interface BKSHIDEventVendorDefinedDescriptor
+ (id)descriptorWithPage:(unsigned int)page usage:(unsigned int)usage;
- (BKSHIDEventVendorDefinedDescriptor)init;
@end

@implementation BKSHIDEventVendorDefinedDescriptor

- (BKSHIDEventVendorDefinedDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventVendorDefinedDescriptor;
  return [(BKSHIDEventDescriptor *)&v3 _initWithEventType:1];
}

+ (id)descriptorWithPage:(unsigned int)page usage:(unsigned int)usage
{
  v4 = [[self alloc] _initWithPage:? usage:? eventType:?];

  return v4;
}

@end