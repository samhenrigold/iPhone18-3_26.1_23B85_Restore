@interface BKSHIDEventKeyboardDescriptor
+ (id)descriptorWithPage:(unsigned int)page usage:(unsigned int)usage;
- (BKSHIDEventKeyboardDescriptor)init;
@end

@implementation BKSHIDEventKeyboardDescriptor

- (BKSHIDEventKeyboardDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventKeyboardDescriptor;
  return [(BKSHIDEventDescriptor *)&v3 _initWithEventType:3];
}

+ (id)descriptorWithPage:(unsigned int)page usage:(unsigned int)usage
{
  v4 = [[self alloc] _initWithPage:? usage:? eventType:?];

  return v4;
}

@end